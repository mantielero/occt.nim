##  Created on: 1995-03-10
##  Created by: Mister rmi
##  Copyright (c) 1995-1999 Matra Datavision
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
  Select3D_SensitiveEntity, ../SelectMgr/SelectMgr_SelectingVolumeManager

## ! A framework to define sensitive 3D points.

type
  Select3D_SensitivePoint* {.importcpp: "Select3D_SensitivePoint",
                            header: "Select3D_SensitivePoint.hxx", bycopy.} = object of Select3D_SensitiveEntity ##
                                                                                                          ## !
                                                                                                          ## Constructs
                                                                                                          ## a
                                                                                                          ## sensitive
                                                                                                          ## point
                                                                                                          ## object
                                                                                                          ## defined
                                                                                                          ## by
                                                                                                          ## the
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## owner
                                                                                                          ## OwnerId
                                                                                                          ## and
                                                                                                          ## the
                                                                                                          ## point
                                                                                                          ## Point.
    ## !< 3d coordinates of the point

  Select3D_SensitivePointbase_type* = Select3D_SensitiveEntity

proc get_type_name*(): cstring {.importcpp: "Select3D_SensitivePoint::get_type_name(@)",
                              header: "Select3D_SensitivePoint.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Select3D_SensitivePoint::get_type_descriptor(@)",
    header: "Select3D_SensitivePoint.hxx".}
proc DynamicType*(this: Select3D_SensitivePoint): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Select3D_SensitivePoint.hxx".}
proc constructSelect3D_SensitivePoint*(theOwnerId: handle[SelectMgr_EntityOwner];
                                      thePoint: gp_Pnt): Select3D_SensitivePoint {.
    constructor, importcpp: "Select3D_SensitivePoint(@)",
    header: "Select3D_SensitivePoint.hxx".}
proc NbSubElements*(this: Select3D_SensitivePoint): Standard_Integer {.noSideEffect,
    importcpp: "NbSubElements", header: "Select3D_SensitivePoint.hxx".}
proc GetConnected*(this: var Select3D_SensitivePoint): handle[
    Select3D_SensitiveEntity] {.importcpp: "GetConnected",
                               header: "Select3D_SensitivePoint.hxx".}
proc Matches*(this: var Select3D_SensitivePoint;
             theMgr: var SelectBasics_SelectingVolumeManager;
             thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    importcpp: "Matches", header: "Select3D_SensitivePoint.hxx".}
proc Point*(this: Select3D_SensitivePoint): gp_Pnt {.noSideEffect,
    importcpp: "Point", header: "Select3D_SensitivePoint.hxx".}
proc CenterOfGeometry*(this: Select3D_SensitivePoint): gp_Pnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "Select3D_SensitivePoint.hxx".}
proc BoundingBox*(this: var Select3D_SensitivePoint): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "Select3D_SensitivePoint.hxx".}
proc ToBuildBVH*(this: Select3D_SensitivePoint): Standard_Boolean {.noSideEffect,
    importcpp: "ToBuildBVH", header: "Select3D_SensitivePoint.hxx".}
proc DumpJson*(this: Select3D_SensitivePoint; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Select3D_SensitivePoint.hxx".}
discard "forward decl of Select3D_SensitivePoint"
type
  Handle_Select3D_SensitivePoint* = handle[Select3D_SensitivePoint]
