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
discard "forward decl of IGESSolid_CylindricalSurface"
discard "forward decl of IGESSolid_CylindricalSurface"
type
  Handle_IGESSolid_CylindricalSurface* = handle[IGESSolid_CylindricalSurface]

## ! defines CylindricalSurface, Type <192> Form Number <0,1>
## ! in package IGESSolid

type
  IGESSolid_CylindricalSurface* {.importcpp: "IGESSolid_CylindricalSurface",
                                 header: "IGESSolid_CylindricalSurface.hxx",
                                 bycopy.} = object of IGESData_IGESEntity


proc constructIGESSolid_CylindricalSurface*(): IGESSolid_CylindricalSurface {.
    constructor, importcpp: "IGESSolid_CylindricalSurface(@)",
    header: "IGESSolid_CylindricalSurface.hxx".}
proc Init*(this: var IGESSolid_CylindricalSurface;
          aLocation: handle[IGESGeom_Point]; anAxis: handle[IGESGeom_Direction];
          aRadius: Standard_Real; aRefdir: handle[IGESGeom_Direction]) {.
    importcpp: "Init", header: "IGESSolid_CylindricalSurface.hxx".}
proc LocationPoint*(this: IGESSolid_CylindricalSurface): handle[IGESGeom_Point] {.
    noSideEffect, importcpp: "LocationPoint",
    header: "IGESSolid_CylindricalSurface.hxx".}
proc Axis*(this: IGESSolid_CylindricalSurface): handle[IGESGeom_Direction] {.
    noSideEffect, importcpp: "Axis", header: "IGESSolid_CylindricalSurface.hxx".}
proc Radius*(this: IGESSolid_CylindricalSurface): Standard_Real {.noSideEffect,
    importcpp: "Radius", header: "IGESSolid_CylindricalSurface.hxx".}
proc IsParametrised*(this: IGESSolid_CylindricalSurface): Standard_Boolean {.
    noSideEffect, importcpp: "IsParametrised",
    header: "IGESSolid_CylindricalSurface.hxx".}
proc ReferenceDir*(this: IGESSolid_CylindricalSurface): handle[IGESGeom_Direction] {.
    noSideEffect, importcpp: "ReferenceDir",
    header: "IGESSolid_CylindricalSurface.hxx".}
type
  IGESSolid_CylindricalSurfacebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESSolid_CylindricalSurface::get_type_name(@)",
                              header: "IGESSolid_CylindricalSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSolid_CylindricalSurface::get_type_descriptor(@)",
    header: "IGESSolid_CylindricalSurface.hxx".}
proc DynamicType*(this: IGESSolid_CylindricalSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSolid_CylindricalSurface.hxx".}