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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  IGESGeom_HArray1OfBoundary, ../IGESData/IGESData_IGESEntity

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESGeom_Boundary"
discard "forward decl of IGESGeom_BoundedSurface"
discard "forward decl of IGESGeom_BoundedSurface"
type
  Handle_IGESGeom_BoundedSurface* = handle[IGESGeom_BoundedSurface]

## ! defines BoundedSurface, Type <143> Form <0>
## ! in package IGESGeom
## ! A bounded surface is used to communicate trimmed
## ! surfaces. The surface and trimming curves are assumed
## ! to be represented parametrically.

type
  IGESGeom_BoundedSurface* {.importcpp: "IGESGeom_BoundedSurface",
                            header: "IGESGeom_BoundedSurface.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESGeom_BoundedSurface*(): IGESGeom_BoundedSurface {.constructor,
    importcpp: "IGESGeom_BoundedSurface(@)", header: "IGESGeom_BoundedSurface.hxx".}
proc Init*(this: var IGESGeom_BoundedSurface; aType: Standard_Integer;
          aSurface: handle[IGESData_IGESEntity];
          allBounds: handle[IGESGeom_HArray1OfBoundary]) {.importcpp: "Init",
    header: "IGESGeom_BoundedSurface.hxx".}
proc RepresentationType*(this: IGESGeom_BoundedSurface): Standard_Integer {.
    noSideEffect, importcpp: "RepresentationType",
    header: "IGESGeom_BoundedSurface.hxx".}
proc Surface*(this: IGESGeom_BoundedSurface): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "Surface", header: "IGESGeom_BoundedSurface.hxx".}
proc NbBoundaries*(this: IGESGeom_BoundedSurface): Standard_Integer {.noSideEffect,
    importcpp: "NbBoundaries", header: "IGESGeom_BoundedSurface.hxx".}
proc Boundary*(this: IGESGeom_BoundedSurface; Index: Standard_Integer): handle[
    IGESGeom_Boundary] {.noSideEffect, importcpp: "Boundary",
                        header: "IGESGeom_BoundedSurface.hxx".}
type
  IGESGeom_BoundedSurfacebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESGeom_BoundedSurface::get_type_name(@)",
                              header: "IGESGeom_BoundedSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGeom_BoundedSurface::get_type_descriptor(@)",
    header: "IGESGeom_BoundedSurface.hxx".}
proc DynamicType*(this: IGESGeom_BoundedSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESGeom_BoundedSurface.hxx".}