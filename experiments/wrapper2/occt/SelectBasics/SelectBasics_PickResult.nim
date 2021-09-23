##  Created on: 2014-11-14
##  Created by: Varvara POSKONINA
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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
  ../gp/gp_Pnt

## ! This structure provides unified access to the results of Matches() method in all sensitive entities,
## ! so that it defines a Depth (distance to the entity along picking ray) and a closest Point on entity.

type
  SelectBasics_PickResult* {.importcpp: "SelectBasics_PickResult",
                            header: "SelectBasics_PickResult.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Return
                                                                                ## closest
                                                                                ## result
                                                                                ## between
                                                                                ## two
                                                                                ## Pick
                                                                                ## Results
                                                                                ## according
                                                                                ## to
                                                                                ## Depth
                                                                                ## value.
                                                                                ##
                                                                                ## !
                                                                                ## Empty
                                                                                ## constructor
                                                                                ## defining
                                                                                ## an
                                                                                ## invalid
                                                                                ## result.
                                                                                ##
                                                                                ## !
                                                                                ## Return
                                                                                ## TRUE
                                                                                ## if
                                                                                ## result
                                                                                ## was
                                                                                ## been
                                                                                ## defined.
    ## !< User-picked selection point onto object
    ## !< surface normal
    ## !< Depth to detected point
    ## !< Distance from 3d projection user-picked selection point to entity's geometry center


proc Min*(thePickResult1: SelectBasics_PickResult;
         thePickResult2: SelectBasics_PickResult): SelectBasics_PickResult {.
    importcpp: "SelectBasics_PickResult::Min(@)",
    header: "SelectBasics_PickResult.hxx".}
proc constructSelectBasics_PickResult*(): SelectBasics_PickResult {.constructor,
    importcpp: "SelectBasics_PickResult(@)", header: "SelectBasics_PickResult.hxx".}
proc constructSelectBasics_PickResult*(theDepth: Standard_Real;
                                      theDistToCenter: Standard_Real;
                                      theObjPickedPnt: gp_Pnt): SelectBasics_PickResult {.
    constructor, importcpp: "SelectBasics_PickResult(@)",
    header: "SelectBasics_PickResult.hxx".}
proc IsValid*(this: SelectBasics_PickResult): Standard_Boolean {.noSideEffect,
    importcpp: "IsValid", header: "SelectBasics_PickResult.hxx".}
proc Invalidate*(this: var SelectBasics_PickResult) {.importcpp: "Invalidate",
    header: "SelectBasics_PickResult.hxx".}
proc Depth*(this: SelectBasics_PickResult): Standard_Real {.noSideEffect,
    importcpp: "Depth", header: "SelectBasics_PickResult.hxx".}
proc SetDepth*(this: var SelectBasics_PickResult; theDepth: Standard_Real) {.
    importcpp: "SetDepth", header: "SelectBasics_PickResult.hxx".}
proc HasPickedPoint*(this: SelectBasics_PickResult): Standard_Boolean {.
    noSideEffect, importcpp: "HasPickedPoint",
    header: "SelectBasics_PickResult.hxx".}
proc PickedPoint*(this: SelectBasics_PickResult): gp_Pnt {.noSideEffect,
    importcpp: "PickedPoint", header: "SelectBasics_PickResult.hxx".}
proc SetPickedPoint*(this: var SelectBasics_PickResult; theObjPickedPnt: gp_Pnt) {.
    importcpp: "SetPickedPoint", header: "SelectBasics_PickResult.hxx".}
proc DistToGeomCenter*(this: SelectBasics_PickResult): Standard_Real {.noSideEffect,
    importcpp: "DistToGeomCenter", header: "SelectBasics_PickResult.hxx".}
proc SetDistToGeomCenter*(this: var SelectBasics_PickResult;
                         theDistToCenter: Standard_Real) {.
    importcpp: "SetDistToGeomCenter", header: "SelectBasics_PickResult.hxx".}
proc SurfaceNormal*(this: SelectBasics_PickResult): NCollection_Vec3[cfloat] {.
    noSideEffect, importcpp: "SurfaceNormal", header: "SelectBasics_PickResult.hxx".}
proc SetSurfaceNormal*(this: var SelectBasics_PickResult;
                      theNormal: NCollection_Vec3[cfloat]) {.
    importcpp: "SetSurfaceNormal", header: "SelectBasics_PickResult.hxx".}
proc SetSurfaceNormal*(this: var SelectBasics_PickResult; theNormal: gp_Vec) {.
    importcpp: "SetSurfaceNormal", header: "SelectBasics_PickResult.hxx".}