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
discard "forward decl of IGESSolid_ToroidalSurface"
discard "forward decl of IGESSolid_ToroidalSurface"
type
  Handle_IGESSolid_ToroidalSurface* = handle[IGESSolid_ToroidalSurface]

## ! defines ToroidalSurface, Type <198> Form Number <0,1>
## ! in package IGESSolid
## ! This entity is defined by the center point, the axis
## ! direction and the major and minor radii. In case of
## ! parametrised surface a reference direction is provided.

type
  IGESSolid_ToroidalSurface* {.importcpp: "IGESSolid_ToroidalSurface",
                              header: "IGESSolid_ToroidalSurface.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESSolid_ToroidalSurface*(): IGESSolid_ToroidalSurface {.
    constructor, importcpp: "IGESSolid_ToroidalSurface(@)",
    header: "IGESSolid_ToroidalSurface.hxx".}
proc Init*(this: var IGESSolid_ToroidalSurface; aCenter: handle[IGESGeom_Point];
          anAxis: handle[IGESGeom_Direction]; majRadius: Standard_Real;
          minRadius: Standard_Real; Refdir: handle[IGESGeom_Direction]) {.
    importcpp: "Init", header: "IGESSolid_ToroidalSurface.hxx".}
proc Center*(this: IGESSolid_ToroidalSurface): handle[IGESGeom_Point] {.
    noSideEffect, importcpp: "Center", header: "IGESSolid_ToroidalSurface.hxx".}
proc TransformedCenter*(this: IGESSolid_ToroidalSurface): gp_Pnt {.noSideEffect,
    importcpp: "TransformedCenter", header: "IGESSolid_ToroidalSurface.hxx".}
proc Axis*(this: IGESSolid_ToroidalSurface): handle[IGESGeom_Direction] {.
    noSideEffect, importcpp: "Axis", header: "IGESSolid_ToroidalSurface.hxx".}
proc MajorRadius*(this: IGESSolid_ToroidalSurface): Standard_Real {.noSideEffect,
    importcpp: "MajorRadius", header: "IGESSolid_ToroidalSurface.hxx".}
proc MinorRadius*(this: IGESSolid_ToroidalSurface): Standard_Real {.noSideEffect,
    importcpp: "MinorRadius", header: "IGESSolid_ToroidalSurface.hxx".}
proc ReferenceDir*(this: IGESSolid_ToroidalSurface): handle[IGESGeom_Direction] {.
    noSideEffect, importcpp: "ReferenceDir",
    header: "IGESSolid_ToroidalSurface.hxx".}
proc IsParametrised*(this: IGESSolid_ToroidalSurface): Standard_Boolean {.
    noSideEffect, importcpp: "IsParametrised",
    header: "IGESSolid_ToroidalSurface.hxx".}
type
  IGESSolid_ToroidalSurfacebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESSolid_ToroidalSurface::get_type_name(@)",
                              header: "IGESSolid_ToroidalSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSolid_ToroidalSurface::get_type_descriptor(@)",
    header: "IGESSolid_ToroidalSurface.hxx".}
proc DynamicType*(this: IGESSolid_ToroidalSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSolid_ToroidalSurface.hxx".}