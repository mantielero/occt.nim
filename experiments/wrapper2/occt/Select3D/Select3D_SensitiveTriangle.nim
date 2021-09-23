##  Created on: 1997-05-14
##  Created by: Robert COUBLANC
##  Copyright (c) 1997-1999 Matra Datavision
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
  Select3D_TypeOfSensitivity, Select3D_SensitivePoly,
  ../SelectMgr/SelectMgr_SelectingVolumeManager

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
type
  Select3D_SensitiveTriangle* {.importcpp: "Select3D_SensitiveTriangle",
                               header: "Select3D_SensitiveTriangle.hxx", bycopy.} = object of Select3D_SensitiveEntity ##
                                                                                                                ## !
                                                                                                                ## Constructs
                                                                                                                ## a
                                                                                                                ## sensitive
                                                                                                                ## triangle
                                                                                                                ## object
                                                                                                                ## defined
                                                                                                                ## by
                                                                                                                ## the
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## owner
                                                                                                                ## theOwnerId,
                                                                                                                ## the
                                                                                                                ## points
                                                                                                                ## P1,
                                                                                                                ## P2,
                                                                                                                ## P3,
                                                                                                                ## and
                                                                                                                ## the
                                                                                                                ## type
                                                                                                                ## of
                                                                                                                ## sensitivity
                                                                                                                ## Sensitivity.
    ## !< Type of sensitivity: boundary or interior
    ## !< Center of triangle


proc constructSelect3D_SensitiveTriangle*(
    theOwnerId: handle[SelectMgr_EntityOwner]; thePnt0: gp_Pnt; thePnt1: gp_Pnt;
    thePnt2: gp_Pnt; theType: Select3D_TypeOfSensitivity = Select3D_TOS_INTERIOR): Select3D_SensitiveTriangle {.
    constructor, importcpp: "Select3D_SensitiveTriangle(@)",
    header: "Select3D_SensitiveTriangle.hxx".}
proc Matches*(this: var Select3D_SensitiveTriangle;
             theMgr: var SelectBasics_SelectingVolumeManager;
             thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    importcpp: "Matches", header: "Select3D_SensitiveTriangle.hxx".}
proc Points3D*(this: Select3D_SensitiveTriangle; thePnt0: var gp_Pnt;
              thePnt1: var gp_Pnt; thePnt2: var gp_Pnt) {.noSideEffect,
    importcpp: "Points3D", header: "Select3D_SensitiveTriangle.hxx".}
proc Center3D*(this: Select3D_SensitiveTriangle): gp_Pnt {.noSideEffect,
    importcpp: "Center3D", header: "Select3D_SensitiveTriangle.hxx".}
proc GetConnected*(this: var Select3D_SensitiveTriangle): handle[
    Select3D_SensitiveEntity] {.importcpp: "GetConnected",
                               header: "Select3D_SensitiveTriangle.hxx".}
proc BoundingBox*(this: var Select3D_SensitiveTriangle): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "Select3D_SensitiveTriangle.hxx".}
proc ToBuildBVH*(this: Select3D_SensitiveTriangle): Standard_Boolean {.noSideEffect,
    importcpp: "ToBuildBVH", header: "Select3D_SensitiveTriangle.hxx".}
proc NbSubElements*(this: Select3D_SensitiveTriangle): Standard_Integer {.
    noSideEffect, importcpp: "NbSubElements",
    header: "Select3D_SensitiveTriangle.hxx".}
proc CenterOfGeometry*(this: Select3D_SensitiveTriangle): gp_Pnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "Select3D_SensitiveTriangle.hxx".}
proc DumpJson*(this: Select3D_SensitiveTriangle; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Select3D_SensitiveTriangle.hxx".}
type
  Select3D_SensitiveTrianglebase_type* = Select3D_SensitiveEntity

proc get_type_name*(): cstring {.importcpp: "Select3D_SensitiveTriangle::get_type_name(@)",
                              header: "Select3D_SensitiveTriangle.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Select3D_SensitiveTriangle::get_type_descriptor(@)",
    header: "Select3D_SensitiveTriangle.hxx".}
proc DynamicType*(this: Select3D_SensitiveTriangle): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Select3D_SensitiveTriangle.hxx".}
discard "forward decl of Select3D_SensitiveTriangle"
type
  Handle_Select3D_SensitiveTriangle* = handle[Select3D_SensitiveTriangle]
