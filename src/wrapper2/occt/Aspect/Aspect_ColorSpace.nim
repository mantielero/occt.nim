type
  AspectGraphicsLibrary* {.size: sizeof(cint), importcpp: "Aspect_GraphicsLibrary",
                          header: "Aspect_ColorSpace.hxx".} = enum
    AspectGraphicsLibraryOpenGL, AspectGraphicsLibraryOpenGLES


type
  AspectColorSpace* {.size: sizeof(cint), importcpp: "Aspect_ColorSpace",
                     header: "Aspect_ColorSpace.hxx".} = enum
    AspectColorSpaceSRGB = 0, AspectColorSpaceLinear = 1

