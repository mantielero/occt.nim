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

discard "forward decl of gp_XYZ"
discard "forward decl of gp_Vec"
discard "forward decl of IGESGeom_Direction"
discard "forward decl of IGESGeom_Direction"
type
  HandleIGESGeomDirection* = Handle[IGESGeomDirection]

## ! defines IGESDirection, Type <123> Form <0>
## ! in package IGESGeom
## ! A direction entity is a non-zero vector in Euclidean 3-space
## ! that is defined by its three components (direction ratios)
## ! with respect to the coordinate axes. If x, y, z are the
## ! direction ratios then (x^2 + y^2 + z^2) > 0

type
  IGESGeomDirection* {.importcpp: "IGESGeom_Direction",
                      header: "IGESGeom_Direction.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESGeomDirection*(): IGESGeomDirection {.constructor,
    importcpp: "IGESGeom_Direction(@)", header: "IGESGeom_Direction.hxx".}
proc init*(this: var IGESGeomDirection; aDirection: GpXYZ) {.importcpp: "Init",
    header: "IGESGeom_Direction.hxx".}
proc value*(this: IGESGeomDirection): GpVec {.noSideEffect, importcpp: "Value",
    header: "IGESGeom_Direction.hxx".}
proc transformedValue*(this: IGESGeomDirection): GpVec {.noSideEffect,
    importcpp: "TransformedValue", header: "IGESGeom_Direction.hxx".}
type
  IGESGeomDirectionbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESGeom_Direction::get_type_name(@)",
                            header: "IGESGeom_Direction.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGeom_Direction::get_type_descriptor(@)",
    header: "IGESGeom_Direction.hxx".}
proc dynamicType*(this: IGESGeomDirection): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGeom_Direction.hxx".}

