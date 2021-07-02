type
  Graphic3dTypeOfShaderObject* {.size: sizeof(cint),
                                importcpp: "Graphic3d_TypeOfShaderObject",
                                header: "Graphic3d_TypeOfShaderObject.hxx".} = enum
    Graphic3dTOS_VERTEX = 0x01, Graphic3dTOS_TESS_CONTROL = 0x02,
    Graphic3dTOS_TESS_EVALUATION = 0x04, Graphic3dTOS_GEOMETRY = 0x08,
    Graphic3dTOS_FRAGMENT = 0x10, Graphic3dTOS_COMPUTE = 0x20

