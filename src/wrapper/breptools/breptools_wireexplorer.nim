import breptools_types
import ../tkbrep/topods/topods_types
import ../tkg3d/topabs/topabs_types
##  Created on: 1993-01-21
##  Created by: Remi LEQUETTE
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of TopoDS_Wire"

proc newBRepTools_WireExplorer*(): BRepTools_WireExplorer {.cdecl, constructor,
    importcpp: "BRepTools_WireExplorer(@)", header: "BRepTools_WireExplorer.hxx".}
proc newBRepTools_WireExplorer*(W: TopoDS_Wire): BRepTools_WireExplorer {.cdecl,
    constructor, importcpp: "BRepTools_WireExplorer(@)",
    header: "BRepTools_WireExplorer.hxx".}
proc newBRepTools_WireExplorer*(W: TopoDS_Wire; F: TopoDS_Face): BRepTools_WireExplorer {.
    cdecl, constructor, importcpp: "BRepTools_WireExplorer(@)",
    header: "BRepTools_WireExplorer.hxx".}
proc Init*(this: var BRepTools_WireExplorer; W: TopoDS_Wire) {.cdecl,
    importcpp: "Init", header: "BRepTools_WireExplorer.hxx".}
proc Init*(this: var BRepTools_WireExplorer; W: TopoDS_Wire; F: TopoDS_Face) {.cdecl,
    importcpp: "Init", header: "BRepTools_WireExplorer.hxx".}
proc Init*(this: var BRepTools_WireExplorer; W: TopoDS_Wire; F: TopoDS_Face;
          UMin: cfloat; UMax: cfloat; VMin: cfloat; VMax: cfloat) {.cdecl,
    importcpp: "Init", header: "BRepTools_WireExplorer.hxx".}
proc More*(this: BRepTools_WireExplorer): bool {.noSideEffect, cdecl,
    importcpp: "More", header: "BRepTools_WireExplorer.hxx".}
proc Next*(this: var BRepTools_WireExplorer) {.cdecl, importcpp: "Next",
    header: "BRepTools_WireExplorer.hxx".}
proc Current*(this: BRepTools_WireExplorer): TopoDS_Edge {.noSideEffect, cdecl,
    importcpp: "Current", header: "BRepTools_WireExplorer.hxx".}
proc Orientation*(this: BRepTools_WireExplorer): TopAbs_Orientation {.noSideEffect,
    cdecl, importcpp: "Orientation", header: "BRepTools_WireExplorer.hxx".}
proc CurrentVertex*(this: BRepTools_WireExplorer): TopoDS_Vertex {.noSideEffect,
    cdecl, importcpp: "CurrentVertex", header: "BRepTools_WireExplorer.hxx".}
proc Clear*(this: var BRepTools_WireExplorer) {.cdecl, importcpp: "Clear",
    header: "BRepTools_WireExplorer.hxx".}