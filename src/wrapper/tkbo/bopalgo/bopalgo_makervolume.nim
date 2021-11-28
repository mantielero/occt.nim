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


proc newBOPAlgoMakerVolume*(): BOPAlgoMakerVolume {.cdecl, constructor,
    importcpp: "BOPAlgo_MakerVolume(@)", dynlib: tkbo.}
proc destroyBOPAlgoMakerVolume*(this: var BOPAlgoMakerVolume) {.cdecl,
    importcpp: "#.~BOPAlgo_MakerVolume()", dynlib: tkbo.}
proc newBOPAlgoMakerVolume*(theAllocator: Handle[NCollectionBaseAllocator]): BOPAlgoMakerVolume {.
    cdecl, constructor, importcpp: "BOPAlgo_MakerVolume(@)", dynlib: tkbo.}
proc clear*(this: var BOPAlgoMakerVolume) {.cdecl, importcpp: "Clear", dynlib: tkbo.}
proc setIntersect*(this: var BOPAlgoMakerVolume; bIntersect: bool) {.cdecl,
    importcpp: "SetIntersect", dynlib: tkbo.}
proc isIntersect*(this: BOPAlgoMakerVolume): bool {.noSideEffect, cdecl,
    importcpp: "IsIntersect", dynlib: tkbo.}
proc box*(this: BOPAlgoMakerVolume): TopoDS_Solid {.noSideEffect, cdecl,
    importcpp: "Box", dynlib: tkbo.}
proc faces*(this: BOPAlgoMakerVolume): TopToolsListOfShape {.noSideEffect, cdecl,
    importcpp: "Faces", dynlib: tkbo.}
proc setAvoidInternalShapes*(this: var BOPAlgoMakerVolume; theAvoidInternal: bool) {.
    cdecl, importcpp: "SetAvoidInternalShapes", dynlib: tkbo.}
proc isAvoidInternalShapes*(this: BOPAlgoMakerVolume): bool {.noSideEffect, cdecl,
    importcpp: "IsAvoidInternalShapes", dynlib: tkbo.}
proc perform*(this: var BOPAlgoMakerVolume) {.cdecl, importcpp: "Perform", dynlib: tkbo.}