# PROVIDES: AppBlendApprox
# DEPENDS:

type
  AppBlendApprox* {.importcpp: "AppBlend_Approx", header: "AppBlend_Approx.hxx",
                   bycopy.} = object of RootObj

