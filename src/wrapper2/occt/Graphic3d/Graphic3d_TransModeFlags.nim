type
  Graphic3dTransModeFlags* {.size: sizeof(cint),
                            importcpp: "Graphic3d_TransModeFlags",
                            header: "Graphic3d_TransModeFlags.hxx".} = enum
    Graphic3dTMF_None = 0x0000, Graphic3dTMF_ZoomPers = 0x0002,
    Graphic3dTMF_RotatePers = 0x0008, Graphic3dTMF_TriedronPers = 0x0020,
    Graphic3dTMF_2d = 0x0040, Graphic3dTMF_ZoomRotatePers = graphic3dTMF_ZoomPers or
        graphic3dTMF_RotatePers

