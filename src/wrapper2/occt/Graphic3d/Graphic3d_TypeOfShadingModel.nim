type
  Graphic3dTypeOfShadingModel* {.size: sizeof(cint),
                                importcpp: "Graphic3d_TypeOfShadingModel",
                                header: "Graphic3d_TypeOfShadingModel.hxx".} = enum
    Graphic3dTOSM_DEFAULT = -1, Graphic3dTOSM_UNLIT = 0, Graphic3dTOSM_FACET,
    Graphic3dTOSM_VERTEX, Graphic3dTOSM_FRAGMENT, Graphic3dTOSM_PBR,
    Graphic3dTOSM_PBR_FACET, Graphic3dTOSM_NONE = graphic3dTOSM_UNLIT,
    V3dCOLOR = graphic3dTOSM_NONE, V3dFLAT = graphic3dTOSM_FACET,
    V3dGOURAUD = graphic3dTOSM_VERTEX, V3dPHONG = graphic3dTOSM_FRAGMENT


const
  Graphic3dTypeOfShadingModelNB* = graphic3dTOSM_PBR_FACET + 1
