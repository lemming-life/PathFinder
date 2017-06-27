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
	.reference	_bbStringClass
	.reference	_brl_blitz_NullObjectError
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
	.globl	___bb_import_inputwindow
	.globl	__bb_TInputWindow_CloseThisWindow
	.globl	__bb_TInputWindow_Delete
	.globl	__bb_TInputWindow_New
	.globl	__bb_TInputWindow_Run
	.globl	_bb_TInputWindow
	.text	
___bb_import_inputwindow:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$20,%esp
	cmpl	$0,_52
	je	_53
	mov	$0,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_53:
	movl	$1,_52
	movl	%ebp,4(%esp)
	movl	$_50,(%esp)
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
	movl	$_bb_TInputWindow,(%esp)
	call	_bbObjectRegisterType
	mov	$0,%ebx
	jmp	_32
_32:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TInputWindow_New:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_59,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbObjectCtor
	movl	-4(%ebp),%eax
	movl	$_bb_TInputWindow,(%eax)
	movl	-4(%ebp),%eax
	movl	$85,8(%eax)
	movl	-4(%ebp),%eax
	movl	$24,12(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,16(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,20(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,24(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,28(%eax)
	movl	%ebp,4(%esp)
	movl	$_58,(%esp)
	calll	*_bbOnDebugEnterScope
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_35
_35:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
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
	jnz	_64
	movl	%eax,(%esp)
	call	_bbGCFree
_64:
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_66
	movl	%eax,(%esp)
	call	_bbGCFree
_66:
	movl	20(%ebx),%eax
	decl	4(%eax)
	jnz	_68
	movl	%eax,(%esp)
	call	_bbGCFree
_68:
	movl	16(%ebx),%eax
	decl	4(%eax)
	jnz	_70
	movl	%eax,(%esp)
	call	_bbGCFree
_70:
	mov	$0,%eax
	jmp	_62
_62:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TInputWindow_Run:
	push	%ebp
	mov	%esp,%ebp
	sub	$60,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$32,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$_bbNullObject,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	$_bbEmptyString,-28(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_187,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_71,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_TInputWindow,(%esp)
	call	_bbObjectNew
	movl	%eax,-20(%ebp)
	movl	$_74,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_76
	call	_brl_blitz_NullObjectError
_76:
	movl	12(%ebx),%eax
	movl	%eax,-60(%ebp)
	fildl	-60(%ebp)
	fmuls	_207
	fstpl	(%esp)
	call	_bbFloatToInt
	movl	%eax,-24(%ebp)
	movl	$_78,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_80
	call	_brl_blitz_NullObjectError
_80:
	movl	$529,24(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,20(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,16(%esp)
	movl	$350,12(%esp)
	movl	$0,8(%esp)
	movl	$0,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_CreateWindow
	incl	4(%eax)
	mov	%eax,%esi
	movl	16(%ebx),%eax
	decl	4(%eax)
	jnz	_85
	movl	%eax,(%esp)
	call	_bbGCFree
_85:
	movl	%esi,16(%ebx)
	movl	$_86,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_88
	call	_brl_blitz_NullObjectError
_88:
	movl	%ebx,-48(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-40(%ebp)
	cmpl	$_bbNullObject,-40(%ebp)
	jne	_91
	call	_brl_blitz_NullObjectError
_91:
	movl	-20(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_93
	call	_brl_blitz_NullObjectError
_93:
	movl	-20(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_95
	call	_brl_blitz_NullObjectError
_95:
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_97
	call	_brl_blitz_NullObjectError
_97:
	movl	$0,20(%esp)
	movl	16(%ebx),%eax
	movl	%eax,16(%esp)
	movl	12(%esi),%eax
	movl	%eax,12(%esp)
	movl	-40(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ClientWidth
	movl	8(%edi),%edx
	shl	$1,%edx
	sub	%edx,%eax
	sub	$8,%eax
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	movl	$8,(%esp)
	call	_maxgui_maxgui_CreateTextField
	mov	%eax,%ebx
	incl	4(%ebx)
	movl	-48(%ebp),%eax
	movl	20(%eax),%eax
	decl	4(%eax)
	jnz	_101
	movl	%eax,(%esp)
	call	_bbGCFree
_101:
	movl	-48(%ebp),%eax
	movl	%ebx,20(%eax)
	movl	$_102,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_104
	call	_brl_blitz_NullObjectError
_104:
	movl	%ebx,-44(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-36(%ebp)
	cmpl	$_bbNullObject,-36(%ebp)
	jne	_107
	call	_brl_blitz_NullObjectError
_107:
	movl	-20(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_109
	call	_brl_blitz_NullObjectError
_109:
	movl	-20(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_111
	call	_brl_blitz_NullObjectError
_111:
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_113
	call	_brl_blitz_NullObjectError
_113:
	movl	$4,24(%esp)
	movl	16(%ebx),%eax
	movl	%eax,20(%esp)
	movl	12(%esi),%eax
	movl	%eax,16(%esp)
	movl	8(%edi),%eax
	movl	%eax,12(%esp)
	movl	$0,8(%esp)
	movl	-36(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetWidth
	add	$8,%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_CreateButton
	mov	%eax,%ebx
	incl	4(%ebx)
	movl	-44(%ebp),%eax
	movl	24(%eax),%eax
	decl	4(%eax)
	jnz	_117
	movl	%eax,(%esp)
	call	_bbGCFree
_117:
	movl	-44(%ebp),%eax
	movl	%ebx,24(%eax)
	movl	$_118,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_120
	call	_brl_blitz_NullObjectError
_120:
	movl	%ebx,-56(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-52(%ebp)
	cmpl	$_bbNullObject,-52(%ebp)
	jne	_123
	call	_brl_blitz_NullObjectError
_123:
	movl	-20(%ebp),%eax
	movl	%eax,-32(%ebp)
	cmpl	$_bbNullObject,-32(%ebp)
	jne	_125
	call	_brl_blitz_NullObjectError
_125:
	movl	-20(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_127
	call	_brl_blitz_NullObjectError
_127:
	movl	-20(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_129
	call	_brl_blitz_NullObjectError
_129:
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_131
	call	_brl_blitz_NullObjectError
_131:
	movl	$5,24(%esp)
	movl	16(%ebx),%eax
	movl	%eax,20(%esp)
	movl	12(%esi),%eax
	movl	%eax,16(%esp)
	movl	8(%edi),%eax
	movl	%eax,12(%esp)
	movl	$0,8(%esp)
	movl	-52(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ClientWidth
	movl	-32(%ebp),%edx
	subl	8(%edx),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_CreateButton
	mov	%eax,%ebx
	incl	4(%ebx)
	movl	-56(%ebp),%eax
	movl	28(%eax),%eax
	decl	4(%eax)
	jnz	_135
	movl	%eax,(%esp)
	call	_bbGCFree
_135:
	movl	-56(%ebp),%eax
	movl	%ebx,28(%eax)
	movl	$_136,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_DisableGadget
	movl	$_137,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_139
	call	_brl_blitz_NullObjectError
_139:
	movl	16(%ebx),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ShowGadget
	movl	$_140,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_142
	call	_brl_blitz_NullObjectError
_142:
	movl	20(%ebx),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ActivateGadget
	movl	$_143,(%esp)
	calll	*_bbOnDebugEnterStm
	jmp	_12
_14:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_186,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_144,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_brl_eventqueue_WaitEvent
	movl	$_145,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_brl_eventqueue_EventID
	cmp	$16387,%eax
	je	_148
	cmp	$8193,%eax
	je	_149
	jmp	_147
_148:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_159,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_150,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_152
	call	_brl_blitz_NullObjectError
_152:
	call	_brl_eventqueue_EventSource
	cmpl	16(%ebx),%eax
	jne	_153
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_158,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_154,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_156
	call	_brl_blitz_NullObjectError
_156:
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebx),%eax
	movl	%eax,(%esp)
	calll	*_bb_TInputWindow+52
	movl	$_157,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_1,%ebx
	calll	*_bbOnDebugLeaveScope
	calll	*_bbOnDebugLeaveScope
	calll	*_bbOnDebugLeaveScope
	jmp	_44
_153:
	calll	*_bbOnDebugLeaveScope
	jmp	_147
_149:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_185,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_160,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_brl_eventqueue_EventSource
	mov	%eax,%esi
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_165
	call	_brl_blitz_NullObjectError
_165:
	cmpl	24(%ebx),%esi
	je	_163
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_168
	call	_brl_blitz_NullObjectError
_168:
	cmpl	28(%ebx),%esi
	je	_166
	jmp	_162
_163:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_177,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_169,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_171
	call	_brl_blitz_NullObjectError
_171:
	movl	20(%ebx),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetText
	movl	%eax,(%esp)
	call	_brl_retro_Trim
	movl	%eax,-28(%ebp)
	movl	$_173,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_175
	call	_brl_blitz_NullObjectError
_175:
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebx),%eax
	movl	%eax,(%esp)
	calll	*_bb_TInputWindow+52
	movl	$_176,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-28(%ebp),%ebx
	calll	*_bbOnDebugLeaveScope
	calll	*_bbOnDebugLeaveScope
	calll	*_bbOnDebugLeaveScope
	jmp	_44
_166:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_184,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_180,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_182
	call	_brl_blitz_NullObjectError
_182:
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebx),%eax
	movl	%eax,(%esp)
	calll	*_bb_TInputWindow+52
	movl	$_183,(%esp)
	calll	*_bbOnDebugEnterStm
	mov	$_1,%ebx
	calll	*_bbOnDebugLeaveScope
	calll	*_bbOnDebugLeaveScope
	calll	*_bbOnDebugLeaveScope
	jmp	_44
_162:
	calll	*_bbOnDebugLeaveScope
	jmp	_147
_147:
	calll	*_bbOnDebugLeaveScope
_12:
	mov	$1,%eax
	cmp	$0,%eax
	jne	_14
_13:
	mov	$_bbEmptyString,%ebx
	jmp	_44
_44:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$32,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TInputWindow_CloseThisWindow:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	push	%ebx
	sub	$12,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	%ebp,4(%esp)
	movl	$_198,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_194,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_FreeGadget
	movl	$_195,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_EnableGadget
	movl	$_196,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ShowGadget
	movl	$_197,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ActivateGadget
	mov	$0,%ebx
	jmp	_48
_48:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$12,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_52:
	.long	0
_51:
	.asciz	"inputWindow"
	.align	4
_50:
	.long	1
	.long	_51
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
	.asciz	"($,:TGadget,$,$)$"
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
_60:
	.asciz	"Self"
_61:
	.asciz	":TInputWindow"
	.align	4
_59:
	.long	1
	.long	_25
	.long	2
	.long	_60
	.long	_61
	.long	-4
	.long	0
	.align	4
_58:
	.long	3
	.long	0
	.long	0
_188:
	.asciz	"title"
_179:
	.asciz	"$"
_189:
	.asciz	"parent"
_190:
	.asciz	"createBtnText"
_191:
	.asciz	"cancelBtnText"
_192:
	.asciz	"ti"
_193:
	.asciz	"winHeight"
	.align	4
_187:
	.long	1
	.long	_28
	.long	2
	.long	_188
	.long	_179
	.long	-4
	.long	2
	.long	_189
	.long	_21
	.long	-8
	.long	2
	.long	_190
	.long	_179
	.long	-12
	.long	2
	.long	_191
	.long	_179
	.long	-16
	.long	2
	.long	_192
	.long	_61
	.long	-20
	.long	2
	.long	_193
	.long	_18
	.long	-24
	.long	0
_72:
	.asciz	"/op/apps/PathFinder/code/import/inputWindow.bmx"
	.align	4
_71:
	.long	_72
	.long	23
	.long	3
	.align	4
_74:
	.long	_72
	.long	24
	.long	3
	.align	4
_207:
	.long	0x3fe00000
	.align	4
_78:
	.long	_72
	.long	30
	.long	3
	.align	4
_86:
	.long	_72
	.long	31
	.long	3
	.align	4
_102:
	.long	_72
	.long	32
	.long	3
	.align	4
_118:
	.long	_72
	.long	33
	.long	3
	.align	4
_136:
	.long	_72
	.long	36
	.long	3
	.align	4
_137:
	.long	_72
	.long	37
	.long	3
	.align	4
_140:
	.long	_72
	.long	38
	.long	3
	.align	4
_143:
	.long	_72
	.long	40
	.long	3
	.align	4
_186:
	.long	3
	.long	0
	.long	0
	.align	4
_144:
	.long	_72
	.long	41
	.long	4
	.align	4
_145:
	.long	_72
	.long	43
	.long	7
	.align	4
_159:
	.long	3
	.long	0
	.long	0
	.align	4
_150:
	.long	_72
	.long	45
	.long	6
	.align	4
_158:
	.long	3
	.long	0
	.long	0
	.align	4
_154:
	.long	_72
	.long	46
	.long	7
	.align	4
_157:
	.long	_72
	.long	47
	.long	7
	.align	4
_1:
	.long	_bbStringClass
	.long	2147483647
	.long	0
	.align	4
_185:
	.long	3
	.long	0
	.long	0
	.align	4
_160:
	.long	_72
	.long	51
	.long	6
_178:
	.asciz	"txt"
	.align	4
_177:
	.long	3
	.long	0
	.long	2
	.long	_178
	.long	_179
	.long	-28
	.long	0
	.align	4
_169:
	.long	_72
	.long	53
	.long	8
	.align	4
_173:
	.long	_72
	.long	54
	.long	8
	.align	4
_176:
	.long	_72
	.long	55
	.long	8
	.align	4
_184:
	.long	3
	.long	0
	.long	0
	.align	4
_180:
	.long	_72
	.long	57
	.long	8
	.align	4
_183:
	.long	_72
	.long	58
	.long	8
_199:
	.asciz	"thisWindow"
	.align	4
_198:
	.long	1
	.long	_30
	.long	2
	.long	_199
	.long	_21
	.long	-4
	.long	2
	.long	_189
	.long	_21
	.long	-8
	.long	0
	.align	4
_194:
	.long	_72
	.long	65
	.long	3
	.align	4
_195:
	.long	_72
	.long	66
	.long	3
	.align	4
_196:
	.long	_72
	.long	67
	.long	3
	.align	4
_197:
	.long	_72
	.long	68
	.long	3
