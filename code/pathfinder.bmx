' Info: http://www.lemming.life
' Modified: June 10, 2017

' ToDo
' - Need to code copy/paste functionality of files.
' - Renaming of files/folders

SuperStrict
Import MaxGui.Drivers
Import "import/input_window.bmx"

Local program:TGui = TGui.Create()
program.Run()
Print "Quitting"
End

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
		g.window = CreateWindow(StripDir(path), ClientWidth(Desktop())/4, 0, ClientWidth(Desktop())/2, ClientHeight(Desktop())*0.75, Null,  WINDOW_TITLEBAR + WINDOW_RESIZABLE + WINDOW_CENTER + WINDOW_ACCEPTFILES)
		g.txtPath = CreateTextArea(0, txtPadding, ClientWidth(g.window), txtPathHeight-txtPadding, g.window) 'CreateTextField(0, 0, ClientWidth(g.window), txtPathHeight, g.window)
			SetGadgetLayout(g.txtPath, EDGE_ALIGNED, EDGE_ALIGNED, EDGE_ALIGNED, EDGE_CENTERED)
			SetGadgetText(g.txtPath, path)
		g.txtArea = CreateTextArea(0, txtPathHeight + txtPadding, ClientWidth(g.window), ClientHeight(g.window) - txtPathHeight - txtPadding, g.window)
			SetGadgetLayout(g.txtArea, EDGE_ALIGNED, EDGE_ALIGNED, EDGE_ALIGNED, EDGE_ALIGNED)	
			SetTextAreaText(g.txtArea, LoadText(path))
		Return g
		
	End Function
End Type

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
	Field slash:String
	
	Function Create:TGui()
		Local g:TGui = New TGui
		g.slash = "/"
		'?win32
		'	g.slash = "\"
		'?
		
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
			SetGadgetLayout(g.txtPath, EDGE_ALIGNED, EDGE_ALIGNED, EDGE_ALIGNED, EDGE_CENTERED)
			SetGadgetText(g.txtPath, g.EnsurePath(CurrentDir()))
					
		g.lstFiles:TGadget = CreateListBox(0, btnHeight, ClientWidth(g.winMain), ClientHeight(g.winMain) - (btnHeight*2), g.winMain)
			SetGadgetLayout(g.lstFiles, EDGE_ALIGNED, EDGE_ALIGNED, EDGE_ALIGNED, EDGE_ALIGNED)
			g.PopulateList(GadgetText(g.txtPath))
		
		g.navManager:NavigationManager = NavigationManager.Create(GadgetText(g.txtPath))
		
		SetHotKeyEvent(KEY_I, MODIFIER_COMMAND)	' For up operations
		SetHotKeyEvent(KEY_K, MODIFIER_COMMAND)	' For down operations
		SetHotKeyEvent(KEY_J, MODIFIER_COMMAND)	' For left operations
		SetHotKeyEvent(KEY_L, MODIFIER_COMMAND)	' For right operations
		SetHotKeyEvent(KEY_SEMICOLON, MODIFIER_COMMAND)	' For opening preview
		SetHotKeyEvent(KEY_RETURN, MODIFIER_SHIFT)	' For opening preview
		
		SetHotKeyEvent(KEY_E, MODIFIER_COMMAND) ' For Executing
		SetHotKeyEvent(Key_S, MODIFIER_COMMAND) ' For saving
		SetHotKeyEvent(KEY_A, MODIFIER_COMMAND) ' For select all
		SetHotKeyEvent(KEY_W, MODIFIER_COMMAND) ' For closing windows
		SetHotKeyEvent(KEY_X, MODIFIER_COMMAND) ' For cutting
		SetHotKeyEvent(KEY_C, MODIFIER_COMMAND) ' For copying operations
		SetHotKeyEvent(KEY_V, MODIFIER_COMMAND) ' For pasting operations
		SetHotKeyEvent(KEY_R, MODIFIER_COMMAND) ' For renaming
		SetHotKeyEvent(KEY_N, MODIFIER_COMMAND) ' For new file
		SetHotKeyEvent(KEY_F, MODIFIER_COMMAND) ' For new folder
		SetHotKeyEvent(KEY_BACKSPACE, MODIFIER_COMMAND) ' For deleting
		SetHotKeyEvent(KEY_W, MODIFIER_COMMAND)
		
		g.tBoxes = CreateList()
		Return g
	EndFunction
	
	
	Method Run()
		While (True)
			'Not AppTerminate()
		    WaitEvent()
			'If (AppTerminate()) Return
		
		    Select EventID()
				
		        Case EVENT_WINDOWCLOSE
					'If (EventSource() = winMain) Return
					Local isMainWindow:Int = 1
		           	For Local tempBox:TBox = EachIn tBoxes
						If (EventSource() = tempBox.window)
							FreeGadget(tempBox.window)
							ListRemove(tBoxes, tempBox)
							isMainWindow = 0
							Exit
						EndIf
					Next
					
					If (isMainWindow)
						Return
					EndIf
					
					
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
							Case KEY_F	DoNewFolder()
							Case KEY_BACKSPACE	DoDelete()
							
							Case KEY_E				DoExecute()
							Case KEY_J				DoLeftViaKeys()
							'Case KEY_SEMICOLON		DoRightViaKeys()
							'Case KEY_L				DoGoWithItem() 'DoRight()
							Case KEY_L				DoRightViaKeys()
							Case KEY_I				GoDirectionInList(UP)
							Case KEY_K				GoDirectionInList(DOWN)
							
							Case KEY_ENTER
								DoRightViaKeys()
								Rem
								If (ActiveGadget() = txtPath)
									DoGo(GadgetText(txtPath))
								Else
									DoGoWithItem()
								EndIf
								EndRem
							Case KEY_H
								ActivateGadget(winMain)
								ShowGadget(winMain)
								
							Case KEY_W		Return
						End Select
					EndIf
				Case EVENT_KEYDOWN
					If (ActiveGadget() = txtPath And EventData() = KEY_RETURN)
						DoGo(GadgetText(txtPath))
					EndIf
		    End Select
		Wend
	End Method
	
	
	
	
	Method SelectFile(name:String)
		Local index:Int = 0
		
		While(True)
			If (GadgetItemText(lstFiles, index) = name)
				SelectGadgetItem(lstFiles, index)
				Exit
			EndIf
			index = index + 1
		Wend
	End Method
	
	' Use FILETYPE_FILE or FILETYPE_DIR
	Method DoNewFileFolder(which:Int)
		Local typeString:String = "file"
		
		If (which = FILETYPE_DIR)
			typeString = "folder"
		EndIf
		
		Local name:String = TInputWindow.Run("Name of " + typeString, winMain)
		If (name = "") Return
		
		Local path:String = EnsurePath(navManager.path())
		Local pathName:String = path + name
		
		Local fileState:Int = FileType(pathName)
		If (fileState > 0 And Confirm(name + " exists, replace?") = 0) Return
		
		Local created:Int
		If (which = FILETYPE_FILE)
			created = CreateFile(pathName)
		Else If(which = FILETYPE_DIR)
			created = CreateDir(pathName)
		EndIf
		
		If (Not created)
			statusError = "Could not create " + typeString + " " + name
		Else
			DoGo(path)
			SelectFile(name)
		EndIf
		
		UpdateStatusBar()
	End Method
	
	
	
	Method DoNewFolder()
		DoNewFileFolder(FILETYPE_DIR)				
	End Method
	
	Method DoNewFile()
		DoNewFileFolder(FILETYPE_FILE)
	End Method
	
	
	'todo
	Method DoRename()
		
	End Method
	
	
	Method DoExecute()
		Local index:Int = SelectedGadgetItem(lstFiles)
		If (index = -1) Return
		Local pathExe:String = EnsurePath(navManager.path()) + GadgetItemText(lstFiles, index)
		Local openStr:String = "open "
		
		?win32
			If (Instr(Lower(pathExe), ".exe") > -1)
				system_(openStr + Chr(34) + pathExe + Chr(34))
			Else
				system_(Chr(34) + pathExe + Chr(34))
			EndIf
		?macos
			system_(openStr + Chr(34) + pathExe + Chr(34))
		?linux
			system_(openStr + Chr(34) + pathExe + Chr(34))
		?
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
	
	
	Method DeleteThisFile:Int(item:String)
		Local pathName:String = EnsurePath(navManager.Path()) + item
		
		Print pathName
		
		Local deleted:Int = 0
		If (FileType(pathName) = FILETYPE_FILE)
			deleted = DeleteFile(pathName)
		Else If (FileType(pathName) = FILETYPE_DIR)
			If (Confirm("Delete " + item + " folder and its contents?"))
				deleted = DeleteDir(pathName, True)
			EndIf
		EndIf
		
		If (deleted)
			Return 1
		Else
			Return 0
		EndIf
	End Method
	
	
	Method DoDelete()
		'Print "DoDelete"
		Local theActiveGadget:TGadget = ActiveGadget()
		If (theActiveGadget = Null) theActiveGadget = lstFiles
		
		Select GadgetClass(theActiveGadget)
			Case GADGET_TEXTFIELD
				'Print "In text field"
				SetGadgetText(theActiveGadget, "")
				
				
			Case GADGET_LISTBOX
			
				Local index:Int = SelectedGadgetItem(lstFiles)
				If (index = -1) Return
				
				Local nextIndex:Int
				
				If (index = 0)
					nextIndex = 0
				Else If (index > 0)
					nextIndex = index - 1
				EndIf
				
				Local name:String = GadgetItemText(lstFiles, index)
				If (DeleteThisFile(name) = 0) Return
				RemoveGadgetItem(lstFiles, index)
				If (CountGadgetItems(lstFiles)>0) SelectGadgetItem(lstFiles, nextIndex)
				navManager.RemoveIfRight(EnsurePath(navManager.Path()) + EnsurePath(name))
				DetermineType()
		End Select
	End Method
	
	Method DoSelectAll()
		Local theActiveGadget:TGadget = ActiveGadget()
		If (theActiveGadget = Null) Return
		Select GadgetClass(theActiveGadget)
			Case GADGET_TEXTAREA
				SelectTextAreaText(theActiveGadget)
			Case GADGET_TEXTFIELD
				ActivateGadget(theActiveGadget)
		End Select
	End Method
	
	Method DoCopy()
		Local theActiveGadget:TGadget = ActiveGadget()
		If (theActiveGadget = Null) theActiveGadget = lstFiles
		Select GadgetClass(theActiveGadget)
			Case GADGET_TEXTAREA, GADGET_TEXTFIELD
				GadgetCopy(theActiveGadget)
			Case GADGET_LISTBOX
				Local item:Int = SelectedGadgetItem(lstFiles)
				If (item = -1) Return
				Local tempGadget:TGadget = theActiveGadget
				SetGadgetText(txtPath, EnsurePath(navManager.Path()) + GadgetItemText(lstFiles, item))
				ActivateGadget(txtPath)
				GadgetCopy(txtPath)
				ActivateGadget(tempGadget)
		End Select
	End Method
	
	Method DoCut()
		Local theActiveGadget:TGadget = ActiveGadget()
		If (theActiveGadget = Null) theActiveGadget = lstFiles
		Select GadgetClass(theActiveGadget)
			Case GADGET_TEXTAREA, GADGET_TEXTFIELD
				GadgetCut(theActiveGadget)
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
	End Method
	
	Method DoGoWithItem()
		If (Not(ActiveGadget() = lstFiles) And Not(ActiveGadget() = Null))  Return
		
		If (SelectedGadgetItem(lstFiles) = -1) Return
		Local path:String = EnsurePath(navManager.path()) + GadgetItemText(lstFiles, SelectedGadgetItem(lstFiles))
		If (FileType(path) = FILETYPE_DIR)
			path = EnsurePath(path)
			SetGadgetText(txtPath, path)			
			navManager.GoInside(GadgetText(txtPath))
			PopulateList(GadgetText(txtPath))
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
		PopulateList(GadgetText(txtPath))
		
		If (Not(path = navManager.Path())) navManager.GoLeft(GadgetText(txtPath))
		DetermineType()
	End Method
	
	Method DoRightViaKeys()
		If (Not(ActiveGadget() = lstFiles) And Not(ActiveGadget() = Null))  Return
		DoRight()
	End Method
	
	
	
	Method DoRight()
		If (navManager.currentNode.rightNode = Null) DoGoWithItem()
		
		Local index:Int = SelectedGadgetItem(lstFiles)
		If (index = -1) Return
		Local name:String = GadgetItemText(lstFiles, index)
		
		If (FileType(navManager.Path() + name) = FILETYPE_FILE)
			DoGoWithItem()
		Else If(FileType(navManager.Path() + name) = FILETYPE_DIR)
			If (navManager.Path() + EnsurePath(name) = navManager.currentNode.rightNode.path)
				navManager.GoRight()
				SetGadgetText(txtPath, navManager.Path())
				PopulateList(GadgetText(txtPath))
				
				If (navManager.currentNode.rightNode <> Null)
					SelectFile(StripDir(StripSlash(navManager.currentNode.rightNode.path)))
				EndIf
			Else
				DoGoWithItem()
			EndIf
		EndIf
		
		DetermineType()
	End Method
	
	Method DoLeftViaKeys()
		If (Not(ActiveGadget() = lstFiles) And Not(ActiveGadget() = Null))  Return
		DoLeft()
	End Method
	
	Method DoLeft()
		' Consider if there was a selected item!
		Local index:Int = SelectedGadgetItem(lstFiles)
		
		
		If (index>-1)
			
			Local pathName:String = EnsurePath(navManager.Path()) + GadgetItemText(lstFiles, index)
			If (FileType(pathName) = FILETYPE_DIR) pathName = EnsurePath(pathName)
			
			
			
			Local node:Node = New Node
			node.path = pathName
			node.leftNode = navManager.currentNode
			
			If ( (navManager.currentNode.rightNode <> Null) And Not(navManager.currentNode.rightNode.path = pathName))
				navManager.currentNode.rightNode = node
			EndIf
		EndIf
		
	
		Local path:String = navManager.Path()
		'Local path:String = GadgetText(txtPath)
		Local lastIndex:Int = -1
		Local i:Int = 1
		For i = 1 To Len(path) -1
			If (Mid(path,i,1) = slash)
				If (lastIndex < i)
					lastIndex = i
				EndIf
			EndIf
		Next
		
		If (lastIndex>0)
			SetGadgetText(txtPath, Left(path, lastIndex))
			PopulateList(GadgetText(txtPath))
			navManager.GoLeft(EnsurePath(GadgetText(txtPath)))
			SelectFile(StripDir(StripSlash(navManager.currentNode.rightNode.path))) ' New
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
		
		
		If (FileType(EnsurePath(navManager.path()) + GadgetItemText(lstFiles, SelectedGadgetItem(lstFiles))) = FILETYPE_DIR)
			statusFileType = "Directory"
			
		Else 
			statusFileType = "File"
		EndIf
		
		'SetStatusText(winMain, selectedFileType)
		
		UpdateStatusBar()
		
	End Method
	
	
	Field statusFileType:String
	Field statusError:String
	Method UpdateStatusBar()
		Local cumulative:String = ""
		If (Len(statusFileType)>0) cumulative = cumulative + "Selected Type: " + statusFileType
		cumulative = cumulative + statusError
		SetStatusText(winMain, cumulative)
	End Method
	
	
	' Ensures that we have the trailing slash
	Method EnsurePath:String(aPath:String)
		Local path:String
		If (Mid(aPath, Len(aPath), 1) = slash)
			Return aPath
		Else
			Return aPath + slash
		EndIf
	End Method
	
	Method PopulateList(aPath:String)
		Local path:String = EnsurePath(aPath)
		If (path = Null) Return
		ClearGadgetItems(lstFiles)
		
		PopulateListWithType(path, FILETYPE_DIR)
		PopulateListWithType(path, FILETYPE_FILE)
		
		If (CountGadgetItems(lstFiles)>0)
			SelectGadgetItem(lstFiles, 0)
		EndIf
	End Method
	
	Method PopulateListWithType(path:String, specifiedType:Int)
		Local dir:Int = ReadDir(path)
		If (Not dir) Return
		Repeat
			Local file:String = NextFile(dir)
			If (file = "") Exit
			If (file = "." Or file = ".." Or file = ".DS_Store") Continue
			
			
			If (FileType(path + file) = specifiedType)
				AddGadgetItem(lstFiles, file, 0, -1)
			EndIf
		Forever
		CloseDir(dir)
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
	
	Method RemoveIfRight(pathName:String)
		If (currentNode.rightNode = Null) Return
		
		If (currentNode.rightNode.path = pathName)
			currentNode.rightNode = Null
		EndIf
	End Method
	
	Method Path:String()
		Return currentNode.path
	End Method
End Type


