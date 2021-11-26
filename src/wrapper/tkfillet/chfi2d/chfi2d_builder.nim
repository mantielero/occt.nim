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

discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
when defined(Status):
  discard
## ! This  class contains  the algorithm  used to build
## ! fillet on planar wire.

type
  ChFi2dBuilder* {.importcpp: "ChFi2d_Builder", header: "ChFi2d_Builder.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Is
                                                                                        ## internaly
                                                                                        ## used
                                                                                        ## by
                                                                                        ## <AddFillet>.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Warning:
                                                                                        ## <TrimE1>,
                                                                                        ## <TrimE2>,
                                                                                        ## <Fillet>
                                                                                        ## has
                                                                                        ## sense
                                                                                        ## only
                                                                                        ## if
                                                                                        ## the
                                                                                        ##
                                                                                        ## !
                                                                                        ## status
                                                                                        ## <status>
                                                                                        ## is
                                                                                        ## equal
                                                                                        ## to
                                                                                        ## <IsDone>


proc newChFi2dBuilder*(): ChFi2dBuilder {.cdecl, constructor,
                                       importcpp: "ChFi2d_Builder(@)",
                                       dynlib: tkfillet.}
proc newChFi2dBuilder*(f: TopoDS_Face): ChFi2dBuilder {.cdecl, constructor,
    importcpp: "ChFi2d_Builder(@)", dynlib: tkfillet.}
proc init*(this: var ChFi2dBuilder; f: TopoDS_Face) {.cdecl, importcpp: "Init",
    dynlib: tkfillet.}
proc init*(this: var ChFi2dBuilder; refFace: TopoDS_Face; modFace: TopoDS_Face) {.cdecl,
    importcpp: "Init", dynlib: tkfillet.}
proc addFillet*(this: var ChFi2dBuilder; v: TopoDS_Vertex; radius: cfloat): TopoDS_Edge {.
    cdecl, importcpp: "AddFillet", dynlib: tkfillet.}
proc modifyFillet*(this: var ChFi2dBuilder; fillet: TopoDS_Edge; radius: cfloat): TopoDS_Edge {.
    cdecl, importcpp: "ModifyFillet", dynlib: tkfillet.}
proc removeFillet*(this: var ChFi2dBuilder; fillet: TopoDS_Edge): TopoDS_Vertex {.
    cdecl, importcpp: "RemoveFillet", dynlib: tkfillet.}
proc addChamfer*(this: var ChFi2dBuilder; e1: TopoDS_Edge; e2: TopoDS_Edge; d1: cfloat;
                d2: cfloat): TopoDS_Edge {.cdecl, importcpp: "AddChamfer",
                                        dynlib: tkfillet.}
proc addChamfer*(this: var ChFi2dBuilder; e: TopoDS_Edge; v: TopoDS_Vertex; d: cfloat;
                ang: cfloat): TopoDS_Edge {.cdecl, importcpp: "AddChamfer",
    dynlib: tkfillet.}
proc modifyChamfer*(this: var ChFi2dBuilder; chamfer: TopoDS_Edge; e1: TopoDS_Edge;
                   e2: TopoDS_Edge; d1: cfloat; d2: cfloat): TopoDS_Edge {.cdecl,
    importcpp: "ModifyChamfer", dynlib: tkfillet.}
proc modifyChamfer*(this: var ChFi2dBuilder; chamfer: TopoDS_Edge; e: TopoDS_Edge;
                   d: cfloat; ang: cfloat): TopoDS_Edge {.cdecl,
    importcpp: "ModifyChamfer", dynlib: tkfillet.}
proc removeChamfer*(this: var ChFi2dBuilder; chamfer: TopoDS_Edge): TopoDS_Vertex {.
    cdecl, importcpp: "RemoveChamfer", dynlib: tkfillet.}
proc result*(this: ChFi2dBuilder): TopoDS_Face {.noSideEffect, cdecl,
    importcpp: "Result", dynlib: tkfillet.}
proc isModified*(this: ChFi2dBuilder; e: TopoDS_Edge): bool {.noSideEffect, cdecl,
    importcpp: "IsModified", dynlib: tkfillet.}
proc filletEdges*(this: ChFi2dBuilder): TopToolsSequenceOfShape {.noSideEffect,
    cdecl, importcpp: "FilletEdges", dynlib: tkfillet.}
proc nbFillet*(this: ChFi2dBuilder): cint {.noSideEffect, cdecl,
                                        importcpp: "NbFillet", dynlib: tkfillet.}
proc chamferEdges*(this: ChFi2dBuilder): TopToolsSequenceOfShape {.noSideEffect,
    cdecl, importcpp: "ChamferEdges", dynlib: tkfillet.}
proc nbChamfer*(this: ChFi2dBuilder): cint {.noSideEffect, cdecl,
    importcpp: "NbChamfer", dynlib: tkfillet.}
proc hasDescendant*(this: ChFi2dBuilder; e: TopoDS_Edge): bool {.noSideEffect, cdecl,
    importcpp: "HasDescendant", dynlib: tkfillet.}
proc descendantEdge*(this: ChFi2dBuilder; e: TopoDS_Edge): TopoDS_Edge {.noSideEffect,
    cdecl, importcpp: "DescendantEdge", dynlib: tkfillet.}
proc basisEdge*(this: ChFi2dBuilder; e: TopoDS_Edge): TopoDS_Edge {.noSideEffect,
    cdecl, importcpp: "BasisEdge", dynlib: tkfillet.}
proc status*(this: ChFi2dBuilder): ChFi2dConstructionError {.noSideEffect, cdecl,
    importcpp: "Status", dynlib: tkfillet.}