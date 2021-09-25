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

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Vec"
discard "forward decl of IGESGeom_OffsetSurface"
discard "forward decl of IGESGeom_OffsetSurface"
type
  HandleIGESGeomOffsetSurface* = Handle[IGESGeomOffsetSurface]

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
  IGESGeomOffsetSurface* {.importcpp: "IGESGeom_OffsetSurface",
                          header: "IGESGeom_OffsetSurface.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESGeomOffsetSurface*(): IGESGeomOffsetSurface {.constructor,
    importcpp: "IGESGeom_OffsetSurface(@)", header: "IGESGeom_OffsetSurface.hxx".}
proc init*(this: var IGESGeomOffsetSurface; anIndicatoR: Xyz; aDistance: float;
          aSurface: Handle[IGESDataIGESEntity]) {.importcpp: "Init",
    header: "IGESGeom_OffsetSurface.hxx".}
proc offsetIndicator*(this: IGESGeomOffsetSurface): Vec {.noSideEffect,
    importcpp: "OffsetIndicator", header: "IGESGeom_OffsetSurface.hxx".}
proc transformedOffsetIndicator*(this: IGESGeomOffsetSurface): Vec {.noSideEffect,
    importcpp: "TransformedOffsetIndicator", header: "IGESGeom_OffsetSurface.hxx".}
proc distance*(this: IGESGeomOffsetSurface): float {.noSideEffect,
    importcpp: "Distance", header: "IGESGeom_OffsetSurface.hxx".}
proc surface*(this: IGESGeomOffsetSurface): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "Surface", header: "IGESGeom_OffsetSurface.hxx".}
type
  IGESGeomOffsetSurfacebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESGeom_OffsetSurface::get_type_name(@)",
                            header: "IGESGeom_OffsetSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGeom_OffsetSurface::get_type_descriptor(@)",
    header: "IGESGeom_OffsetSurface.hxx".}
proc dynamicType*(this: IGESGeomOffsetSurface): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGeom_OffsetSurface.hxx".}
