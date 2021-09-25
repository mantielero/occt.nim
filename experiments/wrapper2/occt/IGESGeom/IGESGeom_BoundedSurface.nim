##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen (Kiran)
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
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESGeom_Boundary"
discard "forward decl of IGESGeom_BoundedSurface"
discard "forward decl of IGESGeom_BoundedSurface"
type
  HandleIGESGeomBoundedSurface* = Handle[IGESGeomBoundedSurface]

## ! defines BoundedSurface, Type <143> Form <0>
## ! in package IGESGeom
## ! A bounded surface is used to communicate trimmed
## ! surfaces. The surface and trimming curves are assumed
## ! to be represented parametrically.

type
  IGESGeomBoundedSurface* {.importcpp: "IGESGeom_BoundedSurface",
                           header: "IGESGeom_BoundedSurface.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESGeomBoundedSurface*(): IGESGeomBoundedSurface {.constructor,
    importcpp: "IGESGeom_BoundedSurface(@)", header: "IGESGeom_BoundedSurface.hxx".}
proc init*(this: var IGESGeomBoundedSurface; aType: int;
          aSurface: Handle[IGESDataIGESEntity];
          allBounds: Handle[IGESGeomHArray1OfBoundary]) {.importcpp: "Init",
    header: "IGESGeom_BoundedSurface.hxx".}
proc representationType*(this: IGESGeomBoundedSurface): int {.noSideEffect,
    importcpp: "RepresentationType", header: "IGESGeom_BoundedSurface.hxx".}
proc surface*(this: IGESGeomBoundedSurface): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "Surface", header: "IGESGeom_BoundedSurface.hxx".}
proc nbBoundaries*(this: IGESGeomBoundedSurface): int {.noSideEffect,
    importcpp: "NbBoundaries", header: "IGESGeom_BoundedSurface.hxx".}
proc boundary*(this: IGESGeomBoundedSurface; index: int): Handle[IGESGeomBoundary] {.
    noSideEffect, importcpp: "Boundary", header: "IGESGeom_BoundedSurface.hxx".}
type
  IGESGeomBoundedSurfacebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESGeom_BoundedSurface::get_type_name(@)",
                            header: "IGESGeom_BoundedSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGeom_BoundedSurface::get_type_descriptor(@)",
    header: "IGESGeom_BoundedSurface.hxx".}
proc dynamicType*(this: IGESGeomBoundedSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESGeom_BoundedSurface.hxx".}
