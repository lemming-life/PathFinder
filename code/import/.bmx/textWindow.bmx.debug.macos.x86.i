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
TWindow^Object{
.window:TGadget&
.txtPath:TGadget&
.txtArea:TGadget&
.path$&
-New%()="_bb_TWindow_New"
-Delete%()="_bb_TWindow_Delete"
+Create:TWindow(path$,parent:TGadget)="_bb_TWindow_Create"
}="bb_TWindow"
