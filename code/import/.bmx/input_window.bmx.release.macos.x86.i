import brl.blitz
import maxgui.drivers
import brl.appstub
import brl.audio
import brl.basic
import brl.bmploader
import brl.d3d7max2d
import brl.d3d9max2d
import brl.data
import brl.directsoundaudio
import brl.dxgraphics
import brl.eventqueue
import brl.font
import brl.freeaudioaudio
import brl.freetypefont
import brl.glgraphics
import brl.glmax2d
import brl.gnet
import brl.jpgloader
import brl.maxlua
import brl.maxutil
import brl.oggloader
import brl.openalaudio
import brl.pngloader
import brl.retro
import brl.tgaloader
import brl.threads
import brl.timer
import brl.wavloader
import pub.freejoy
import pub.freeprocess
import pub.glew
import pub.win32
TInputWindow^Object{
.btnWidth%&
.btnHeight%&
.window:TGadget&
.txtInput:TGadget&
.btnCreate:TGadget&
.btnCancel:TGadget&
-New%()="_bb_TInputWindow_New"
-Delete%()="_bb_TInputWindow_Delete"
+Run$(title$,parent:TGadget,createBtnText$=$"Create",cancelBtnText$=$"Cancel")="_bb_TInputWindow_Run"
+CloseThisWindow%(thisWindow:TGadget,parent:TGadget)="_bb_TInputWindow_CloseThisWindow"
}="bb_TInputWindow"
