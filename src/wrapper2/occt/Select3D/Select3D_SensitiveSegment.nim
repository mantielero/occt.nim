##  Created on: 1995-01-25
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

## ! A framework to define sensitive zones along a segment
## !          One gives the 3D start and end point

type
  Select3D_SensitiveSegment* {.importcpp: "Select3D_SensitiveSegment",
                              header: "Select3D_SensitiveSegment.hxx", bycopy.} = object of Select3D_SensitiveEntity ##
                                                                                                              ## !
                                                                                                              ## Constructs
                                                                                                              ## the
                                                                                                              ## sensitive
                                                                                                              ## segment
                                                                                                              ## object
                                                                                                              ## defined
                                                                                                              ## by
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## the
                                                                                                              ## owner
                                                                                                              ## theOwnerId,
                                                                                                              ## the
                                                                                                              ## points
                                                                                                              ## theFirstPnt,
                                                                                                              ## theLastPnt
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## changes
                                                                                                              ## the
                                                                                                              ## start
                                                                                                              ## Point
                                                                                                              ## of
                                                                                                              ## the
                                                                                                              ## Segment;
    ## !< Start point
    ## !< End point

  Select3D_SensitiveSegmentbase_type* = Select3D_SensitiveEntity

proc get_type_name*(): cstring {.importcpp: "Select3D_SensitiveSegment::get_type_name(@)",
                              header: "Select3D_SensitiveSegment.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Select3D_SensitiveSegment::get_type_descriptor(@)",
    header: "Select3D_SensitiveSegment.hxx".}
proc DynamicType*(this: Select3D_SensitiveSegment): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Select3D_SensitiveSegment.hxx".}
proc constructSelect3D_SensitiveSegment*(theOwnerId: handle[SelectMgr_EntityOwner];
                                        theFirstPnt: gp_Pnt; theLastPnt: gp_Pnt): Select3D_SensitiveSegment {.
    constructor, importcpp: "Select3D_SensitiveSegment(@)",
    header: "Select3D_SensitiveSegment.hxx".}
proc SetStartPoint*(this: var Select3D_SensitiveSegment; thePnt: gp_Pnt) {.
    importcpp: "SetStartPoint", header: "Select3D_SensitiveSegment.hxx".}
proc SetEndPoint*(this: var Select3D_SensitiveSegment; thePnt: gp_Pnt) {.
    importcpp: "SetEndPoint", header: "Select3D_SensitiveSegment.hxx".}
proc StartPoint*(this: Select3D_SensitiveSegment): gp_Pnt {.noSideEffect,
    importcpp: "StartPoint", header: "Select3D_SensitiveSegment.hxx".}
proc EndPoint*(this: Select3D_SensitiveSegment): gp_Pnt {.noSideEffect,
    importcpp: "EndPoint", header: "Select3D_SensitiveSegment.hxx".}
proc NbSubElements*(this: Select3D_SensitiveSegment): Standard_Integer {.
    noSideEffect, importcpp: "NbSubElements",
    header: "Select3D_SensitiveSegment.hxx".}
proc GetConnected*(this: var Select3D_SensitiveSegment): handle[
    Select3D_SensitiveEntity] {.importcpp: "GetConnected",
                               header: "Select3D_SensitiveSegment.hxx".}
proc Matches*(this: var Select3D_SensitiveSegment;
             theMgr: var SelectBasics_SelectingVolumeManager;
             thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    importcpp: "Matches", header: "Select3D_SensitiveSegment.hxx".}
proc CenterOfGeometry*(this: Select3D_SensitiveSegment): gp_Pnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "Select3D_SensitiveSegment.hxx".}
proc BoundingBox*(this: var Select3D_SensitiveSegment): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "Select3D_SensitiveSegment.hxx".}
proc ToBuildBVH*(this: Select3D_SensitiveSegment): Standard_Boolean {.noSideEffect,
    importcpp: "ToBuildBVH", header: "Select3D_SensitiveSegment.hxx".}
proc StartPoint*(this: var Select3D_SensitiveSegment; thePnt: gp_Pnt) {.
    importcpp: "StartPoint", header: "Select3D_SensitiveSegment.hxx".}
proc EndPoint*(this: var Select3D_SensitiveSegment; thePnt: gp_Pnt) {.
    importcpp: "EndPoint", header: "Select3D_SensitiveSegment.hxx".}
proc DumpJson*(this: Select3D_SensitiveSegment; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Select3D_SensitiveSegment.hxx".}
discard "forward decl of Select3D_SensitiveSegment"
type
  Handle_Select3D_SensitiveSegment* = handle[Select3D_SensitiveSegment]
