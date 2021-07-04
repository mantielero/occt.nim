##  Created on: 1997-01-21
##  Created by: Prestataire Christiane ARMAND
##  Copyright (c) 1997-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
  AIS_InteractiveObject

discard "forward decl of Geom_Circle"
type
  AIS_Circle* {.importcpp: "AIS_Circle", header: "AIS_Circle.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                                    ## !
                                                                                                    ## Initializes
                                                                                                    ## this
                                                                                                    ## algorithm
                                                                                                    ## for
                                                                                                    ## constructing
                                                                                                    ## AIS
                                                                                                    ## circle
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## datums
                                                                                                    ## initializes
                                                                                                    ## the
                                                                                                    ## circle
                                                                                                    ## aCircle

  AIS_Circlebase_type* = AIS_InteractiveObject

proc get_type_name*(): cstring {.importcpp: "AIS_Circle::get_type_name(@)",
                              header: "AIS_Circle.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_Circle::get_type_descriptor(@)", header: "AIS_Circle.hxx".}
proc DynamicType*(this: AIS_Circle): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_Circle.hxx".}
proc constructAIS_Circle*(aCircle: handle[Geom_Circle]): AIS_Circle {.constructor,
    importcpp: "AIS_Circle(@)", header: "AIS_Circle.hxx".}
proc constructAIS_Circle*(theCircle: handle[Geom_Circle]; theUStart: Standard_Real;
                         theUEnd: Standard_Real; theIsFilledCircleSens: Standard_Boolean = Standard_False): AIS_Circle {.
    constructor, importcpp: "AIS_Circle(@)", header: "AIS_Circle.hxx".}
proc Signature*(this: AIS_Circle): Standard_Integer {.noSideEffect,
    importcpp: "Signature", header: "AIS_Circle.hxx".}
proc Type*(this: AIS_Circle): AIS_KindOfInteractive {.noSideEffect,
    importcpp: "Type", header: "AIS_Circle.hxx".}
proc Circle*(this: AIS_Circle): handle[Geom_Circle] {.noSideEffect,
    importcpp: "Circle", header: "AIS_Circle.hxx".}
proc Parameters*(this: AIS_Circle; theU1: var Standard_Real; theU2: var Standard_Real) {.
    noSideEffect, importcpp: "Parameters", header: "AIS_Circle.hxx".}
proc SetCircle*(this: var AIS_Circle; theCircle: handle[Geom_Circle]) {.
    importcpp: "SetCircle", header: "AIS_Circle.hxx".}
proc SetFirstParam*(this: var AIS_Circle; theU: Standard_Real) {.
    importcpp: "SetFirstParam", header: "AIS_Circle.hxx".}
proc SetLastParam*(this: var AIS_Circle; theU: Standard_Real) {.
    importcpp: "SetLastParam", header: "AIS_Circle.hxx".}
proc SetColor*(this: var AIS_Circle; aColor: Quantity_Color) {.importcpp: "SetColor",
    header: "AIS_Circle.hxx".}
proc SetWidth*(this: var AIS_Circle; aValue: Standard_Real) {.importcpp: "SetWidth",
    header: "AIS_Circle.hxx".}
proc UnsetColor*(this: var AIS_Circle) {.importcpp: "UnsetColor",
                                     header: "AIS_Circle.hxx".}
proc UnsetWidth*(this: var AIS_Circle) {.importcpp: "UnsetWidth",
                                     header: "AIS_Circle.hxx".}
proc IsFilledCircleSens*(this: AIS_Circle): Standard_Boolean {.noSideEffect,
    importcpp: "IsFilledCircleSens", header: "AIS_Circle.hxx".}
proc SetFilledCircleSens*(this: var AIS_Circle;
                         theIsFilledCircleSens: Standard_Boolean) {.
    importcpp: "SetFilledCircleSens", header: "AIS_Circle.hxx".}
discard "forward decl of AIS_Circle"
type
  Handle_AIS_Circle* = handle[AIS_Circle]
