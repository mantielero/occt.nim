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

  Select3D_SensitivePointbaseType* = Select3D_SensitiveEntity

proc getTypeName*(): cstring {.importcpp: "Select3D_SensitivePoint::get_type_name(@)",
                            header: "Select3D_SensitivePoint.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Select3D_SensitivePoint::get_type_descriptor(@)",
    header: "Select3D_SensitivePoint.hxx".}
proc dynamicType*(this: Select3D_SensitivePoint): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Select3D_SensitivePoint.hxx".}
proc constructSelect3D_SensitivePoint*(theOwnerId: Handle[SelectMgrEntityOwner];
                                      thePoint: GpPnt): Select3D_SensitivePoint {.
    constructor, importcpp: "Select3D_SensitivePoint(@)",
    header: "Select3D_SensitivePoint.hxx".}
proc nbSubElements*(this: Select3D_SensitivePoint): StandardInteger {.noSideEffect,
    importcpp: "NbSubElements", header: "Select3D_SensitivePoint.hxx".}
proc getConnected*(this: var Select3D_SensitivePoint): Handle[
    Select3D_SensitiveEntity] {.importcpp: "GetConnected",
                               header: "Select3D_SensitivePoint.hxx".}
proc matches*(this: var Select3D_SensitivePoint;
             theMgr: var SelectBasicsSelectingVolumeManager;
             thePickResult: var SelectBasicsPickResult): StandardBoolean {.
    importcpp: "Matches", header: "Select3D_SensitivePoint.hxx".}
proc point*(this: Select3D_SensitivePoint): GpPnt {.noSideEffect, importcpp: "Point",
    header: "Select3D_SensitivePoint.hxx".}
proc centerOfGeometry*(this: Select3D_SensitivePoint): GpPnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "Select3D_SensitivePoint.hxx".}
proc boundingBox*(this: var Select3D_SensitivePoint): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "Select3D_SensitivePoint.hxx".}
proc toBuildBVH*(this: Select3D_SensitivePoint): StandardBoolean {.noSideEffect,
    importcpp: "ToBuildBVH", header: "Select3D_SensitivePoint.hxx".}
proc dumpJson*(this: Select3D_SensitivePoint; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Select3D_SensitivePoint.hxx".}
discard "forward decl of Select3D_SensitivePoint"
type
  HandleSelect3D_SensitivePoint* = Handle[Select3D_SensitivePoint]


