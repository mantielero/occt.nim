type
  Graphic3dTypeOfConnection* {.size: sizeof(cint),
                              importcpp: "Graphic3d_TypeOfConnection",
                              header: "Graphic3d_TypeOfConnection.hxx".} = enum
    Graphic3dTOC_ANCESTOR, Graphic3dTOC_DESCENDANT

