# Makefile generated by XPJ for linux-arm32
-include Makefile.custom
ProjectName = PathRenderingBasic
PathRenderingBasic_cppfiles   += ./../../PathRenderingBasic/PathRenderingBasic.cpp

PathRenderingBasic_debug_hpaths    := 
PathRenderingBasic_debug_hpaths    += ./../../PathRenderingBasic
PathRenderingBasic_debug_hpaths    += ./../../../extensions/include
PathRenderingBasic_debug_hpaths    += ./../../../extensions/externals/include
PathRenderingBasic_debug_hpaths    += ./../../../extensions/externals/include/GLFW
PathRenderingBasic_debug_lpaths    := 
PathRenderingBasic_debug_lpaths    += ./../../../extensions/externals/lib/linux-arm32
PathRenderingBasic_debug_lpaths    += ./../../../extensions/lib/linux-arm32
PathRenderingBasic_debug_lpaths    += ./../../../extensions/externals/lib/linux-arm32
PathRenderingBasic_debug_lpaths    += ./../../../extensions/lib/linux-arm32
PathRenderingBasic_debug_lpaths    += ./../../../extensions/lib/linux-arm32
PathRenderingBasic_debug_lpaths    += ./../../../extensions/lib/linux-arm32
PathRenderingBasic_debug_lpaths    += ./../../../extensions/lib/linux-arm32
PathRenderingBasic_debug_lpaths    += ./../../../extensions/lib/linux-arm32
PathRenderingBasic_debug_lpaths    += ./../../../extensions/lib/linux-arm32
PathRenderingBasic_debug_defines   := $(PathRenderingBasic_custom_defines)
PathRenderingBasic_debug_defines   += LINUX=1
PathRenderingBasic_debug_defines   += GLEW_NO_GLU=1
PathRenderingBasic_debug_defines   += _DEBUG
PathRenderingBasic_debug_libraries := 
PathRenderingBasic_debug_libraries += NvAppBaseD
PathRenderingBasic_debug_libraries += NvUID
PathRenderingBasic_debug_libraries += NvAssetLoaderD
PathRenderingBasic_debug_libraries += NvModelD
PathRenderingBasic_debug_libraries += NvGLUtilsD
PathRenderingBasic_debug_libraries += NvGamepadD
PathRenderingBasic_debug_libraries += HalfD
PathRenderingBasic_debug_libraries += GLEW
PathRenderingBasic_debug_libraries += glfw3
PathRenderingBasic_debug_libraries += X11
PathRenderingBasic_debug_libraries += Xrandr
PathRenderingBasic_debug_libraries += Xi
PathRenderingBasic_debug_libraries += rt
PathRenderingBasic_debug_libraries += m
PathRenderingBasic_debug_libraries += GL
PathRenderingBasic_debug_libraries += dl
PathRenderingBasic_debug_libraries += Xxf86vm
PathRenderingBasic_debug_libraries += pthread
PathRenderingBasic_debug_libraries += :libHalfD.a
PathRenderingBasic_debug_libraries += :libNvAppBaseD.a
PathRenderingBasic_debug_libraries += :libNvAssetLoaderD.a
PathRenderingBasic_debug_libraries += :libNvGamepadD.a
PathRenderingBasic_debug_libraries += :libNvGLUtilsD.a
PathRenderingBasic_debug_libraries += :libNvModelD.a
PathRenderingBasic_debug_libraries += :libNvUID.a
PathRenderingBasic_debug_cflags    := $(PathRenderingBasic_custom_cflags)
PathRenderingBasic_debug_cflags    += $(addprefix -D, $(PathRenderingBasic_debug_defines))
PathRenderingBasic_debug_cflags    += $(addprefix -I, $(PathRenderingBasic_debug_hpaths))
PathRenderingBasic_debug_cflags  += -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function -Wno-reorder
PathRenderingBasic_debug_cflags  += -g
PathRenderingBasic_debug_lflags    := $(PathRenderingBasic_custom_lflags)
PathRenderingBasic_debug_lflags    += $(addprefix -L, $(PathRenderingBasic_debug_lpaths))
PathRenderingBasic_debug_lflags    += -Wl,--start-group $(addprefix -l, $(PathRenderingBasic_debug_libraries)) -Wl,--end-group
PathRenderingBasic_debug_lflags  += -Wl,--unresolved-symbols=ignore-in-shared-libs
PathRenderingBasic_debug_objsdir  := $(OBJS_DIR)/PathRenderingBasic_debug
PathRenderingBasic_debug_obj      := 
PathRenderingBasic_debug_cpp_o    = $(addprefix $(PathRenderingBasic_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(PathRenderingBasic_cppfiles)))))
PathRenderingBasic_debug_obj      += $(PathRenderingBasic_debug_cpp_o) 
PathRenderingBasic_debug_bin      := ./../../bin/linux-arm32/PathRenderingBasicD

clean_PathRenderingBasic_debug: 
	@$(ECHO) clean PathRenderingBasic debug
	@$(RMDIR) $(PathRenderingBasic_debug_objsdir)
	@$(RMDIR) $(PathRenderingBasic_debug_bin)

build_PathRenderingBasic_debug: postbuild_PathRenderingBasic_debug
postbuild_PathRenderingBasic_debug: mainbuild_PathRenderingBasic_debug
mainbuild_PathRenderingBasic_debug: prebuild_PathRenderingBasic_debug $(PathRenderingBasic_debug_bin)
prebuild_PathRenderingBasic_debug:

-include $(PathRenderingBasic_debug_cpp_o:%o=%d)

$(PathRenderingBasic_debug_bin): $(PathRenderingBasic_debug_obj) $(Half_debug_bin) $(NvAppBase_debug_bin) $(NvAssetLoader_debug_bin) $(NvGamepad_debug_bin) $(NvGLUtils_debug_bin) $(NvModel_debug_bin) $(NvUI_debug_bin) 
	@mkdir -p `dirname ./../../bin/linux-arm32/PathRenderingBasicD`
	$(CCLD) $^ $(PathRenderingBasic_debug_lflags) -o $(PathRenderingBasic_debug_bin) 
	@$(ECHO) building $@ complete!

$(PathRenderingBasic_debug_cpp_o): $(PathRenderingBasic_debug_objsdir)/%.o: 
	@$(ECHO) PathRenderingBasic: compiling debug $(filter %$*,$(PathRenderingBasic_cppfiles))...
	@mkdir -p $(dir $(@))
	$(CXX) $(PathRenderingBasic_debug_cflags) -MMD -MP -MF $(subst .cpp.o,.cpp.d,$@) -c $(filter %$*,$(PathRenderingBasic_cppfiles)) -o $@
PathRenderingBasic_release_hpaths    := 
PathRenderingBasic_release_hpaths    += ./../../PathRenderingBasic
PathRenderingBasic_release_hpaths    += ./../../../extensions/include
PathRenderingBasic_release_hpaths    += ./../../../extensions/externals/include
PathRenderingBasic_release_hpaths    += ./../../../extensions/externals/include/GLFW
PathRenderingBasic_release_lpaths    := 
PathRenderingBasic_release_lpaths    += ./../../../extensions/externals/lib/linux-arm32
PathRenderingBasic_release_lpaths    += ./../../../extensions/lib/linux-arm32
PathRenderingBasic_release_lpaths    += ./../../../extensions/externals/lib/linux-arm32
PathRenderingBasic_release_lpaths    += ./../../../extensions/lib/linux-arm32
PathRenderingBasic_release_lpaths    += ./../../../extensions/lib/linux-arm32
PathRenderingBasic_release_lpaths    += ./../../../extensions/lib/linux-arm32
PathRenderingBasic_release_lpaths    += ./../../../extensions/lib/linux-arm32
PathRenderingBasic_release_lpaths    += ./../../../extensions/lib/linux-arm32
PathRenderingBasic_release_lpaths    += ./../../../extensions/lib/linux-arm32
PathRenderingBasic_release_defines   := $(PathRenderingBasic_custom_defines)
PathRenderingBasic_release_defines   += LINUX=1
PathRenderingBasic_release_defines   += GLEW_NO_GLU=1
PathRenderingBasic_release_defines   += NDEBUG
PathRenderingBasic_release_libraries := 
PathRenderingBasic_release_libraries += NvAppBase
PathRenderingBasic_release_libraries += NvUI
PathRenderingBasic_release_libraries += NvAssetLoader
PathRenderingBasic_release_libraries += NvModel
PathRenderingBasic_release_libraries += NvGLUtils
PathRenderingBasic_release_libraries += NvGamepad
PathRenderingBasic_release_libraries += Half
PathRenderingBasic_release_libraries += GLEW
PathRenderingBasic_release_libraries += glfw3
PathRenderingBasic_release_libraries += X11
PathRenderingBasic_release_libraries += Xrandr
PathRenderingBasic_release_libraries += Xi
PathRenderingBasic_release_libraries += rt
PathRenderingBasic_release_libraries += m
PathRenderingBasic_release_libraries += GL
PathRenderingBasic_release_libraries += dl
PathRenderingBasic_release_libraries += Xxf86vm
PathRenderingBasic_release_libraries += pthread
PathRenderingBasic_release_libraries += :libHalf.a
PathRenderingBasic_release_libraries += :libNvAppBase.a
PathRenderingBasic_release_libraries += :libNvAssetLoader.a
PathRenderingBasic_release_libraries += :libNvGamepad.a
PathRenderingBasic_release_libraries += :libNvGLUtils.a
PathRenderingBasic_release_libraries += :libNvModel.a
PathRenderingBasic_release_libraries += :libNvUI.a
PathRenderingBasic_release_cflags    := $(PathRenderingBasic_custom_cflags)
PathRenderingBasic_release_cflags    += $(addprefix -D, $(PathRenderingBasic_release_defines))
PathRenderingBasic_release_cflags    += $(addprefix -I, $(PathRenderingBasic_release_hpaths))
PathRenderingBasic_release_cflags  += -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function -Wno-reorder
PathRenderingBasic_release_cflags  += -O2
PathRenderingBasic_release_lflags    := $(PathRenderingBasic_custom_lflags)
PathRenderingBasic_release_lflags    += $(addprefix -L, $(PathRenderingBasic_release_lpaths))
PathRenderingBasic_release_lflags    += -Wl,--start-group $(addprefix -l, $(PathRenderingBasic_release_libraries)) -Wl,--end-group
PathRenderingBasic_release_lflags  += -Wl,--unresolved-symbols=ignore-in-shared-libs
PathRenderingBasic_release_objsdir  := $(OBJS_DIR)/PathRenderingBasic_release
PathRenderingBasic_release_obj      := 
PathRenderingBasic_release_cpp_o    = $(addprefix $(PathRenderingBasic_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(PathRenderingBasic_cppfiles)))))
PathRenderingBasic_release_obj      += $(PathRenderingBasic_release_cpp_o) 
PathRenderingBasic_release_bin      := ./../../bin/linux-arm32/PathRenderingBasic

clean_PathRenderingBasic_release: 
	@$(ECHO) clean PathRenderingBasic release
	@$(RMDIR) $(PathRenderingBasic_release_objsdir)
	@$(RMDIR) $(PathRenderingBasic_release_bin)

build_PathRenderingBasic_release: postbuild_PathRenderingBasic_release
postbuild_PathRenderingBasic_release: mainbuild_PathRenderingBasic_release
mainbuild_PathRenderingBasic_release: prebuild_PathRenderingBasic_release $(PathRenderingBasic_release_bin)
prebuild_PathRenderingBasic_release:

-include $(PathRenderingBasic_release_cpp_o:%o=%d)

$(PathRenderingBasic_release_bin): $(PathRenderingBasic_release_obj) $(Half_release_bin) $(NvAppBase_release_bin) $(NvAssetLoader_release_bin) $(NvGamepad_release_bin) $(NvGLUtils_release_bin) $(NvModel_release_bin) $(NvUI_release_bin) 
	@mkdir -p `dirname ./../../bin/linux-arm32/PathRenderingBasic`
	$(CCLD) $^ $(PathRenderingBasic_release_lflags) -o $(PathRenderingBasic_release_bin) 
	@$(ECHO) building $@ complete!

$(PathRenderingBasic_release_cpp_o): $(PathRenderingBasic_release_objsdir)/%.o: 
	@$(ECHO) PathRenderingBasic: compiling release $(filter %$*,$(PathRenderingBasic_cppfiles))...
	@mkdir -p $(dir $(@))
	$(CXX) $(PathRenderingBasic_release_cflags) -MMD -MP -MF $(subst .cpp.o,.cpp.d,$@) -c $(filter %$*,$(PathRenderingBasic_cppfiles)) -o $@
