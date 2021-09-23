##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( TCD )
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
  ../Standard/Standard_Real, ../IGESData/IGESData_IGESEntity

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Vec"
discard "forward decl of IGESGeom_OffsetSurface"
discard "forward decl of IGESGeom_OffsetSurface"
type
  Handle_IGESGeom_OffsetSurface* = handle[IGESGeom_OffsetSurface]

## ! defines IGESOffsetSurface, Type <140> Form <0>
## ! in package IGESGeom
## ! An offset surface is a surface defined in terms of an
## ! already existing surface.If S(u, v) is a parametrised
## ! regular surface and N(u, v) is a differential field of
## ! unit normal vectors defined on the whole surface, and
## ! "d" a fixed non zero real number, then offset surface
## ! to S is a parametrised surface S(u, v) given by
## ! O(u, v) = S(u, v) + d * N(u, v);
## ! u1 <= u <= u2; v1 <= v <= v2;

type
  IGESGeom_OffsetSurface* {.importcpp: "IGESGeom_OffsetSurface",
                           header: "IGESGeom_OffsetSurface.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESGeom_OffsetSurface*(): IGESGeom_OffsetSurface {.constructor,
    importcpp: "IGESGeom_OffsetSurface(@)", header: "IGESGeom_OffsetSurface.hxx".}
proc Init*(this: var IGESGeom_OffsetSurface; anIndicatoR: gp_XYZ;
          aDistance: Standard_Real; aSurface: handle[IGESData_IGESEntity]) {.
    importcpp: "Init", header: "IGESGeom_OffsetSurface.hxx".}
proc OffsetIndicator*(this: IGESGeom_OffsetSurface): gp_Vec {.noSideEffect,
    importcpp: "OffsetIndicator", header: "IGESGeom_OffsetSurface.hxx".}
proc TransformedOffsetIndicator*(this: IGESGeom_OffsetSurface): gp_Vec {.
    noSideEffect, importcpp: "TransformedOffsetIndicator",
    header: "IGESGeom_OffsetSurface.hxx".}
proc Distance*(this: IGESGeom_OffsetSurface): Standard_Real {.noSideEffect,
    importcpp: "Distance", header: "IGESGeom_OffsetSurface.hxx".}
proc Surface*(this: IGESGeom_OffsetSurface): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "Surface", header: "IGESGeom_OffsetSurface.hxx".}
type
  IGESGeom_OffsetSurfacebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESGeom_OffsetSurface::get_type_name(@)",
                              header: "IGESGeom_OffsetSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGeom_OffsetSurface::get_type_descriptor(@)",
    header: "IGESGeom_OffsetSurface.hxx".}
proc DynamicType*(this: IGESGeom_OffsetSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESGeom_OffsetSurface.hxx".}