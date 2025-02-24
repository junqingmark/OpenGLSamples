# Makefile generated by XPJ for linux-arm32
-include Makefile.custom
ProjectName = BindlessApp
BindlessApp_cppfiles   += ./../../BindlessApp/BindlessApp.cpp
BindlessApp_cppfiles   += ./../../BindlessApp/Mesh.cpp

BindlessApp_debug_hpaths    := 
BindlessApp_debug_hpaths    += ./../../BindlessApp
BindlessApp_debug_hpaths    += ./../../../extensions/include
BindlessApp_debug_hpaths    += ./../../../extensions/externals/include
BindlessApp_debug_hpaths    += ./../../../extensions/externals/include/GLFW
BindlessApp_debug_lpaths    := 
BindlessApp_debug_lpaths    += ./../../../extensions/externals/lib/linux-arm32
BindlessApp_debug_lpaths    += ./../../../extensions/lib/linux-arm32
BindlessApp_debug_lpaths    += ./../../../extensions/externals/lib/linux-arm32
BindlessApp_debug_lpaths    += ./../../../extensions/lib/linux-arm32
BindlessApp_debug_lpaths    += ./../../../extensions/lib/linux-arm32
BindlessApp_debug_lpaths    += ./../../../extensions/lib/linux-arm32
BindlessApp_debug_lpaths    += ./../../../extensions/lib/linux-arm32
BindlessApp_debug_lpaths    += ./../../../extensions/lib/linux-arm32
BindlessApp_debug_lpaths    += ./../../../extensions/lib/linux-arm32
BindlessApp_debug_defines   := $(BindlessApp_custom_defines)
BindlessApp_debug_defines   += LINUX=1
BindlessApp_debug_defines   += GLEW_NO_GLU=1
BindlessApp_debug_defines   += _DEBUG
BindlessApp_debug_libraries := 
BindlessApp_debug_libraries += NvAppBaseD
BindlessApp_debug_libraries += NvUID
BindlessApp_debug_libraries += NvAssetLoaderD
BindlessApp_debug_libraries += NvModelD
BindlessApp_debug_libraries += NvGLUtilsD
BindlessApp_debug_libraries += NvGamepadD
BindlessApp_debug_libraries += HalfD
BindlessApp_debug_libraries += GLEW
BindlessApp_debug_libraries += glfw3
BindlessApp_debug_libraries += X11
BindlessApp_debug_libraries += Xrandr
BindlessApp_debug_libraries += Xi
BindlessApp_debug_libraries += rt
BindlessApp_debug_libraries += m
BindlessApp_debug_libraries += GL
BindlessApp_debug_libraries += dl
BindlessApp_debug_libraries += Xxf86vm
BindlessApp_debug_libraries += pthread
BindlessApp_debug_libraries += :libHalfD.a
BindlessApp_debug_libraries += :libNvAppBaseD.a
BindlessApp_debug_libraries += :libNvAssetLoaderD.a
BindlessApp_debug_libraries += :libNvGamepadD.a
BindlessApp_debug_libraries += :libNvGLUtilsD.a
BindlessApp_debug_libraries += :libNvModelD.a
BindlessApp_debug_libraries += :libNvUID.a
BindlessApp_debug_cflags    := $(BindlessApp_custom_cflags)
BindlessApp_debug_cflags    += $(addprefix -D, $(BindlessApp_debug_defines))
BindlessApp_debug_cflags    += $(addprefix -I, $(BindlessApp_debug_hpaths))
BindlessApp_debug_cflags  += -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function -Wno-reorder
BindlessApp_debug_cflags  += -g
BindlessApp_debug_lflags    := $(BindlessApp_custom_lflags)
BindlessApp_debug_lflags    += $(addprefix -L, $(BindlessApp_debug_lpaths))
BindlessApp_debug_lflags    += -Wl,--start-group $(addprefix -l, $(BindlessApp_debug_libraries)) -Wl,--end-group
BindlessApp_debug_lflags  += -Wl,--unresolved-symbols=ignore-in-shared-libs
BindlessApp_debug_objsdir  := $(OBJS_DIR)/BindlessApp_debug
BindlessApp_debug_obj      := 
BindlessApp_debug_cpp_o    = $(addprefix $(BindlessApp_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(BindlessApp_cppfiles)))))
BindlessApp_debug_obj      += $(BindlessApp_debug_cpp_o) 
BindlessApp_debug_bin      := ./../../bin/linux-arm32/BindlessAppD

clean_BindlessApp_debug: 
	@$(ECHO) clean BindlessApp debug
	@$(RMDIR) $(BindlessApp_debug_objsdir)
	@$(RMDIR) $(BindlessApp_debug_bin)

build_BindlessApp_debug: postbuild_BindlessApp_debug
postbuild_BindlessApp_debug: mainbuild_BindlessApp_debug
mainbuild_BindlessApp_debug: prebuild_BindlessApp_debug $(BindlessApp_debug_bin)
prebuild_BindlessApp_debug:

-include $(BindlessApp_debug_cpp_o:%o=%d)

$(BindlessApp_debug_bin): $(BindlessApp_debug_obj) $(Half_debug_bin) $(NvAppBase_debug_bin) $(NvAssetLoader_debug_bin) $(NvGamepad_debug_bin) $(NvGLUtils_debug_bin) $(NvModel_debug_bin) $(NvUI_debug_bin) 
	@mkdir -p `dirname ./../../bin/linux-arm32/BindlessAppD`
	$(CCLD) $^ $(BindlessApp_debug_lflags) -o $(BindlessApp_debug_bin) 
	@$(ECHO) building $@ complete!

$(BindlessApp_debug_cpp_o): $(BindlessApp_debug_objsdir)/%.o: 
	@$(ECHO) BindlessApp: compiling debug $(filter %$*,$(BindlessApp_cppfiles))...
	@mkdir -p $(dir $(@))
	$(CXX) $(BindlessApp_debug_cflags) -MMD -MP -MF $(subst .cpp.o,.cpp.d,$@) -c $(filter %$*,$(BindlessApp_cppfiles)) -o $@
BindlessApp_release_hpaths    := 
BindlessApp_release_hpaths    += ./../../BindlessApp
BindlessApp_release_hpaths    += ./../../../extensions/include
BindlessApp_release_hpaths    += ./../../../extensions/externals/include
BindlessApp_release_hpaths    += ./../../../extensions/externals/include/GLFW
BindlessApp_release_lpaths    := 
BindlessApp_release_lpaths    += ./../../../extensions/externals/lib/linux-arm32
BindlessApp_release_lpaths    += ./../../../extensions/lib/linux-arm32
BindlessApp_release_lpaths    += ./../../../extensions/externals/lib/linux-arm32
BindlessApp_release_lpaths    += ./../../../extensions/lib/linux-arm32
BindlessApp_release_lpaths    += ./../../../extensions/lib/linux-arm32
BindlessApp_release_lpaths    += ./../../../extensions/lib/linux-arm32
BindlessApp_release_lpaths    += ./../../../extensions/lib/linux-arm32
BindlessApp_release_lpaths    += ./../../../extensions/lib/linux-arm32
BindlessApp_release_lpaths    += ./../../../extensions/lib/linux-arm32
BindlessApp_release_defines   := $(BindlessApp_custom_defines)
BindlessApp_release_defines   += LINUX=1
BindlessApp_release_defines   += GLEW_NO_GLU=1
BindlessApp_release_defines   += NDEBUG
BindlessApp_release_libraries := 
BindlessApp_release_libraries += NvAppBase
BindlessApp_release_libraries += NvUI
BindlessApp_release_libraries += NvAssetLoader
BindlessApp_release_libraries += NvModel
BindlessApp_release_libraries += NvGLUtils
BindlessApp_release_libraries += NvGamepad
BindlessApp_release_libraries += Half
BindlessApp_release_libraries += GLEW
BindlessApp_release_libraries += glfw3
BindlessApp_release_libraries += X11
BindlessApp_release_libraries += Xrandr
BindlessApp_release_libraries += Xi
BindlessApp_release_libraries += rt
BindlessApp_release_libraries += m
BindlessApp_release_libraries += GL
BindlessApp_release_libraries += dl
BindlessApp_release_libraries += Xxf86vm
BindlessApp_release_libraries += pthread
BindlessApp_release_libraries += :libHalf.a
BindlessApp_release_libraries += :libNvAppBase.a
BindlessApp_release_libraries += :libNvAssetLoader.a
BindlessApp_release_libraries += :libNvGamepad.a
BindlessApp_release_libraries += :libNvGLUtils.a
BindlessApp_release_libraries += :libNvModel.a
BindlessApp_release_libraries += :libNvUI.a
BindlessApp_release_cflags    := $(BindlessApp_custom_cflags)
BindlessApp_release_cflags    += $(addprefix -D, $(BindlessApp_release_defines))
BindlessApp_release_cflags    += $(addprefix -I, $(BindlessApp_release_hpaths))
BindlessApp_release_cflags  += -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function -Wno-reorder
BindlessApp_release_cflags  += -O2
BindlessApp_release_lflags    := $(BindlessApp_custom_lflags)
BindlessApp_release_lflags    += $(addprefix -L, $(BindlessApp_release_lpaths))
BindlessApp_release_lflags    += -Wl,--start-group $(addprefix -l, $(BindlessApp_release_libraries)) -Wl,--end-group
BindlessApp_release_lflags  += -Wl,--unresolved-symbols=ignore-in-shared-libs
BindlessApp_release_objsdir  := $(OBJS_DIR)/BindlessApp_release
BindlessApp_release_obj      := 
BindlessApp_release_cpp_o    = $(addprefix $(BindlessApp_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(BindlessApp_cppfiles)))))
BindlessApp_release_obj      += $(BindlessApp_release_cpp_o) 
BindlessApp_release_bin      := ./../../bin/linux-arm32/BindlessApp

clean_BindlessApp_release: 
	@$(ECHO) clean BindlessApp release
	@$(RMDIR) $(BindlessApp_release_objsdir)
	@$(RMDIR) $(BindlessApp_release_bin)

build_BindlessApp_release: postbuild_BindlessApp_release
postbuild_BindlessApp_release: mainbuild_BindlessApp_release
mainbuild_BindlessApp_release: prebuild_BindlessApp_release $(BindlessApp_release_bin)
prebuild_BindlessApp_release:

-include $(BindlessApp_release_cpp_o:%o=%d)

$(BindlessApp_release_bin): $(BindlessApp_release_obj) $(Half_release_bin) $(NvAppBase_release_bin) $(NvAssetLoader_release_bin) $(NvGamepad_release_bin) $(NvGLUtils_release_bin) $(NvModel_release_bin) $(NvUI_release_bin) 
	@mkdir -p `dirname ./../../bin/linux-arm32/BindlessApp`
	$(CCLD) $^ $(BindlessApp_release_lflags) -o $(BindlessApp_release_bin) 
	@$(ECHO) building $@ complete!

$(BindlessApp_release_cpp_o): $(BindlessApp_release_objsdir)/%.o: 
	@$(ECHO) BindlessApp: compiling release $(filter %$*,$(BindlessApp_cppfiles))...
	@mkdir -p $(dir $(@))
	$(CXX) $(BindlessApp_release_cflags) -MMD -MP -MF $(subst .cpp.o,.cpp.d,$@) -c $(filter %$*,$(BindlessApp_cppfiles)) -o $@
