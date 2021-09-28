##  Created on: 1995-01-04
##  Created by: Bruno DUMORTIER
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_CompSolid"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Solid"
discard "forward decl of TopoDS_Face"
type
  BRepLibMakeSolid* {.importcpp: "BRepLib_MakeSolid",
                     header: "BRepLib_MakeSolid.hxx", bycopy.} = object of BRepLibMakeShape ##
                                                                                     ## !
                                                                                     ## Solid
                                                                                     ## covers
                                                                                     ## whole
                                                                                     ## space.


proc constructBRepLibMakeSolid*(): BRepLibMakeSolid {.constructor,
    importcpp: "BRepLib_MakeSolid(@)", header: "BRepLib_MakeSolid.hxx".}
proc constructBRepLibMakeSolid*(s: TopoDS_CompSolid): BRepLibMakeSolid {.
    constructor, importcpp: "BRepLib_MakeSolid(@)", header: "BRepLib_MakeSolid.hxx".}
proc constructBRepLibMakeSolid*(s: TopoDS_Shell): BRepLibMakeSolid {.constructor,
    importcpp: "BRepLib_MakeSolid(@)", header: "BRepLib_MakeSolid.hxx".}
proc constructBRepLibMakeSolid*(s1: TopoDS_Shell; s2: TopoDS_Shell): BRepLibMakeSolid {.
    constructor, importcpp: "BRepLib_MakeSolid(@)", header: "BRepLib_MakeSolid.hxx".}
proc constructBRepLibMakeSolid*(s1: TopoDS_Shell; s2: TopoDS_Shell; s3: TopoDS_Shell): BRepLibMakeSolid {.
    constructor, importcpp: "BRepLib_MakeSolid(@)", header: "BRepLib_MakeSolid.hxx".}
proc constructBRepLibMakeSolid*(so: TopoDS_Solid): BRepLibMakeSolid {.constructor,
    importcpp: "BRepLib_MakeSolid(@)", header: "BRepLib_MakeSolid.hxx".}
proc constructBRepLibMakeSolid*(so: TopoDS_Solid; s: TopoDS_Shell): BRepLibMakeSolid {.
    constructor, importcpp: "BRepLib_MakeSolid(@)", header: "BRepLib_MakeSolid.hxx".}
proc add*(this: var BRepLibMakeSolid; s: TopoDS_Shell) {.importcpp: "Add",
    header: "BRepLib_MakeSolid.hxx".}
proc solid*(this: var BRepLibMakeSolid): TopoDS_Solid {.importcpp: "Solid",
    header: "BRepLib_MakeSolid.hxx".}
converter `topoDS_Solid`*(this: var BRepLibMakeSolid): TopoDS_Solid {.
    importcpp: "BRepLib_MakeSolid::operator TopoDS_Solid",
    header: "BRepLib_MakeSolid.hxx".}
proc faceStatus*(this: BRepLibMakeSolid; f: TopoDS_Face): BRepLibShapeModification {.
    noSideEffect, importcpp: "FaceStatus", header: "BRepLib_MakeSolid.hxx".}

























