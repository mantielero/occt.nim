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
discard "forward decl of IGESSolid_PlaneSurface"
discard "forward decl of IGESSolid_PlaneSurface"
type
  HandleIGESSolidPlaneSurface* = Handle[IGESSolidPlaneSurface]

## ! defines PlaneSurface, Type <190> Form Number <0,1>
## ! in package IGESSolid
## ! A plane surface entity is defined by a point on the
## ! surface and a normal to it.

type
  IGESSolidPlaneSurface* {.importcpp: "IGESSolid_PlaneSurface",
                          header: "IGESSolid_PlaneSurface.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESSolidPlaneSurface*(): IGESSolidPlaneSurface {.constructor,
    importcpp: "IGESSolid_PlaneSurface(@)", header: "IGESSolid_PlaneSurface.hxx".}
proc init*(this: var IGESSolidPlaneSurface; aLocation: Handle[IGESGeomPoint];
          aNormal: Handle[IGESGeomDirection]; refdir: Handle[IGESGeomDirection]) {.
    importcpp: "Init", header: "IGESSolid_PlaneSurface.hxx".}
proc locationPoint*(this: IGESSolidPlaneSurface): Handle[IGESGeomPoint] {.
    noSideEffect, importcpp: "LocationPoint", header: "IGESSolid_PlaneSurface.hxx".}
proc normal*(this: IGESSolidPlaneSurface): Handle[IGESGeomDirection] {.noSideEffect,
    importcpp: "Normal", header: "IGESSolid_PlaneSurface.hxx".}
proc referenceDir*(this: IGESSolidPlaneSurface): Handle[IGESGeomDirection] {.
    noSideEffect, importcpp: "ReferenceDir", header: "IGESSolid_PlaneSurface.hxx".}
proc isParametrised*(this: IGESSolidPlaneSurface): bool {.noSideEffect,
    importcpp: "IsParametrised", header: "IGESSolid_PlaneSurface.hxx".}
type
  IGESSolidPlaneSurfacebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESSolid_PlaneSurface::get_type_name(@)",
                            header: "IGESSolid_PlaneSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSolid_PlaneSurface::get_type_descriptor(@)",
    header: "IGESSolid_PlaneSurface.hxx".}
proc dynamicType*(this: IGESSolidPlaneSurface): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSolid_PlaneSurface.hxx".}
