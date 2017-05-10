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
	.reference	_bbEnd
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
	.reference	_bbStringCompare
	.reference	_bbStringConcat
	.reference	_brl_blitz_NullObjectError
	.reference	_brl_eventqueue_EventID
	.reference	_brl_eventqueue_EventSource
	.reference	_brl_eventqueue_WaitEvent
	.reference	_brl_filesystem_CloseDir
	.reference	_brl_filesystem_CurrentDir
	.reference	_brl_filesystem_FileType
	.reference	_brl_filesystem_NextFile
	.reference	_brl_filesystem_ReadDir
	.reference	_brl_retro_Left
	.reference	_brl_retro_Mid
	.reference	_maxgui_maxgui_AddGadgetItem
	.reference	_maxgui_maxgui_ClearGadgetItems
	.reference	_maxgui_maxgui_ClientHeight
	.reference	_maxgui_maxgui_ClientWidth
	.reference	_maxgui_maxgui_CreateButton
	.reference	_maxgui_maxgui_CreateListBox
	.reference	_maxgui_maxgui_CreateTextField
	.reference	_maxgui_maxgui_CreateWindow
	.reference	_maxgui_maxgui_Desktop
	.reference	_maxgui_maxgui_DisableGadget
	.reference	_maxgui_maxgui_GadgetHeight
	.reference	_maxgui_maxgui_GadgetText
	.reference	_maxgui_maxgui_GadgetWidth
	.reference	_maxgui_maxgui_SetGadgetLayout
	.reference	_maxgui_maxgui_SetGadgetText
	.globl	__bb_Node_Delete
	.globl	__bb_Node_New
	.globl	__bb_Settings_Create
	.globl	__bb_Settings_Delete
	.globl	__bb_Settings_New
	.globl	__bb_main
	.globl	_bb_Node
	.globl	_bb_PopulateList
	.globl	_bb_Settings
	.text	
__bb_main:
	push	%ebp
	mov	%esp,%ebp
	sub	$84,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$40,%esp
	cmpl	$0,_243
	je	_244
	mov	$0,%eax
	add	$40,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_244:
	movl	$1,_243
	movl	$0,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	movl	$_bbNullObject,-24(%ebp)
	movl	$_bbNullObject,-28(%ebp)
	movl	$0,-32(%ebp)
	movl	$_bbNullObject,-36(%ebp)
	movl	$_bbNullObject,-40(%ebp)
	movl	$0,-44(%ebp)
	movl	$_bbNullObject,-48(%ebp)
	movl	$0,-52(%ebp)
	movl	$_bbNullObject,-56(%ebp)
	movl	$_bbNullObject,-60(%ebp)
	movl	$_bbNullObject,-64(%ebp)
	movl	$_bbNullObject,-68(%ebp)
	movl	$_bbEmptyString,-72(%ebp)
	movl	$0,-76(%ebp)
	movl	$0,-80(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_222,(%esp)
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
	movl	$_bb_Settings,(%esp)
	call	_bbObjectRegisterType
	movl	$_bb_Node,(%esp)
	call	_bbObjectRegisterType
	movl	$_74,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$5,-4(%ebp)
	movl	$_77,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$34,-8(%ebp)
	movl	$_79,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$8,-12(%ebp)
	movl	$_81,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	subl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$_83,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$1,-20(%ebp)
	movl	$_85,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_maxgui_maxgui_Desktop
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ClientHeight
	movl	%eax,12(%esp)
	call	_maxgui_maxgui_Desktop
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ClientWidth
	cdq
	and	$1,%edx
	add	%edx,%eax
	sar	$1,%eax
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	call	_maxgui_maxgui_Desktop
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ClientWidth
	cdq
	and	$3,%edx
	add	%edx,%eax
	sar	$2,%eax
	movl	%eax,(%esp)
	calll	*_bb_Settings+48
	movl	%eax,-24(%ebp)
	movl	$_87,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%eax
	movl	%eax,-84(%ebp)
	cmpl	$_bbNullObject,-84(%ebp)
	jne	_89
	call	_brl_blitz_NullObjectError
_89:
	movl	-24(%ebp),%edi
	cmp	$_bbNullObject,%edi
	jne	_91
	call	_brl_blitz_NullObjectError
_91:
	movl	-24(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_93
	call	_brl_blitz_NullObjectError
_93:
	movl	-24(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_95
	call	_brl_blitz_NullObjectError
_95:
	movl	$15,24(%esp)
	movl	$_bbNullObject,20(%esp)
	movl	20(%ebx),%eax
	movl	%eax,16(%esp)
	movl	16(%esi),%eax
	movl	%eax,12(%esp)
	movl	12(%edi),%eax
	movl	%eax,8(%esp)
	movl	-84(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,4(%esp)
	movl	$_20,(%esp)
	call	_maxgui_maxgui_CreateWindow
	movl	%eax,-28(%ebp)
	movl	$_97,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$38,-32(%ebp)
	movl	$_99,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$8,24(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,20(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-32(%ebp),%eax
	movl	%eax,12(%esp)
	movl	$0,8(%esp)
	movl	$0,4(%esp)
	movl	$_21,(%esp)
	call	_maxgui_maxgui_CreateButton
	movl	%eax,-36(%ebp)
	movl	$_101,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,16(%esp)
	movl	$1,12(%esp)
	movl	$0,8(%esp)
	movl	$1,4(%esp)
	movl	-36(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SetGadgetLayout
	movl	$_102,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$8,24(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,20(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-32(%ebp),%eax
	movl	%eax,12(%esp)
	movl	$0,8(%esp)
	movl	-36(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetWidth
	movl	%eax,4(%esp)
	movl	$_2,(%esp)
	call	_maxgui_maxgui_CreateButton
	movl	%eax,-40(%ebp)
	movl	$_104,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,16(%esp)
	movl	$1,12(%esp)
	movl	$0,8(%esp)
	movl	$1,4(%esp)
	movl	-40(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SetGadgetLayout
	movl	$_105,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$50,-44(%ebp)
	movl	$_107,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$8,24(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,20(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-44(%ebp),%eax
	movl	%eax,12(%esp)
	movl	$0,8(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ClientWidth
	subl	-44(%ebp),%eax
	movl	%eax,4(%esp)
	movl	$_22,(%esp)
	call	_maxgui_maxgui_CreateButton
	movl	%eax,-48(%ebp)
	movl	$_109,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,16(%esp)
	movl	$1,12(%esp)
	movl	$1,8(%esp)
	movl	$0,4(%esp)
	movl	-48(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SetGadgetLayout
	movl	$_110,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-36(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetWidth
	mov	%eax,%ebx
	movl	-40(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetHeight
	add	%eax,%ebx
	addl	-12(%ebp),%ebx
	movl	%ebx,-52(%ebp)
	movl	$_112,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,20(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%eax
	cdq
	and	$1,%edx
	add	%edx,%eax
	sar	$1,%eax
	sub	%eax,%ecx
	movl	%ecx,12(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ClientWidth
	mov	%eax,%ebx
	movl	-44(%ebp),%eax
	addl	-52(%ebp),%eax
	mov	%eax,%ecx
	movl	-12(%ebp),%eax
	cdq
	and	$1,%edx
	add	%edx,%eax
	sar	$1,%eax
	add	%eax,%ecx
	sub	%ecx,%ebx
	movl	%ebx,8(%esp)
	movl	-12(%ebp),%eax
	cdq
	and	$1,%edx
	add	%edx,%eax
	sar	$1,%eax
	add	$2,%eax
	movl	%eax,4(%esp)
	movl	-52(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_CreateTextField
	movl	%eax,-56(%ebp)
	movl	$_114,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,16(%esp)
	movl	$1,12(%esp)
	movl	$1,8(%esp)
	movl	$1,4(%esp)
	movl	-56(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SetGadgetLayout
	movl	$_115,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_brl_filesystem_CurrentDir
	movl	%eax,4(%esp)
	movl	-56(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SetGadgetText
	movl	$_116,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,20(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ClientHeight
	movl	-8(%ebp),%edx
	shl	$1,%edx
	sub	%edx,%eax
	movl	%eax,12(%esp)
	movl	$15,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	$0,(%esp)
	call	_maxgui_maxgui_CreateListBox
	movl	%eax,-60(%ebp)
	movl	$_118,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$1,16(%esp)
	movl	$1,12(%esp)
	movl	$0,8(%esp)
	movl	$1,4(%esp)
	movl	-60(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SetGadgetLayout
	movl	$_119,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-60(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_DisableGadget
	movl	$_120,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,20(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ClientHeight
	movl	-8(%ebp),%edx
	shl	$1,%edx
	sub	%edx,%eax
	movl	%eax,12(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ClientWidth
	mov	%eax,%ebx
	movl	-60(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetWidth
	sub	%eax,%ebx
	movl	%ebx,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-60(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetWidth
	movl	%eax,(%esp)
	call	_maxgui_maxgui_CreateListBox
	movl	%eax,-64(%ebp)
	movl	$_122,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$1,16(%esp)
	movl	$1,12(%esp)
	movl	$1,8(%esp)
	movl	$1,4(%esp)
	movl	-64(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SetGadgetLayout
	movl	$_123,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-60(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-64(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-56(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetText
	movl	%eax,(%esp)
	call	_bb_PopulateList
	movl	$_124,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Node,(%esp)
	call	_bbObjectNew
	movl	%eax,-68(%ebp)
	movl	$_126,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-68(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_128
	call	_brl_blitz_NullObjectError
_128:
	movl	-56(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetText
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_133
	movl	%eax,(%esp)
	call	_bbGCFree
_133:
	movl	%esi,8(%ebx)
	movl	$_134,(%esp)
	calll	*_bbOnDebugEnterStm
	jmp	_23
_25:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_221,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_135,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_brl_eventqueue_WaitEvent
	movl	$_136,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_brl_eventqueue_EventID
	cmp	$16387,%eax
	je	_139
	cmp	$8193,%eax
	je	_140
	jmp	_138
_139:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_142,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_141,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_bbEnd
	calll	*_bbOnDebugLeaveScope
	jmp	_138
_140:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_220,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_143,(%esp)
	calll	*_bbOnDebugEnterStm
	call	_brl_eventqueue_EventSource
	cmpl	-36(%ebp),%eax
	je	_146
	cmpl	-40(%ebp),%eax
	je	_147
	cmpl	-48(%ebp),%eax
	je	_148
	cmpl	-64(%ebp),%eax
	je	_149
	jmp	_145
_146:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_203,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_150,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-56(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetText
	movl	%eax,-72(%ebp)
	movl	$_152,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$-1,-76(%ebp)
	movl	$_154,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$1,-80(%ebp)
	movl	$_156,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$1,-80(%ebp)
	movl	-72(%ebp),%eax
	movl	8(%eax),%ebx
	sub	$1,%ebx
	jmp	_157
_28:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_166,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_159,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$1,8(%esp)
	movl	-80(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-72(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_retro_Mid
	movl	$_10,4(%esp)
	movl	%eax,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	jne	_160
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_165,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_161,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-80(%ebp),%eax
	cmpl	%eax,-76(%ebp)
	jge	_162
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_164,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_163,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-80(%ebp),%eax
	movl	%eax,-76(%ebp)
	calll	*_bbOnDebugLeaveScope
_162:
	calll	*_bbOnDebugLeaveScope
_160:
	calll	*_bbOnDebugLeaveScope
_26:
	addl	$1,-80(%ebp)
_157:
	cmpl	%ebx,-80(%ebp)
	jle	_28
_27:
	movl	$_167,(%esp)
	calll	*_bbOnDebugEnterStm
	cmpl	$0,-76(%ebp)
	jle	_168
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_202,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_169,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-76(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-72(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_retro_Left
	movl	%eax,4(%esp)
	movl	-56(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SetGadgetText
	movl	$_170,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-60(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-64(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-56(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetText
	movl	%eax,(%esp)
	call	_bb_PopulateList
	movl	$_171,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-68(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_173
	call	_brl_blitz_NullObjectError
_173:
	movl	$_bb_Node,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	16(%ebx),%eax
	decl	4(%eax)
	jnz	_178
	movl	%eax,(%esp)
	call	_bbGCFree
_178:
	movl	%esi,16(%ebx)
	movl	$_179,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-68(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_181
	call	_brl_blitz_NullObjectError
_181:
	movl	16(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_183
	call	_brl_blitz_NullObjectError
_183:
	movl	-56(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetText
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_188
	movl	%eax,(%esp)
	call	_bbGCFree
_188:
	movl	%esi,8(%ebx)
	movl	$_189,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-68(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_191
	call	_brl_blitz_NullObjectError
_191:
	movl	16(%ebx),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_193
	call	_brl_blitz_NullObjectError
_193:
	movl	-68(%ebp),%eax
	incl	4(%eax)
	mov	%eax,%esi
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_198
	movl	%eax,(%esp)
	call	_bbGCFree
_198:
	movl	%esi,12(%ebx)
	movl	$_199,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-68(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_201
	call	_brl_blitz_NullObjectError
_201:
	movl	16(%ebx),%eax
	movl	%eax,-68(%ebp)
	calll	*_bbOnDebugLeaveScope
_168:
	calll	*_bbOnDebugLeaveScope
	jmp	_145
_147:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_217,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_205,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-68(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_207
	call	_brl_blitz_NullObjectError
_207:
	cmpl	$_bbNullObject,12(%ebx)
	je	_208
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_216,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_209,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-68(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_211
	call	_brl_blitz_NullObjectError
_211:
	movl	12(%ebx),%eax
	movl	%eax,-68(%ebp)
	movl	$_212,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-68(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_214
	call	_brl_blitz_NullObjectError
_214:
	movl	8(%ebx),%eax
	movl	%eax,4(%esp)
	movl	-56(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SetGadgetText
	movl	$_215,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-60(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-64(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-56(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetText
	movl	%eax,(%esp)
	call	_bb_PopulateList
	calll	*_bbOnDebugLeaveScope
_208:
	calll	*_bbOnDebugLeaveScope
	jmp	_145
_148:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_218,(%esp)
	calll	*_bbOnDebugEnterScope
	calll	*_bbOnDebugLeaveScope
	jmp	_145
_149:
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_219,(%esp)
	calll	*_bbOnDebugEnterScope
	calll	*_bbOnDebugLeaveScope
	jmp	_145
_145:
	calll	*_bbOnDebugLeaveScope
	jmp	_138
_138:
	calll	*_bbOnDebugLeaveScope
_23:
	mov	$1,%eax
	cmp	$0,%eax
	jne	_25
_24:
	mov	$0,%ebx
	jmp	_49
_49:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$40,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Settings_New:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_247,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbObjectCtor
	movl	-4(%ebp),%eax
	movl	$_bb_Settings,(%eax)
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	movl	-4(%ebp),%eax
	movl	$0,12(%eax)
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
	movl	-4(%ebp),%eax
	movl	$0,20(%eax)
	mov	$_bbEmptyString,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,24(%eax)
	movl	%ebp,4(%esp)
	movl	$_246,(%esp)
	calll	*_bbOnDebugEnterScope
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_52
_52:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Settings_Delete:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	movl	8(%ebp),%eax
_55:
	movl	24(%eax),%eax
	decl	4(%eax)
	jnz	_251
	movl	%eax,(%esp)
	call	_bbGCFree
_251:
	mov	$0,%eax
	jmp	_249
_249:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Settings_Create:
	push	%ebp
	mov	%esp,%ebp
	sub	$20,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$_bbNullObject,-20(%ebp)
	movl	%ebp,4(%esp)
	movl	$_271,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_252,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bb_Settings,(%esp)
	call	_bbObjectNew
	movl	%eax,-20(%ebp)
	movl	$_254,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_256
	call	_brl_blitz_NullObjectError
_256:
	movl	-4(%ebp),%eax
	movl	%eax,8(%ebx)
	movl	$_258,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_260
	call	_brl_blitz_NullObjectError
_260:
	movl	-8(%ebp),%eax
	movl	%eax,12(%ebx)
	movl	$_262,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_264
	call	_brl_blitz_NullObjectError
_264:
	movl	-12(%ebp),%eax
	movl	%eax,16(%ebx)
	movl	$_266,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_268
	call	_brl_blitz_NullObjectError
_268:
	movl	-16(%ebp),%eax
	movl	%eax,20(%ebx)
	movl	$_270,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%ebx
	jmp	_61
_61:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Node_New:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_277,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbObjectCtor
	movl	-4(%ebp),%eax
	movl	$_bb_Node,(%eax)
	mov	$_bbEmptyString,%edx
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
	movl	%ebp,4(%esp)
	movl	$_276,(%esp)
	calll	*_bbOnDebugEnterScope
	calll	*_bbOnDebugLeaveScope
	mov	$0,%ebx
	jmp	_64
_64:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Node_Delete:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
_67:
	movl	16(%ebx),%eax
	decl	4(%eax)
	jnz	_280
	movl	%eax,(%esp)
	call	_bbGCFree
_280:
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_282
	movl	%eax,(%esp)
	call	_bbGCFree
_282:
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_284
	movl	%eax,(%esp)
	call	_bbGCFree
_284:
	mov	$0,%eax
	jmp	_278
_278:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_PopulateList:
	push	%ebp
	mov	%esp,%ebp
	sub	$28,%esp
	push	%ebx
	sub	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	$_bbEmptyString,-16(%ebp)
	movl	$0,-20(%ebp)
	movl	$_bbEmptyString,-24(%ebp)
	movl	$_bbEmptyString,-28(%ebp)
	movl	%ebp,4(%esp)
	movl	$_331,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_285,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbEmptyString,-16(%ebp)
	movl	$_287,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$1,8(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_retro_Mid
	movl	$_10,4(%esp)
	movl	%eax,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	jne	_288
	movl	%ebp,4(%esp)
	movl	$_290,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_289,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	calll	*_bbOnDebugLeaveScope
	jmp	_291
_288:
	movl	%ebp,4(%esp)
	movl	$_293,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_292,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_10,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%eax,-16(%ebp)
	calll	*_bbOnDebugLeaveScope
_291:
	movl	$_294,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ClearGadgetItems
	movl	$_295,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ClearGadgetItems
	movl	$_296,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_filesystem_ReadDir
	movl	%eax,-20(%ebp)
	movl	$_298,(%esp)
	calll	*_bbOnDebugEnterStm
_13:
_11:
	movl	%ebp,4(%esp)
	movl	$_327,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_299,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_filesystem_NextFile
	movl	%eax,-24(%ebp)
	movl	$_301,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_1,4(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	jne	_302
	movl	%ebp,4(%esp)
	movl	$_304,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_303,(%esp)
	calll	*_bbOnDebugEnterStm
	calll	*_bbOnDebugLeaveScope
	calll	*_bbOnDebugLeaveScope
	jmp	_12
_302:
	movl	$_305,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_14,4(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	sete	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_306
	movl	$_15,4(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	sete	%al
	movzbl	%al,%eax
_306:
	cmp	$0,%eax
	je	_308
	movl	%ebp,4(%esp)
	movl	$_310,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_309,(%esp)
	calll	*_bbOnDebugEnterStm
	calll	*_bbOnDebugLeaveScope
	calll	*_bbOnDebugLeaveScope
	jmp	_11
_308:
	movl	$_311,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbEmptyString,-28(%ebp)
	movl	$_313,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%eax,(%esp)
	call	_brl_filesystem_FileType
	cmp	$1,%eax
	jne	_314
	movl	%ebp,4(%esp)
	movl	$_316,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_315,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_16,-28(%ebp)
	calll	*_bbOnDebugLeaveScope
	jmp	_317
_314:
	movl	%ebp,4(%esp)
	movl	$_325,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_318,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-24(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%eax,(%esp)
	call	_brl_filesystem_FileType
	cmp	$2,%eax
	jne	_319
	movl	%ebp,4(%esp)
	movl	$_321,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_320,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_17,-28(%ebp)
	calll	*_bbOnDebugLeaveScope
	jmp	_322
_319:
	movl	%ebp,4(%esp)
	movl	$_324,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_323,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_18,-28(%ebp)
	calll	*_bbOnDebugLeaveScope
_322:
	calll	*_bbOnDebugLeaveScope
_317:
	movl	$_326,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_bbNullObject,20(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,16(%esp)
	movl	$-1,12(%esp)
	movl	$0,8(%esp)
	movl	-24(%ebp),%ebx
	movl	$_19,4(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_AddGadgetItem
	calll	*_bbOnDebugLeaveScope
	jmp	_13
_12:
	movl	$_330,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_filesystem_CloseDir
	mov	$0,%ebx
	jmp	_72
_72:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$24,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_243:
	.long	0
_223:
	.asciz	"pathfinder"
_224:
	.asciz	"padding"
_32:
	.asciz	"i"
_225:
	.asciz	"btnHeight"
_226:
	.asciz	"txtPadding"
_227:
	.asciz	"txtFieldHeight"
_228:
	.asciz	"topButtonsCount"
_229:
	.asciz	"winSettings"
_230:
	.asciz	":Settings"
_231:
	.asciz	"winMain"
_232:
	.asciz	":TGadget"
_233:
	.asciz	"btnNavigationWidth"
_234:
	.asciz	"btnLeft"
_235:
	.asciz	"btnRight"
_236:
	.asciz	"btnGoWidth"
_237:
	.asciz	"btnGo"
_238:
	.asciz	"txtPathX"
_239:
	.asciz	"txtPath"
_240:
	.asciz	"lstFileTypes"
_241:
	.asciz	"lstFiles"
_242:
	.asciz	"currentNode"
_47:
	.asciz	":Node"
	.align	4
_222:
	.long	1
	.long	_223
	.long	2
	.long	_224
	.long	_32
	.long	-4
	.long	2
	.long	_225
	.long	_32
	.long	-8
	.long	2
	.long	_226
	.long	_32
	.long	-12
	.long	2
	.long	_227
	.long	_32
	.long	-16
	.long	2
	.long	_228
	.long	_32
	.long	-20
	.long	2
	.long	_229
	.long	_230
	.long	-24
	.long	2
	.long	_231
	.long	_232
	.long	-28
	.long	2
	.long	_233
	.long	_32
	.long	-32
	.long	2
	.long	_234
	.long	_232
	.long	-36
	.long	2
	.long	_235
	.long	_232
	.long	-40
	.long	2
	.long	_236
	.long	_32
	.long	-44
	.long	2
	.long	_237
	.long	_232
	.long	-48
	.long	2
	.long	_238
	.long	_32
	.long	-52
	.long	2
	.long	_239
	.long	_232
	.long	-56
	.long	2
	.long	_240
	.long	_232
	.long	-60
	.long	2
	.long	_241
	.long	_232
	.long	-64
	.long	2
	.long	_242
	.long	_47
	.long	-68
	.long	0
_30:
	.asciz	"Settings"
_31:
	.asciz	"x"
_33:
	.asciz	"y"
_34:
	.asciz	"width"
_35:
	.asciz	"height"
_36:
	.asciz	"lastPath"
_37:
	.asciz	"$"
_38:
	.asciz	"New"
_39:
	.asciz	"()i"
_40:
	.asciz	"Delete"
_41:
	.asciz	"Create"
_42:
	.asciz	"(i,i,i,i):Settings"
	.align	4
_29:
	.long	2
	.long	_30
	.long	3
	.long	_31
	.long	_32
	.long	8
	.long	3
	.long	_33
	.long	_32
	.long	12
	.long	3
	.long	_34
	.long	_32
	.long	16
	.long	3
	.long	_35
	.long	_32
	.long	20
	.long	3
	.long	_36
	.long	_37
	.long	24
	.long	6
	.long	_38
	.long	_39
	.long	16
	.long	6
	.long	_40
	.long	_39
	.long	20
	.long	7
	.long	_41
	.long	_42
	.long	48
	.long	0
	.align	4
_bb_Settings:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_29
	.long	28
	.long	__bb_Settings_New
	.long	__bb_Settings_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	__bb_Settings_Create
_44:
	.asciz	"Node"
_45:
	.asciz	"path"
_46:
	.asciz	"previousNode"
_48:
	.asciz	"nextNode"
	.align	4
_43:
	.long	2
	.long	_44
	.long	3
	.long	_45
	.long	_37
	.long	8
	.long	3
	.long	_46
	.long	_47
	.long	12
	.long	3
	.long	_48
	.long	_47
	.long	16
	.long	6
	.long	_38
	.long	_39
	.long	16
	.long	6
	.long	_40
	.long	_39
	.long	20
	.long	0
	.align	4
_bb_Node:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_43
	.long	20
	.long	__bb_Node_New
	.long	__bb_Node_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
_75:
	.asciz	"/Users/jesse/Desktop/Projects/PathFinder/code/0.1/pathfinder.bmx"
	.align	4
_74:
	.long	_75
	.long	76
	.long	1
	.align	4
_77:
	.long	_75
	.long	77
	.long	1
	.align	4
_79:
	.long	_75
	.long	78
	.long	1
	.align	4
_81:
	.long	_75
	.long	79
	.long	1
	.align	4
_83:
	.long	_75
	.long	80
	.long	1
	.align	4
_85:
	.long	_75
	.long	83
	.long	1
	.align	4
_87:
	.long	_75
	.long	84
	.long	1
	.align	4
_20:
	.long	_bbStringClass
	.long	2147483647
	.long	10
	.short	80,97,116,104,70,105,110,100,101,114
	.align	4
_97:
	.long	_75
	.long	86
	.long	1
	.align	4
_99:
	.long	_75
	.long	87
	.long	1
	.align	4
_21:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	60
	.align	4
_101:
	.long	_75
	.long	88
	.long	2
	.align	4
_102:
	.long	_75
	.long	89
	.long	1
	.align	4
_2:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	62
	.align	4
_104:
	.long	_75
	.long	90
	.long	2
	.align	4
_105:
	.long	_75
	.long	92
	.long	1
	.align	4
_107:
	.long	_75
	.long	93
	.long	1
	.align	4
_22:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	71,111
	.align	4
_109:
	.long	_75
	.long	94
	.long	2
	.align	4
_110:
	.long	_75
	.long	95
	.long	1
	.align	4
_112:
	.long	_75
	.long	96
	.long	1
	.align	4
_114:
	.long	_75
	.long	97
	.long	2
	.align	4
_115:
	.long	_75
	.long	98
	.long	2
	.align	4
_116:
	.long	_75
	.long	100
	.long	1
	.align	4
_118:
	.long	_75
	.long	101
	.long	2
	.align	4
_119:
	.long	_75
	.long	102
	.long	2
	.align	4
_120:
	.long	_75
	.long	104
	.long	1
	.align	4
_122:
	.long	_75
	.long	105
	.long	2
	.align	4
_123:
	.long	_75
	.long	106
	.long	2
	.align	4
_124:
	.long	_75
	.long	108
	.long	1
	.align	4
_126:
	.long	_75
	.long	109
	.long	2
	.align	4
_134:
	.long	_75
	.long	113
	.long	1
	.align	4
_221:
	.long	3
	.long	0
	.long	0
	.align	4
_135:
	.long	_75
	.long	114
	.long	5
	.align	4
_136:
	.long	_75
	.long	115
	.long	5
	.align	4
_142:
	.long	3
	.long	0
	.long	0
	.align	4
_141:
	.long	_75
	.long	117
	.long	13
	.align	4
_220:
	.long	3
	.long	0
	.long	0
	.align	4
_143:
	.long	_75
	.long	119
	.long	4
_204:
	.asciz	"lastIndex"
	.align	4
_203:
	.long	3
	.long	0
	.long	2
	.long	_45
	.long	_37
	.long	-72
	.long	2
	.long	_204
	.long	_32
	.long	-76
	.long	2
	.long	_32
	.long	_32
	.long	-80
	.long	0
	.align	4
_150:
	.long	_75
	.long	121
	.long	6
	.align	4
_152:
	.long	_75
	.long	123
	.long	6
	.align	4
_154:
	.long	_75
	.long	124
	.long	6
	.align	4
_156:
	.long	_75
	.long	125
	.long	6
	.align	4
_166:
	.long	3
	.long	0
	.long	0
	.align	4
_159:
	.long	_75
	.long	126
	.long	7
	.align	4
_10:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	47
	.align	4
_165:
	.long	3
	.long	0
	.long	0
	.align	4
_161:
	.long	_75
	.long	127
	.long	8
	.align	4
_164:
	.long	3
	.long	0
	.long	0
	.align	4
_163:
	.long	_75
	.long	128
	.long	9
	.align	4
_167:
	.long	_75
	.long	132
	.long	6
	.align	4
_202:
	.long	3
	.long	0
	.long	0
	.align	4
_169:
	.long	_75
	.long	133
	.long	7
	.align	4
_170:
	.long	_75
	.long	134
	.long	7
	.align	4
_171:
	.long	_75
	.long	137
	.long	7
	.align	4
_179:
	.long	_75
	.long	138
	.long	7
	.align	4
_189:
	.long	_75
	.long	139
	.long	7
	.align	4
_199:
	.long	_75
	.long	140
	.long	7
	.align	4
_217:
	.long	3
	.long	0
	.long	0
	.align	4
_205:
	.long	_75
	.long	143
	.long	6
	.align	4
_216:
	.long	3
	.long	0
	.long	0
	.align	4
_209:
	.long	_75
	.long	144
	.long	7
	.align	4
_212:
	.long	_75
	.long	145
	.long	7
	.align	4
_215:
	.long	_75
	.long	146
	.long	7
	.align	4
_218:
	.long	3
	.long	0
	.long	0
	.align	4
_219:
	.long	3
	.long	0
	.long	0
_248:
	.asciz	"Self"
	.align	4
_247:
	.long	1
	.long	_38
	.long	2
	.long	_248
	.long	_230
	.long	-4
	.long	0
	.align	4
_246:
	.long	3
	.long	0
	.long	0
_272:
	.asciz	"s"
	.align	4
_271:
	.long	1
	.long	_41
	.long	2
	.long	_31
	.long	_32
	.long	-4
	.long	2
	.long	_33
	.long	_32
	.long	-8
	.long	2
	.long	_34
	.long	_32
	.long	-12
	.long	2
	.long	_35
	.long	_32
	.long	-16
	.long	2
	.long	_272
	.long	_230
	.long	-20
	.long	0
	.align	4
_252:
	.long	_75
	.long	15
	.long	9
	.align	4
_254:
	.long	_75
	.long	16
	.long	9
	.align	4
_258:
	.long	_75
	.long	17
	.long	9
	.align	4
_262:
	.long	_75
	.long	18
	.long	9
	.align	4
_266:
	.long	_75
	.long	19
	.long	9
	.align	4
_270:
	.long	_75
	.long	20
	.long	9
	.align	4
_277:
	.long	1
	.long	_38
	.long	2
	.long	_248
	.long	_47
	.long	-4
	.long	0
	.align	4
_276:
	.long	3
	.long	0
	.long	0
_332:
	.asciz	"PopulateList"
_333:
	.asciz	"aPath"
_334:
	.asciz	"lstGadget"
_335:
	.asciz	"dir"
	.align	4
_331:
	.long	1
	.long	_332
	.long	2
	.long	_333
	.long	_37
	.long	-4
	.long	2
	.long	_334
	.long	_232
	.long	-8
	.long	2
	.long	_240
	.long	_232
	.long	-12
	.long	2
	.long	_45
	.long	_37
	.long	-16
	.long	2
	.long	_335
	.long	_32
	.long	-20
	.long	0
	.align	4
_285:
	.long	_75
	.long	33
	.long	2
	.align	4
_287:
	.long	_75
	.long	34
	.long	2
	.align	4
_290:
	.long	3
	.long	0
	.long	0
	.align	4
_289:
	.long	_75
	.long	35
	.long	3
	.align	4
_293:
	.long	3
	.long	0
	.long	0
	.align	4
_292:
	.long	_75
	.long	37
	.long	3
	.align	4
_294:
	.long	_75
	.long	42
	.long	2
	.align	4
_295:
	.long	_75
	.long	43
	.long	2
	.align	4
_296:
	.long	_75
	.long	45
	.long	2
	.align	4
_298:
	.long	_75
	.long	69
	.long	2
_328:
	.asciz	"file"
_329:
	.asciz	"fileStringType"
	.align	4
_327:
	.long	3
	.long	0
	.long	2
	.long	_328
	.long	_37
	.long	-24
	.long	2
	.long	_329
	.long	_37
	.long	-28
	.long	0
	.align	4
_299:
	.long	_75
	.long	47
	.long	3
	.align	4
_301:
	.long	_75
	.long	48
	.long	3
	.align	4
_1:
	.long	_bbStringClass
	.long	2147483647
	.long	0
	.align	4
_304:
	.long	3
	.long	0
	.long	0
	.align	4
_303:
	.long	_75
	.long	48
	.long	18
	.align	4
_305:
	.long	_75
	.long	49
	.long	3
	.align	4
_14:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	46
	.align	4
_15:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	46,46
	.align	4
_310:
	.long	3
	.long	0
	.long	0
	.align	4
_309:
	.long	_75
	.long	49
	.long	34
	.align	4
_311:
	.long	_75
	.long	52
	.long	3
	.align	4
_313:
	.long	_75
	.long	53
	.long	3
	.align	4
_316:
	.long	3
	.long	0
	.long	0
	.align	4
_315:
	.long	_75
	.long	57
	.long	4
	.align	4
_16:
	.long	_bbStringClass
	.long	2147483647
	.long	4
	.short	102,105,108,101
	.align	4
_325:
	.long	3
	.long	0
	.long	0
	.align	4
_318:
	.long	_75
	.long	58
	.long	3
	.align	4
_321:
	.long	3
	.long	0
	.long	0
	.align	4
_320:
	.long	_75
	.long	62
	.long	4
	.align	4
_17:
	.long	_bbStringClass
	.long	2147483647
	.long	3
	.short	100,105,114
	.align	4
_324:
	.long	3
	.long	0
	.long	0
	.align	4
_323:
	.long	_75
	.long	64
	.long	4
	.align	4
_18:
	.long	_bbStringClass
	.long	2147483647
	.long	3
	.short	97,112,112
	.align	4
_326:
	.long	_75
	.long	67
	.long	3
	.align	4
_19:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	58,32
	.align	4
_330:
	.long	_75
	.long	70
	.long	2
