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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../gp/gp_XY, ../IGESData/IGESData_IGESEntity

discard "forward decl of gp_XY"
discard "forward decl of gp_Pnt2d"
discard "forward decl of IGESDimen_BasicDimension"
discard "forward decl of IGESDimen_BasicDimension"
type
  Handle_IGESDimen_BasicDimension* = handle[IGESDimen_BasicDimension]

## ! Defines IGES Basic Dimension, Type 406, Form 31,
## ! in package IGESDimen
## ! The basic Dimension Property indicates that the referencing
## ! dimension entity is to be displayed with a box around text.

type
  IGESDimen_BasicDimension* {.importcpp: "IGESDimen_BasicDimension",
                             header: "IGESDimen_BasicDimension.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESDimen_BasicDimension*(): IGESDimen_BasicDimension {.constructor,
    importcpp: "IGESDimen_BasicDimension(@)",
    header: "IGESDimen_BasicDimension.hxx".}
proc Init*(this: var IGESDimen_BasicDimension; nbPropVal: Standard_Integer;
          lowerLeft: gp_XY; lowerRight: gp_XY; upperRight: gp_XY; upperLeft: gp_XY) {.
    importcpp: "Init", header: "IGESDimen_BasicDimension.hxx".}
proc NbPropertyValues*(this: IGESDimen_BasicDimension): Standard_Integer {.
    noSideEffect, importcpp: "NbPropertyValues",
    header: "IGESDimen_BasicDimension.hxx".}
proc LowerLeft*(this: IGESDimen_BasicDimension): gp_Pnt2d {.noSideEffect,
    importcpp: "LowerLeft", header: "IGESDimen_BasicDimension.hxx".}
proc LowerRight*(this: IGESDimen_BasicDimension): gp_Pnt2d {.noSideEffect,
    importcpp: "LowerRight", header: "IGESDimen_BasicDimension.hxx".}
proc UpperRight*(this: IGESDimen_BasicDimension): gp_Pnt2d {.noSideEffect,
    importcpp: "UpperRight", header: "IGESDimen_BasicDimension.hxx".}
proc UpperLeft*(this: IGESDimen_BasicDimension): gp_Pnt2d {.noSideEffect,
    importcpp: "UpperLeft", header: "IGESDimen_BasicDimension.hxx".}
type
  IGESDimen_BasicDimensionbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDimen_BasicDimension::get_type_name(@)",
                              header: "IGESDimen_BasicDimension.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDimen_BasicDimension::get_type_descriptor(@)",
    header: "IGESDimen_BasicDimension.hxx".}
proc DynamicType*(this: IGESDimen_BasicDimension): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDimen_BasicDimension.hxx".}