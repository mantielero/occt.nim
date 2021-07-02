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

  Select3D_SensitiveSegmentbaseType* = Select3D_SensitiveEntity

proc getTypeName*(): cstring {.importcpp: "Select3D_SensitiveSegment::get_type_name(@)",
                            header: "Select3D_SensitiveSegment.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Select3D_SensitiveSegment::get_type_descriptor(@)",
    header: "Select3D_SensitiveSegment.hxx".}
proc dynamicType*(this: Select3D_SensitiveSegment): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Select3D_SensitiveSegment.hxx".}
proc constructSelect3D_SensitiveSegment*(theOwnerId: Handle[SelectMgrEntityOwner];
                                        theFirstPnt: GpPnt; theLastPnt: GpPnt): Select3D_SensitiveSegment {.
    constructor, importcpp: "Select3D_SensitiveSegment(@)",
    header: "Select3D_SensitiveSegment.hxx".}
proc setStartPoint*(this: var Select3D_SensitiveSegment; thePnt: GpPnt) {.
    importcpp: "SetStartPoint", header: "Select3D_SensitiveSegment.hxx".}
proc setEndPoint*(this: var Select3D_SensitiveSegment; thePnt: GpPnt) {.
    importcpp: "SetEndPoint", header: "Select3D_SensitiveSegment.hxx".}
proc startPoint*(this: Select3D_SensitiveSegment): GpPnt {.noSideEffect,
    importcpp: "StartPoint", header: "Select3D_SensitiveSegment.hxx".}
proc endPoint*(this: Select3D_SensitiveSegment): GpPnt {.noSideEffect,
    importcpp: "EndPoint", header: "Select3D_SensitiveSegment.hxx".}
proc nbSubElements*(this: Select3D_SensitiveSegment): StandardInteger {.
    noSideEffect, importcpp: "NbSubElements",
    header: "Select3D_SensitiveSegment.hxx".}
proc getConnected*(this: var Select3D_SensitiveSegment): Handle[
    Select3D_SensitiveEntity] {.importcpp: "GetConnected",
                               header: "Select3D_SensitiveSegment.hxx".}
proc matches*(this: var Select3D_SensitiveSegment;
             theMgr: var SelectBasicsSelectingVolumeManager;
             thePickResult: var SelectBasicsPickResult): StandardBoolean {.
    importcpp: "Matches", header: "Select3D_SensitiveSegment.hxx".}
proc centerOfGeometry*(this: Select3D_SensitiveSegment): GpPnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "Select3D_SensitiveSegment.hxx".}
proc boundingBox*(this: var Select3D_SensitiveSegment): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "Select3D_SensitiveSegment.hxx".}
proc toBuildBVH*(this: Select3D_SensitiveSegment): StandardBoolean {.noSideEffect,
    importcpp: "ToBuildBVH", header: "Select3D_SensitiveSegment.hxx".}
proc startPoint*(this: var Select3D_SensitiveSegment; thePnt: GpPnt) {.
    importcpp: "StartPoint", header: "Select3D_SensitiveSegment.hxx".}
proc endPoint*(this: var Select3D_SensitiveSegment; thePnt: GpPnt) {.
    importcpp: "EndPoint", header: "Select3D_SensitiveSegment.hxx".}
proc dumpJson*(this: Select3D_SensitiveSegment; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Select3D_SensitiveSegment.hxx".}
discard "forward decl of Select3D_SensitiveSegment"
type
  HandleSelect3D_SensitiveSegment* = Handle[Select3D_SensitiveSegment]


