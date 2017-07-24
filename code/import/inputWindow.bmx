
Rem
Name: TInputWindow
Author: http://lemming.life
Updated: June 15, 2017
Notes of inputWindow.bmx: prompts the user for text input.
EndRem

SuperStrict
Import MaxGui.Drivers

Type TInputWindow
	Field btnWidth:Int = 85
	Field btnHeight:Int = 24

	Field window:TGadget
	Field txtInput:TGadget
	Field btnCreate:TGadget
	Field btnCancel:TGadget

	Function Run:String(title:String, parent:TGadget, createBtnText:String = "Create", cancelBtnText:String = "Cancel")
		Local ti:TInputWindow = New TInputWindow
		Local winHeight:Int = ti.btnHeight*1.75

		?win32
		  winHeight = winHeight + 20
		?

		ti.window = CreateWindow(title, 0, 0, 350, winHeight, parent, WINDOW_TITLEBAR + WINDOW_TOOL + WINDOW_CENTER)
		ti.txtInput = CreateTextField(8, 0, ClientWidth(ti.window) - (ti.btnWidth*2) - 8, ti.btnHeight, ti.window)
		ti.btnCreate = CreateButton(createBtnText, GadgetWidth(ti.txtInput) + 8, 0, ti.btnWidth, ti.btnHeight, ti.window, BUTTON_OK)
		ti.btnCancel = CreateButton(cancelBtnText, ClientWidth(ti.window) - ti.btnWidth, 0, ti.btnWidth, ti.btnHeight, ti.window, BUTTON_CANCEL)


		DisableGadget(parent)
		ShowGadget(ti.window)
		ActivateGadget(ti.txtInput)

		While True
			WaitEvent()

		    Select EventID()
		        Case EVENT_WINDOWCLOSE
					If (EventSource() = ti.window)
						CloseThisWindow(ti.window, parent)
						Return ""
		            EndIf

				Case EVENT_GADGETACTION
					Select EventSource()
						Case ti.btnCreate
							Local txt:String = Trim(GadgetText(ti.txtInput))
							CloseThisWindow(ti.window, parent)
							Return txt
						Case ti.btnCancel
							CloseThisWindow(ti.window, parent)
							Return ""
					EndSelect
			End Select
		Wend
	EndFunction

	Function CloseThisWindow(thisWindow:TGadget, parent:TGadget)
		FreeGadget(thisWindow)
		EnableGadget(parent)
		ShowGadget(parent)
		ActivateGadget(parent)
	End Function

EndType

