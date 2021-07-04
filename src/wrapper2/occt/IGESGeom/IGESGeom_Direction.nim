##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( Kiran )
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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_XYZ,
  ../IGESData/IGESData_IGESEntity

discard "forward decl of gp_XYZ"
discard "forward decl of gp_Vec"
discard "forward decl of IGESGeom_Direction"
discard "forward decl of IGESGeom_Direction"
type
  Handle_IGESGeom_Direction* = handle[IGESGeom_Direction]

## ! defines IGESDirection, Type <123> Form <0>
## ! in package IGESGeom
## ! A direction entity is a non-zero vector in Euclidean 3-space
## ! that is defined by its three components (direction ratios)
## ! with respect to the coordinate axes. If x, y, z are the
## ! direction ratios then (x^2 + y^2 + z^2) > 0

type
  IGESGeom_Direction* {.importcpp: "IGESGeom_Direction",
                       header: "IGESGeom_Direction.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESGeom_Direction*(): IGESGeom_Direction {.constructor,
    importcpp: "IGESGeom_Direction(@)", header: "IGESGeom_Direction.hxx".}
proc Init*(this: var IGESGeom_Direction; aDirection: gp_XYZ) {.importcpp: "Init",
    header: "IGESGeom_Direction.hxx".}
proc Value*(this: IGESGeom_Direction): gp_Vec {.noSideEffect, importcpp: "Value",
    header: "IGESGeom_Direction.hxx".}
proc TransformedValue*(this: IGESGeom_Direction): gp_Vec {.noSideEffect,
    importcpp: "TransformedValue", header: "IGESGeom_Direction.hxx".}
type
  IGESGeom_Directionbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESGeom_Direction::get_type_name(@)",
                              header: "IGESGeom_Direction.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGeom_Direction::get_type_descriptor(@)",
    header: "IGESGeom_Direction.hxx".}
proc DynamicType*(this: IGESGeom_Direction): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGeom_Direction.hxx".}