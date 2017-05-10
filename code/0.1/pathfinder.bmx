' Info: http://www.lemming.life
' Author: email@lemming.life

' ToDo
' - Create a GUI type, with callable functions for actions

SuperStrict

Import MaxGui.Drivers
 
Type Settings
    Field x:Int
    Field y:Int
    Field width:Int
    Field height:Int
	Field lastPath:String
	Field map:TMap

    Function Create:Settings(x:Int, y:Int, width:Int, height:Int)
        Local s:Settings = New Settings
        s.x = x
        s.y = y
        s.width = width
        s.height = height
		s.map = CreateMap()
        Return s
    End Function

	Method LoadAssociations(fileName:String)
		Local file:TStream = OpenFile(fileName)
		If (Not file)
			file = WriteFile(fileName)
			If (Not file) RuntimeError("Cannot read/write " + fileName)
			CloseStream(file)
			Return
		EndIf 
		
		map = CreateMap()
		
		Local key:String = Null
		Local value:String = Null
		
		Local first:Int = 0 
		While Not Eof(file)
			If (first = 0)
				first = 1
				key = ReadLine(file)
			ElseIf(first = 1)
				first = 0
				value = ReadLine(file)
				MapInsert(map, key, value)
			EndIf 
		Wend
		CloseStream(file)
	End Method
	
	Method SaveAssociations(fileName:String)
		Local file:TStream = WriteFile(fileName)
		If (Not file) RuntimeError("Cannot write " + fileName)
		
		For Local obj:Object = EachIn MapKeys(map)
			WriteLine(file, String(obj))
			WriteLine(file, String(MapValueForKey(map, obj)) )
		Next
		
		CloseFile(file)
	End Method

	
EndType

Type Node
	Field path:String
	Field leftNode:Node
	Field rightNode:Node
EndType

Type NavigationManager
	Field currentNode:Node
	
	Function Create:NavigationManager(path:String)
		Local nav:NavigationManager = New NavigationManager
		nav.currentNode = New Node
		nav.currentNode.path = path
		Return nav
	End Function
	
	Method GoLeft(path:String)
		currentNode.leftNode = New Node
		currentNode.leftNode.path = path
		currentNode.leftNode.rightNode = currentNode
		currentNode = currentNode.leftNode
	End Method
	
	Method GoInside(path:String)
		currentNode.rightNode = New Node
		currentNode.rightNode.path = path
		currentNode.rightNode.leftNode = currentNode
		currentNode = currentNode.rightNode
	End Method
	
	Method GoRight:Int()
		If (currentNode.rightNode <> Null)
			currentNode = currentNode.rightNode
			Return True
		EndIf
		Return False
	End Method
	
	Method Path:String()
		Return currentNode.path
	End Method
End Type


Function EnsurePath:String(aPath:String)
	Local path:String
	If (Mid(aPath, Len(aPath), 1) = "/")
		Return aPath
	Else
		Return aPath + "/"	
	EndIf
End Function

Function PopulateList(aPath:String, lstGadget:TGadget, lstFileTypes:TGadget)
	Local path:String = EnsurePath(aPath)
	If (path = Null) Return
	
	ClearGadgetItems(lstGadget)
	ClearGadgetItems(lstFileTypes)
	
	Local dir:Int = ReadDir(path)
	If (Not dir) Return
	Repeat
		Local file:String = NextFile(dir)
		If (file = "") Exit
		If (file = "." Or file = "..") Continue
		
		Local fileStringType:String = Null
		If (FileType(path + file) = FILETYPE_FILE)
			fileStringType = "file"
		ElseIf (FileType(path + file) = FILETYPE_DIR)
			fileStringType = "dir"
		EndIf
		
		AddGadgetItem(lstGadget, file, 0, -1, fileStringType, Null)
		
	Forever
	CloseDir(dir)
	
	If (CountGadgetItems(lstGadget)>0)
		SelectGadgetItem(lstGadget, 0)
	EndIf
End Function



Local padding:Int = 5
Local btnHeight:Int = 34
Local txtPadding:Int = 8
Local txtFieldHeight:Int = btnHeight - txtPadding
Local topButtonsCount:Int = 1


Local winSettings:Settings = Settings.Create(ClientWidth(Desktop())/4, 0, ClientWidth(Desktop())/2, ClientHeight(Desktop()))
Local winMain:TGadget = CreateWindow("PathFinder", winSettings.x, winSettings.y, winSettings.width, winSettings.height)

Local btnNavigationWidth:Int = 38
Local btnLeft:TGadget = CreateButton("<", 0, 0, btnNavigationWidth, btnHeight, winMain, BUTTON_PUSH)
	SetGadgetLayout(btnLeft, EDGE_ALIGNED, EDGE_CENTERED, EDGE_ALIGNED, EDGE_CENTERED)
Local btnRight:TGadget = CreateButton(">", GadgetWidth(btnLeft), 0, btnNavigationWidth, btnHeight, winMain, BUTTON_PUSH)
	SetGadgetLayout(btnRight, EDGE_ALIGNED, EDGE_CENTERED, EDGE_ALIGNED, EDGE_CENTERED)
	
Local btnGoWidth:Int = 50
Local btnGo:TGadget = CreateButton("Go", ClientWidth(winMain) - btnGoWidth, 0, btnGoWidth, btnHeight, winMain, BUTTON_OK)
	SetGadgetLayout(btnGo, EDGE_CENTERED, EDGE_ALIGNED , EDGE_ALIGNED, EDGE_CENTERED)
Local txtPathX:Int = GadgetWidth(btnLeft) + GadgetHeight(btnRight) + txtPadding
Local txtPath:TGadget = CreateTextField(txtPathX, 2 + txtPadding/2, ClientWidth(winMain) - (btnGoWidth + txtPathX + txtPadding/2), txtFieldHeight - txtPadding/2, winMain)
	SetGadgetLayout(txtPath, EDGE_ALIGNED, EDGE_ALIGNED, EDGE_ALIGNED, EDGE_CENTERED)
	SetGadgetText(txtPath, CurrentDir())
	
Local lstFileTypes:TGadget = CreateListBox(0, btnHeight, 15, ClientHeight(winMain) - (btnHeight*2), winMain)
	SetGadgetLayout(lstFileTypes, EDGE_ALIGNED, EDGE_CENTERED, EDGE_ALIGNED, EDGE_ALIGNED)
	DisableGadget(lstFileTypes)
	
Local lstFiles:TGadget = CreateListBox(GadgetWidth(lstFileTypes), btnHeight, ClientWidth(winMain) - GadgetWidth(lstFileTypes), ClientHeight(winMain) - (btnHeight*2), winMain)
	SetGadgetLayout(lstFiles, EDGE_ALIGNED, EDGE_ALIGNED, EDGE_ALIGNED, EDGE_ALIGNED)
	PopulateList(GadgetText(txtPath), lstFiles, lstFileTypes)
	SetGadgetSensitivity(lstFiles, SENSITIZE_KEYS)
	
Local navManager:NavigationManager = NavigationManager.Create(GadgetText(txtPath))

While True
    WaitEvent()

    Select EventID()
        Case EVENT_WINDOWCLOSE
            End
		Case EVENT_GADGETACTION
			Select EventSource()
				Case btnLeft
					Local path:String = GadgetText(txtPath)
					
					Local lastIndex:Int = -1
					Local i:Int = 1
					For i = 1 To Len(path) -1
						If (Mid(path,i,1) = "/")
							If (lastIndex < i)
								lastIndex = i
							EndIf
						EndIf
					Next
					
					If (lastIndex>0)
						SetGadgetText(txtPath, Left(path, lastIndex)) 'Mid(path, 1, Len(path)-lastIndex))
						PopulateList(GadgetText(txtPath), lstFiles, lstFileTypes)
						navManager.GoLeft(GadgetText(txtPath))
					EndIf
				Case btnRight
					If (navManager.GoRight())
						SetGadgetText(txtPath, navManager.Path())
						PopulateList(GadgetText(txtPath), lstFiles, lstFileTypes)
					EndIf
					
				Case btnGo
					Local path:String = EnsurePath(GadgetText(txtPath))
					SetGadgetText(txtPath, path)
					PopulateList(GadgetText(txtPath), lstFiles, lstFileTypes)				
					navManager.GoLeft(GadgetText(txtPath))
				
				Case lstFiles
					If (SelectedGadgetItem(lstFiles) > -1)
						Local file:String = GadgetItemText(lstFiles, SelectedGadgetItem(lstFiles))
						Local path:String = EnsurePath(GadgetText(txtPath))
						If (FileType(path + file) = FILETYPE_FILE)
							Print "opening file"
							
							
						ElseIf (FileType(path + file) = FILETYPE_DIR)
							SetGadgetText(txtPath, path + file + "/")			
							navManager.GoInside(GadgetText(txtPath))
							
							PopulateList(GadgetText(txtPath), lstFiles, lstFileTypes)
							If (CountGadgetItems(lstFiles)>0)
								SelectGadgetItem(lstFiles, 0)
							EndIf
						EndIf
					EndIf 
			End Select
		Case EVENT_KEYUP
			'If (Not EventSource() = lstFiles) Continue
			Select EventData()
				Case KEY_D
					Print "Pressed left"
					ActivateGadget(btnLeft)
				Case KEY_K
					Print "Pressed right"
					ActivateGadget(btnRight)
				Case KEY_F
					If (SelectedGadgetItem(lstFiles)>0) SelectGadgetItem(lstFiles, SelectedGadgetItem(lstFiles)-1)
				Case KEY_J
					If (SelectedGadgetItem(lstFiles)<CountGadgetItems(lstFiles)-1) SelectGadgetItem(lstFiles, SelectedGadgetItem(lstFiles)+1)
				Case KEY_SPACE
					Print "ENTER"
			End Select
    End Select
Wend