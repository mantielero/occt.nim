type
  Graphic3dCubeMapSide* {.size: sizeof(cint), importcpp: "Graphic3d_CubeMapSide",
                         header: "Graphic3d_CubeMapOrder.hxx".} = enum
    Graphic3dCMS_POS_X, Graphic3dCMS_NEG_X, Graphic3dCMS_POS_Y, Graphic3dCMS_NEG_Y,
    Graphic3dCMS_POS_Z, Graphic3dCMS_NEG_Z


discard "forward decl of Graphic3d_ValidatedCubeMapOrder"
type
  Graphic3dCubeMapOrder* {.importcpp: "Graphic3d_CubeMapOrder",
                          header: "Graphic3d_CubeMapOrder.hxx", bycopy.} = object


proc constructGraphic3dCubeMapOrder*(): Graphic3dCubeMapOrder {.constructor,
    importcpp: "Graphic3d_CubeMapOrder(@)", header: "Graphic3d_CubeMapOrder.hxx".}
proc constructGraphic3dCubeMapOrder*(thePosXLocation: cuchar;
                                    theNegXLocation: cuchar;
                                    thePosYLocation: cuchar;
                                    theNegYLocation: cuchar;
                                    thePosZLocation: cuchar;
                                    theNegZLocation: cuchar): Graphic3dCubeMapOrder {.
    constructor, importcpp: "Graphic3d_CubeMapOrder(@)",
    header: "Graphic3d_CubeMapOrder.hxx".}
proc constructGraphic3dCubeMapOrder*(theOrder: Graphic3dValidatedCubeMapOrder): Graphic3dCubeMapOrder {.
    constructor, importcpp: "Graphic3d_CubeMapOrder(@)",
    header: "Graphic3d_CubeMapOrder.hxx".}
proc set*(this: var Graphic3dCubeMapOrder; theOrder: Graphic3dCubeMapOrder): var Graphic3dCubeMapOrder {.
    importcpp: "Set", header: "Graphic3d_CubeMapOrder.hxx".}
proc validated*(this: Graphic3dCubeMapOrder): Graphic3dValidatedCubeMapOrder {.
    noSideEffect, importcpp: "Validated", header: "Graphic3d_CubeMapOrder.hxx".}
proc set*(this: var Graphic3dCubeMapOrder; theCubeMapSide: Graphic3dCubeMapSide;
         theValue: cuchar): var Graphic3dCubeMapOrder {.importcpp: "Set",
    header: "Graphic3d_CubeMapOrder.hxx".}
proc setDefault*(this: var Graphic3dCubeMapOrder): var Graphic3dCubeMapOrder {.
    importcpp: "SetDefault", header: "Graphic3d_CubeMapOrder.hxx".}
proc permute*(this: var Graphic3dCubeMapOrder;
             anOrder: Graphic3dValidatedCubeMapOrder): var Graphic3dCubeMapOrder {.
    importcpp: "Permute", header: "Graphic3d_CubeMapOrder.hxx".}
proc permuted*(this: Graphic3dCubeMapOrder; anOrder: Graphic3dValidatedCubeMapOrder): Graphic3dCubeMapOrder {.
    noSideEffect, importcpp: "Permuted", header: "Graphic3d_CubeMapOrder.hxx".}
proc swap*(this: var Graphic3dCubeMapOrder; theFirstSide: Graphic3dCubeMapSide;
          theSecondSide: Graphic3dCubeMapSide): var Graphic3dCubeMapOrder {.
    importcpp: "Swap", header: "Graphic3d_CubeMapOrder.hxx".}
proc swapped*(this: Graphic3dCubeMapOrder; theFirstSide: Graphic3dCubeMapSide;
             theSecondSide: Graphic3dCubeMapSide): Graphic3dCubeMapOrder {.
    noSideEffect, importcpp: "Swapped", header: "Graphic3d_CubeMapOrder.hxx".}
proc get*(this: Graphic3dCubeMapOrder; theCubeMapSide: Graphic3dCubeMapSide): cuchar {.
    noSideEffect, importcpp: "Get", header: "Graphic3d_CubeMapOrder.hxx".}
proc `[]`*(this: Graphic3dCubeMapOrder; theCubeMapSide: Graphic3dCubeMapSide): cuchar {.
    noSideEffect, importcpp: "#[@]", header: "Graphic3d_CubeMapOrder.hxx".}
proc clear*(this: var Graphic3dCubeMapOrder): var Graphic3dCubeMapOrder {.
    importcpp: "Clear", header: "Graphic3d_CubeMapOrder.hxx".}
proc isEmpty*(this: Graphic3dCubeMapOrder): bool {.noSideEffect,
    importcpp: "IsEmpty", header: "Graphic3d_CubeMapOrder.hxx".}
proc hasRepetitions*(this: Graphic3dCubeMapOrder): bool {.noSideEffect,
    importcpp: "HasRepetitions", header: "Graphic3d_CubeMapOrder.hxx".}
proc hasOverflows*(this: Graphic3dCubeMapOrder): bool {.noSideEffect,
    importcpp: "HasOverflows", header: "Graphic3d_CubeMapOrder.hxx".}
proc isValid*(this: Graphic3dCubeMapOrder): bool {.noSideEffect,
    importcpp: "IsValid", header: "Graphic3d_CubeMapOrder.hxx".}
proc default*(): Graphic3dValidatedCubeMapOrder {.
    importcpp: "Graphic3d_CubeMapOrder::Default(@)",
    header: "Graphic3d_CubeMapOrder.hxx".}
type
  Graphic3dValidatedCubeMapOrder* {.importcpp: "Graphic3d_ValidatedCubeMapOrder",
                                   header: "Graphic3d_CubeMapOrder.hxx", bycopy.} = object
    order* {.importc: "Order".}: Graphic3dCubeMapOrder


proc `->`*(this: Graphic3dValidatedCubeMapOrder): ptr Graphic3dCubeMapOrder {.
    noSideEffect, importcpp: "(# -> #)", header: "Graphic3d_CubeMapOrder.hxx".}
proc constructGraphic3dValidatedCubeMapOrder*(
    theOther: Graphic3dValidatedCubeMapOrder): Graphic3dValidatedCubeMapOrder {.
    constructor, importcpp: "Graphic3d_ValidatedCubeMapOrder(@)",
    header: "Graphic3d_CubeMapOrder.hxx".}