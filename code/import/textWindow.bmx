Rem
Name: TWindow
Author: http://lemming.life
Updated: June 15, 2017
License: zlib/libpng
Notes: TWindow is. window with a text box.
- For event handling use then handle returned.
EndRem

SuperStrict
Import MaxGui.Drivers

Type TWindow
	Field window:TGadget
	Field txtPath:TGadget
	Field txtArea:TGadget
	Field path:String
	Function Create:TWindow(path:String, parent:TGadget)
		Local g:TWindow = New TWindow
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
			
		ActivateGadget(g.txtArea)
		Return g	
	End Function
End Type
