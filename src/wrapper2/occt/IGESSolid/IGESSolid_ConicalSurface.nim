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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Boolean

discard "forward decl of IGESGeom_Point"
discard "forward decl of IGESGeom_Direction"
discard "forward decl of IGESSolid_ConicalSurface"
discard "forward decl of IGESSolid_ConicalSurface"
type
  Handle_IGESSolid_ConicalSurface* = handle[IGESSolid_ConicalSurface]

## ! defines ConicalSurface, Type <194> Form Number <0,1>
## ! in package IGESSolid
## ! The right circular conical surface is defined by a
## ! point on the axis on the cone, the direction of the axis
## ! of the cone, the radius of the cone at the axis point and
## ! the cone semi-angle.

type
  IGESSolid_ConicalSurface* {.importcpp: "IGESSolid_ConicalSurface",
                             header: "IGESSolid_ConicalSurface.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESSolid_ConicalSurface*(): IGESSolid_ConicalSurface {.constructor,
    importcpp: "IGESSolid_ConicalSurface(@)",
    header: "IGESSolid_ConicalSurface.hxx".}
proc Init*(this: var IGESSolid_ConicalSurface; aLocation: handle[IGESGeom_Point];
          anAxis: handle[IGESGeom_Direction]; aRadius: Standard_Real;
          anAngle: Standard_Real; aRefdir: handle[IGESGeom_Direction]) {.
    importcpp: "Init", header: "IGESSolid_ConicalSurface.hxx".}
proc LocationPoint*(this: IGESSolid_ConicalSurface): handle[IGESGeom_Point] {.
    noSideEffect, importcpp: "LocationPoint",
    header: "IGESSolid_ConicalSurface.hxx".}
proc Axis*(this: IGESSolid_ConicalSurface): handle[IGESGeom_Direction] {.
    noSideEffect, importcpp: "Axis", header: "IGESSolid_ConicalSurface.hxx".}
proc Radius*(this: IGESSolid_ConicalSurface): Standard_Real {.noSideEffect,
    importcpp: "Radius", header: "IGESSolid_ConicalSurface.hxx".}
proc SemiAngle*(this: IGESSolid_ConicalSurface): Standard_Real {.noSideEffect,
    importcpp: "SemiAngle", header: "IGESSolid_ConicalSurface.hxx".}
proc ReferenceDir*(this: IGESSolid_ConicalSurface): handle[IGESGeom_Direction] {.
    noSideEffect, importcpp: "ReferenceDir", header: "IGESSolid_ConicalSurface.hxx".}
proc IsParametrised*(this: IGESSolid_ConicalSurface): Standard_Boolean {.
    noSideEffect, importcpp: "IsParametrised",
    header: "IGESSolid_ConicalSurface.hxx".}
type
  IGESSolid_ConicalSurfacebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESSolid_ConicalSurface::get_type_name(@)",
                              header: "IGESSolid_ConicalSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSolid_ConicalSurface::get_type_descriptor(@)",
    header: "IGESSolid_ConicalSurface.hxx".}
proc DynamicType*(this: IGESSolid_ConicalSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSolid_ConicalSurface.hxx".}