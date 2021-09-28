##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( SIVA )
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

discard "forward decl of IGESGeom_Point"
discard "forward decl of IGESGeom_Direction"
discard "forward decl of IGESSolid_CylindricalSurface"
discard "forward decl of IGESSolid_CylindricalSurface"
type
  HandleC1C1* = Handle[IGESSolidCylindricalSurface]

## ! defines CylindricalSurface, Type <192> Form Number <0,1>
## ! in package IGESSolid

type
  IGESSolidCylindricalSurface* {.importcpp: "IGESSolid_CylindricalSurface",
                                header: "IGESSolid_CylindricalSurface.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESSolidCylindricalSurface*(): IGESSolidCylindricalSurface {.
    constructor, importcpp: "IGESSolid_CylindricalSurface(@)",
    header: "IGESSolid_CylindricalSurface.hxx".}
proc init*(this: var IGESSolidCylindricalSurface; aLocation: Handle[IGESGeomPoint];
          anAxis: Handle[IGESGeomDirection]; aRadius: cfloat;
          aRefdir: Handle[IGESGeomDirection]) {.importcpp: "Init",
    header: "IGESSolid_CylindricalSurface.hxx".}
proc locationPoint*(this: IGESSolidCylindricalSurface): Handle[IGESGeomPoint] {.
    noSideEffect, importcpp: "LocationPoint",
    header: "IGESSolid_CylindricalSurface.hxx".}
proc axis*(this: IGESSolidCylindricalSurface): Handle[IGESGeomDirection] {.
    noSideEffect, importcpp: "Axis", header: "IGESSolid_CylindricalSurface.hxx".}
proc radius*(this: IGESSolidCylindricalSurface): cfloat {.noSideEffect,
    importcpp: "Radius", header: "IGESSolid_CylindricalSurface.hxx".}
proc isParametrised*(this: IGESSolidCylindricalSurface): bool {.noSideEffect,
    importcpp: "IsParametrised", header: "IGESSolid_CylindricalSurface.hxx".}
proc referenceDir*(this: IGESSolidCylindricalSurface): Handle[IGESGeomDirection] {.
    noSideEffect, importcpp: "ReferenceDir",
    header: "IGESSolid_CylindricalSurface.hxx".}
type
  IGESSolidCylindricalSurfacebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESSolid_CylindricalSurface::get_type_name(@)",
                            header: "IGESSolid_CylindricalSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSolid_CylindricalSurface::get_type_descriptor(@)",
    header: "IGESSolid_CylindricalSurface.hxx".}
proc dynamicType*(this: IGESSolidCylindricalSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSolid_CylindricalSurface.hxx".}

























