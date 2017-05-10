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
	.reference	_bbObjectDowncast
	.reference	_bbObjectFree
	.reference	_bbObjectNew
	.reference	_bbObjectRegisterType
	.reference	_bbObjectReserved
	.reference	_bbObjectSendMessage
	.reference	_bbObjectToString
	.reference	_bbStringClass
	.reference	_bbStringCompare
	.reference	_bbStringConcat
	.reference	_brl_blitz_RuntimeError
	.reference	_brl_eventqueue_EventData
	.reference	_brl_eventqueue_EventID
	.reference	_brl_eventqueue_EventSource
	.reference	_brl_eventqueue_WaitEvent
	.reference	_brl_filesystem_CloseDir
	.reference	_brl_filesystem_CloseFile
	.reference	_brl_filesystem_CurrentDir
	.reference	_brl_filesystem_FileType
	.reference	_brl_filesystem_NextFile
	.reference	_brl_filesystem_OpenFile
	.reference	_brl_filesystem_ReadDir
	.reference	_brl_filesystem_WriteFile
	.reference	_brl_map_CreateMap
	.reference	_brl_map_MapInsert
	.reference	_brl_map_MapKeys
	.reference	_brl_map_MapValueForKey
	.reference	_brl_retro_Left
	.reference	_brl_retro_Mid
	.reference	_brl_standardio_Print
	.reference	_brl_stream_CloseStream
	.reference	_brl_stream_Eof
	.reference	_brl_stream_ReadLine
	.reference	_brl_stream_WriteLine
	.reference	_maxgui_maxgui_ActivateGadget
	.reference	_maxgui_maxgui_AddGadgetItem
	.reference	_maxgui_maxgui_ClearGadgetItems
	.reference	_maxgui_maxgui_ClientHeight
	.reference	_maxgui_maxgui_ClientWidth
	.reference	_maxgui_maxgui_CountGadgetItems
	.reference	_maxgui_maxgui_CreateButton
	.reference	_maxgui_maxgui_CreateListBox
	.reference	_maxgui_maxgui_CreateTextField
	.reference	_maxgui_maxgui_CreateWindow
	.reference	_maxgui_maxgui_Desktop
	.reference	_maxgui_maxgui_DisableGadget
	.reference	_maxgui_maxgui_GadgetHeight
	.reference	_maxgui_maxgui_GadgetItemText
	.reference	_maxgui_maxgui_GadgetText
	.reference	_maxgui_maxgui_GadgetWidth
	.reference	_maxgui_maxgui_SelectGadgetItem
	.reference	_maxgui_maxgui_SelectedGadgetItem
	.reference	_maxgui_maxgui_SetGadgetLayout
	.reference	_maxgui_maxgui_SetGadgetSensitivity
	.reference	_maxgui_maxgui_SetGadgetText
	.globl	__bb_NavigationManager_Create
	.globl	__bb_NavigationManager_Delete
	.globl	__bb_NavigationManager_GoInside
	.globl	__bb_NavigationManager_GoLeft
	.globl	__bb_NavigationManager_GoRight
	.globl	__bb_NavigationManager_New
	.globl	__bb_NavigationManager_Path
	.globl	__bb_Node_Delete
	.globl	__bb_Node_New
	.globl	__bb_Settings_Create
	.globl	__bb_Settings_Delete
	.globl	__bb_Settings_LoadAssociations
	.globl	__bb_Settings_New
	.globl	__bb_Settings_SaveAssociations
	.globl	__bb_main
	.globl	_bb_EnsurePath
	.globl	_bb_NavigationManager
	.globl	_bb_Node
	.globl	_bb_PopulateList
	.globl	_bb_Settings
	.text	
__bb_main:
	push	%ebp
	mov	%esp,%ebp
	sub	$48,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$28,%esp
	cmpl	$0,_193
	je	_194
	mov	$0,%eax
	add	$28,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_194:
	movl	$1,_193
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
	movl	$_bb_NavigationManager,(%esp)
	call	_bbObjectRegisterType
	mov	$34,%esi
	movl	$8,-8(%ebp)
	mov	%esi,%eax
	subl	-8(%ebp),%eax
	movl	%eax,-28(%ebp)
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
	movl	$15,24(%esp)
	movl	$_bbNullObject,20(%esp)
	movl	20(%eax),%edx
	movl	%edx,16(%esp)
	movl	16(%eax),%edx
	movl	%edx,12(%esp)
	movl	12(%eax),%edx
	movl	%edx,8(%esp)
	movl	8(%eax),%eax
	movl	%eax,4(%esp)
	movl	$_26,(%esp)
	call	_maxgui_maxgui_CreateWindow
	mov	%eax,%ebx
	mov	$38,%edi
	movl	$8,24(%esp)
	movl	%ebx,20(%esp)
	movl	%esi,16(%esp)
	movl	%edi,12(%esp)
	movl	$0,8(%esp)
	movl	$0,4(%esp)
	movl	$_27,(%esp)
	call	_maxgui_maxgui_CreateButton
	movl	%eax,-40(%ebp)
	movl	$0,16(%esp)
	movl	$1,12(%esp)
	movl	$0,8(%esp)
	movl	$1,4(%esp)
	movl	-40(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SetGadgetLayout
	movl	$8,24(%esp)
	movl	%ebx,20(%esp)
	movl	%esi,16(%esp)
	movl	%edi,12(%esp)
	movl	$0,8(%esp)
	movl	-40(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetWidth
	movl	%eax,4(%esp)
	movl	$_2,(%esp)
	call	_maxgui_maxgui_CreateButton
	movl	%eax,-44(%ebp)
	movl	$0,16(%esp)
	movl	$1,12(%esp)
	movl	$0,8(%esp)
	movl	$1,4(%esp)
	movl	-44(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SetGadgetLayout
	movl	$50,-12(%ebp)
	movl	$4,24(%esp)
	movl	%ebx,20(%esp)
	movl	%esi,16(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	$0,8(%esp)
	movl	%ebx,(%esp)
	call	_maxgui_maxgui_ClientWidth
	subl	-12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	$_28,(%esp)
	call	_maxgui_maxgui_CreateButton
	movl	%eax,-48(%ebp)
	movl	$0,16(%esp)
	movl	$1,12(%esp)
	movl	$1,8(%esp)
	movl	$0,4(%esp)
	movl	-48(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SetGadgetLayout
	movl	-40(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetWidth
	mov	%eax,%edi
	movl	-44(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetHeight
	add	%eax,%edi
	mov	%edi,%eax
	addl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	$0,20(%esp)
	movl	%ebx,16(%esp)
	movl	-28(%ebp),%ecx
	movl	-8(%ebp),%eax
	cdq
	and	$1,%edx
	add	%edx,%eax
	sar	$1,%eax
	sub	%eax,%ecx
	movl	%ecx,12(%esp)
	movl	%ebx,(%esp)
	call	_maxgui_maxgui_ClientWidth
	mov	%eax,%edi
	movl	-12(%ebp),%eax
	addl	-20(%ebp),%eax
	mov	%eax,%ecx
	movl	-8(%ebp),%eax
	cdq
	and	$1,%edx
	add	%edx,%eax
	sar	$1,%eax
	add	%eax,%ecx
	sub	%ecx,%edi
	movl	%edi,8(%esp)
	movl	-8(%ebp),%eax
	cdq
	and	$1,%edx
	add	%edx,%eax
	sar	$1,%eax
	add	$2,%eax
	movl	%eax,4(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_CreateTextField
	movl	%eax,-24(%ebp)
	movl	$0,16(%esp)
	movl	$1,12(%esp)
	movl	$1,8(%esp)
	movl	$1,4(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SetGadgetLayout
	call	_brl_filesystem_CurrentDir
	movl	%eax,4(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SetGadgetText
	movl	$0,20(%esp)
	movl	%ebx,16(%esp)
	movl	%ebx,(%esp)
	call	_maxgui_maxgui_ClientHeight
	mov	%esi,%edx
	shl	$1,%edx
	sub	%edx,%eax
	movl	%eax,12(%esp)
	movl	$15,8(%esp)
	movl	%esi,4(%esp)
	movl	$0,(%esp)
	call	_maxgui_maxgui_CreateListBox
	movl	%eax,-36(%ebp)
	movl	$1,16(%esp)
	movl	$1,12(%esp)
	movl	$0,8(%esp)
	movl	$1,4(%esp)
	movl	-36(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SetGadgetLayout
	movl	-36(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_DisableGadget
	movl	$0,20(%esp)
	movl	%ebx,16(%esp)
	movl	%ebx,(%esp)
	call	_maxgui_maxgui_ClientHeight
	mov	%esi,%edx
	shl	$1,%edx
	sub	%edx,%eax
	movl	%eax,12(%esp)
	movl	%ebx,(%esp)
	call	_maxgui_maxgui_ClientWidth
	mov	%eax,%ebx
	movl	-36(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetWidth
	sub	%eax,%ebx
	movl	%ebx,8(%esp)
	movl	%esi,4(%esp)
	movl	-36(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetWidth
	movl	%eax,(%esp)
	call	_maxgui_maxgui_CreateListBox
	movl	%eax,-16(%ebp)
	movl	$1,16(%esp)
	movl	$1,12(%esp)
	movl	$1,8(%esp)
	movl	$1,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SetGadgetLayout
	movl	-36(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetText
	movl	%eax,(%esp)
	call	_bb_PopulateList
	movl	$2,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SetGadgetSensitivity
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetText
	movl	%eax,(%esp)
	calll	*_bb_NavigationManager+48
	movl	%eax,-32(%ebp)
	jmp	_29
_31:
	call	_brl_eventqueue_WaitEvent
	call	_brl_eventqueue_EventID
	cmp	$16387,%eax
	je	_153
	cmp	$8193,%eax
	je	_154
	cmp	$514,%eax
	je	_155
	jmp	_152
_153:
	call	_bbEnd
	jmp	_152
_154:
	call	_brl_eventqueue_EventSource
	cmpl	-40(%ebp),%eax
	je	_158
	cmpl	-44(%ebp),%eax
	je	_159
	cmpl	-48(%ebp),%eax
	je	_160
	cmpl	-16(%ebp),%eax
	je	_161
	jmp	_157
_158:
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetText
	mov	%eax,%edi
	mov	$-1,%esi
	mov	$1,%ebx
	movl	8(%edi),%eax
	sub	$1,%eax
	movl	%eax,-4(%ebp)
	jmp	_165
_34:
	movl	$1,8(%esp)
	movl	%ebx,4(%esp)
	movl	%edi,(%esp)
	call	_brl_retro_Mid
	movl	$_18,4(%esp)
	movl	%eax,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	jne	_167
	cmp	%ebx,%esi
	jge	_168
	mov	%ebx,%esi
_168:
_167:
_32:
	add	$1,%ebx
_165:
	cmpl	-4(%ebp),%ebx
	jle	_34
_33:
	cmp	$0,%esi
	jle	_169
	movl	%esi,4(%esp)
	movl	%edi,(%esp)
	call	_brl_retro_Left
	movl	%eax,4(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SetGadgetText
	movl	-36(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetText
	movl	%eax,(%esp)
	call	_bb_PopulateList
	movl	-32(%ebp),%ebx
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetText
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
_169:
	jmp	_157
_159:
	movl	-32(%ebp),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*60(%eax)
	cmp	$0,%eax
	je	_172
	movl	-32(%ebp),%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*64(%eax)
	movl	%eax,4(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SetGadgetText
	movl	-36(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetText
	movl	%eax,(%esp)
	call	_bb_PopulateList
_172:
	jmp	_157
_160:
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetText
	movl	%eax,(%esp)
	call	_bb_EnsurePath
	movl	%eax,4(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SetGadgetText
	movl	-36(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetText
	movl	%eax,(%esp)
	call	_bb_PopulateList
	movl	-32(%ebp),%ebx
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetText
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	jmp	_157
_161:
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SelectedGadgetItem
	cmp	$-1,%eax
	jle	_176
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SelectedGadgetItem
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetItemText
	mov	%eax,%esi
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetText
	movl	%eax,(%esp)
	call	_bb_EnsurePath
	mov	%eax,%ebx
	movl	%esi,4(%esp)
	movl	%ebx,(%esp)
	call	_bbStringConcat
	movl	%eax,(%esp)
	call	_brl_filesystem_FileType
	cmp	$1,%eax
	jne	_179
	movl	$_35,(%esp)
	call	_brl_standardio_Print
	jmp	_180
_179:
	movl	%esi,4(%esp)
	movl	%ebx,(%esp)
	call	_bbStringConcat
	movl	%eax,(%esp)
	call	_brl_filesystem_FileType
	cmp	$2,%eax
	jne	_181
	movl	%esi,4(%esp)
	movl	%ebx,(%esp)
	call	_bbStringConcat
	movl	$_18,4(%esp)
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%eax,4(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SetGadgetText
	movl	-32(%ebp),%ebx
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetText
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*56(%eax)
	movl	-36(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_GadgetText
	movl	%eax,(%esp)
	call	_bb_PopulateList
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_CountGadgetItems
	cmp	$0,%eax
	jle	_183
	movl	$0,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SelectGadgetItem
_183:
_181:
_180:
_176:
	jmp	_157
_157:
	jmp	_152
_155:
	call	_brl_eventqueue_EventData
	cmp	$68,%eax
	je	_186
	cmp	$75,%eax
	je	_187
	cmp	$70,%eax
	je	_188
	cmp	$74,%eax
	je	_189
	cmp	$32,%eax
	je	_190
	jmp	_185
_186:
	movl	$_36,(%esp)
	call	_brl_standardio_Print
	movl	-40(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ActivateGadget
	jmp	_185
_187:
	movl	$_37,(%esp)
	call	_brl_standardio_Print
	movl	-44(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ActivateGadget
	jmp	_185
_188:
	movl	$_38,(%esp)
	call	_brl_standardio_Print
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SelectedGadgetItem
	cmp	$0,%eax
	jle	_191
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SelectedGadgetItem
	sub	$1,%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SelectGadgetItem
_191:
	jmp	_185
_189:
	movl	$_39,(%esp)
	call	_brl_standardio_Print
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SelectedGadgetItem
	mov	%eax,%ebx
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_CountGadgetItems
	sub	$1,%eax
	cmp	%eax,%ebx
	jge	_192
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SelectedGadgetItem
	add	$1,%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SelectGadgetItem
_192:
	jmp	_185
_190:
	movl	$_40,(%esp)
	call	_brl_standardio_Print
	jmp	_185
_185:
	jmp	_152
_152:
_29:
	mov	$1,%eax
	cmp	$0,%eax
	jne	_31
_30:
	mov	$0,%eax
	jmp	_75
_75:
	add	$28,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Settings_New:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
	movl	%ebx,(%esp)
	call	_bbObjectCtor
	movl	$_bb_Settings,(%ebx)
	movl	$0,8(%ebx)
	movl	$0,12(%ebx)
	movl	$0,16(%ebx)
	movl	$0,20(%ebx)
	mov	$_bbEmptyString,%eax
	incl	4(%eax)
	movl	%eax,24(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,28(%ebx)
	mov	$0,%eax
	jmp	_78
_78:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Settings_Delete:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
_81:
	movl	28(%ebx),%eax
	decl	4(%eax)
	jnz	_199
	movl	%eax,(%esp)
	call	_bbGCFree
_199:
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_201
	movl	%eax,(%esp)
	call	_bbGCFree
_201:
	mov	$0,%eax
	jmp	_197
_197:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Settings_Create:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	push	%esi
	push	%edi
	sub	$12,%esp
	movl	16(%ebp),%edi
	movl	20(%ebp),%esi
	movl	$_bb_Settings,(%esp)
	call	_bbObjectNew
	mov	%eax,%ebx
	movl	8(%ebp),%eax
	movl	%eax,8(%ebx)
	movl	12(%ebp),%eax
	movl	%eax,12(%ebx)
	movl	%edi,16(%ebx)
	movl	%esi,20(%ebx)
	call	_brl_map_CreateMap
	incl	4(%eax)
	mov	%eax,%esi
	movl	28(%ebx),%eax
	decl	4(%eax)
	jnz	_206
	movl	%eax,(%esp)
	call	_bbGCFree
_206:
	movl	%esi,28(%ebx)
	mov	%ebx,%eax
	jmp	_87
_87:
	add	$12,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Settings_LoadAssociations:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	push	%esi
	push	%edi
	sub	$12,%esp
	movl	12(%ebp),%ebx
	movl	$1,8(%esp)
	movl	$1,4(%esp)
	movl	%ebx,(%esp)
	call	_brl_filesystem_OpenFile
	mov	%eax,%esi
	cmp	$_bbNullObject,%esi
	setne	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_208
	movl	%ebx,(%esp)
	call	_brl_filesystem_WriteFile
	mov	%eax,%esi
	cmp	$_bbNullObject,%esi
	setne	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_209
	movl	%ebx,4(%esp)
	movl	$_10,(%esp)
	call	_bbStringConcat
	movl	%eax,(%esp)
	call	_brl_blitz_RuntimeError
_209:
	movl	%esi,(%esp)
	call	_brl_stream_CloseStream
	mov	$0,%eax
	jmp	_91
_208:
	call	_brl_map_CreateMap
	incl	4(%eax)
	mov	%eax,%ebx
	movl	8(%ebp),%eax
	movl	28(%eax),%eax
	decl	4(%eax)
	jnz	_213
	movl	%eax,(%esp)
	call	_bbGCFree
_213:
	movl	8(%ebp),%eax
	movl	%ebx,28(%eax)
	mov	$_bbEmptyString,%edi
	mov	$0,%ebx
	jmp	_11
_13:
	cmp	$0,%ebx
	jne	_217
	mov	$1,%ebx
	movl	%esi,(%esp)
	call	_brl_stream_ReadLine
	mov	%eax,%edi
	jmp	_218
_217:
	cmp	$1,%ebx
	jne	_219
	mov	$0,%ebx
	movl	%esi,(%esp)
	call	_brl_stream_ReadLine
	movl	%eax,8(%esp)
	movl	%edi,4(%esp)
	movl	8(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,(%esp)
	call	_brl_map_MapInsert
_219:
_218:
_11:
	movl	%esi,(%esp)
	call	_brl_stream_Eof
	cmp	$0,%eax
	je	_13
_12:
	movl	%esi,(%esp)
	call	_brl_stream_CloseStream
	mov	$0,%eax
	jmp	_91
_91:
	add	$12,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Settings_SaveAssociations:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$8,%esp
	movl	12(%ebp),%ebx
	movl	%ebx,(%esp)
	call	_brl_filesystem_WriteFile
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmp	$_bbNullObject,%eax
	setne	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_221
	movl	%ebx,4(%esp)
	movl	$_14,(%esp)
	call	_bbStringConcat
	movl	%eax,(%esp)
	call	_brl_blitz_RuntimeError
_221:
	movl	8(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,(%esp)
	call	_brl_map_MapKeys
	mov	%eax,%esi
	mov	%esi,%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*48(%eax)
	mov	%eax,%edi
	jmp	_15
_17:
	mov	%edi,%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*52(%eax)
	mov	%eax,%ebx
	cmp	$_bbNullObject,%ebx
	je	_15
	movl	$_bbStringClass,4(%esp)
	movl	%ebx,(%esp)
	call	_bbObjectDowncast
	cmp	$_bbNullObject,%eax
	jne	_229
	mov	$_bbEmptyString,%eax
_229:
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_stream_WriteLine
	movl	%ebx,4(%esp)
	movl	8(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,(%esp)
	call	_brl_map_MapValueForKey
	movl	$_bbStringClass,4(%esp)
	movl	%eax,(%esp)
	call	_bbObjectDowncast
	cmp	$_bbNullObject,%eax
	jne	_231
	mov	$_bbEmptyString,%eax
_231:
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_stream_WriteLine
_15:
	mov	%edi,%eax
	movl	%eax,(%esp)
	movl	(%eax),%eax
	calll	*48(%eax)
	cmp	$0,%eax
	jne	_17
_16:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_filesystem_CloseFile
	mov	$0,%eax
	jmp	_95
_95:
	add	$8,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_Node_New:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
	movl	%ebx,(%esp)
	call	_bbObjectCtor
	movl	$_bb_Node,(%ebx)
	mov	$_bbEmptyString,%eax
	incl	4(%eax)
	movl	%eax,8(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,12(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,16(%ebx)
	mov	$0,%eax
	jmp	_98
_98:
	add	$4,%esp
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
_101:
	movl	16(%ebx),%eax
	decl	4(%eax)
	jnz	_237
	movl	%eax,(%esp)
	call	_bbGCFree
_237:
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_239
	movl	%eax,(%esp)
	call	_bbGCFree
_239:
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_241
	movl	%eax,(%esp)
	call	_bbGCFree
_241:
	mov	$0,%eax
	jmp	_235
_235:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_NavigationManager_New:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
	movl	%ebx,(%esp)
	call	_bbObjectCtor
	movl	$_bb_NavigationManager,(%ebx)
	mov	$_bbNullObject,%eax
	incl	4(%eax)
	movl	%eax,8(%ebx)
	mov	$0,%eax
	jmp	_104
_104:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_NavigationManager_Delete:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	movl	8(%ebp),%eax
_107:
	movl	8(%eax),%eax
	decl	4(%eax)
	jnz	_245
	movl	%eax,(%esp)
	call	_bbGCFree
_245:
	mov	$0,%eax
	jmp	_243
_243:
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_NavigationManager_Create:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	push	%esi
	push	%edi
	sub	$12,%esp
	movl	8(%ebp),%edi
	movl	$_bb_NavigationManager,(%esp)
	call	_bbObjectNew
	mov	%eax,%ebx
	movl	$_bb_Node,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_250
	movl	%eax,(%esp)
	call	_bbGCFree
_250:
	movl	%esi,8(%ebx)
	mov	%edi,%eax
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	movl	8(%eax),%eax
	decl	4(%eax)
	jnz	_254
	movl	%eax,(%esp)
	call	_bbGCFree
_254:
	movl	8(%ebx),%eax
	movl	%esi,8(%eax)
	mov	%ebx,%eax
	jmp	_110
_110:
	add	$12,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_NavigationManager_GoLeft:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	push	%esi
	push	%edi
	sub	$12,%esp
	movl	8(%ebp),%edi
	movl	12(%ebp),%esi
	movl	$_bb_Node,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%ebx
	movl	8(%edi),%eax
	movl	12(%eax),%eax
	decl	4(%eax)
	jnz	_258
	movl	%eax,(%esp)
	call	_bbGCFree
_258:
	movl	8(%edi),%eax
	movl	%ebx,12(%eax)
	mov	%esi,%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	8(%edi),%eax
	movl	12(%eax),%eax
	movl	8(%eax),%eax
	decl	4(%eax)
	jnz	_262
	movl	%eax,(%esp)
	call	_bbGCFree
_262:
	movl	8(%edi),%eax
	movl	12(%eax),%eax
	movl	%ebx,8(%eax)
	movl	8(%edi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	8(%edi),%eax
	movl	12(%eax),%eax
	movl	16(%eax),%eax
	decl	4(%eax)
	jnz	_266
	movl	%eax,(%esp)
	call	_bbGCFree
_266:
	movl	8(%edi),%eax
	movl	12(%eax),%eax
	movl	%ebx,16(%eax)
	movl	8(%edi),%eax
	movl	12(%eax),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	8(%edi),%eax
	decl	4(%eax)
	jnz	_270
	movl	%eax,(%esp)
	call	_bbGCFree
_270:
	movl	%ebx,8(%edi)
	mov	$0,%eax
	jmp	_114
_114:
	add	$12,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_NavigationManager_GoInside:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	push	%esi
	push	%edi
	sub	$12,%esp
	movl	8(%ebp),%edi
	movl	12(%ebp),%esi
	movl	$_bb_Node,(%esp)
	call	_bbObjectNew
	incl	4(%eax)
	mov	%eax,%ebx
	movl	8(%edi),%eax
	movl	16(%eax),%eax
	decl	4(%eax)
	jnz	_274
	movl	%eax,(%esp)
	call	_bbGCFree
_274:
	movl	8(%edi),%eax
	movl	%ebx,16(%eax)
	mov	%esi,%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	8(%edi),%eax
	movl	16(%eax),%eax
	movl	8(%eax),%eax
	decl	4(%eax)
	jnz	_278
	movl	%eax,(%esp)
	call	_bbGCFree
_278:
	movl	8(%edi),%eax
	movl	16(%eax),%eax
	movl	%ebx,8(%eax)
	movl	8(%edi),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	8(%edi),%eax
	movl	16(%eax),%eax
	movl	12(%eax),%eax
	decl	4(%eax)
	jnz	_282
	movl	%eax,(%esp)
	call	_bbGCFree
_282:
	movl	8(%edi),%eax
	movl	16(%eax),%eax
	movl	%ebx,12(%eax)
	movl	8(%edi),%eax
	movl	16(%eax),%eax
	incl	4(%eax)
	mov	%eax,%ebx
	movl	8(%edi),%eax
	decl	4(%eax)
	jnz	_286
	movl	%eax,(%esp)
	call	_bbGCFree
_286:
	movl	%ebx,8(%edi)
	mov	$0,%eax
	jmp	_118
_118:
	add	$12,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_NavigationManager_GoRight:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	push	%esi
	sub	$16,%esp
	movl	8(%ebp),%ebx
	movl	8(%ebx),%eax
	cmpl	$_bbNullObject,16(%eax)
	je	_287
	movl	8(%ebx),%eax
	movl	16(%eax),%eax
	incl	4(%eax)
	mov	%eax,%esi
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_291
	movl	%eax,(%esp)
	call	_bbGCFree
_291:
	movl	%esi,8(%ebx)
	mov	$1,%eax
	jmp	_121
_287:
	mov	$0,%eax
	jmp	_121
_121:
	add	$16,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_NavigationManager_Path:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	movl	8(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%eax
	jmp	_124
_124:
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_EnsurePath:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$20,%esp
	movl	8(%ebp),%ebx
	movl	$1,8(%esp)
	movl	8(%ebx),%eax
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	call	_brl_retro_Mid
	movl	$_18,4(%esp)
	movl	%eax,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	jne	_293
	mov	%ebx,%eax
	jmp	_127
_293:
	movl	$_18,4(%esp)
	movl	%ebx,(%esp)
	call	_bbStringConcat
	jmp	_127
_127:
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_PopulateList:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$24,%esp
	movl	8(%ebp),%eax
	movl	16(%ebp),%ebx
	movl	%eax,(%esp)
	call	_bb_EnsurePath
	movl	%eax,-4(%ebp)
	movl	$_bbEmptyString,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	jne	_296
	mov	$0,%eax
	jmp	_132
_296:
	movl	12(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_ClearGadgetItems
	movl	%ebx,(%esp)
	call	_maxgui_maxgui_ClearGadgetItems
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_filesystem_ReadDir
	mov	%eax,%edi
	cmp	$0,%edi
	jne	_298
	mov	$0,%eax
	jmp	_132
_298:
_21:
_19:
	movl	%edi,(%esp)
	call	_brl_filesystem_NextFile
	mov	%eax,%ebx
	movl	$_1,4(%esp)
	movl	%ebx,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	jne	_300
	jmp	_20
_300:
	movl	$_22,4(%esp)
	movl	%ebx,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	sete	%al
	movzbl	%al,%eax
	cmp	$0,%eax
	jne	_301
	movl	$_23,4(%esp)
	movl	%ebx,(%esp)
	call	_bbStringCompare
	cmp	$0,%eax
	sete	%al
	movzbl	%al,%eax
_301:
	cmp	$0,%eax
	je	_303
	jmp	_19
_303:
	mov	$_bbEmptyString,%esi
	movl	%ebx,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%eax,(%esp)
	call	_brl_filesystem_FileType
	cmp	$1,%eax
	jne	_305
	mov	$_24,%esi
	jmp	_306
_305:
	movl	%ebx,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbStringConcat
	movl	%eax,(%esp)
	call	_brl_filesystem_FileType
	cmp	$2,%eax
	jne	_307
	mov	$_25,%esi
_307:
_306:
	movl	$_bbNullObject,20(%esp)
	movl	%esi,16(%esp)
	movl	$-1,12(%esp)
	movl	$0,8(%esp)
	movl	%ebx,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_AddGadgetItem
	jmp	_21
_20:
	movl	%edi,(%esp)
	call	_brl_filesystem_CloseDir
	movl	12(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_CountGadgetItems
	cmp	$0,%eax
	jle	_308
	movl	$0,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,(%esp)
	call	_maxgui_maxgui_SelectGadgetItem
_308:
	mov	$0,%eax
	jmp	_132
_132:
	add	$24,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_193:
	.long	0
_42:
	.asciz	"Settings"
_43:
	.asciz	"x"
_44:
	.asciz	"i"
_45:
	.asciz	"y"
_46:
	.asciz	"width"
_47:
	.asciz	"height"
_48:
	.asciz	"lastPath"
_49:
	.asciz	"$"
_50:
	.asciz	"map"
_51:
	.asciz	":TMap"
_52:
	.asciz	"New"
_53:
	.asciz	"()i"
_54:
	.asciz	"Delete"
_55:
	.asciz	"Create"
_56:
	.asciz	"(i,i,i,i):Settings"
_57:
	.asciz	"LoadAssociations"
_58:
	.asciz	"($)i"
_59:
	.asciz	"SaveAssociations"
	.align	4
_41:
	.long	2
	.long	_42
	.long	3
	.long	_43
	.long	_44
	.long	8
	.long	3
	.long	_45
	.long	_44
	.long	12
	.long	3
	.long	_46
	.long	_44
	.long	16
	.long	3
	.long	_47
	.long	_44
	.long	20
	.long	3
	.long	_48
	.long	_49
	.long	24
	.long	3
	.long	_50
	.long	_51
	.long	28
	.long	6
	.long	_52
	.long	_53
	.long	16
	.long	6
	.long	_54
	.long	_53
	.long	20
	.long	7
	.long	_55
	.long	_56
	.long	48
	.long	6
	.long	_57
	.long	_58
	.long	52
	.long	6
	.long	_59
	.long	_58
	.long	56
	.long	0
	.align	4
_bb_Settings:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_41
	.long	32
	.long	__bb_Settings_New
	.long	__bb_Settings_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	__bb_Settings_Create
	.long	__bb_Settings_LoadAssociations
	.long	__bb_Settings_SaveAssociations
_61:
	.asciz	"Node"
_62:
	.asciz	"path"
_63:
	.asciz	"leftNode"
_64:
	.asciz	":Node"
_65:
	.asciz	"rightNode"
	.align	4
_60:
	.long	2
	.long	_61
	.long	3
	.long	_62
	.long	_49
	.long	8
	.long	3
	.long	_63
	.long	_64
	.long	12
	.long	3
	.long	_65
	.long	_64
	.long	16
	.long	6
	.long	_52
	.long	_53
	.long	16
	.long	6
	.long	_54
	.long	_53
	.long	20
	.long	0
	.align	4
_bb_Node:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_60
	.long	20
	.long	__bb_Node_New
	.long	__bb_Node_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
_67:
	.asciz	"NavigationManager"
_68:
	.asciz	"currentNode"
_69:
	.asciz	"($):NavigationManager"
_70:
	.asciz	"GoLeft"
_71:
	.asciz	"GoInside"
_72:
	.asciz	"GoRight"
_73:
	.asciz	"Path"
_74:
	.asciz	"()$"
	.align	4
_66:
	.long	2
	.long	_67
	.long	3
	.long	_68
	.long	_64
	.long	8
	.long	6
	.long	_52
	.long	_53
	.long	16
	.long	6
	.long	_54
	.long	_53
	.long	20
	.long	7
	.long	_55
	.long	_69
	.long	48
	.long	6
	.long	_70
	.long	_58
	.long	52
	.long	6
	.long	_71
	.long	_58
	.long	56
	.long	6
	.long	_72
	.long	_53
	.long	60
	.long	6
	.long	_73
	.long	_74
	.long	64
	.long	0
	.align	4
_bb_NavigationManager:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_66
	.long	12
	.long	__bb_NavigationManager_New
	.long	__bb_NavigationManager_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	__bb_NavigationManager_Create
	.long	__bb_NavigationManager_GoLeft
	.long	__bb_NavigationManager_GoInside
	.long	__bb_NavigationManager_GoRight
	.long	__bb_NavigationManager_Path
	.align	4
_26:
	.long	_bbStringClass
	.long	2147483647
	.long	10
	.short	80,97,116,104,70,105,110,100,101,114
	.align	4
_27:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	60
	.align	4
_2:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	62
	.align	4
_28:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	71,111
	.align	4
_18:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	47
	.align	4
_35:
	.long	_bbStringClass
	.long	2147483647
	.long	12
	.short	111,112,101,110,105,110,103,32,102,105,108,101
	.align	4
_36:
	.long	_bbStringClass
	.long	2147483647
	.long	12
	.short	80,114,101,115,115,101,100,32,108,101,102,116
	.align	4
_37:
	.long	_bbStringClass
	.long	2147483647
	.long	13
	.short	80,114,101,115,115,101,100,32,114,105,103,104,116
	.align	4
_38:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	85,80
	.align	4
_39:
	.long	_bbStringClass
	.long	2147483647
	.long	4
	.short	68,79,87,78
	.align	4
_40:
	.long	_bbStringClass
	.long	2147483647
	.long	5
	.short	69,78,84,69,82
	.align	4
_10:
	.long	_bbStringClass
	.long	2147483647
	.long	18
	.short	67,97,110,110,111,116,32,114,101,97,100,47,119,114,105,116
	.short	101,32
	.align	4
_14:
	.long	_bbStringClass
	.long	2147483647
	.long	13
	.short	67,97,110,110,111,116,32,119,114,105,116,101,32
	.align	4
_1:
	.long	_bbStringClass
	.long	2147483647
	.long	0
	.align	4
_22:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	46
	.align	4
_23:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	46,46
	.align	4
_24:
	.long	_bbStringClass
	.long	2147483647
	.long	4
	.short	102,105,108,101
	.align	4
_25:
	.long	_bbStringClass
	.long	2147483647
	.long	3
	.short	100,105,114
