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
	.reference	_bbStringClass
	.reference	_brl_eventqueue_EventID
	.reference	_brl_eventqueue_EventSource
	.reference	_brl_eventqueue_WaitEvent
	.reference	_brl_retro_Trim
	.reference	_maxgui_maxgui_ActivateGadget
	.reference	_maxgui_maxgui_ClientWidth
	.reference	_maxgui_maxgui_CreateButton
	.reference	_maxgui_maxgui_CreateTextField
	.reference	_maxgui_maxgui_CreateWindow
	.reference	_maxgui_maxgui_DisableGadget
	.reference	_maxgui_maxgui_EnableGadget
	.reference	_maxgui_maxgui_FreeGadget
	.reference	_maxgui_maxgui_GadgetText
	.reference	_maxgui_maxgui_GadgetWidth
	.reference	_maxgui_maxgui_ShowGadget
	.globl	___bb_import_input_window
	.globl	__bb_TInputWindow_CloseThisWindow
	.globl	__bb_TInputWindow_Delete
	.globl	__bb_TInputWindow_New
	.globl	__bb_TInputWindow_Run
	.globl	_bb_TInputWindow
	.text	
___bb_import_input_window:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	cmpl	$0,_48
	je	_49
	mov	$0,%eax
	mov	%ebp,%esp
	pop	%ebp
	ret
_49:
	movl	$1,_48
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
	movl	$_bb_TInputWindow,(%esp)
	call	_bbObjectRegisterType
	mov	$0,%eax
	jmp	_32
_32:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TInputWindow_New:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
	movl	%ebx,(%esp)
	call	_bbObjectCtor
	movl	$_bb_TInputWindow,(%ebx)
	movl	$85,8(%ebx)
	movl	$24,12(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,16(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,20(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,24(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,28(%ebx)
	mov	$0,%eax
	jmp	_35
_35:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TInputWindow_Delete:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
_38:
	movl	28(%ebx),%eax
	decl	4(%eax)
	jnz	_56
	movl	%eax,(%esp)
	call	_bbGCFree
_56:
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_58
	movl	%eax,(%esp)
	call	_bbGCFree
_58:
	movl	20(%ebx),%eax
	decl	4(%eax)
	jnz	_60
	movl	%eax,(%esp)
	call	_bbGCFree
_60:
	movl	16(%ebx),%eax
	decl	4(%eax)
	jnz	_62
	movl	%eax,(%esp)
	call	_bbGCFree
_62:
	mov	$0,%eax
	jmp	_54
_54:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TInputWindow_Run:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$40,%esp
	movl	8(%ebp),%esi
	movl	12(%ebp),%edi
	movl	$_bb_TInputWindow,(%esp)
	call	_bbObjectNew
	mov	%eax,%ebx
	movl	12(%ebx),%eax
	movl	%eax,-4(%ebp)
	fildl	-4(%ebp)
	fmuls	_98
	fstpl	(%esp)
	call	_bbFloatToInt
	movl	$529,24(%esp)
	movl	%edi,20(%esp)
	movl	%eax,16(%esp)
	movl	$350,12(%esp)
	movl	$0,8(%esp)
	movl	$0,4(%esp)
	movl	%esi,(%esp)
	call	_maxgui_maxgui_CreateWindow
	incl	4(%eax)
	mov	%eax,%esi
	movl	16(%ebx),%eax
	decl	4(%eax)
	jnz	_68
	movl	%eax,(%esp)
	call	_bbGCFree
_68:
	movl	%esi,16(%ebx)
	movl	$0,20(%esp)
	movl	16(%ebx),%eax
	movl	%eax,16(%esp)
	movl	12(%ebx),%eax
	movl	%eax,12(%esp)
	movl	16(%ebx),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ClientWidth
	movl	8(%ebx),%edx
	shl	$1,%edx
	sub	%edx,%eax
	sub	$8,%eax
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	movl	$8,(%esp)
	call	_maxgui_maxgui_CreateTextField
	incl	4(%eax)
	mov	%eax,%esi
	movl	20(%ebx),%eax
	decl	4(%eax)
	jnz	_72
	movl	%eax,(%esp)
	call	_bbGCFree
_72:
	movl	%esi,20(%ebx)
	movl	$4,24(%esp)
	movl	16(%ebx),%eax
	movl	%eax,20(%esp)
	movl	12(%ebx),%eax
	movl	%eax,16(%esp)
	movl	8(%ebx),%eax
	movl	%eax,12(%esp)
	movl	$0,8(%esp)
	movl	20(%ebx),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetWidth
	add	$8,%eax
	movl	%eax,4(%esp)
	movl	$_10,(%esp)
	call	_maxgui_maxgui_CreateButton
	incl	4(%eax)
	mov	%eax,%esi
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_76
	movl	%eax,(%esp)
	call	_bbGCFree
_76:
	movl	%esi,24(%ebx)
	movl	$5,24(%esp)
	movl	16(%ebx),%eax
	movl	%eax,20(%esp)
	movl	12(%ebx),%eax
	movl	%eax,16(%esp)
	movl	8(%ebx),%eax
	movl	%eax,12(%esp)
	movl	$0,8(%esp)
	movl	16(%ebx),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ClientWidth
	subl	8(%ebx),%eax
	movl	%eax,4(%esp)
	movl	$_11,(%esp)
	call	_maxgui_maxgui_CreateButton
	incl	4(%eax)
	mov	%eax,%esi
	movl	28(%ebx),%eax
	decl	4(%eax)
	jnz	_80
	movl	%eax,(%esp)
	call	_bbGCFree
_80:
	movl	%esi,28(%ebx)
	movl	%edi,(%esp)
	call	_maxgui_maxgui_DisableGadget
	movl	16(%ebx),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ShowGadget
	movl	20(%ebx),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ActivateGadget
	jmp	_12
_14:
	call	_brl_eventqueue_WaitEvent
	call	_brl_eventqueue_EventID
	cmp	$16387,%eax
	je	_83
	cmp	$8193,%eax
	je	_84
	jmp	_82
_83:
	call	_brl_eventqueue_EventSource
	cmpl	16(%ebx),%eax
	jne	_85
	movl	%edi,4(%esp)
	movl	16(%ebx),%eax
	movl	%eax,(%esp)
	calll	*_bb_TInputWindow+52
	mov	$_1,%eax
	jmp	_42
_85:
	jmp	_82
_84:
	call	_brl_eventqueue_EventSource
	cmpl	24(%ebx),%eax
	je	_88
	cmpl	28(%ebx),%eax
	je	_89
	jmp	_87
_88:
	movl	20(%ebx),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetText
	movl	%eax,(%esp)
	call	_brl_retro_Trim
	mov	%eax,%esi
	movl	%edi,4(%esp)
	movl	16(%ebx),%eax
	movl	%eax,(%esp)
	calll	*_bb_TInputWindow+52
	mov	%esi,%eax
	jmp	_42
_89:
	movl	%edi,4(%esp)
	movl	16(%ebx),%eax
	movl	%eax,(%esp)
	calll	*_bb_TInputWindow+52
	mov	$_1,%eax
	jmp	_42
_87:
	jmp	_82
_82:
_12:
	mov	$1,%eax
	cmp	$0,%eax
	jne	_14
_13:
	mov	$_bbEmptyString,%eax
	jmp	_42
_42:
	add	$40,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TInputWindow_CloseThisWindow:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%eax
	movl	12(%ebp),%ebx
	movl	%eax,(%esp)
	call	_maxgui_maxgui_FreeGadget
	movl	%ebx,(%esp)
	call	_maxgui_maxgui_EnableGadget
	movl	%ebx,(%esp)
	call	_maxgui_maxgui_ShowGadget
	movl	%ebx,(%esp)
	call	_maxgui_maxgui_ActivateGadget
	mov	$0,%eax
	jmp	_46
_46:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_48:
	.long	0
_16:
	.asciz	"TInputWindow"
_17:
	.asciz	"btnWidth"
_18:
	.asciz	"i"
_19:
	.asciz	"btnHeight"
_20:
	.asciz	"window"
_21:
	.asciz	":TGadget"
_22:
	.asciz	"txtInput"
_23:
	.asciz	"btnCreate"
_24:
	.asciz	"btnCancel"
_25:
	.asciz	"New"
_26:
	.asciz	"()i"
_27:
	.asciz	"Delete"
_28:
	.asciz	"Run"
_29:
	.asciz	"($,:TGadget)$"
_30:
	.asciz	"CloseThisWindow"
_31:
	.asciz	"(:TGadget,:TGadget)i"
	.align	4
_15:
	.long	2
	.long	_16
	.long	3
	.long	_17
	.long	_18
	.long	8
	.long	3
	.long	_19
	.long	_18
	.long	12
	.long	3
	.long	_20
	.long	_21
	.long	16
	.long	3
	.long	_22
	.long	_21
	.long	20
	.long	3
	.long	_23
	.long	_21
	.long	24
	.long	3
	.long	_24
	.long	_21
	.long	28
	.long	6
	.long	_25
	.long	_26
	.long	16
	.long	6
	.long	_27
	.long	_26
	.long	20
	.long	7
	.long	_28
	.long	_29
	.long	48
	.long	7
	.long	_30
	.long	_31
	.long	52
	.long	0
	.align	4
_bb_TInputWindow:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_15
	.long	32
	.long	__bb_TInputWindow_New
	.long	__bb_TInputWindow_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	__bb_TInputWindow_Run
	.long	__bb_TInputWindow_CloseThisWindow
	.align	4
_98:
	.long	0x3fe00000
	.align	4
_10:
	.long	_bbStringClass
	.long	2147483647
	.long	6
	.short	67,114,101,97,116,101
	.align	4
_11:
	.long	_bbStringClass
	.long	2147483647
	.long	6
	.short	67,97,110,99,101,108
	.align	4
_1:
	.long	_bbStringClass
	.long	2147483647
	.long	0
