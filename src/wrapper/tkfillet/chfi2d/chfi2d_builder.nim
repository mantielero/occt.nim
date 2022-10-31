import chfi2d_types
import ../../tkbrep/toptools/toptools_types
import ../../tkbrep/topods/topods_types





##  Created on: 1995-06-12
##  Created by: Joelle CHAUVET
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

when defined(Status):
  discard
## ! This  class contains  the algorithm  used to build
## ! fillet on planar wire.



proc newChFi2dBuilder*(): ChFi2dBuilder {.cdecl, constructor,
                                       importcpp: "ChFi2d_Builder(@)",
                                       header: "ChFi2d_Builder.hxx".}
proc newChFi2dBuilder*(f: TopoDS_Face): ChFi2dBuilder {.cdecl, constructor,
    importcpp: "ChFi2d_Builder(@)", header: "ChFi2d_Builder.hxx".}
proc init*(this: var ChFi2dBuilder; f: TopoDS_Face) {.cdecl, importcpp: "Init",
    header: "ChFi2d_Builder.hxx".}
proc init*(this: var ChFi2dBuilder; refFace: TopoDS_Face; modFace: TopoDS_Face) {.cdecl,
    importcpp: "Init", header: "ChFi2d_Builder.hxx".}
proc addFillet*(this: var ChFi2dBuilder; v: TopoDS_Vertex; radius: cfloat): TopoDS_Edge {.
    cdecl, importcpp: "AddFillet", header: "ChFi2d_Builder.hxx".}
proc modifyFillet*(this: var ChFi2dBuilder; fillet: TopoDS_Edge; radius: cfloat): TopoDS_Edge {.
    cdecl, importcpp: "ModifyFillet", header: "ChFi2d_Builder.hxx".}
proc removeFillet*(this: var ChFi2dBuilder; fillet: TopoDS_Edge): TopoDS_Vertex {.
    cdecl, importcpp: "RemoveFillet", header: "ChFi2d_Builder.hxx".}
proc addChamfer*(this: var ChFi2dBuilder; e1: TopoDS_Edge; e2: TopoDS_Edge; d1: cfloat;
                d2: cfloat): TopoDS_Edge {.cdecl, importcpp: "AddChamfer",
                                        header: "ChFi2d_Builder.hxx".}
proc addChamfer*(this: var ChFi2dBuilder; e: TopoDS_Edge; v: TopoDS_Vertex; d: cfloat;
                ang: cfloat): TopoDS_Edge {.cdecl, importcpp: "AddChamfer",
    header: "ChFi2d_Builder.hxx".}
proc modifyChamfer*(this: var ChFi2dBuilder; chamfer: TopoDS_Edge; e1: TopoDS_Edge;
                   e2: TopoDS_Edge; d1: cfloat; d2: cfloat): TopoDS_Edge {.cdecl,
    importcpp: "ModifyChamfer", header: "ChFi2d_Builder.hxx".}
proc modifyChamfer*(this: var ChFi2dBuilder; chamfer: TopoDS_Edge; e: TopoDS_Edge;
                   d: cfloat; ang: cfloat): TopoDS_Edge {.cdecl,
    importcpp: "ModifyChamfer", header: "ChFi2d_Builder.hxx".}
proc removeChamfer*(this: var ChFi2dBuilder; chamfer: TopoDS_Edge): TopoDS_Vertex {.
    cdecl, importcpp: "RemoveChamfer", header: "ChFi2d_Builder.hxx".}
proc result*(this: ChFi2dBuilder): TopoDS_Face {.noSideEffect, cdecl,
    importcpp: "Result", header: "ChFi2d_Builder.hxx".}
proc isModified*(this: ChFi2dBuilder; e: TopoDS_Edge): bool {.noSideEffect, cdecl,
    importcpp: "IsModified", header: "ChFi2d_Builder.hxx".}
proc filletEdges*(this: ChFi2dBuilder): TopToolsSequenceOfShape {.noSideEffect,
    cdecl, importcpp: "FilletEdges", header: "ChFi2d_Builder.hxx".}
proc nbFillet*(this: ChFi2dBuilder): cint {.noSideEffect, cdecl,
                                        importcpp: "NbFillet", header: "ChFi2d_Builder.hxx".}
proc chamferEdges*(this: ChFi2dBuilder): TopToolsSequenceOfShape {.noSideEffect,
    cdecl, importcpp: "ChamferEdges", header: "ChFi2d_Builder.hxx".}
proc nbChamfer*(this: ChFi2dBuilder): cint {.noSideEffect, cdecl,
    importcpp: "NbChamfer", header: "ChFi2d_Builder.hxx".}
proc hasDescendant*(this: ChFi2dBuilder; e: TopoDS_Edge): bool {.noSideEffect, cdecl,
    importcpp: "HasDescendant", header: "ChFi2d_Builder.hxx".}
proc descendantEdge*(this: ChFi2dBuilder; e: TopoDS_Edge): TopoDS_Edge {.noSideEffect,
    cdecl, importcpp: "DescendantEdge", header: "ChFi2d_Builder.hxx".}
proc basisEdge*(this: ChFi2dBuilder; e: TopoDS_Edge): TopoDS_Edge {.noSideEffect,
    cdecl, importcpp: "BasisEdge", header: "ChFi2d_Builder.hxx".}
proc status*(this: ChFi2dBuilder): ChFi2dConstructionError {.noSideEffect, cdecl,
    importcpp: "Status", header: "ChFi2d_Builder.hxx".}


