##  Created on: 1996-02-06
##  Created by: Robert COUBLANC
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../gp/gp_Circ, Select3D_SensitivePoly, Select3D_TypeOfSensitivity,
  ../SelectMgr/SelectMgr_SelectingVolumeManager, ../TColgp/TColgp_HArray1OfPnt

## ! A framework to define sensitive 3D arcs and circles.
## ! In some cases this class can raise Standard_ConstructionError and
## ! Standard_OutOfRange exceptions. For more details see Select3D_SensitivePoly.

type
  Select3D_SensitiveCircle* {.importcpp: "Select3D_SensitiveCircle",
                             header: "Select3D_SensitiveCircle.hxx", bycopy.} = object of Select3D_SensitivePoly ##
                                                                                                          ## !
                                                                                                          ## Constructs
                                                                                                          ## the
                                                                                                          ## sensitive
                                                                                                          ## circle
                                                                                                          ## object
                                                                                                          ## defined
                                                                                                          ## by
                                                                                                          ## the
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## owner
                                                                                                          ## theOwnerId,
                                                                                                          ## the
                                                                                                          ## circle
                                                                                                          ## theCircle,
                                                                                                          ## the
                                                                                                          ## boolean
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## theIsFilled
                                                                                                          ## and
                                                                                                          ## the
                                                                                                          ## number
                                                                                                          ## of
                                                                                                          ## points
                                                                                                          ## theNbPnts.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Calculates
                                                                                                          ## distance
                                                                                                          ## from
                                                                                                          ## the
                                                                                                          ## 3d
                                                                                                          ## projection
                                                                                                          ## of
                                                                                                          ## used-picked
                                                                                                          ## screen
                                                                                                          ## point
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## to
                                                                                                          ## center
                                                                                                          ## of
                                                                                                          ## the
                                                                                                          ## geometry
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Computes
                                                                                                          ## myCenter3D
                                                                                                          ## as
                                                                                                          ## the
                                                                                                          ## barycenter
                                                                                                          ## of
                                                                                                          ## points
                                                                                                          ## from
                                                                                                          ## mypolyg3d
    ## !< True if type of selection is interior, false otherwise
    ## !< Center of a circle
    ## !< Points of the circle
    ## !< Sensitive arc parameter
    ## !< Sensitive arc parameter

  Select3D_SensitiveCirclebase_type* = Select3D_SensitivePoly

proc get_type_name*(): cstring {.importcpp: "Select3D_SensitiveCircle::get_type_name(@)",
                              header: "Select3D_SensitiveCircle.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Select3D_SensitiveCircle::get_type_descriptor(@)",
    header: "Select3D_SensitiveCircle.hxx".}
proc DynamicType*(this: Select3D_SensitiveCircle): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Select3D_SensitiveCircle.hxx".}
proc constructSelect3D_SensitiveCircle*(theOwnerId: handle[SelectMgr_EntityOwner];
                                       theCircle: gp_Circ; theIsFilled: Standard_Boolean = Standard_False;
                                       theNbPnts: Standard_Integer = 12): Select3D_SensitiveCircle {.
    constructor, importcpp: "Select3D_SensitiveCircle(@)",
    header: "Select3D_SensitiveCircle.hxx".}
proc constructSelect3D_SensitiveCircle*(theOwnerId: handle[SelectMgr_EntityOwner];
                                       theCircle: gp_Circ; theU1: Standard_Real;
                                       theU2: Standard_Real; theIsFilled: Standard_Boolean = Standard_False;
                                       theNbPnts: Standard_Integer = 12): Select3D_SensitiveCircle {.
    constructor, importcpp: "Select3D_SensitiveCircle(@)",
    header: "Select3D_SensitiveCircle.hxx".}
proc constructSelect3D_SensitiveCircle*(theOwnerId: handle[SelectMgr_EntityOwner];
                                       thePnts3d: handle[TColgp_HArray1OfPnt];
    theIsFilled: Standard_Boolean = Standard_False): Select3D_SensitiveCircle {.
    constructor, importcpp: "Select3D_SensitiveCircle(@)",
    header: "Select3D_SensitiveCircle.hxx".}
proc constructSelect3D_SensitiveCircle*(theOwnerId: handle[SelectMgr_EntityOwner];
                                       thePnts3d: TColgp_Array1OfPnt; theIsFilled: Standard_Boolean = Standard_False): Select3D_SensitiveCircle {.
    constructor, importcpp: "Select3D_SensitiveCircle(@)",
    header: "Select3D_SensitiveCircle.hxx".}
proc Matches*(this: var Select3D_SensitiveCircle;
             theMgr: var SelectBasics_SelectingVolumeManager;
             thePickResult: var SelectBasics_PickResult): Standard_Boolean {.
    importcpp: "Matches", header: "Select3D_SensitiveCircle.hxx".}
proc GetConnected*(this: var Select3D_SensitiveCircle): handle[
    Select3D_SensitiveEntity] {.importcpp: "GetConnected",
                               header: "Select3D_SensitiveCircle.hxx".}
proc CenterOfGeometry*(this: Select3D_SensitiveCircle): gp_Pnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "Select3D_SensitiveCircle.hxx".}
proc BVH*(this: var Select3D_SensitiveCircle) {.importcpp: "BVH",
    header: "Select3D_SensitiveCircle.hxx".}
proc ToBuildBVH*(this: Select3D_SensitiveCircle): Standard_Boolean {.noSideEffect,
    importcpp: "ToBuildBVH", header: "Select3D_SensitiveCircle.hxx".}
discard "forward decl of Select3D_SensitiveCircle"
type
  Handle_Select3D_SensitiveCircle* = handle[Select3D_SensitiveCircle]
