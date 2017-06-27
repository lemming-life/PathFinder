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
	.reference	_bbOnDebugEnterScope
	.reference	_bbOnDebugEnterStm
	.reference	_bbOnDebugLeaveScope
	.reference	_brl_blitz_NullObjectError
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
	push	%ebx
	sub	$20,%esp
	cmpl	$0,_37
	je	_38
	mov	$0,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_38:
	movl	$1,_37
	movl	%ebp,4(%esp)
	movl	$_35,(%esp)
	calll	*_bbOnDebugEnterScope
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
	mov	$0,%ebx
	jmp	_23
_23:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TWindow_New:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_44,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbObjectCtor
	movl	-4(%ebp),%eax
	movl	$_bb_TWindow,(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,8(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,12(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,16(%eax)
	mov	$_bbEmptyString,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,20(%eax)
	movl	%ebp,4(%esp)
	movl	$_43,(%esp)
	calll	*_bbOnDebugEnterScope
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_26
_26:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
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
	jnz	_49
	movl	%eax,(%esp)
	call	_bbGCFree
_49:
	movl	16(%ebx),%eax
	decl	4(%eax)
	jnz	_51
	movl	%eax,(%esp)
	call	_bbGCFree
_51:
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_53
	movl	%eax,(%esp)
	call	_bbGCFree
_53:
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_55
	movl	%eax,(%esp)
	call	_bbGCFree
_55:
	mov	$0,%eax
	jmp	_47
_47:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TWindow_Create:
	push	%ebp
	mov	%esp,%ebp
	sub	$28,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$32,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	$_bbNullObject,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_121,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_56,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_TWindow,(%esp)
	call	_bbObjectNew
	movl	%eax,-12(%ebp)
	movl	$_59,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$24,-16(%ebp)
	movl	$_61,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$4,-20(%ebp)
	movl	$_63,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_65
	call	_brl_blitz_NullObjectError
_65:
	movl	-4(%ebp),%eax
	incl	4(%eax)
	mov	%eax,%esi
	movl	20(%ebx),%eax
	decl	4(%eax)
	jnz	_70
	movl	%eax,(%esp)
	call	_bbGCFree
_70:
	movl	%esi,20(%ebx)
	movl	$_71,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_73
	call	_brl_blitz_NullObjectError
_73:
	movl	$643,24(%esp)
	movl	$_bbNullObject,20(%esp)
	call	_maxgui_maxgui_Desktop
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ClientHeight
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fmuls	_134
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
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_filesystem_StripDir
	movl	%eax,(%esp)
	call	_maxgui_maxgui_CreateWindow
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_78
	movl	%eax,(%esp)
	call	_bbGCFree
_78:
	movl	%esi,8(%ebx)
	movl	$_79,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_81
	call	_brl_blitz_NullObjectError
_81:
	mov	%ebx,%edi
	movl	-12(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_84
	call	_brl_blitz_NullObjectError
_84:
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_86
	call	_brl_blitz_NullObjectError
_86:
	movl	$0,20(%esp)
	movl	8(%ebx),%eax
	movl	%eax,16(%esp)
	movl	-16(%ebp),%eax
	subl	-20(%ebp),%eax
	movl	%eax,12(%esp)
	movl	8(%esi),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ClientWidth
	movl	%eax,8(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	$0,(%esp)
	call	_maxgui_maxgui_CreateTextArea
	incl	4(%eax)
	mov	%eax,%ebx
	movl	12(%edi),%eax
	decl	4(%eax)
	jnz	_90
	movl	%eax,(%esp)
	call	_bbGCFree
_90:
	movl	%ebx,12(%edi)
	movl	$_91,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_93
	call	_brl_blitz_NullObjectError
_93:
	movl	$0,16(%esp)
	movl	$1,12(%esp)
	movl	$1,8(%esp)
	movl	$1,4(%esp)
	movl	12(%ebx),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SetGadgetLayout
	movl	$_94,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_96
	call	_brl_blitz_NullObjectError
_96:
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebx),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SetGadgetText
	movl	$_97,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_99
	call	_brl_blitz_NullObjectError
_99:
	movl	%ebx,-24(%ebp)
	movl	-12(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_102
	call	_brl_blitz_NullObjectError
_102:
	movl	-12(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_104
	call	_brl_blitz_NullObjectError
_104:
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_106
	call	_brl_blitz_NullObjectError
_106:
	movl	$1,20(%esp)
	movl	8(%ebx),%eax
	movl	%eax,16(%esp)
	movl	8(%esi),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ClientHeight
	subl	-16(%ebp),%eax
	subl	-20(%ebp),%eax
	movl	%eax,12(%esp)
	movl	8(%edi),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ClientWidth
	movl	%eax,8(%esp)
	movl	-16(%ebp),%eax
	addl	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	$0,(%esp)
	call	_maxgui_maxgui_CreateTextArea
	mov	%eax,%ebx
	incl	4(%ebx)
	movl	-24(%ebp),%eax
	movl	16(%eax),%eax
	decl	4(%eax)
	jnz	_110
	movl	%eax,(%esp)
	call	_bbGCFree
_110:
	movl	-24(%ebp),%eax
	movl	%ebx,16(%eax)
	movl	$_111,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_113
	call	_brl_blitz_NullObjectError
_113:
	movl	$1,16(%esp)
	movl	$1,12(%esp)
	movl	$1,8(%esp)
	movl	$1,4(%esp)
	movl	16(%ebx),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SetGadgetLayout
	movl	$_114,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_116
	call	_brl_blitz_NullObjectError
_116:
	movl	$1,16(%esp)
	movl	$-1,12(%esp)
	movl	$0,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_textstream_LoadText
	movl	%eax,4(%esp)
	movl	16(%ebx),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SetTextAreaText
	movl	$_117,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_119
	call	_brl_blitz_NullObjectError
_119:
	movl	16(%ebx),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ActivateGadget
	movl	$_120,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	jmp	_33
_33:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$32,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_37:
	.long	0
_36:
	.asciz	"textWindow"
	.align	4
_35:
	.long	1
	.long	_36
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
_45:
	.asciz	"Self"
_46:
	.asciz	":TWindow"
	.align	4
_44:
	.long	1
	.long	_18
	.long	2
	.long	_45
	.long	_46
	.long	-4
	.long	0
	.align	4
_43:
	.long	3
	.long	0
	.long	0
_122:
	.asciz	"parent"
_123:
	.asciz	"g"
_124:
	.asciz	"txtPathHeight"
_125:
	.asciz	"i"
_126:
	.asciz	"txtPadding"
	.align	4
_121:
	.long	1
	.long	_21
	.long	2
	.long	_16
	.long	_17
	.long	-4
	.long	2
	.long	_122
	.long	_13
	.long	-8
	.long	2
	.long	_123
	.long	_46
	.long	-12
	.long	2
	.long	_124
	.long	_125
	.long	-16
	.long	2
	.long	_126
	.long	_125
	.long	-20
	.long	0
_57:
	.asciz	"/op/apps/PathFinder/code/import/textWindow.bmx"
	.align	4
_56:
	.long	_57
	.long	19
	.long	3
	.align	4
_59:
	.long	_57
	.long	20
	.long	3
	.align	4
_61:
	.long	_57
	.long	21
	.long	3
	.align	4
_63:
	.long	_57
	.long	22
	.long	3
	.align	4
_71:
	.long	_57
	.long	23
	.long	3
	.align	4
_134:
	.long	0x3f400000
	.align	4
_79:
	.long	_57
	.long	24
	.long	3
	.align	4
_91:
	.long	_57
	.long	25
	.long	4
	.align	4
_94:
	.long	_57
	.long	26
	.long	4
	.align	4
_97:
	.long	_57
	.long	27
	.long	3
	.align	4
_111:
	.long	_57
	.long	28
	.long	4
	.align	4
_114:
	.long	_57
	.long	29
	.long	4
	.align	4
_117:
	.long	_57
	.long	31
	.long	3
	.align	4
_120:
	.long	_57
	.long	32
	.long	3
