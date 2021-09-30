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

discard "forward decl of Graphic3d_ValidatedCubeMapOrder"
type
  Graphic3dCubeMapOrder* {.importcpp: "Graphic3d_CubeMapOrder",
                          header: "Graphic3d_CubeMapOrder.hxx", bycopy.} = object ## !
                                                                             ## Default
                                                                             ## constructor.
                                                                             ## !
                                                                             ## Creates
                                                                             ## empty
                                                                             ## order
                                                                             ## with
                                                                             ## zero
                                                                             ## convolution.
                                                                             ## !
                                                                             ## Sets
                                                                             ## number of
                                                                             ## tile in
                                                                             ## packed
                                                                             ## cubemap
                                                                             ## image
                                                                             ## according
                                                                             ## passed
                                                                             ## cubemap
                                                                             ## side.
                                                                             ## !
                                                                             ## Returns
                                                                             ## default
                                                                             ## order in
                                                                             ## protector
                                                                             ## container
                                                                             ## class.
                                                                             ## ! It is
                                                                             ## guaranteed to be
                                                                             ## valid.
                                                                             ## !
                                                                             ## Alias of
                                                                             ## 'Get'
                                                                             ## with
                                                                             ## other
                                                                             ## parameter's
                                                                             ## type for
                                                                             ## more
                                                                             ## handful
                                                                             ## iteration.
    ## !< Contains all values of permutation as power convolution
    ## !< Indicates if there are attempts to assign index greater than 5


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
## ! Graphic3d_ValidatedCubeMapOrder contains completely valid order object.
## ! The only way to create this class except copy constructor is 'Validated' method of Graphic3d_CubeMapOrder.
## ! This class can initialize Graphic3d_CubeMapOrder.
## ! It is supposed to be used in case of necessity of completely valid order (in function argument as example).
## ! It helps to automate order's valid checks.

type
  Graphic3dValidatedCubeMapOrder* {.importcpp: "Graphic3d_ValidatedCubeMapOrder",
                                   header: "Graphic3d_CubeMapOrder.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Only
                                                                                      ## Graphic3d_CubeMapOrder
                                                                                      ## can
                                                                                      ## generate
                                                                                      ## Graphic3d_ValidatedCubeMapOrder
                                                                                      ## in
                                                                                      ## 'Validated'
                                                                                      ## method.
    order* {.importc: "Order".}: Graphic3dCubeMapOrder ## !< Completely valid order


proc `->`*(this: Graphic3dValidatedCubeMapOrder): ptr Graphic3dCubeMapOrder {.
    noSideEffect, importcpp: "(# -> #)", header: "Graphic3d_CubeMapOrder.hxx".}
proc constructGraphic3dValidatedCubeMapOrder*(
    theOther: Graphic3dValidatedCubeMapOrder): Graphic3dValidatedCubeMapOrder {.
    constructor, importcpp: "Graphic3d_ValidatedCubeMapOrder(@)",
    header: "Graphic3d_CubeMapOrder.hxx".}

























