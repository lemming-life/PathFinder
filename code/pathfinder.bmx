Rem
Project: PathFinder
Author: http://lemming.life
Notes:
- Allows quick navigation of folders/directories and files.
- Allows creation and deletion of files and folders.
- Allows editing of files.
- Allows execution of programs and files.
- Allows storing favorite files/folders.
EndRem

SuperStrict
Import MaxGui.Drivers
Import MaxGui.ProxyGadgets
Import "import/inputWindow.bmx"
Import "import/textWindow.bmx"

Local program:TGui = TGui.Create()
program.Run()
End

Type TGui
	Field winSettings:Settings
	Field navManager:NavigationManager
	
	Field winMain:TGadget
	Field btnLeft:TGadget
	Field btnRight:TGadget
	Field btnGo:TGadget
	Field txtPath:TGadget
	Field splitter:TSplitter
	Field pnlFavorites:TGadget
	Field pnlFiles:TGadget
	Field lstFavorites:TGadget
	Field lstFiles:TGadget
		
	Const UP:Int = 0
	Const DOWN:Int = 1
	Field tWindows:TList
	Field slash:String
	
	Field favoritesFileName:String
	Field favorites:TMap
	Field clipPathName:String
	
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
		
		g.winSettings = Settings.Create(ClientWidth(Desktop())/4, 0, ClientWidth(Desktop())/2, ClientHeight(Desktop())*0.75)
		g.winMain = CreateWindow("PathFinder", g.winSettings.x, g.winSettings.y, g.winSettings.width, g.winSettings.height)
		
		Local btnNavigationWidth:Int = 38
		g.btnLeft = CreateButton("<", 0, 0, btnNavigationWidth, btnHeight, g.winMain, BUTTON_PUSH)
			SetGadgetLayout(g.btnLeft, EDGE_ALIGNED, EDGE_CENTERED, EDGE_ALIGNED, EDGE_CENTERED)
		g.btnRight = CreateButton(">", GadgetWidth(g.btnLeft), 0, btnNavigationWidth, btnHeight, g.winMain, BUTTON_PUSH)
			SetGadgetLayout(g.btnRight, EDGE_ALIGNED, EDGE_CENTERED, EDGE_ALIGNED, EDGE_CENTERED)
			
		Local btnGoWidth:Int = 50
		g.btnGo = CreateButton("Go", ClientWidth(g.winMain) - btnGoWidth, 0, btnGoWidth, btnHeight, g.winMain, BUTTON_OK)
			SetGadgetLayout(g.btnGo, EDGE_CENTERED, EDGE_ALIGNED , EDGE_ALIGNED, EDGE_CENTERED)
		Local txtPathX:Int = GadgetWidth(g.btnLeft) + GadgetHeight(g.btnRight) + txtPadding
		g.txtPath = CreateTextField(txtPathX, 2 + txtPadding/2, ClientWidth(g.winMain) - (btnGoWidth + txtPathX + txtPadding/2), txtFieldHeight - txtPadding/2, g.winMain)
			SetGadgetLayout(g.txtPath, EDGE_ALIGNED, EDGE_ALIGNED, EDGE_ALIGNED, EDGE_CENTERED)
			SetGadgetText(g.txtPath, g.EnsurePath(CurrentDir()))
		
		g.splitter = CreateSplitter(0, btnHeight, ClientWidth(g.winMain), ClientHeight(g.winMain) - btnHeight, g.winMain)
			SetGadgetLayout(g.splitter, EDGE_ALIGNED, EDGE_ALIGNED, EDGE_ALIGNED, EDGE_ALIGNED)
			SetSplitterPosition(g.splitter, ClientWidth(g.winMain)/1.5, 0)
			SetSplitterBehavior(g.splitter, SPLIT_RESIZABLE + SPLIT_CANFLIP + SPLIT_CLICKTOTOGGLE)
		g.pnlFavorites = SplitterPanel(g.splitter, SPLITPANEL_MAIN)
		g.pnlFiles = SplitterPanel(g.splitter, SPLITPANEL_SIDEPANE)
		
		Local lbl:TGadget = CreateLabel("Favorites", 0, btnHeight/4, 100, btnHeight, g.pnlFavorites)
			SetGadgetLayout(lbl, EDGE_ALIGNED, EDGE_CENTERED, EDGE_ALIGNED, EDGE_CENTERED)
		g.lstFavorites = CreateListBox(0, btnHeight, ClientWidth(g.pnlFavorites), ClientHeight(g.pnlFavorites) - btnHeight, g.pnlFavorites)
			SetGadgetLayout(g.lstFavorites, EDGE_ALIGNED, EDGE_ALIGNED, EDGE_ALIGNED, EDGE_ALIGNED)
			g.favoritesFileName = "favorites.txt"
			g.favorites = CreateMap()
				
		g.lstFiles = CreateListBox(0, 0, ClientWidth(g.pnlFiles), ClientHeight(g.pnlFiles), g.pnlFiles)
			SetGadgetLayout(g.lstFiles, EDGE_ALIGNED, EDGE_ALIGNED, EDGE_ALIGNED, EDGE_ALIGNED)		
			g.PopulateList(GadgetText(g.txtPath))
		
		g.navManager = NavigationManager.Create(GadgetText(g.txtPath))

		
		
		SetHotKeyEvent(KEY_1, MODIFIER_COMMAND)	' Add to favorite
		SetHotKeyEvent(KEY_2, MODIFIER_COMMAND)	' Remove favorite
		SetHotKeyEvent(KEY_U, MODIFIER_COMMAND)	' For favorite up
		SetHotKeyEvent(KEY_O, MODIFIER_COMMAND)	' For favorite down
		
		SetHotKeyEvent(KEY_I, MODIFIER_COMMAND)	' For up operations
		SetHotKeyEvent(KEY_K, MODIFIER_COMMAND)	' For down operations
		SetHotKeyEvent(KEY_J, MODIFIER_COMMAND)	' For left operations
		SetHotKeyEvent(KEY_L, MODIFIER_COMMAND)	' For right operations
		
		'SetHotKeyEvent(KEY_E, MODIFIER_COMMAND) ' For Executing
		SetHotKeyEvent(KEY_SEMICOLON, MODIFIER_COMMAND) ' For Executing
		SetHotKeyEvent(Key_S, MODIFIER_COMMAND) ' For saving
		SetHotKeyEvent(KEY_A, MODIFIER_COMMAND) ' For select all
		SetHotKeyEvent(KEY_W, MODIFIER_COMMAND) ' For closing windows
		SetHotKeyEvent(KEY_X, MODIFIER_COMMAND) ' For cutting operations
		SetHotKeyEvent(KEY_C, MODIFIER_COMMAND) ' For copying operations
		SetHotKeyEvent(KEY_V, MODIFIER_COMMAND) ' For pasting operations
		SetHotKeyEvent(KEY_R, MODIFIER_COMMAND) ' For renaming
		SetHotKeyEvent(KEY_N, MODIFIER_COMMAND) ' For new file
		SetHotKeyEvent(KEY_F, MODIFIER_COMMAND) ' For new folder
		SetHotKeyEvent(KEY_BACKSPACE, MODIFIER_COMMAND) ' For deleting
		SetHotKeyEvent(KEY_DELETE, MODIFIER_COMMAND) ' For deleting
		SetHotKeyEvent(KEY_W, MODIFIER_COMMAND)
		
		
		g.tWindows = CreateList()
		Return g
	EndFunction
	
	
	Method Run()
		' Add favorites to list
		LoadFavorites()
			
		' Initialize the right node (if possible)
		If (CountGadgetItems(lstFiles)>0)
			SelectGadgetItem(lstFiles, 0)
			Local rightNode:Node = New Node
			rightNode.leftNode = navManager.currentNode
			rightNode.path = EnsurePath(navManager.Path()) + GadgetItemText(lstFiles,0)
			If (FileType(rightNode.path) = FILETYPE_DIR)
				rightNode.path = EnsurePath(rightNode.path)
			EndIf
			navManager.currentNode.rightNode = rightNode
		EndIf
	
		ActivateGadget(lstFiles)
		While (True)
		    WaitEvent()
		    Select EventID()
		        Case EVENT_WINDOWCLOSE				If (DoCloseActiveWindow(TGadget(EventSource()))) Return
				'Case EVENT_GADGETSELECT				If (EventSource() = lstFiles)	DoSelect()	
				Case EVENT_GADGETSELECT				LastSelected(EventSource())
				Case EVENT_GADGETACTION
					Select EventSource()
						Case btnLeft				DoLeft()
						Case btnRight				DoRight()
						Case btnGo					DoGo(GadgetText(txtPath))		
						'Case lstFiles				DoSelectAction()
						Case lstFiles				DoRightViaKeys()
					End Select
				Case EVENT_HOTKEYHIT
					If (EventMods() = MODIFIER_COMMAND)
						Select EventData()
							Case KEY_1				AddFavorite()
							Case KEY_2				RemoveFavorite()
							Case KEY_U				GoDirectionInList(lstFavorites, UP)
							Case KEY_O				GoDirectionInList(lstFavorites, DOWN)
							
							Case KEY_S				DoSave()
							Case KEY_A				DoSelectAll()
							Case KEY_X				DoCut()
							Case KEY_C				DoCopy()
							Case KEY_V				DoPaste()
							Case KEY_R				DoRename()
							Case KEY_N				DoNewFile()
							Case KEY_F				DoNewFolder()
							Case KEY_BACKSPACE		DoDelete()
							Case KEY_DELETE			DoDelete()
						
							Case KEY_SEMICOLON		DoExecute()
							Case KEY_J				DoLeftViaKeys()
							Case KEY_L				DoRightViaKeys()
							Case KEY_ENTER			DoRightViaKeys()
							Case KEY_W				If (DoCloseActiveWindow(ActiveGadget())) Return
							Case KEY_I				GoDirectionInList(lstFiles, UP)
													DetermineType()
							Case KEY_K				GoDirectionInList(lstFiles, DOWN)
													DetermineType()
						End Select
					EndIf
				Case EVENT_KEYDOWN
					If (ActiveGadget() = txtPath And EventData() = KEY_RETURN)
						DoGo(GadgetText(txtPath))
					EndIf
				
		    End Select
		Wend
	End Method
	
	Method LastSelected(obj:Object)
		Local gadget:TGadget = TGadget(obj)
		If (gadget = lstFiles Or gadget = lstFavorites) Then
			lastActiveListGadget = gadget
		EndIf
	EndMethod
	
	Method SaveFavorites()
		Local fileOut:TStream = WriteFile(favoritesFileName)
		If (Not fileOut) RuntimeError("Could not create favorites file.");
			For Local value:Object = EachIn MapValues(favorites)
				WriteLine(fileOut, String(value))
			Next
		CloseFile(fileOut)
	EndMethod
	
	Method LoadFavorites()
		If (FileType(favoritesFileName) = FILETYPE_FILE)
			If (favorites <> Null) ClearMap(favorites)
			ClearGadgetItems(lstFavorites)
			
			favorites = CreateMap()
			Local fileIn:TStream = ReadFile(favoritesFileName)
			Local line:String
			While( Not Eof(fileIn) )
				line = ReadLine(fileIn)
				'If (Len(line)>0) ListAddLast(extensionsList, line)
				If (Len(line)>0 And FileType(line) > 0)
					Local fn:FavoriteNode = FavoriteNode.Create(line)
					If (Not (MapContains(favorites, fn.name)) )
						MapInsert(favorites, fn.name, fn.path)
						AddGadgetItem(lstFavorites, fn.name)
					EndIf
				EndIf
			Wend
			CloseFile(fileIn)
		EndIf
	EndMethod
	
	
	Method AddFavorite()
		Local selectedIndex:Int = SelectedGadgetItem(lstFiles)
		If (selectedIndex = -1) Return
		Local selectedName:String = GadgetItemText(lstFiles, selectedIndex)
		If ( MapContains(favorites, selectedName) ) Return
		Local fn:FavoriteNode = FavoriteNode.Create(navManager.path() + selectedName)
		MapInsert(favorites, fn.name, fn.path)
		AddGadgetItem(lstFavorites, fn.name)
		SaveFavorites()
	End Method
	
	Method RemoveFavorite()
		Local selectedIndex:Int = SelectedGadgetItem(lstFavorites)
		If (selectedIndex = -1) Return
		Local selectedName:String = GadgetItemText(lstFavorites, selectedIndex)
		If (Not MapContains(favorites, selectedName)) Return
		MapRemove(favorites, selectedName)
		RemoveGadgetItem(lstFavorites, selectedIndex)
		SaveFavorites()
	End Method
	
	
	' Return 1 if winMain to be closed, otherwise return 0
	Method DoCloseActiveWindow:Int(possibleActiveWindow:TGadget)
		Local theActiveGadget:TGadget = possibleActiveWindow 
		If (theActiveGadget = Null) Return 1
		
		While(Not(GadgetClass(theActiveGadget) = GADGET_WINDOW))
			theActiveGadget = GadgetGroup(theActiveGadget)
		Wend
		
		For Local tempBox:TWindow = EachIn tWindows
			If (theActiveGadget = tempBox.window)
				FreeGadget(tempBox.window)
				ListRemove(tWindows, tempBox)
				ActivateGadget(lstFiles)
				Return 0
			EndIf
		Next
		
		Return 1 ' winMain	
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
			ActivateGadget(lstFiles)
		EndIf
		
		UpdateStatusBar()
	End Method
	
	
	
	Method DoNewFolder()
		DoNewFileFolder(FILETYPE_DIR)				
	End Method
	
	Method DoNewFile()
		DoNewFileFolder(FILETYPE_FILE)
	End Method
	
	Method DoRename()
		Local index:Int = SelectedGadgetItem(lstFiles)
		If (index = -1) Return
		Local oldName:String = GadgetItemText(lstFiles, index)
		Local newName:String = TInputWindow.Run("Rename '" + oldName + "'", winMain, "Confirm")
		If (newName = "") Return
		
		Local oldPathName:String = navManager.Path() + oldName
		Local newPathName:String = navManager.Path() + newName
		
		Local result:Int = 0
		
		If (FileType(oldPathName) = FILETYPE_DIR)
			newPathName = EnsurePath(newPathName)
		EndIf
		
		result = RenameFile(oldPathName, newPathName)
		If (result = 0) Return
	
		ModifyGadgetItem(lstFiles, index, newName)
		
		If (navManager.currentNode.rightNode <> Null)
			Local node:Node = navManager.currentNode.rightNode
			While(node <> Null)
				node.path = Replace(node.path, oldPathName, newPathName)
				node = node.rightNode
			Wend	
		EndIf
	End Method
	
	
	Method DoExecute()
		Local currentGadget:TGadget = lastActiveListGadget
		If (currentGadget = Null) Return
		If ( Not(currentGadget = lstFiles) And Not(currentGadget = lstFavorites) ) Return
		
		Local index:Int = SelectedGadgetItem(currentGadget)
		If (index = -1) Return
		Local name:String = GadgetItemText(currentGadget, index)
		
		Local pathExe:String
		If (currentGadget = lstFiles)
			pathExe = EnsurePath(navManager.path()) + name
		Else If(currentGadget = lstFavorites)
			pathExe = String( MapValueForKey(favorites, name) )
		EndIf
		
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
			For Local aWindow:TWindow = EachIn tWindows
				If (aWindow.txtArea = theActiveGadget)
					SaveText(TextAreaText(aWindow.txtArea), aWindow.path)
					Exit
				EndIf
			Next
		EndIf
	End Method
	
	
	Method DeleteThisFile:Int(item:String)
		Local pathName:String = EnsurePath(navManager.Path()) + item

		Local deleted:Int = 0
		If (FileType(pathName) = FILETYPE_FILE)
			deleted = DeleteFile(pathName)
		Else If (FileType(pathName) = FILETYPE_DIR)
			If (Confirm("Delete " + item + " folder and its contents?"))
				deleted = DeleteDir(pathName, True)
			EndIf
		EndIf
		
		If (deleted)
			If (navManager.currentNode.rightNode <> Null)
				If (FileType(pathName) = FILETYPE_DIR) pathName = EnsurePath(pathName)
				If (navManager.currentNode.rightNode.path = pathName)
					navManager.currentNode.rightNode = Null
				EndIf
			EndIf
			Return 1
		Else
			Return 0
		EndIf
	End Method
	
	
	Method DoDelete()
		Local theActiveGadget:TGadget = ActiveGadget()
		If (theActiveGadget = Null) theActiveGadget = lstFiles
		If (Not(GadgetClass(theActiveGadget) = GADGET_TEXTAREA) And Not(GadgetClass(theActiveGadget) = GADGET_TEXTFIELD)) theActiveGadget = lstFiles
		
		Select GadgetClass(theActiveGadget)
			Case GADGET_TEXTFIELD, GADGET_TEXTAREA
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
				If (CountGadgetItems(lstFiles)>0)
					SelectGadgetItem(lstFiles, nextIndex)
					ActivateGadget(lstFiles)
				EndIf
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
				clipPathName = GadgetText(txtPath)
				ActivateGadget(tempGadget)
				markCut = 0
		End Select
	End Method
	
	Field markCut:Int = 0
	Method DoCut()
		Local theActiveGadget:TGadget = ActiveGadget()
		If (theActiveGadget = Null) theActiveGadget = lstFiles
		Select GadgetClass(theActiveGadget)
			Case GADGET_TEXTAREA, GADGET_TEXTFIELD
				GadgetCut(theActiveGadget)
			Case GADGET_LISTBOX
				Local item:Int = SelectedGadgetItem(lstFiles)
				If (item = -1) Return
				Local tempGadget:TGadget = theActiveGadget
				SetGadgetText(txtPath, EnsurePath(navManager.Path()) + GadgetItemText(lstFiles, item))
				ActivateGadget(txtPath)
				GadgetCopy(txtPath)
				clipPathName = GadgetText(txtPath)
				ActivateGadget(tempGadget)
				markCut = 1
		End Select
	End Method
	
	Method DoPaste()
		Local theActiveGadget:TGadget = ActiveGadget()
		If (theActiveGadget = Null) theActiveGadget = lstFiles
			
		If (Not(GadgetClass(theActiveGadget) = GADGET_TEXTAREA) And Not(GadgetClass(theActiveGadget) = GADGET_TEXTFIELD)) theActiveGadget = lstFiles
			
		Select GadgetClass(theActiveGadget)
			Case GADGET_TEXTAREA, GADGET_TEXTFIELD
				GadgetPaste(theActiveGadget)
			Case GADGET_LISTBOX
				If (clipPathName = Null) Return
				If (FileType(clipPathName) = 0) Return
				
				' If we are performing cutting and the source and destination are the same then return
				If (markCut)
					Local fileName:String = StripDir(clipPathName)
					If (FileType(clipPathName) = FILETYPE_DIR) fileName = StripDir( StripSlash(clipPathName) )
					
					If (clipPathName = EnsurePath(navManager.Path()) + fileName)
						markCut = 0
						clipPathName = Null
						Return
					EndIf
				EndIf
				
				Local operationState:Int = 0
				
				If (AttemptFileFolderPaste())
					If (markCut And AttemptFileFolderDelete())
						clipPathName = Null
						markCut = 0
					Else
						statusError = "Could not perform operation."
					EndIf
				Else 
					statusError = "Could not perform operation."
					
				EndIf
				
				UpdateStatusBar()
		End Select
	End Method
	
	
	Method AttemptFileFolderPaste:Int()
		Local fileName:String = StripDir(clipPathName)
		If (FileType(clipPathName) = FILETYPE_DIR) fileName = StripDir( StripSlash(clipPathName) )
		Local filePathName:String = EnsurePath(navManager.Path()) + fileName
		
		' If the file is being pasted onto the same, modify the name slightly
		If (clipPathName = filePathName)
			fileName = GetUniqueName(EnsurePath(navManager.Path()), fileName)
			filePathName = EnsurePath(navManager.Path()) + fileName
		EndIf
		
		Local operationState:Int = 0
		If (FileType(clipPathName) = FILETYPE_FILE)
			operationState = CopyFile(clipPathName, filePathName)
			If (operationState = 0) DeleteFile(filePathName)
		Else If (FileType(clipPathName) = FILETYPE_DIR)
			operationState = CopyDir(clipPathName, filePathName)
			If (operationState = 0) DeleteDir(filePathName, True)
		EndIf
		
		If (operationState)
			DoGo(navManager.Path())
			SelectFile(fileName)
			ActivateGadget(lstFiles)
		EndIf
		
		Return operationState
	End Method
	
	Method AttemptFileFolderDelete:Int()
		If (FileType(clipPathName) = FILETYPE_FILE)
			Return DeleteFile(clipPathName)
		Else If (FileType(clipPathName) = FILETYPE_DIR)
			Return DeleteDir(clipPathName, True)
		EndIf
	End Method
	
	
	Method GetUniqueName:String(path:String, name:String)
		Local tempName:String = ""
		Local filePathName:String = path + name
		While(FileType(filePathName) = FILETYPE_DIR Or FileType(filePathName) = FILETYPE_FILE)	
			tempName = "c" + String((Int(Rnd()*100))) + "_" + name
			filePathName = path + tempName
		Wend
		Return tempName
	EndMethod
	
		
	Method DoSelect()
		If (SelectedGadgetItem(lstFiles) = -1) Return
		DetermineType()
	End Method
	
	Method DoSelectAction()
		DoGoWithItem()
	End Method
	
	Method DoGoWithItem()
		If (Not(ActiveGadget() = lstFiles) And Not(ActiveGadget() = Null))  Return
		
		Local index:Int = SelectedGadgetItem(lstFiles)
		If (index = -1) Return
		
		Local path:String = EnsurePath(navManager.path()) + GadgetItemText(lstFiles, index)
		
		If (FileType(path) = FILETYPE_DIR)
			path = EnsurePath(path)
			SetGadgetText(txtPath, path)			
			navManager.GoInside(path)
			PopulateList(GadgetText(txtPath))
			If (CountGadgetItems(lstFiles)>0) SelectGadgetItem(lstFiles, 0)
			DetermineType()
		Else If(FileType(path) = FILETYPE_FILE)
			Local found:Int = 0
			For Local aWindow:TWindow = EachIn tWindows
				If (aWindow.path = path)
					ActivateGadget(aWindow.window)
					found = 1
					Exit
				EndIf
			Next
			
			If (found = 0) ListAddLast(tWindows, TWindow.Create(path, winMain))
			
			Local rightNodePathName:String = ""
			If (navManager.currentNode.rightNode <> Null)
				rightNodePathName = navManager.currentNode.rightNode.path
			EndIf
			
			Local newRightNode:Node = New Node
			newRightNode.path = navManager.path() + GadgetItemText(lstFiles, index)
			newRightNode.leftNode = navManager.currentNode
			
			If ( Not(rightNodePathName = newRightNode.path) ) navManager.currentNode.rightNode = newRightNode
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
		If (lastActiveListGadget = lstFavorites)
			'todo
			'DoGo(GadgetText(txtPath))
			
			
			Local index:Int = SelectedGadgetItem(lstFavorites)
			If (index = -1) Return
			Local name:String = GadgetItemText(lstFavorites, index)
			Local pathName:String = String(MapValueForKey(favorites, name))
			Local path:String = pathName
			If (FileType(pathName) = FILETYPE_FILE) path = ExtractDir(pathName)
			
			DoGo( path )
			
			If (FileType(pathName) = FILETYPE_FILE)
				SelectFile(name)
				ActivateGadget(lstFiles)
				lastActiveListGadget = lstFiles
			EndIf
		Else
			DoRight()
		EndIf
		
		
	End Method
	
	
	Method DoRight()
		If (navManager.currentNode.rightNode = Null)
			DoGoWithItem()
			Return
		EndIf
		
		Local index:Int = SelectedGadgetItem(lstFiles)
		If (index = -1)
			Local toBeSelectedName:String
			If (FileType(navManager.currentNode.rightNode.path) = FILETYPE_DIR)
				toBeSelectedName = StripDir(StripSlash(navManager.currentNode.rightNode.path))
			ElseIf (FileType(navManager.currentNode.rightNode.path) = FILETYPE_FILE)
				toBeSelectedName = StripDir(navManager.currentNode.rightNode.path)
			EndIf
			
			SelectFile(toBeSelectedName)
			index = SelectedGadgetItem(lstFiles)
		EndIf
		
		Local name:String = GadgetItemText(lstFiles, index)
		
		If (FileType(navManager.Path() + name) = FILETYPE_FILE)
			DoGoWithItem();
		ElseIf (FileType(navManager.Path() + name) = FILETYPE_DIR)
			Local pathName:String = EnsurePath(navManager.Path() + name)
			
			If ( (navManager.currentNode.rightNode <> Null) And (pathName = navManager.currentNode.rightNode.path))
				navManager.GoRight()
			Else
				navManager.GoInside(pathName)
			EndIf
			
			SetGadgetText(txtPath, pathName)
			PopulateList(pathName)
			
			If (navManager.currentNode.rightNode = Null)
				If (CountGadgetItems(lstFiles)>0)
					SelectGadgetItem(lstFiles, 0)
					Local rightNode:Node = New Node
					rightNode.leftNode = navManager.currentNode
					rightNode.path = EnsurePath(navManager.Path()) + GadgetItemText(lstFiles,0)
					If (FileType(rightNode.path) = FILETYPE_DIR)
						rightNode.path = EnsurePath(rightNode.path)
					EndIf
					navManager.currentNode.rightNode = rightNode
				EndIf
			Else				
				If ( (Right(navManager.currentNode.rightNode.path, 1) = "/") Or (Right(navManager.currentNode.rightNode.path, 1) = "\") )
					name = StripDir(StripSlash(navManager.currentNode.rightNode.path))
				Else
					name = StripDir(navManager.currentNode.rightNode.path)
				EndIf
				SelectFile(name)
			EndIf
		EndIf		
		DetermineType()
	End Method
	
	
	Method DoLeftViaKeys()
		If (Not(ActiveGadget() = lstFiles) And Not(ActiveGadget() = Null))  Return
		DoLeft()
	End Method
	
	Method DoLeft()
		Local index:Int = SelectedGadgetItem(lstFiles)
		
		If (index>-1)
			Local pathName:String = navManager.Path() + GadgetItemText(lstFiles,index)
			If (FileType(pathName) = FILETYPE_DIR) pathName = EnsurePath(pathName)
			Local rightNode:Node = New Node	
			rightNode.path = pathName
			
			If (navManager.currentNode.rightNode = Null Or (navManager.currentNode.rightNode <> Null And Not(pathName = navManager.currentNode.rightNode.path)))
				rightNode.leftNode = navManager.currentNode
				navManager.currentNode.rightNode = rightNode
			EndIf
		EndIf	
			
		Local path:String = navManager.Path()
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
	
	Field lastActiveListGadget:TGadget = Null
	Method GoDirectionInList(listGadget:TGadget, direction:Int)
		ActivateGadget(listGadget)
		If (CountGadgetItems(listGadget) = 0) Return
		If (SelectedGadgetItem(listGadget) = -1) SelectGadgetItem(listGadget, 0)
		
		If (direction = UP And SelectedGadgetItem(listGadget)>0)
			SelectGadgetItem(listGadget, SelectedGadgetItem(listGadget)-1)
		ElseIf (direction = DOWN And SelectedGadgetItem(listGadget)<CountGadgetItems(listGadget)-1)
			SelectGadgetItem(listGadget, SelectedGadgetItem(listGadget)+1)
		EndIf
		lastActiveListGadget = listGadget
	End Method
	
	Method DetermineType()
		If (SelectedGadgetItem(lstFiles) = -1) Return
		
		If (FileType(EnsurePath(navManager.path()) + GadgetItemText(lstFiles, SelectedGadgetItem(lstFiles))) = FILETYPE_DIR)
			statusFileType = "Directory"
		Else 
			statusFileType = "File"
		EndIf
		
		UpdateStatusBar()
	End Method
	
	
	Field statusFileType:String
	Field statusError:String
	Method UpdateStatusBar()
		Local cumulative:String = ""
		If (Len(statusFileType)>0) cumulative = cumulative + "Selected Type: " + statusFileType
		'If (Len(statusError)>0) cumulative = cumulative + " | " + statusError
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

Type Favorites
	Field filePathName:String
	Field list:TList

	Function Create:Favorites(aPathName:String = "")
		Local f:Favorites = New Favorites
		f.filePathName = aPathName
		f.list = New TList
		f.LoadFile()
		
		Return f
	End Function
	
	
	Method LoadFile()
		If (Len(filePathName) = 0 Or FileType(filePathName) = 0) Return
		
		Local fileIn:TStream = ReadFile(filePathName)
		Local line:String
		While(Not Eof(fileIn))
			line = ReadLine(fileIn)
			If (FileType(line) > 0)
				Rem
				Local favNode:FavoriteNode = New FavoriteNode
				
				list.AddLast(
				EndRem
			EndIf
		Wend
		CloseStream(fileIn)
		
		
	End Method
	
	Method Add(pathName:String)
	
	End Method
	
	
	Method Remove(name:String)
	
	End Method
	
	
	Method Save()
		
	End Method
	
	Method Clear()
	
	End Method
	
	
	
EndType

Type FavoriteNode
	Field path:String
	Field name:String
	
	Function Create:FavoriteNode(pathName:String)
		Local f:FavoriteNode = New FavoriteNode
		f.path = pathName
		f.name = StripDir(pathName)
		Return f
	EndFunction
	
	
	
	
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


