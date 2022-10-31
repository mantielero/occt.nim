import graphic3d_types





##  Author: Ilya Khramov
##  Copyright (c) 2019 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.



proc newGraphic3dCubeMapOrder*(): Graphic3dCubeMapOrder {.cdecl, constructor,
    importcpp: "Graphic3d_CubeMapOrder(@)", header: "Graphic3d_CubeMapOrder.hxx".}
proc newGraphic3dCubeMapOrder*(thePosXLocation: cuchar; theNegXLocation: cuchar;
                              thePosYLocation: cuchar; theNegYLocation: cuchar;
                              thePosZLocation: cuchar; theNegZLocation: cuchar): Graphic3dCubeMapOrder {.
    cdecl, constructor, importcpp: "Graphic3d_CubeMapOrder(@)", header: "Graphic3d_CubeMapOrder.hxx".}
proc newGraphic3dCubeMapOrder*(theOrder: Graphic3dValidatedCubeMapOrder): Graphic3dCubeMapOrder {.
    cdecl, constructor, importcpp: "Graphic3d_CubeMapOrder(@)", header: "Graphic3d_CubeMapOrder.hxx".}
proc set*(this: var Graphic3dCubeMapOrder; theOrder: Graphic3dCubeMapOrder): var Graphic3dCubeMapOrder {.
    cdecl, importcpp: "Set", header: "Graphic3d_CubeMapOrder.hxx".}
proc validated*(this: Graphic3dCubeMapOrder): Graphic3dValidatedCubeMapOrder {.
    noSideEffect, cdecl, importcpp: "Validated", header: "Graphic3d_CubeMapOrder.hxx".}
proc set*(this: var Graphic3dCubeMapOrder; theCubeMapSide: Graphic3dCubeMapSide;
         theValue: cuchar): var Graphic3dCubeMapOrder {.cdecl, importcpp: "Set",
    header: "Graphic3d_CubeMapOrder.hxx".}
proc setDefault*(this: var Graphic3dCubeMapOrder): var Graphic3dCubeMapOrder {.cdecl,
    importcpp: "SetDefault", header: "Graphic3d_CubeMapOrder.hxx".}
proc permute*(this: var Graphic3dCubeMapOrder;
             anOrder: Graphic3dValidatedCubeMapOrder): var Graphic3dCubeMapOrder {.
    cdecl, importcpp: "Permute", header: "Graphic3d_CubeMapOrder.hxx".}
proc permuted*(this: Graphic3dCubeMapOrder; anOrder: Graphic3dValidatedCubeMapOrder): Graphic3dCubeMapOrder {.
    noSideEffect, cdecl, importcpp: "Permuted", header: "Graphic3d_CubeMapOrder.hxx".}
proc swap*(this: var Graphic3dCubeMapOrder; theFirstSide: Graphic3dCubeMapSide;
          theSecondSide: Graphic3dCubeMapSide): var Graphic3dCubeMapOrder {.cdecl,
    importcpp: "Swap", header: "Graphic3d_CubeMapOrder.hxx".}
proc swapped*(this: Graphic3dCubeMapOrder; theFirstSide: Graphic3dCubeMapSide;
             theSecondSide: Graphic3dCubeMapSide): Graphic3dCubeMapOrder {.
    noSideEffect, cdecl, importcpp: "Swapped", header: "Graphic3d_CubeMapOrder.hxx".}
proc get*(this: Graphic3dCubeMapOrder; theCubeMapSide: Graphic3dCubeMapSide): cuchar {.
    noSideEffect, cdecl, importcpp: "Get", header: "Graphic3d_CubeMapOrder.hxx".}
proc `[]`*(this: Graphic3dCubeMapOrder; theCubeMapSide: Graphic3dCubeMapSide): cuchar {.
    noSideEffect, cdecl, importcpp: "#[@]", header: "Graphic3d_CubeMapOrder.hxx".}
proc clear*(this: var Graphic3dCubeMapOrder): var Graphic3dCubeMapOrder {.cdecl,
    importcpp: "Clear", header: "Graphic3d_CubeMapOrder.hxx".}
proc isEmpty*(this: Graphic3dCubeMapOrder): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "Graphic3d_CubeMapOrder.hxx".}
proc hasRepetitions*(this: Graphic3dCubeMapOrder): bool {.noSideEffect, cdecl,
    importcpp: "HasRepetitions", header: "Graphic3d_CubeMapOrder.hxx".}
proc hasOverflows*(this: Graphic3dCubeMapOrder): bool {.noSideEffect, cdecl,
    importcpp: "HasOverflows", header: "Graphic3d_CubeMapOrder.hxx".}
proc isValid*(this: Graphic3dCubeMapOrder): bool {.noSideEffect, cdecl,
    importcpp: "IsValid", header: "Graphic3d_CubeMapOrder.hxx".}
proc default*(): Graphic3dValidatedCubeMapOrder {.cdecl,
    importcpp: "Graphic3d_CubeMapOrder::Default(@)", header: "Graphic3d_CubeMapOrder.hxx".}
## ! Graphic3d_ValidatedCubeMapOrder contains completely valid order object.
## ! The only way to create this class except copy constructor is 'Validated' method of Graphic3d_CubeMapOrder.
## ! This class can initialize Graphic3d_CubeMapOrder.
## ! It is supposed to be used in case of necessity of completely valid order (in function argument as example).
## ! It helps to automate order's valid checks.



proc `->`*(this: Graphic3dValidatedCubeMapOrder): ptr Graphic3dCubeMapOrder {.
    noSideEffect, cdecl, importcpp: "(# -> #)", header: "Graphic3d_CubeMapOrder.hxx".}
proc newGraphic3dValidatedCubeMapOrder*(theOther: Graphic3dValidatedCubeMapOrder): Graphic3dValidatedCubeMapOrder {.
    cdecl, constructor, importcpp: "Graphic3d_ValidatedCubeMapOrder(@)",
    header: "Graphic3d_CubeMapOrder.hxx".}


