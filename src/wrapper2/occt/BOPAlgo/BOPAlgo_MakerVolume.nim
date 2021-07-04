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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean, BOPAlgo_Builder,
  ../Bnd/Bnd_Box, ../NCollection/NCollection_BaseAllocator,
  ../TopoDS/TopoDS_Solid, ../TopTools/TopTools_ListOfShape,
  ../TopTools/TopTools_MapOfShape

discard "forward decl of TopoDS_Solid"
discard "forward decl of BOPAlgo_PaveFiller"
type
  BOPAlgo_MakerVolume* {.importcpp: "BOPAlgo_MakerVolume",
                        header: "BOPAlgo_MakerVolume.hxx", bycopy.} = object of BOPAlgo_Builder ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## contructor.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Checks
                                                                                         ## the
                                                                                         ## data.


proc constructBOPAlgo_MakerVolume*(): BOPAlgo_MakerVolume {.constructor,
    importcpp: "BOPAlgo_MakerVolume(@)", header: "BOPAlgo_MakerVolume.hxx".}
proc destroyBOPAlgo_MakerVolume*(this: var BOPAlgo_MakerVolume) {.
    importcpp: "#.~BOPAlgo_MakerVolume()", header: "BOPAlgo_MakerVolume.hxx".}
proc constructBOPAlgo_MakerVolume*(theAllocator: handle[NCollection_BaseAllocator]): BOPAlgo_MakerVolume {.
    constructor, importcpp: "BOPAlgo_MakerVolume(@)",
    header: "BOPAlgo_MakerVolume.hxx".}
proc Clear*(this: var BOPAlgo_MakerVolume) {.importcpp: "Clear",
    header: "BOPAlgo_MakerVolume.hxx".}
proc SetIntersect*(this: var BOPAlgo_MakerVolume; bIntersect: Standard_Boolean) {.
    importcpp: "SetIntersect", header: "BOPAlgo_MakerVolume.hxx".}
proc IsIntersect*(this: BOPAlgo_MakerVolume): Standard_Boolean {.noSideEffect,
    importcpp: "IsIntersect", header: "BOPAlgo_MakerVolume.hxx".}
proc Box*(this: BOPAlgo_MakerVolume): TopoDS_Solid {.noSideEffect, importcpp: "Box",
    header: "BOPAlgo_MakerVolume.hxx".}
proc Faces*(this: BOPAlgo_MakerVolume): TopTools_ListOfShape {.noSideEffect,
    importcpp: "Faces", header: "BOPAlgo_MakerVolume.hxx".}
proc SetAvoidInternalShapes*(this: var BOPAlgo_MakerVolume;
                            theAvoidInternal: Standard_Boolean) {.
    importcpp: "SetAvoidInternalShapes", header: "BOPAlgo_MakerVolume.hxx".}
proc IsAvoidInternalShapes*(this: BOPAlgo_MakerVolume): Standard_Boolean {.
    noSideEffect, importcpp: "IsAvoidInternalShapes",
    header: "BOPAlgo_MakerVolume.hxx".}
proc Perform*(this: var BOPAlgo_MakerVolume) {.importcpp: "Perform",
    header: "BOPAlgo_MakerVolume.hxx".}