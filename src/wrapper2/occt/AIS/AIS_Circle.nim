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

  AIS_CirclebaseType* = AIS_InteractiveObject

proc getTypeName*(): cstring {.importcpp: "AIS_Circle::get_type_name(@)",
                            header: "AIS_Circle.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AIS_Circle::get_type_descriptor(@)", header: "AIS_Circle.hxx".}
proc dynamicType*(this: AIS_Circle): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_Circle.hxx".}
proc constructAIS_Circle*(aCircle: Handle[GeomCircle]): AIS_Circle {.constructor,
    importcpp: "AIS_Circle(@)", header: "AIS_Circle.hxx".}
proc constructAIS_Circle*(theCircle: Handle[GeomCircle]; theUStart: StandardReal;
                         theUEnd: StandardReal;
                         theIsFilledCircleSens: StandardBoolean = standardFalse): AIS_Circle {.
    constructor, importcpp: "AIS_Circle(@)", header: "AIS_Circle.hxx".}
proc signature*(this: AIS_Circle): StandardInteger {.noSideEffect,
    importcpp: "Signature", header: "AIS_Circle.hxx".}
proc `type`*(this: AIS_Circle): AIS_KindOfInteractive {.noSideEffect,
    importcpp: "Type", header: "AIS_Circle.hxx".}
proc circle*(this: AIS_Circle): Handle[GeomCircle] {.noSideEffect,
    importcpp: "Circle", header: "AIS_Circle.hxx".}
proc parameters*(this: AIS_Circle; theU1: var StandardReal; theU2: var StandardReal) {.
    noSideEffect, importcpp: "Parameters", header: "AIS_Circle.hxx".}
proc setCircle*(this: var AIS_Circle; theCircle: Handle[GeomCircle]) {.
    importcpp: "SetCircle", header: "AIS_Circle.hxx".}
proc setFirstParam*(this: var AIS_Circle; theU: StandardReal) {.
    importcpp: "SetFirstParam", header: "AIS_Circle.hxx".}
proc setLastParam*(this: var AIS_Circle; theU: StandardReal) {.
    importcpp: "SetLastParam", header: "AIS_Circle.hxx".}
proc setColor*(this: var AIS_Circle; aColor: QuantityColor) {.importcpp: "SetColor",
    header: "AIS_Circle.hxx".}
proc setWidth*(this: var AIS_Circle; aValue: StandardReal) {.importcpp: "SetWidth",
    header: "AIS_Circle.hxx".}
proc unsetColor*(this: var AIS_Circle) {.importcpp: "UnsetColor",
                                     header: "AIS_Circle.hxx".}
proc unsetWidth*(this: var AIS_Circle) {.importcpp: "UnsetWidth",
                                     header: "AIS_Circle.hxx".}
proc isFilledCircleSens*(this: AIS_Circle): StandardBoolean {.noSideEffect,
    importcpp: "IsFilledCircleSens", header: "AIS_Circle.hxx".}
proc setFilledCircleSens*(this: var AIS_Circle;
                         theIsFilledCircleSens: StandardBoolean) {.
    importcpp: "SetFilledCircleSens", header: "AIS_Circle.hxx".}
discard "forward decl of AIS_Circle"
type
  HandleAIS_Circle* = Handle[AIS_Circle]


