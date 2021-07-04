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
discard "forward decl of gp_Pnt"
discard "forward decl of IGESSolid_SphericalSurface"
discard "forward decl of IGESSolid_SphericalSurface"
type
  Handle_IGESSolid_SphericalSurface* = handle[IGESSolid_SphericalSurface]

## ! defines SphericalSurface, Type <196> Form Number <0,1>
## ! in package IGESSolid
## ! Spherical surface is defined by a center and radius.
## ! In case of parametrised surface an axis and a
## ! reference direction is provided.

type
  IGESSolid_SphericalSurface* {.importcpp: "IGESSolid_SphericalSurface",
                               header: "IGESSolid_SphericalSurface.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESSolid_SphericalSurface*(): IGESSolid_SphericalSurface {.
    constructor, importcpp: "IGESSolid_SphericalSurface(@)",
    header: "IGESSolid_SphericalSurface.hxx".}
proc Init*(this: var IGESSolid_SphericalSurface; aCenter: handle[IGESGeom_Point];
          aRadius: Standard_Real; anAxis: handle[IGESGeom_Direction];
          aRefdir: handle[IGESGeom_Direction]) {.importcpp: "Init",
    header: "IGESSolid_SphericalSurface.hxx".}
proc Center*(this: IGESSolid_SphericalSurface): handle[IGESGeom_Point] {.
    noSideEffect, importcpp: "Center", header: "IGESSolid_SphericalSurface.hxx".}
proc TransformedCenter*(this: IGESSolid_SphericalSurface): gp_Pnt {.noSideEffect,
    importcpp: "TransformedCenter", header: "IGESSolid_SphericalSurface.hxx".}
proc Radius*(this: IGESSolid_SphericalSurface): Standard_Real {.noSideEffect,
    importcpp: "Radius", header: "IGESSolid_SphericalSurface.hxx".}
proc Axis*(this: IGESSolid_SphericalSurface): handle[IGESGeom_Direction] {.
    noSideEffect, importcpp: "Axis", header: "IGESSolid_SphericalSurface.hxx".}
proc ReferenceDir*(this: IGESSolid_SphericalSurface): handle[IGESGeom_Direction] {.
    noSideEffect, importcpp: "ReferenceDir",
    header: "IGESSolid_SphericalSurface.hxx".}
proc IsParametrised*(this: IGESSolid_SphericalSurface): Standard_Boolean {.
    noSideEffect, importcpp: "IsParametrised",
    header: "IGESSolid_SphericalSurface.hxx".}
type
  IGESSolid_SphericalSurfacebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESSolid_SphericalSurface::get_type_name(@)",
                              header: "IGESSolid_SphericalSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSolid_SphericalSurface::get_type_descriptor(@)",
    header: "IGESSolid_SphericalSurface.hxx".}
proc DynamicType*(this: IGESSolid_SphericalSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSolid_SphericalSurface.hxx".}