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

## ! This structure provides unified access to the results of Matches() method in all sensitive entities,
## ! so that it defines a Depth (distance to the entity along picking ray) and a closest Point on entity.

type
  SelectBasicsPickResult* {.importcpp: "SelectBasics_PickResult",
                           header: "SelectBasics_PickResult.hxx", bycopy.} = object ## !
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
                                                                               ## !
                                                                               ## Empty
                                                                               ## constructor
                                                                               ## defining
                                                                               ## an
                                                                               ## invalid
                                                                               ## result.
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


proc min*(thePickResult1: SelectBasicsPickResult;
         thePickResult2: SelectBasicsPickResult): SelectBasicsPickResult {.
    importcpp: "SelectBasics_PickResult::Min(@)",
    header: "SelectBasics_PickResult.hxx".}
proc constructSelectBasicsPickResult*(): SelectBasicsPickResult {.constructor,
    importcpp: "SelectBasics_PickResult(@)", header: "SelectBasics_PickResult.hxx".}
proc constructSelectBasicsPickResult*(theDepth: StandardReal;
                                     theDistToCenter: StandardReal;
                                     theObjPickedPnt: GpPnt): SelectBasicsPickResult {.
    constructor, importcpp: "SelectBasics_PickResult(@)",
    header: "SelectBasics_PickResult.hxx".}
proc isValid*(this: SelectBasicsPickResult): StandardBoolean {.noSideEffect,
    importcpp: "IsValid", header: "SelectBasics_PickResult.hxx".}
proc invalidate*(this: var SelectBasicsPickResult) {.importcpp: "Invalidate",
    header: "SelectBasics_PickResult.hxx".}
proc depth*(this: SelectBasicsPickResult): StandardReal {.noSideEffect,
    importcpp: "Depth", header: "SelectBasics_PickResult.hxx".}
proc setDepth*(this: var SelectBasicsPickResult; theDepth: StandardReal) {.
    importcpp: "SetDepth", header: "SelectBasics_PickResult.hxx".}
proc hasPickedPoint*(this: SelectBasicsPickResult): StandardBoolean {.noSideEffect,
    importcpp: "HasPickedPoint", header: "SelectBasics_PickResult.hxx".}
proc pickedPoint*(this: SelectBasicsPickResult): GpPnt {.noSideEffect,
    importcpp: "PickedPoint", header: "SelectBasics_PickResult.hxx".}
proc setPickedPoint*(this: var SelectBasicsPickResult; theObjPickedPnt: GpPnt) {.
    importcpp: "SetPickedPoint", header: "SelectBasics_PickResult.hxx".}
proc distToGeomCenter*(this: SelectBasicsPickResult): StandardReal {.noSideEffect,
    importcpp: "DistToGeomCenter", header: "SelectBasics_PickResult.hxx".}
proc setDistToGeomCenter*(this: var SelectBasicsPickResult;
                         theDistToCenter: StandardReal) {.
    importcpp: "SetDistToGeomCenter", header: "SelectBasics_PickResult.hxx".}
proc surfaceNormal*(this: SelectBasicsPickResult): NCollectionVec3[cfloat] {.
    noSideEffect, importcpp: "SurfaceNormal", header: "SelectBasics_PickResult.hxx".}
proc setSurfaceNormal*(this: var SelectBasicsPickResult;
                      theNormal: NCollectionVec3[cfloat]) {.
    importcpp: "SetSurfaceNormal", header: "SelectBasics_PickResult.hxx".}
proc setSurfaceNormal*(this: var SelectBasicsPickResult; theNormal: GpVec) {.
    importcpp: "SetSurfaceNormal", header: "SelectBasics_PickResult.hxx".}

