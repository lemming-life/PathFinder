	.reference	___bb_appstub_appstub
	.reference	___bb_audio_audio
	.reference	___bb_basic_basic
	.reference	___bb_blitz_blitz
	.reference	___bb_bmploader_bmploader
	.reference	___bb_d3d7max2d_d3d7max2d
	.reference	___bb_d3d9max2d_d3d9max2d
	.reference	___bb_data_data
	.reference	___bb_directsoundaudio_directsoundaudio
	.reference	___bb_drivers_drivers
	.reference	___bb_dxgraphics_dxgraphics
	.reference	___bb_eventqueue_eventqueue
	.reference	___bb_font_font
	.reference	___bb_freeaudioaudio_freeaudioaudio
	.reference	___bb_freejoy_freejoy
	.reference	___bb_freeprocess_freeprocess
	.reference	___bb_freetypefont_freetypefont
	.reference	___bb_glew_glew
	.reference	___bb_glgraphics_glgraphics
	.reference	___bb_glmax2d_glmax2d
	.reference	___bb_gnet_gnet
	.reference	___bb_jpgloader_jpgloader
	.reference	___bb_maxlua_maxlua
	.reference	___bb_maxutil_maxutil
	.reference	___bb_oggloader_oggloader
	.reference	___bb_openalaudio_openalaudio
	.reference	___bb_pngloader_pngloader
	.reference	___bb_retro_retro
	.reference	___bb_tgaloader_tgaloader
	.reference	___bb_threads_threads
	.reference	___bb_timer_timer
	.reference	___bb_wavloader_wavloader
	.reference	___bb_win32_win32
	.reference	_bbEmptyString
	.reference	_bbFloatToInt
	.reference	_bbGCFree
	.reference	_bbNullObject
	.reference	_bbObjectClass
	.reference	_bbObjectCompare
	.reference	_bbObjectCtor
	.reference	_bbObjectFree
	.reference	_bbObjectNew
	.reference	_bbObjectRegisterType
	.reference	_bbObjectReserved
	.reference	_bbObjectSendMessage
	.reference	_bbObjectToString
	.reference	_brl_filesystem_StripDir
	.reference	_brl_textstream_LoadText
	.reference	_maxgui_maxgui_ActivateGadget
	.reference	_maxgui_maxgui_ClientHeight
	.reference	_maxgui_maxgui_ClientWidth
	.reference	_maxgui_maxgui_CreateTextArea
	.reference	_maxgui_maxgui_CreateWindow
	.reference	_maxgui_maxgui_Desktop
	.reference	_maxgui_maxgui_SetGadgetLayout
	.reference	_maxgui_maxgui_SetGadgetText
	.reference	_maxgui_maxgui_SetTextAreaText
	.globl	___bb_import_textwindow
	.globl	__bb_TWindow_Create
	.globl	__bb_TWindow_Delete
	.globl	__bb_TWindow_New
	.globl	_bb_TWindow
	.text	
___bb_import_textwindow:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	cmpl	$0,_35
	je	_36
	mov	$0,%eax
	mov	%ebp,%esp
	pop	%ebp
	ret
_36:
	movl	$1,_35
	call	___bb_blitz_blitz
	call	___bb_drivers_drivers
	call	___bb_appstub_appstub
	call	___bb_audio_audio
	call	___bb_basic_basic
	call	___bb_bmploader_bmploader
	call	___bb_d3d7max2d_d3d7max2d
	call	___bb_d3d9max2d_d3d9max2d
	call	___bb_data_data
	call	___bb_directsoundaudio_directsoundaudio
	call	___bb_dxgraphics_dxgraphics
	call	___bb_eventqueue_eventqueue
	call	___bb_font_font
	call	___bb_freeaudioaudio_freeaudioaudio
	call	___bb_freetypefont_freetypefont
	call	___bb_glgraphics_glgraphics
	call	___bb_glmax2d_glmax2d
	call	___bb_gnet_gnet
	call	___bb_jpgloader_jpgloader
	call	___bb_maxlua_maxlua
	call	___bb_maxutil_maxutil
	call	___bb_oggloader_oggloader
	call	___bb_openalaudio_openalaudio
	call	___bb_pngloader_pngloader
	call	___bb_retro_retro
	call	___bb_tgaloader_tgaloader
	call	___bb_threads_threads
	call	___bb_timer_timer
	call	___bb_wavloader_wavloader
	call	___bb_freejoy_freejoy
	call	___bb_freeprocess_freeprocess
	call	___bb_glew_glew
	call	___bb_win32_win32
	movl	$_bb_TWindow,(%esp)
	call	_bbObjectRegisterType
	mov	$0,%eax
	jmp	_23
_23:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TWindow_New:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
	movl	%ebx,(%esp)
	call	_bbObjectCtor
	movl	$_bb_TWindow,(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,8(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,12(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,16(%ebx)
	mov	$_bbEmptyString,%eax
	incl	4(%eax)
	movl	%eax,20(%ebx)
	mov	$0,%eax
	jmp	_26
_26:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TWindow_Delete:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
_29:
	movl	20(%ebx),%eax
	decl	4(%eax)
	jnz	_43
	movl	%eax,(%esp)
	call	_bbGCFree
_43:
	movl	16(%ebx),%eax
	decl	4(%eax)
	jnz	_45
	movl	%eax,(%esp)
	call	_bbGCFree
_45:
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_47
	movl	%eax,(%esp)
	call	_bbGCFree
_47:
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_49
	movl	%eax,(%esp)
	call	_bbGCFree
_49:
	mov	$0,%eax
	jmp	_41
_41:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TWindow_Create:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$36,%esp
	movl	$_bb_TWindow,(%esp)
	call	_bbObjectNew
	mov	%eax,%ebx
	movl	$24,-4(%ebp)
	mov	$4,%edi
	movl	8(%ebp),%eax
	incl	4(%eax)
	mov	%eax,%esi
	movl	20(%ebx),%eax
	decl	4(%eax)
	jnz	_56
	movl	%eax,(%esp)
	call	_bbGCFree
_56:
	movl	%esi,20(%ebx)
	movl	$643,24(%esp)
	movl	$_bbNullObject,20(%esp)
	call	_maxgui_maxgui_Desktop
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ClientHeight
	movl	%eax,-8(%ebp)
	fildl	-8(%ebp)
	fmuls	_76
	fstpl	(%esp)
	call	_bbFloatToInt
	movl	%eax,16(%esp)
	call	_maxgui_maxgui_Desktop
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ClientWidth
	cdq
	and	$1,%edx
	add	%edx,%eax
	sar	$1,%eax
	movl	%eax,12(%esp)
	movl	$0,8(%esp)
	call	_maxgui_maxgui_Desktop
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ClientWidth
	cdq
	and	$3,%edx
	add	%edx,%eax
	sar	$2,%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_filesystem_StripDir
	movl	%eax,(%esp)
	call	_maxgui_maxgui_CreateWindow
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_60
	movl	%eax,(%esp)
	call	_bbGCFree
_60:
	movl	%esi,8(%ebx)
	movl	$0,20(%esp)
	movl	8(%ebx),%eax
	movl	%eax,16(%esp)
	movl	-4(%ebp),%eax
	sub	%edi,%eax
	movl	%eax,12(%esp)
	movl	8(%ebx),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ClientWidth
	movl	%eax,8(%esp)
	movl	%edi,4(%esp)
	movl	$0,(%esp)
	call	_maxgui_maxgui_CreateTextArea
	incl	4(%eax)
	mov	%eax,%esi
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_64
	movl	%eax,(%esp)
	call	_bbGCFree
_64:
	movl	%esi,12(%ebx)
	movl	$0,16(%esp)
	movl	$1,12(%esp)
	movl	$1,8(%esp)
	movl	$1,4(%esp)
	movl	12(%ebx),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SetGadgetLayout
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebx),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SetGadgetText
	movl	$1,20(%esp)
	movl	8(%ebx),%eax
	movl	%eax,16(%esp)
	movl	8(%ebx),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ClientHeight
	subl	-4(%ebp),%eax
	sub	%edi,%eax
	movl	%eax,12(%esp)
	movl	8(%ebx),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ClientWidth
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	add	%edi,%eax
	movl	%eax,4(%esp)
	movl	$0,(%esp)
	call	_maxgui_maxgui_CreateTextArea
	incl	4(%eax)
	mov	%eax,%esi
	movl	16(%ebx),%eax
	decl	4(%eax)
	jnz	_68
	movl	%eax,(%esp)
	call	_bbGCFree
_68:
	movl	%esi,16(%ebx)
	movl	$1,16(%esp)
	movl	$1,12(%esp)
	movl	$1,8(%esp)
	movl	$1,4(%esp)
	movl	16(%ebx),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SetGadgetLayout
	movl	$1,16(%esp)
	movl	$-1,12(%esp)
	movl	$0,8(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_textstream_LoadText
	movl	%eax,4(%esp)
	movl	16(%ebx),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SetTextAreaText
	movl	16(%ebx),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ActivateGadget
	mov	%ebx,%eax
	jmp	_33
_33:
	add	$36,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_35:
	.long	0
_11:
	.asciz	"TWindow"
_12:
	.asciz	"window"
_13:
	.asciz	":TGadget"
_14:
	.asciz	"txtPath"
_15:
	.asciz	"txtArea"
_16:
	.asciz	"path"
_17:
	.asciz	"$"
_18:
	.asciz	"New"
_19:
	.asciz	"()i"
_20:
	.asciz	"Delete"
_21:
	.asciz	"Create"
_22:
	.asciz	"($,:TGadget):TWindow"
	.align	4
_10:
	.long	2
	.long	_11
	.long	3
	.long	_12
	.long	_13
	.long	8
	.long	3
	.long	_14
	.long	_13
	.long	12
	.long	3
	.long	_15
	.long	_13
	.long	16
	.long	3
	.long	_16
	.long	_17
	.long	20
	.long	6
	.long	_18
	.long	_19
	.long	16
	.long	6
	.long	_20
	.long	_19
	.long	20
	.long	7
	.long	_21
	.long	_22
	.long	48
	.long	0
	.align	4
_bb_TWindow:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_10
	.long	24
	.long	__bb_TWindow_New
	.long	__bb_TWindow_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	__bb_TWindow_Create
	.align	4
_76:
	.long	0x3f400000
