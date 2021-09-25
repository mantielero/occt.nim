##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( Arun MENON )
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of gp_XY"
discard "forward decl of gp_Pnt2d"
discard "forward decl of IGESDimen_BasicDimension"
discard "forward decl of IGESDimen_BasicDimension"
type
  HandleIGESDimenBasicDimension* = Handle[IGESDimenBasicDimension]

## ! Defines IGES Basic Dimension, Type 406, Form 31,
## ! in package IGESDimen
## ! The basic Dimension Property indicates that the referencing
## ! dimension entity is to be displayed with a box around text.

type
  IGESDimenBasicDimension* {.importcpp: "IGESDimen_BasicDimension",
                            header: "IGESDimen_BasicDimension.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDimenBasicDimension*(): IGESDimenBasicDimension {.constructor,
    importcpp: "IGESDimen_BasicDimension(@)",
    header: "IGESDimen_BasicDimension.hxx".}
proc init*(this: var IGESDimenBasicDimension; nbPropVal: int; lowerLeft: Xy;
          lowerRight: Xy; upperRight: Xy; upperLeft: Xy) {.importcpp: "Init",
    header: "IGESDimen_BasicDimension.hxx".}
proc nbPropertyValues*(this: IGESDimenBasicDimension): int {.noSideEffect,
    importcpp: "NbPropertyValues", header: "IGESDimen_BasicDimension.hxx".}
proc lowerLeft*(this: IGESDimenBasicDimension): Pnt2d {.noSideEffect,
    importcpp: "LowerLeft", header: "IGESDimen_BasicDimension.hxx".}
proc lowerRight*(this: IGESDimenBasicDimension): Pnt2d {.noSideEffect,
    importcpp: "LowerRight", header: "IGESDimen_BasicDimension.hxx".}
proc upperRight*(this: IGESDimenBasicDimension): Pnt2d {.noSideEffect,
    importcpp: "UpperRight", header: "IGESDimen_BasicDimension.hxx".}
proc upperLeft*(this: IGESDimenBasicDimension): Pnt2d {.noSideEffect,
    importcpp: "UpperLeft", header: "IGESDimen_BasicDimension.hxx".}
type
  IGESDimenBasicDimensionbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDimen_BasicDimension::get_type_name(@)",
                            header: "IGESDimen_BasicDimension.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDimen_BasicDimension::get_type_descriptor(@)",
    header: "IGESDimen_BasicDimension.hxx".}
proc dynamicType*(this: IGESDimenBasicDimension): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDimen_BasicDimension.hxx".}
