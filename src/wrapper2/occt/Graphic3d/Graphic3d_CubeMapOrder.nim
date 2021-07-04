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

import
  Graphic3d_CubeMapSide, ../Standard/Standard_Macro

discard "forward decl of Graphic3d_ValidatedCubeMapOrder"
type
  Graphic3d_CubeMapOrder* {.importcpp: "Graphic3d_CubeMapOrder",
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
                                                                              ## type
                                                                              ## for
                                                                              ## more
                                                                              ## handful
                                                                              ## iteration.
    ## !< Contains all values of permutation as power convolution
    ## !< Indicates if there are attempts to assign index greater than 5


proc constructGraphic3d_CubeMapOrder*(): Graphic3d_CubeMapOrder {.constructor,
    importcpp: "Graphic3d_CubeMapOrder(@)", header: "Graphic3d_CubeMapOrder.hxx".}
proc constructGraphic3d_CubeMapOrder*(thePosXLocation: cuchar;
                                     theNegXLocation: cuchar;
                                     thePosYLocation: cuchar;
                                     theNegYLocation: cuchar;
                                     thePosZLocation: cuchar;
                                     theNegZLocation: cuchar): Graphic3d_CubeMapOrder {.
    constructor, importcpp: "Graphic3d_CubeMapOrder(@)",
    header: "Graphic3d_CubeMapOrder.hxx".}
proc constructGraphic3d_CubeMapOrder*(theOrder: Graphic3d_ValidatedCubeMapOrder): Graphic3d_CubeMapOrder {.
    constructor, importcpp: "Graphic3d_CubeMapOrder(@)",
    header: "Graphic3d_CubeMapOrder.hxx".}
proc Set*(this: var Graphic3d_CubeMapOrder; theOrder: Graphic3d_CubeMapOrder): var Graphic3d_CubeMapOrder {.
    importcpp: "Set", header: "Graphic3d_CubeMapOrder.hxx".}
proc Validated*(this: Graphic3d_CubeMapOrder): Graphic3d_ValidatedCubeMapOrder {.
    noSideEffect, importcpp: "Validated", header: "Graphic3d_CubeMapOrder.hxx".}
proc Set*(this: var Graphic3d_CubeMapOrder; theCubeMapSide: Graphic3d_CubeMapSide;
         theValue: cuchar): var Graphic3d_CubeMapOrder {.importcpp: "Set",
    header: "Graphic3d_CubeMapOrder.hxx".}
proc SetDefault*(this: var Graphic3d_CubeMapOrder): var Graphic3d_CubeMapOrder {.
    importcpp: "SetDefault", header: "Graphic3d_CubeMapOrder.hxx".}
proc Permute*(this: var Graphic3d_CubeMapOrder;
             anOrder: Graphic3d_ValidatedCubeMapOrder): var Graphic3d_CubeMapOrder {.
    importcpp: "Permute", header: "Graphic3d_CubeMapOrder.hxx".}
proc Permuted*(this: Graphic3d_CubeMapOrder;
              anOrder: Graphic3d_ValidatedCubeMapOrder): Graphic3d_CubeMapOrder {.
    noSideEffect, importcpp: "Permuted", header: "Graphic3d_CubeMapOrder.hxx".}
proc Swap*(this: var Graphic3d_CubeMapOrder; theFirstSide: Graphic3d_CubeMapSide;
          theSecondSide: Graphic3d_CubeMapSide): var Graphic3d_CubeMapOrder {.
    importcpp: "Swap", header: "Graphic3d_CubeMapOrder.hxx".}
proc Swapped*(this: Graphic3d_CubeMapOrder; theFirstSide: Graphic3d_CubeMapSide;
             theSecondSide: Graphic3d_CubeMapSide): Graphic3d_CubeMapOrder {.
    noSideEffect, importcpp: "Swapped", header: "Graphic3d_CubeMapOrder.hxx".}
proc Get*(this: Graphic3d_CubeMapOrder; theCubeMapSide: Graphic3d_CubeMapSide): cuchar {.
    noSideEffect, importcpp: "Get", header: "Graphic3d_CubeMapOrder.hxx".}
proc `[]`*(this: Graphic3d_CubeMapOrder; theCubeMapSide: Graphic3d_CubeMapSide): cuchar {.
    noSideEffect, importcpp: "#[@]", header: "Graphic3d_CubeMapOrder.hxx".}
proc Clear*(this: var Graphic3d_CubeMapOrder): var Graphic3d_CubeMapOrder {.
    importcpp: "Clear", header: "Graphic3d_CubeMapOrder.hxx".}
proc IsEmpty*(this: Graphic3d_CubeMapOrder): bool {.noSideEffect,
    importcpp: "IsEmpty", header: "Graphic3d_CubeMapOrder.hxx".}
proc HasRepetitions*(this: Graphic3d_CubeMapOrder): bool {.noSideEffect,
    importcpp: "HasRepetitions", header: "Graphic3d_CubeMapOrder.hxx".}
proc HasOverflows*(this: Graphic3d_CubeMapOrder): bool {.noSideEffect,
    importcpp: "HasOverflows", header: "Graphic3d_CubeMapOrder.hxx".}
proc IsValid*(this: Graphic3d_CubeMapOrder): bool {.noSideEffect,
    importcpp: "IsValid", header: "Graphic3d_CubeMapOrder.hxx".}
proc Default*(): Graphic3d_ValidatedCubeMapOrder {.
    importcpp: "Graphic3d_CubeMapOrder::Default(@)",
    header: "Graphic3d_CubeMapOrder.hxx".}
## ! Graphic3d_ValidatedCubeMapOrder contains completely valid order object.
## ! The only way to create this class except copy constructor is 'Validated' method of Graphic3d_CubeMapOrder.
## ! This class can initialize Graphic3d_CubeMapOrder.
## ! It is supposed to be used in case of necessity of completely valid order (in function argument as example).
## ! It helps to automate order's valid checks.

type
  Graphic3d_ValidatedCubeMapOrder* {.importcpp: "Graphic3d_ValidatedCubeMapOrder",
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
    Order* {.importc: "Order".}: Graphic3d_CubeMapOrder ## !< Completely valid order


proc `->`*(this: Graphic3d_ValidatedCubeMapOrder): ptr Graphic3d_CubeMapOrder {.
    noSideEffect, importcpp: "(# -> #)", header: "Graphic3d_CubeMapOrder.hxx".}
proc constructGraphic3d_ValidatedCubeMapOrder*(
    theOther: Graphic3d_ValidatedCubeMapOrder): Graphic3d_ValidatedCubeMapOrder {.
    constructor, importcpp: "Graphic3d_ValidatedCubeMapOrder(@)",
    header: "Graphic3d_CubeMapOrder.hxx".}