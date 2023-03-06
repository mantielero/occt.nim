import breplib_types
import ../../tkbrep/topods/topods_types
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

discard "forward decl of TopoDS_CompSolid"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Solid"
discard "forward decl of TopoDS_Face"


proc newBRepLib_MakeSolid*(): BRepLib_MakeSolid {.cdecl, constructor,
    importcpp: "BRepLib_MakeSolid(@)".}
proc newBRepLib_MakeSolid*(S: TopoDS_CompSolid): BRepLib_MakeSolid {.cdecl,
    constructor, importcpp: "BRepLib_MakeSolid(@)".}
proc newBRepLib_MakeSolid*(S: TopoDS_Shell): BRepLib_MakeSolid {.cdecl, constructor,
    importcpp: "BRepLib_MakeSolid(@)".}
proc newBRepLib_MakeSolid*(S1: TopoDS_Shell; S2: TopoDS_Shell): BRepLib_MakeSolid {.
    cdecl, constructor, importcpp: "BRepLib_MakeSolid(@)".}
proc newBRepLib_MakeSolid*(S1: TopoDS_Shell; S2: TopoDS_Shell; S3: TopoDS_Shell): BRepLib_MakeSolid {.
    cdecl, constructor, importcpp: "BRepLib_MakeSolid(@)".}
proc newBRepLib_MakeSolid*(So: TopoDS_Solid): BRepLib_MakeSolid {.cdecl, constructor,
    importcpp: "BRepLib_MakeSolid(@)".}
proc newBRepLib_MakeSolid*(So: TopoDS_Solid; S: TopoDS_Shell): BRepLib_MakeSolid {.
    cdecl, constructor, importcpp: "BRepLib_MakeSolid(@)".}
proc Add*(this: var BRepLib_MakeSolid; S: TopoDS_Shell) {.cdecl, importcpp: "Add",
    .}
proc Solid*(this: var BRepLib_MakeSolid): TopoDS_Solid {.cdecl, importcpp: "Solid",
    .}
converter `TopoDS_Solid`*(this: var BRepLib_MakeSolid): TopoDS_Solid {.cdecl,
    importcpp: "BRepLib_MakeSolid::operator TopoDS_Solid".}
proc FaceStatus*(this: BRepLib_MakeSolid; F: TopoDS_Face): BRepLib_ShapeModification {.
    noSideEffect, cdecl, importcpp: "FaceStatus".}