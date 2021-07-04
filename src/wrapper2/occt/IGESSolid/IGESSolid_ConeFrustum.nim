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
  ../gp/gp_XYZ, ../IGESData/IGESData_IGESEntity

discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of IGESSolid_ConeFrustum"
discard "forward decl of IGESSolid_ConeFrustum"
type
  Handle_IGESSolid_ConeFrustum* = handle[IGESSolid_ConeFrustum]

## ! defines ConeFrustum, Type <156> Form Number <0>
## ! in package IGESSolid
## ! The Cone Frustum is defined by the center of the
## ! larger circular face of the frustum, its radius, a unit
## ! vector in the axis direction, a height in this direction
## ! and a second circular face with radius which is lesser
## ! than the first face.

type
  IGESSolid_ConeFrustum* {.importcpp: "IGESSolid_ConeFrustum",
                          header: "IGESSolid_ConeFrustum.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESSolid_ConeFrustum*(): IGESSolid_ConeFrustum {.constructor,
    importcpp: "IGESSolid_ConeFrustum(@)", header: "IGESSolid_ConeFrustum.hxx".}
proc Init*(this: var IGESSolid_ConeFrustum; Ht: Standard_Real; R1: Standard_Real;
          R2: Standard_Real; Center: gp_XYZ; anAxis: gp_XYZ) {.importcpp: "Init",
    header: "IGESSolid_ConeFrustum.hxx".}
proc Height*(this: IGESSolid_ConeFrustum): Standard_Real {.noSideEffect,
    importcpp: "Height", header: "IGESSolid_ConeFrustum.hxx".}
proc LargerRadius*(this: IGESSolid_ConeFrustum): Standard_Real {.noSideEffect,
    importcpp: "LargerRadius", header: "IGESSolid_ConeFrustum.hxx".}
proc SmallerRadius*(this: IGESSolid_ConeFrustum): Standard_Real {.noSideEffect,
    importcpp: "SmallerRadius", header: "IGESSolid_ConeFrustum.hxx".}
proc FaceCenter*(this: IGESSolid_ConeFrustum): gp_Pnt {.noSideEffect,
    importcpp: "FaceCenter", header: "IGESSolid_ConeFrustum.hxx".}
proc TransformedFaceCenter*(this: IGESSolid_ConeFrustum): gp_Pnt {.noSideEffect,
    importcpp: "TransformedFaceCenter", header: "IGESSolid_ConeFrustum.hxx".}
proc Axis*(this: IGESSolid_ConeFrustum): gp_Dir {.noSideEffect, importcpp: "Axis",
    header: "IGESSolid_ConeFrustum.hxx".}
proc TransformedAxis*(this: IGESSolid_ConeFrustum): gp_Dir {.noSideEffect,
    importcpp: "TransformedAxis", header: "IGESSolid_ConeFrustum.hxx".}
type
  IGESSolid_ConeFrustumbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESSolid_ConeFrustum::get_type_name(@)",
                              header: "IGESSolid_ConeFrustum.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSolid_ConeFrustum::get_type_descriptor(@)",
    header: "IGESSolid_ConeFrustum.hxx".}
proc DynamicType*(this: IGESSolid_ConeFrustum): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSolid_ConeFrustum.hxx".}