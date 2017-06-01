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
	Field path:String
	Function Create:TBox(path:String, parent:TGadget)
		Local g:TBox = New TBox
		Local txtPathHeight:Int = 24
		Local txtPadding:Int = 4
		g.path = path
		g.window = CreateWindow(StripDir(path), ClientWidth(Desktop())/4, 0, ClientWidth(Desktop())/2, ClientHeight(Desktop())*0.75)
		g.txtPath = CreateTextArea(0, txtPadding, ClientWidth(g.window), txtPathHeight-txtPadding, g.window) 'CreateTextField(0, 0, ClientWidth(g.window), txtPathHeight, g.window)
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
	Field tmpOriginal:TGadget
	Field txtHiddenArea:TGadget
		
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
		
		g.winSettings:Settings = Settings.Create(ClientWidth(Desktop())/4, 0, ClientWidth(Desktop())/2, ClientHeight(Desktop())*0.75)
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
		'g.txtPath:TGadget = CreateTextArea(txtPathX, 2 + txtPadding/2, ClientWidth(g.winMain) - (btnGoWidth + txtPathX + txtPadding/2), txtFieldHeight - txtPadding/2, g.winMain)
			SetGadgetLayout(g.txtPath, EDGE_ALIGNED, EDGE_ALIGNED, EDGE_ALIGNED, EDGE_CENTERED)
			SetGadgetText(g.txtPath, CurrentDir())
			'SetGadgetSensitivity(g.txtPath, SENSITIZE_KEYS)
					
		g.lstFiles:TGadget = CreateListBox(0, btnHeight, ClientWidth(g.winMain), ClientHeight(g.winMain) - (btnHeight*2), g.winMain)
			SetGadgetLayout(g.lstFiles, EDGE_ALIGNED, EDGE_ALIGNED, EDGE_ALIGNED, EDGE_ALIGNED)
			PopulateList(GadgetText(g.txtPath), g.lstFiles)
			
		g.txtHiddenArea = CreateTextArea(0,0, 1, 1, g.winMain)
			HideGadget(g.txtHiddenArea)
		
		g.navManager:NavigationManager = NavigationManager.Create(GadgetText(g.txtPath))
		
		SetHotKeyEvent(KEY_I, MODIFIER_COMMAND)	' For up operations
		SetHotKeyEvent(KEY_K, MODIFIER_COMMAND)	' For down operations
		SetHotKeyEvent(KEY_J, MODIFIER_COMMAND)	' For left operations
		SetHotKeyEvent(KEY_L, MODIFIER_COMMAND)	' For right operations
		SetHotKeyEvent(KEY_SEMICOLON, MODIFIER_COMMAND)	' For opening preview
		SetHotKeyEvent(KEY_RETURN, MODIFIER_SHIFT)	' For opening preview
		'SetHotKeyEvent(KEY_C, MODIFIER_SHIFT)	' For copying the path of the file/folder
		
		SetHotKeyEvent(KEY_E, MODIFIER_COMMAND) ' For Executing
		SetHotKeyEvent(Key_S, MODIFIER_COMMAND) ' For saving
		SetHotKeyEvent(KEY_A, MODIFIER_COMMAND) ' For select all
		SetHotKeyEvent(KEY_W, MODIFIER_COMMAND) ' For closing windows
		SetHotKeyEvent(KEY_X, MODIFIER_COMMAND) ' For cutting
		SetHotKeyEvent(KEY_C, MODIFIER_COMMAND) ' For copying operations
		SetHotKeyEvent(KEY_V, MODIFIER_COMMAND) ' For pasting operations
		SetHotKeyEvent(KEY_R, MODIFIER_COMMAND) ' For renaming
		SetHotKeyEvent(KEY_N, MODIFIER_COMMAND) ' For new file
		SetHotKeyEvent(KEY_M, MODIFIER_COMMAND) ' For new folder
		SetHotKeyEvent(KEY_BACKSPACE, MODIFIER_COMMAND) ' For deleting
		
		'SetHotKeyEvent(KEY_H, MODIFIER_COMMAND)
		
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
				Case EVENT_MENUACTION
					'If (EventData() = MENU_NOTHING)
				Case EVENT_HOTKEYHIT
					If (EventMods() = MODIFIER_COMMAND)
						Select EventData()
							Case KEY_S	DoSave()
							Case KEY_W 	DoCloseActiveWindow()
							Case KEY_A	DoSelectAll()
							Case KEY_X	DoCut()
							Case KEY_C	DoCopy()
							Case KEY_V	DoPaste()
							Case KEY_R	DoRename()
							Case KEY_N	DoNewFile()
							Case KEY_M	DoNewFolder()
							Case KEY_BACKSPACE	DoDelete()
							
							Case KEY_E				DoExecute()
							Case KEY_J				DoLeftViaKeys()
							Case KEY_SEMICOLON		DoRightViaKeys()
							Case KEY_L				DoGoWithItem() 'DoRight()
							Case KEY_I				GoDirectionInList(UP)
							Case KEY_K				GoDirectionInList(DOWN)
							
							
							Case KEY_ENTER
								If (ActiveGadget() = txtPath)
									DoGo(GadgetText(txtPath))
								Else
									DoGoWithItem()
								EndIf
							Case KEY_H
								ActivateGadget(winMain)
								ShowGadget(winMain)
						End Select
					EndIf
				Case EVENT_KEYDOWN
					If (ActiveGadget() = txtPath And EventData() = KEY_RETURN)
						DoGo(GadgetText(txtPath))
					EndIf
		    End Select
		Wend
	End Method
	
	Method DoNewFolder()
	
	End Method
	
	Method DoNewFile()
	
	End Method
	
	Method DoRename()
	
	End Method
	
	Method DoExecute()
		Local index:Int = SelectedGadgetItem(lstFiles)
		If (index = -1) Return
		Local pathExe:String = EnsurePath(navManager.path()) + GadgetItemText(lstFiles, index)
		system_("open " + Chr(34) + pathExe + Chr(34))
	End Method
	
	Method DoSave()
		Local theActiveGadget:TGadget = ActiveGadget()
		If (theActiveGadget = Null) Return
		If (GadgetClass(theActiveGadget) = GADGET_TEXTAREA)
			For Local aBox:TBox = EachIn TBoxes
				If (aBox.txtArea = theActiveGadget)
					SaveText(TextAreaText(aBox.txtArea), aBox.path)
					Exit
				EndIf
			Next
		EndIf
	End Method
	
	Method DoDelete()
		Local theActiveGadget:TGadget = ActiveGadget()
		Select GadgetClass(theActiveGadget)
			Case GADGET_TEXTFIELD
				SetGadgetText(theActiveGadget, "")
		End Select
	End Method
	
	Method DoSelectAll()
		Local theActiveGadget:TGadget = ActiveGadget()
		If (theActiveGadget = Null) Return
		Select GadgetClass(theActiveGadget)
			Case GADGET_TEXTAREA
				SelectTextAreaText(theActiveGadget)
				GadgetCopy(theActiveGadget)
			Case GADGET_TEXTFIELD
				ActivateGadget(theActiveGadget)
				'SetGadgetColor(theActiveGadget, Rnd(0,255), Rnd(0,255), Rnd(0,255), False)
				'SetGadgetColor(theActiveGadget, Rnd(0,255), Rnd(0, 255), Rnd(0, 255), True)
				'SetGadgetText(txtHiddenArea, GadgetText(theActiveGadget))
				'SelectTextAreaText(txtHiddenArea)
				'tmpOriginal = theActiveGadget
		End Select
	End Method
	
	Method DoCopy()
		Local theActiveGadget:TGadget = ActiveGadget()
		If (theActiveGadget = Null) theActiveGadget = lstFiles
		Select GadgetClass(theActiveGadget)
			Case GADGET_TEXTAREA
				GadgetCopy(theActiveGadget)
			
			Case GADGET_TEXTFIELD
				GadgetCopy(theActiveGadget)
				Rem
				If (Not tmpOriginal = Null)
					Print "From hidden"
					GadgetCopy(txtHiddenArea)
				Else
					Print "From the gadget"
					GadgetCopy(theActiveGadget)
				EndIf
				EndRem
			Case GADGET_LISTBOX
				Local item:Int = SelectedGadgetItem(lstFiles)
				If (item = -1) Return
				tmpOriginal = Null
				
				Local tempGadget:TGadget = theActiveGadget
				SetGadgetText(txtPath, EnsurePath(navManager.Path()) + GadgetItemText(lstFiles, item))
				ActivateGadget(txtPath)
				GadgetCopy(txtPath)
				ActivateGadget(tempGadget)
		End Select
	End Method
	
	Method DoCut()
		'Local theActiveGadget:TGadget
		'If (Not tmpOriginal = Null) theActiveGadget = tmpOriginal
		
		Local theActiveGadget:TGadget = ActiveGadget()
		If (theActiveGadget = Null) theActiveGadget = lstFiles
		Select GadgetClass(theActiveGadget)
			Case GADGET_TEXTAREA
				GadgetCut(theActiveGadget)
			Case GADGET_TEXTFIELD
				If (Not tmpOriginal = Null)
					GadgetCut(txtHiddenArea)
				Else
					GadgetCut(theActiveGadget)
				EndIf 
		End Select
	End Method
	
	Method DoPaste()
		Local theActiveGadget:TGadget = ActiveGadget()
		If (theActiveGadget = Null) theActiveGadget = lstFiles
		Select GadgetClass(theActiveGadget)
			Case GADGET_TEXTAREA, GADGET_TEXTFIELD
				GadgetPaste(theActiveGadget)
		End Select
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
				tmpOriginal = Null
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
		If (Not(ActiveGadget() = lstFiles) And Not(ActiveGadget() = Null))  Return
		
		If (SelectedGadgetItem(lstFiles) = -1) Return
		Local path:String = EnsurePath(navManager.path()) + GadgetItemText(lstFiles, SelectedGadgetItem(lstFiles))
		If (FileType(path) = FILETYPE_DIR)
			SetGadgetText(txtPath, path)			
			navManager.GoInside(GadgetText(txtPath))
			PopulateList(GadgetText(txtPath), lstFiles)
			If (CountGadgetItems(lstFiles)>0) SelectGadgetItem(lstFiles, 0)
			DetermineType()
		Else If(FileType(path) = FILETYPE_FILE)
			Local found:Int = 0
			For Local aBox:TBox = EachIn tBoxes
				If (aBox.path = path)
					found = 1
					Exit
				EndIf
			Next
			If (found = 0) ListAddLast(tBoxes, TBox.Create(path, winMain))
		EndIf
	End Method
	
	Method DoGo(absolutePath:String)
		Local path:String = EnsurePath(absolutePath)
		SetGadgetText(txtPath, path)
		PopulateList(GadgetText(txtPath), lstFiles)				
		navManager.GoLeft(GadgetText(txtPath))
		DetermineType()
	End Method
	
	Method DoRightViaKeys()
		If (Not(ActiveGadget() = lstFiles) And Not(ActiveGadget() = Null))  Return
		DoRight()
	End Method
	
	Method DoRight()
		If (navManager.GoRight())
			SetGadgetText(txtPath, navManager.Path())
			PopulateList(GadgetText(txtPath), lstFiles)
		EndIf
		DetermineType()
	End Method
	
	Method DoLeftViaKeys()
		If (Not(ActiveGadget() = lstFiles) And Not(ActiveGadget() = Null))  Return
		DoLeft()
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
		
		DetermineType()
	End Method
	
	Method GoDirectionInList(direction:Int)
		If (Not(ActiveGadget() = lstFiles) And Not(ActiveGadget() = Null))  Return
		
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




