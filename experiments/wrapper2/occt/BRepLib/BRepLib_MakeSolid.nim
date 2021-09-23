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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopTools/TopTools_ListOfShape,
  BRepLib_MakeShape, BRepLib_ShapeModification

discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_CompSolid"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Solid"
discard "forward decl of TopoDS_Face"
type
  BRepLib_MakeSolid* {.importcpp: "BRepLib_MakeSolid",
                      header: "BRepLib_MakeSolid.hxx", bycopy.} = object of BRepLib_MakeShape ##
                                                                                       ## !
                                                                                       ## Solid
                                                                                       ## covers
                                                                                       ## whole
                                                                                       ## space.


proc constructBRepLib_MakeSolid*(): BRepLib_MakeSolid {.constructor,
    importcpp: "BRepLib_MakeSolid(@)", header: "BRepLib_MakeSolid.hxx".}
proc constructBRepLib_MakeSolid*(S: TopoDS_CompSolid): BRepLib_MakeSolid {.
    constructor, importcpp: "BRepLib_MakeSolid(@)", header: "BRepLib_MakeSolid.hxx".}
proc constructBRepLib_MakeSolid*(S: TopoDS_Shell): BRepLib_MakeSolid {.constructor,
    importcpp: "BRepLib_MakeSolid(@)", header: "BRepLib_MakeSolid.hxx".}
proc constructBRepLib_MakeSolid*(S1: TopoDS_Shell; S2: TopoDS_Shell): BRepLib_MakeSolid {.
    constructor, importcpp: "BRepLib_MakeSolid(@)", header: "BRepLib_MakeSolid.hxx".}
proc constructBRepLib_MakeSolid*(S1: TopoDS_Shell; S2: TopoDS_Shell; S3: TopoDS_Shell): BRepLib_MakeSolid {.
    constructor, importcpp: "BRepLib_MakeSolid(@)", header: "BRepLib_MakeSolid.hxx".}
proc constructBRepLib_MakeSolid*(So: TopoDS_Solid): BRepLib_MakeSolid {.constructor,
    importcpp: "BRepLib_MakeSolid(@)", header: "BRepLib_MakeSolid.hxx".}
proc constructBRepLib_MakeSolid*(So: TopoDS_Solid; S: TopoDS_Shell): BRepLib_MakeSolid {.
    constructor, importcpp: "BRepLib_MakeSolid(@)", header: "BRepLib_MakeSolid.hxx".}
proc Add*(this: var BRepLib_MakeSolid; S: TopoDS_Shell) {.importcpp: "Add",
    header: "BRepLib_MakeSolid.hxx".}
proc Solid*(this: var BRepLib_MakeSolid): TopoDS_Solid {.importcpp: "Solid",
    header: "BRepLib_MakeSolid.hxx".}
converter `TopoDS_Solid`*(this: var BRepLib_MakeSolid): TopoDS_Solid {.
    importcpp: "BRepLib_MakeSolid::operator TopoDS_Solid",
    header: "BRepLib_MakeSolid.hxx".}
proc FaceStatus*(this: BRepLib_MakeSolid; F: TopoDS_Face): BRepLib_ShapeModification {.
    noSideEffect, importcpp: "FaceStatus", header: "BRepLib_MakeSolid.hxx".}