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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Boolean

discard "forward decl of IGESGeom_Point"
discard "forward decl of IGESGeom_Direction"
discard "forward decl of IGESSolid_PlaneSurface"
discard "forward decl of IGESSolid_PlaneSurface"
type
  Handle_IGESSolid_PlaneSurface* = handle[IGESSolid_PlaneSurface]

## ! defines PlaneSurface, Type <190> Form Number <0,1>
## ! in package IGESSolid
## ! A plane surface entity is defined by a point on the
## ! surface and a normal to it.

type
  IGESSolid_PlaneSurface* {.importcpp: "IGESSolid_PlaneSurface",
                           header: "IGESSolid_PlaneSurface.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESSolid_PlaneSurface*(): IGESSolid_PlaneSurface {.constructor,
    importcpp: "IGESSolid_PlaneSurface(@)", header: "IGESSolid_PlaneSurface.hxx".}
proc Init*(this: var IGESSolid_PlaneSurface; aLocation: handle[IGESGeom_Point];
          aNormal: handle[IGESGeom_Direction]; refdir: handle[IGESGeom_Direction]) {.
    importcpp: "Init", header: "IGESSolid_PlaneSurface.hxx".}
proc LocationPoint*(this: IGESSolid_PlaneSurface): handle[IGESGeom_Point] {.
    noSideEffect, importcpp: "LocationPoint", header: "IGESSolid_PlaneSurface.hxx".}
proc Normal*(this: IGESSolid_PlaneSurface): handle[IGESGeom_Direction] {.
    noSideEffect, importcpp: "Normal", header: "IGESSolid_PlaneSurface.hxx".}
proc ReferenceDir*(this: IGESSolid_PlaneSurface): handle[IGESGeom_Direction] {.
    noSideEffect, importcpp: "ReferenceDir", header: "IGESSolid_PlaneSurface.hxx".}
proc IsParametrised*(this: IGESSolid_PlaneSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsParametrised", header: "IGESSolid_PlaneSurface.hxx".}
type
  IGESSolid_PlaneSurfacebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESSolid_PlaneSurface::get_type_name(@)",
                              header: "IGESSolid_PlaneSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSolid_PlaneSurface::get_type_descriptor(@)",
    header: "IGESSolid_PlaneSurface.hxx".}
proc DynamicType*(this: IGESSolid_PlaneSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSolid_PlaneSurface.hxx".}