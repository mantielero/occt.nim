##  Created by: Eugeny MALTCHIKOV
##  Copyright (c) 2014 OPEN CASCADE SAS
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

discard "forward decl of TopoDS_Solid"
discard "forward decl of BOPAlgo_PaveFiller"
type
  BOPAlgoMakerVolume* {.importcpp: "BOPAlgo_MakerVolume",
                       header: "BOPAlgo_MakerVolume.hxx", bycopy.} = object of BOPAlgoBuilder ##
                                                                                       ## !
                                                                                       ## Empty
                                                                                       ## contructor.
                                                                                       ##
                                                                                       ## !
                                                                                       ## Checks
                                                                                       ## the
                                                                                       ## data.


proc constructBOPAlgoMakerVolume*(): BOPAlgoMakerVolume {.constructor,
    importcpp: "BOPAlgo_MakerVolume(@)", header: "BOPAlgo_MakerVolume.hxx".}
proc destroyBOPAlgoMakerVolume*(this: var BOPAlgoMakerVolume) {.
    importcpp: "#.~BOPAlgo_MakerVolume()", header: "BOPAlgo_MakerVolume.hxx".}
proc constructBOPAlgoMakerVolume*(theAllocator: Handle[NCollectionBaseAllocator]): BOPAlgoMakerVolume {.
    constructor, importcpp: "BOPAlgo_MakerVolume(@)",
    header: "BOPAlgo_MakerVolume.hxx".}
proc clear*(this: var BOPAlgoMakerVolume) {.importcpp: "Clear",
                                        header: "BOPAlgo_MakerVolume.hxx".}
proc setIntersect*(this: var BOPAlgoMakerVolume; bIntersect: bool) {.
    importcpp: "SetIntersect", header: "BOPAlgo_MakerVolume.hxx".}
proc isIntersect*(this: BOPAlgoMakerVolume): bool {.noSideEffect,
    importcpp: "IsIntersect", header: "BOPAlgo_MakerVolume.hxx".}
proc box*(this: BOPAlgoMakerVolume): TopoDS_Solid {.noSideEffect, importcpp: "Box",
    header: "BOPAlgo_MakerVolume.hxx".}
proc faces*(this: BOPAlgoMakerVolume): TopToolsListOfShape {.noSideEffect,
    importcpp: "Faces", header: "BOPAlgo_MakerVolume.hxx".}
proc setAvoidInternalShapes*(this: var BOPAlgoMakerVolume; theAvoidInternal: bool) {.
    importcpp: "SetAvoidInternalShapes", header: "BOPAlgo_MakerVolume.hxx".}
proc isAvoidInternalShapes*(this: BOPAlgoMakerVolume): bool {.noSideEffect,
    importcpp: "IsAvoidInternalShapes", header: "BOPAlgo_MakerVolume.hxx".}
proc perform*(this: var BOPAlgoMakerVolume) {.importcpp: "Perform",
    header: "BOPAlgo_MakerVolume.hxx".}
