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
discard "forward decl of IGESSolid_ConicalSurface"
discard "forward decl of IGESSolid_ConicalSurface"
type
  HandleIGESSolidConicalSurface* = Handle[IGESSolidConicalSurface]

## ! defines ConicalSurface, Type <194> Form Number <0,1>
## ! in package IGESSolid
## ! The right circular conical surface is defined by a
## ! point on the axis on the cone, the direction of the axis
## ! of the cone, the radius of the cone at the axis point and
## ! the cone semi-angle.

type
  IGESSolidConicalSurface* {.importcpp: "IGESSolid_ConicalSurface",
                            header: "IGESSolid_ConicalSurface.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESSolidConicalSurface*(): IGESSolidConicalSurface {.constructor,
    importcpp: "IGESSolid_ConicalSurface(@)",
    header: "IGESSolid_ConicalSurface.hxx".}
proc init*(this: var IGESSolidConicalSurface; aLocation: Handle[IGESGeomPoint];
          anAxis: Handle[IGESGeomDirection]; aRadius: float; anAngle: float;
          aRefdir: Handle[IGESGeomDirection]) {.importcpp: "Init",
    header: "IGESSolid_ConicalSurface.hxx".}
proc locationPoint*(this: IGESSolidConicalSurface): Handle[IGESGeomPoint] {.
    noSideEffect, importcpp: "LocationPoint",
    header: "IGESSolid_ConicalSurface.hxx".}
proc axis*(this: IGESSolidConicalSurface): Handle[IGESGeomDirection] {.noSideEffect,
    importcpp: "Axis", header: "IGESSolid_ConicalSurface.hxx".}
proc radius*(this: IGESSolidConicalSurface): float {.noSideEffect,
    importcpp: "Radius", header: "IGESSolid_ConicalSurface.hxx".}
proc semiAngle*(this: IGESSolidConicalSurface): float {.noSideEffect,
    importcpp: "SemiAngle", header: "IGESSolid_ConicalSurface.hxx".}
proc referenceDir*(this: IGESSolidConicalSurface): Handle[IGESGeomDirection] {.
    noSideEffect, importcpp: "ReferenceDir", header: "IGESSolid_ConicalSurface.hxx".}
proc isParametrised*(this: IGESSolidConicalSurface): bool {.noSideEffect,
    importcpp: "IsParametrised", header: "IGESSolid_ConicalSurface.hxx".}
type
  IGESSolidConicalSurfacebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESSolid_ConicalSurface::get_type_name(@)",
                            header: "IGESSolid_ConicalSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSolid_ConicalSurface::get_type_descriptor(@)",
    header: "IGESSolid_ConicalSurface.hxx".}
proc dynamicType*(this: IGESSolidConicalSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSolid_ConicalSurface.hxx".}
