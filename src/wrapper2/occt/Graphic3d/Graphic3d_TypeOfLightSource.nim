type
  Graphic3dTypeOfLightSource* {.size: sizeof(cint),
                               importcpp: "Graphic3d_TypeOfLightSource",
                               header: "Graphic3d_TypeOfLightSource.hxx".} = enum
    Graphic3dTOLS_AMBIENT, Graphic3dTOLS_DIRECTIONAL, Graphic3dTOLS_POSITIONAL,
    Graphic3dTOLS_SPOT, V3dAMBIENT = graphic3dTOLS_AMBIENT,
    V3dDIRECTIONAL = graphic3dTOLS_DIRECTIONAL,
    V3dPOSITIONAL = graphic3dTOLS_POSITIONAL, V3dSPOT = graphic3dTOLS_SPOT


const
  Graphic3dTypeOfLightSourceNB* = graphic3dTOLS_SPOT + 1
