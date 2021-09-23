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

import
  Select3D_TypeOfSensitivity, Select3D_SensitiveSet,
  ../TColgp/TColgp_HArray1OfPnt,
  ../SelectBasics/SelectBasics_SelectingVolumeManager

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

  Select3D_SensitiveFacebase_type* = Select3D_SensitiveEntity

proc get_type_name*(): cstring {.importcpp: "Select3D_SensitiveFace::get_type_name(@)",
                              header: "Select3D_SensitiveFace.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Select3D_SensitiveFace::get_type_descriptor(@)",
    header: "Select3D_SensitiveFace.hxx".}
proc DynamicType*(this: Select3D_SensitiveFace): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Select3D_SensitiveFace.hxx".}
proc constructSelect3D_SensitiveFace*(theOwnerId: handle[SelectMgr_EntityOwner];
                                     thePoints: TColgp_Array1OfPnt;
                                     theType: Select3D_TypeOfSensitivity): Select3D_SensitiveFace {.
    constructor, importcpp: "Select3D_SensitiveFace(@)",
    header: "Select3D_SensitiveFace.hxx".}
proc constructSelect3D_SensitiveFace*(theOwnerId: handle[SelectMgr_EntityOwner];
                                     thePoints: handle[TColgp_HArray1OfPnt];
                                     theType: Select3D_TypeOfSensitivity): Select3D_SensitiveFace {.
    constructor, importcpp: "Select3D_SensitiveFace(@)",
    header: "Select3D_SensitiveFace.hxx".}
proc GetPoints*(this: var Select3D_SensitiveFace;
               theHArrayOfPnt: var handle[TColgp_HArray1OfPnt]) {.
    importcpp: "GetPoints", header: "Select3D_SensitiveFace.hxx".}
proc Matches*(this: var Select3D_SensitiveFace;
             theMgr: var SelectBasics_SelectingVolumeManager;
             thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    importcpp: "Matches", header: "Select3D_SensitiveFace.hxx".}
proc GetConnected*(this: var Select3D_SensitiveFace): handle[
    Select3D_SensitiveEntity] {.importcpp: "GetConnected",
                               header: "Select3D_SensitiveFace.hxx".}
proc BoundingBox*(this: var Select3D_SensitiveFace): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "Select3D_SensitiveFace.hxx".}
proc CenterOfGeometry*(this: Select3D_SensitiveFace): gp_Pnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "Select3D_SensitiveFace.hxx".}
proc BVH*(this: var Select3D_SensitiveFace) {.importcpp: "BVH",
    header: "Select3D_SensitiveFace.hxx".}
proc ToBuildBVH*(this: Select3D_SensitiveFace): Standard_Boolean {.noSideEffect,
    importcpp: "ToBuildBVH", header: "Select3D_SensitiveFace.hxx".}
proc NbSubElements*(this: Select3D_SensitiveFace): Standard_Integer {.noSideEffect,
    importcpp: "NbSubElements", header: "Select3D_SensitiveFace.hxx".}
proc DumpJson*(this: Select3D_SensitiveFace; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Select3D_SensitiveFace.hxx".}
discard "forward decl of Select3D_SensitiveFace"
type
  Handle_Select3D_SensitiveFace* = handle[Select3D_SensitiveFace]
