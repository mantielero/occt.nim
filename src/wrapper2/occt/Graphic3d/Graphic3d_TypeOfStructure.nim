type
  Graphic3dTypeOfStructure* {.size: sizeof(cint),
                             importcpp: "Graphic3d_TypeOfStructure",
                             header: "Graphic3d_TypeOfStructure.hxx".} = enum
    Graphic3dTOS_WIREFRAME, Graphic3dTOS_SHADING, Graphic3dTOS_COMPUTED,
    Graphic3dTOS_ALL

