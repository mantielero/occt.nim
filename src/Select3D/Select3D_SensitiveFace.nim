##  Created on: 1995-03-27
##  Created by: Robert COUBLANC
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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
type
  Select3D_SensitiveFace* {.importcpp: "Select3D_SensitiveFace",
                           header: "Select3D_SensitiveFace.hxx", bycopy.} = object of Select3D_SensitiveEntity ##
                                                                                                        ## !
                                                                                                        ## Constructs
                                                                                                        ## a
                                                                                                        ## sensitive
                                                                                                        ## face
                                                                                                        ## object
                                                                                                        ## defined
                                                                                                        ## by
                                                                                                        ## the
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## owner
                                                                                                        ## theOwnerId,
                                                                                                        ## the
                                                                                                        ## array
                                                                                                        ## of
                                                                                                        ## points
                                                                                                        ## thePoints,
                                                                                                        ## and
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## the
                                                                                                        ## sensitivity
                                                                                                        ## type
                                                                                                        ## theType.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## The
                                                                                                        ## array
                                                                                                        ## of
                                                                                                        ## points
                                                                                                        ## is
                                                                                                        ## the
                                                                                                        ## outer
                                                                                                        ## polygon
                                                                                                        ## of
                                                                                                        ## the
                                                                                                        ## geometric
                                                                                                        ## face.
    ## !< Type of sensitivity: interior or boundary
    ## !< Wrapper for overlap detection created depending on sensitivity type

  Select3D_SensitiveFacebaseType* = Select3D_SensitiveEntity

proc getTypeName*(): cstring {.importcpp: "Select3D_SensitiveFace::get_type_name(@)",
                            header: "Select3D_SensitiveFace.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Select3D_SensitiveFace::get_type_descriptor(@)",
    header: "Select3D_SensitiveFace.hxx".}
proc dynamicType*(this: Select3D_SensitiveFace): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Select3D_SensitiveFace.hxx".}
proc constructSelect3D_SensitiveFace*(theOwnerId: Handle[SelectMgrEntityOwner];
                                     thePoints: TColgpArray1OfPnt;
                                     theType: Select3D_TypeOfSensitivity): Select3D_SensitiveFace {.
    constructor, importcpp: "Select3D_SensitiveFace(@)",
    header: "Select3D_SensitiveFace.hxx".}
proc constructSelect3D_SensitiveFace*(theOwnerId: Handle[SelectMgrEntityOwner];
                                     thePoints: Handle[TColgpHArray1OfPnt];
                                     theType: Select3D_TypeOfSensitivity): Select3D_SensitiveFace {.
    constructor, importcpp: "Select3D_SensitiveFace(@)",
    header: "Select3D_SensitiveFace.hxx".}
proc getPoints*(this: var Select3D_SensitiveFace;
               theHArrayOfPnt: var Handle[TColgpHArray1OfPnt]) {.
    importcpp: "GetPoints", header: "Select3D_SensitiveFace.hxx".}
proc matches*(this: var Select3D_SensitiveFace;
             theMgr: var SelectBasicsSelectingVolumeManager;
             thePickResult: var SelectBasicsPickResult): bool {.
    importcpp: "Matches", header: "Select3D_SensitiveFace.hxx".}
proc getConnected*(this: var Select3D_SensitiveFace): Handle[
    Select3D_SensitiveEntity] {.importcpp: "GetConnected",
                               header: "Select3D_SensitiveFace.hxx".}
proc boundingBox*(this: var Select3D_SensitiveFace): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "Select3D_SensitiveFace.hxx".}
proc centerOfGeometry*(this: Select3D_SensitiveFace): Pnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "Select3D_SensitiveFace.hxx".}
proc bvh*(this: var Select3D_SensitiveFace) {.importcpp: "BVH",
    header: "Select3D_SensitiveFace.hxx".}
proc toBuildBVH*(this: Select3D_SensitiveFace): bool {.noSideEffect,
    importcpp: "ToBuildBVH", header: "Select3D_SensitiveFace.hxx".}
proc nbSubElements*(this: Select3D_SensitiveFace): cint {.noSideEffect,
    importcpp: "NbSubElements", header: "Select3D_SensitiveFace.hxx".}
proc dumpJson*(this: Select3D_SensitiveFace; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "Select3D_SensitiveFace.hxx".}
discard "forward decl of Select3D_SensitiveFace"
type
  HandleC1C1* = Handle[Select3D_SensitiveFace]


























