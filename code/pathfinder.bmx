' Info: http://www.lemming.life

' ToDo
' - Need to code copy/paste functionality.
' - New file, new folder, renaming.

SuperStrict

Import MaxGui.Drivers

Type TBox
	Field window:TGadget
	Field txtPath:TGadget
	Field txtArea:TGadget
	Function Create:TBox(path:String, parent:TGadget)
		Local g:TBox = New TBox
		Local txtPathHeight:Int = 24
		Local txtPadding:Int = 4
		
		g.window = CreateWindow(StripDir(path), ClientWidth(Desktop())/4, 0, ClientWidth(Desktop())/2, ClientHeight(Desktop()))
		g.txtPath = CreateTextField(0, 0, ClientWidth(g.window), txtPathHeight, g.window)
			SetGadgetLayout(g.txtPath, EDGE_ALIGNED, EDGE_ALIGNED, EDGE_ALIGNED, EDGE_CENTERED)
			SetGadgetText(g.txtPath, path)
		g.txtArea = CreateTextArea(0, txtPathHeight + txtPadding, ClientWidth(g.window), ClientHeight(g.window) - txtPathHeight - txtPadding, g.window)
			SetGadgetLayout(g.txtArea, EDGE_ALIGNED, EDGE_ALIGNED, EDGE_ALIGNED, EDGE_ALIGNED)	
			SetTextAreaText(g.txtArea, LoadText(path))
		Return g
		
	End Function
End Type

Local program:TGui = TGui.Create()
program.Run()

Type TGui
	Field winSettings:Settings
	Field navManager:NavigationManager
	
	Field winMain:TGadget
	Field btnLeft:TGadget
	Field btnRight:TGadget
	Field btnGo:TGadget
	Field txtPath:TGadget
	Field lstFiles:TGadget
	
	Const UP:Int = 0
	Const DOWN:Int = 1
	Field tBoxes:TList
	
	Function Create:TGui()
		Local g:TGui = New TGui
		
		Local padding:Int = 5
		Local btnHeight:Int = 34
		Local txtPadding:Int = 8
		Local txtFieldHeight:Int = btnHeight - txtPadding
		Local topButtonsCount:Int = 1
		
		g.winSettings:Settings = Settings.Create(ClientWidth(Desktop())/4, 0, ClientWidth(Desktop())/2, ClientHeight(Desktop()))
		g.winMain:TGadget = CreateWindow("PathFinder", g.winSettings.x, g.winSettings.y, g.winSettings.width, g.winSettings.height)
		
		Local btnNavigationWidth:Int = 38
		g.btnLeft:TGadget = CreateButton("<", 0, 0, btnNavigationWidth, btnHeight, g.winMain, BUTTON_PUSH)
			SetGadgetLayout(g.btnLeft, EDGE_ALIGNED, EDGE_CENTERED, EDGE_ALIGNED, EDGE_CENTERED)
		g.btnRight:TGadget = CreateButton(">", GadgetWidth(g.btnLeft), 0, btnNavigationWidth, btnHeight, g.winMain, BUTTON_PUSH)
			SetGadgetLayout(g.btnRight, EDGE_ALIGNED, EDGE_CENTERED, EDGE_ALIGNED, EDGE_CENTERED)
			
		Local btnGoWidth:Int = 50
		g.btnGo:TGadget = CreateButton("Go", ClientWidth(g.winMain) - btnGoWidth, 0, btnGoWidth, btnHeight, g.winMain, BUTTON_OK)
			SetGadgetLayout(g.btnGo, EDGE_CENTERED, EDGE_ALIGNED , EDGE_ALIGNED, EDGE_CENTERED)
		Local txtPathX:Int = GadgetWidth(g.btnLeft) + GadgetHeight(g.btnRight) + txtPadding
		g.txtPath:TGadget = CreateTextField(txtPathX, 2 + txtPadding/2, ClientWidth(g.winMain) - (btnGoWidth + txtPathX + txtPadding/2), txtFieldHeight - txtPadding/2, g.winMain)
			SetGadgetLayout(g.txtPath, EDGE_ALIGNED, EDGE_ALIGNED, EDGE_ALIGNED, EDGE_CENTERED)
			SetGadgetText(g.txtPath, CurrentDir())
					
		g.lstFiles:TGadget = CreateListBox(0, btnHeight, ClientWidth(g.winMain), ClientHeight(g.winMain) - (btnHeight*2), g.winMain)
			SetGadgetLayout(g.lstFiles, EDGE_ALIGNED, EDGE_ALIGNED, EDGE_ALIGNED, EDGE_ALIGNED)
			PopulateList(GadgetText(g.txtPath), g.lstFiles)
			
		g.navManager:NavigationManager = NavigationManager.Create(GadgetText(g.txtPath))
		
		SetHotKeyEvent(KEY_F, MODIFIER_SHIFT)	' For up operations
		SetHotKeyEvent(KEY_J, MODIFIER_SHIFT)	' For down operations
		SetHotKeyEvent(KEY_D, MODIFIER_SHIFT)	' For left operations
		SetHotKeyEvent(KEY_K, MODIFIER_SHIFT)	' For right operations
		SetHotKeyEvent(KEY_H, MODIFIER_SHIFT)	' For opening
		
		SetHotKeyEvent(KEY_W, MODIFIER_COMMAND) ' For closing windows
		SetHotKeyEvent(KEY_C, MODIFIER_COMMAND) ' For copying operations
		SetHotKeyEvent(KEY_V, MODIFIER_COMMAND) ' For pasting operations
		SetHotKeyEvent(KEY_R, MODIFIER_COMMAND) ' For renaming
		SetHotKeyEvent(KEY_N, MODIFIER_COMMAND) ' For new file
		SetHotKeyEvent(KEY_M, MODIFIER_COMMAND) ' For new folder
		
		g.tBoxes = CreateList()
		
		Return g
	EndFunction
	
	
	Method Run()
		While True
		    WaitEvent()
		
		    Select EventID()
		        Case EVENT_WINDOWCLOSE
					If (EventSource() = winMain) End
					
		           	For Local tempBox:TBox = EachIn tBoxes
						If (EventSource() = tempBox.window)
							FreeGadget(tempBox.window)
							ListRemove(tBoxes, tempBox)
							Exit
						EndIf
					Next
					
					
				Case EVENT_GADGETACTION
					Select EventSource()
						Case btnLeft	DoLeft()
						Case btnRight	DoRight()
						Case btnGo		DoGo(GadgetText(txtPath))		
						Case lstFiles	DoSelectAction()
					End Select
				Case EVENT_GADGETSELECT
					If (EventSource() = lstFiles) DoSelect()
				Case EVENT_HOTKEYHIT
					If (EventMods() = MODIFIER_SHIFT)
						Select EventData()
							Case KEY_D		DoLeft()
							Case KEY_K		DoRight()
							Case KEY_F		GoDirectionInList(UP)
							Case KEY_J		GoDirectionInList(DOWN)
							Case KEY_H		DoGoWithItem()
						End Select
					Else If (EventMods() = MODIFIER_COMMAND)
						Select EventData()
							Case Key_W 	DoCloseActiveWindow()
							Case KEY_C	DoCopy()
							Case KEY_V	DoPaste()
							Case KEY_R	DoRename()
							Case KEY_N	DoNewFile()
							Case KEY_M	DoNewFolder()
						End Select
					EndIf
		    End Select
		Wend
	End Method
	
	Method DoNewFolder()
	
	End Method
	
	Method DoNewFile()
	
	End Method
	
	Method DoCopy()
	
	End Method
	
	Method DoPaste()
	
	End Method
	
	
	Method DoCloseActiveWindow()
		Local theActiveGadget:TGadget = ActiveGadget()
		While(Not(GadgetClass(theActiveGadget) = GADGET_WINDOW))
			theActiveGadget = GadgetGroup(theActiveGadget)
		Wend
		
		If (theActiveGadget = winMain)
			For Local tempBox:TBox = EachIn tBoxes
				FreeGadget(tempBox.window)
				ListRemove(tBoxes, tempBox)
			Next
		
			FreeGadget(winMain)
			Return
		EndIf
		
		For Local tempBox:TBox = EachIn tBoxes
			If (theActiveGadget = tempBox.window)
				FreeGadget(tempBox.window)
				ListRemove(tBoxes, tempBox)
				Return
			EndIf
		Next
	End Method
	
	Method DoSelect()
		If (SelectedGadgetItem(lstFiles) = -1) Return
		DetermineType()
	End Method
	
	Method DoSelectAction()
		DoGoWithItem()
		Rem
		If (SelectedGadgetItem(lstFiles) = -1) Return
		
		Local file:String = GadgetItemText(lstFiles, SelectedGadgetItem(lstFiles))
		Local path:String = EnsurePath(GadgetText(txtPath))
		If (FileType(path + file) = FILETYPE_DIR)
			SetGadgetText(txtPath, path + file + "/")			
			navManager.GoInside(GadgetText(txtPath))
			PopulateList(GadgetText(txtPath), lstFiles)
			If (CountGadgetItems(lstFiles)>0) SelectGadgetItem(lstFiles, 0)
		Else
			
		EndIf
		EndRem 
		
		'DetermineType()
	End Method
	
	Method DoGoWithItem()
		If (SelectedGadgetItem(lstFiles) = -1) Return
		Local path:String = EnsurePath(GadgetText(txtPath)) + GadgetItemText(lstFiles, SelectedGadgetItem(lstFiles))
		If (FileType(path) = FILETYPE_DIR)
			DoGo(path)
		Else If(FileType(path) = FILETYPE_FILE)
			ListAddLast(tBoxes, TBox.Create(path, winMain))
		EndIf
	End Method
	
	Method DoGo(absolutePath:String)
		Local path:String = EnsurePath(absolutePath)
		SetGadgetText(txtPath, path)
		PopulateList(GadgetText(txtPath), lstFiles)				
		navManager.GoLeft(GadgetText(txtPath))
	End Method
	
	Method DoRight()
		If (navManager.GoRight())
			SetGadgetText(txtPath, navManager.Path())
			PopulateList(GadgetText(txtPath), lstFiles)
		EndIf
	End Method
	
	Method DoLeft()
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
			SetGadgetText(txtPath, Left(path, lastIndex))
			PopulateList(GadgetText(txtPath), lstFiles)
			navManager.GoLeft(GadgetText(txtPath))
		EndIf
	End Method
	
	Method GoDirectionInList(direction:Int)
		If (SelectedGadgetItem(lstFiles) = -1) Return
		Local selectedFileType:String
		
		If (direction = UP And SelectedGadgetItem(lstFiles)>0)
			SelectGadgetItem(lstFiles, SelectedGadgetItem(lstFiles)-1)
		Else If (direction = DOWN And SelectedGadgetItem(lstFiles)<CountGadgetItems(lstFiles)-1)
			SelectGadgetItem(lstFiles, SelectedGadgetItem(lstFiles)+1)
		EndIf
		
		DetermineType()
	End Method
	
	Method DetermineType()
		If (SelectedGadgetItem(lstFiles) = -1) Return
		Local selectedFileType:String
		
		If (FileType(EnsurePath(navManager.path()) + GadgetItemText(lstFiles, SelectedGadgetItem(lstFiles))) = FILETYPE_DIR)
			selectedFileType = "Directory"
		Else 
			selectedFileType = "File"
		EndIf
		
		SetStatusText(winMain, selectedFileType)
	End Method
	
	
EndType
 
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



' Ensures that we have the trailing "/"
Function EnsurePath:String(aPath:String)
	Local path:String
	If (Mid(aPath, Len(aPath), 1) = "/")
		Return aPath
	Else
		Return aPath + "/"	
	EndIf
End Function

Function PopulateList(aPath:String, lstGadget:TGadget)
	Local path:String = EnsurePath(aPath)
	If (path = Null) Return
	
	ClearGadgetItems(lstGadget)
	
	PopulateListWithType(path, lstGadget, FILETYPE_DIR)
	PopulateListWithType(path, lstGadget, FILETYPE_FILE)
	
	If (CountGadgetItems(lstGadget)>0)
		SelectGadgetItem(lstGadget, 0)
	EndIf
End Function

Function PopulateListWithType(path:String, lstGadget:TGadget, specifiedType:Int)
	Local dir:Int = ReadDir(path)
	If (Not dir) Return
	Repeat
		Local file:String = NextFile(dir)
		If (file = "") Exit
		If (file = "." Or file = "..") Continue
		
		If (FileType(path + file) = specifiedType)
			AddGadgetItem(lstGadget, file, 0, -1)
		EndIf
	Forever
	CloseDir(dir)
End Function




