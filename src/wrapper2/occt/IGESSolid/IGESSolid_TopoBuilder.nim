##  Created on: 1994-11-16
##  Created by: Christian CAILLET
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of IGESSolid_ManifoldSolid"
discard "forward decl of IGESSolid_Shell"
discard "forward decl of IGESSolid_Face"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESSolid_Loop"
discard "forward decl of IGESSolid_EdgeList"
discard "forward decl of IGESSolid_VertexList"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_XYZ"
type
  IGESSolidTopoBuilder* {.importcpp: "IGESSolid_TopoBuilder",
                         header: "IGESSolid_TopoBuilder.hxx", bycopy.} = object ## !
                                                                           ## Creates an empty
                                                                           ## TopoBuilder
                                                                           ## ! This
                                                                           ## creates also a
                                                                           ## unique
                                                                           ## VertexList and a
                                                                           ## unique
                                                                           ## EdgeList,
                                                                           ## !
                                                                           ## empty, but which can be
                                                                           ## referenced from
                                                                           ## starting
                                                                           ## !
                                                                           ## Closes the
                                                                           ## definition of
                                                                           ## Vertex and Edge Lists
                                                                           ## !
                                                                           ## Warning :
                                                                           ## Called only by
                                                                           ## EndSimpleShell and
                                                                           ## EndSolid


proc constructIGESSolidTopoBuilder*(): IGESSolidTopoBuilder {.constructor,
    importcpp: "IGESSolid_TopoBuilder(@)", header: "IGESSolid_TopoBuilder.hxx".}
proc clear*(this: var IGESSolidTopoBuilder) {.importcpp: "Clear",
    header: "IGESSolid_TopoBuilder.hxx".}
proc addVertex*(this: var IGESSolidTopoBuilder; val: GpXYZ) {.importcpp: "AddVertex",
    header: "IGESSolid_TopoBuilder.hxx".}
proc nbVertices*(this: IGESSolidTopoBuilder): StandardInteger {.noSideEffect,
    importcpp: "NbVertices", header: "IGESSolid_TopoBuilder.hxx".}
proc vertex*(this: IGESSolidTopoBuilder; num: StandardInteger): GpXYZ {.noSideEffect,
    importcpp: "Vertex", header: "IGESSolid_TopoBuilder.hxx".}
proc vertexList*(this: IGESSolidTopoBuilder): Handle[IGESSolidVertexList] {.
    noSideEffect, importcpp: "VertexList", header: "IGESSolid_TopoBuilder.hxx".}
proc addEdge*(this: var IGESSolidTopoBuilder; curve: Handle[IGESDataIGESEntity];
             vstart: StandardInteger; vend: StandardInteger) {.importcpp: "AddEdge",
    header: "IGESSolid_TopoBuilder.hxx".}
proc nbEdges*(this: IGESSolidTopoBuilder): StandardInteger {.noSideEffect,
    importcpp: "NbEdges", header: "IGESSolid_TopoBuilder.hxx".}
proc edge*(this: IGESSolidTopoBuilder; num: StandardInteger;
          curve: var Handle[IGESDataIGESEntity]; vstart: var StandardInteger;
          vend: var StandardInteger) {.noSideEffect, importcpp: "Edge",
                                    header: "IGESSolid_TopoBuilder.hxx".}
proc edgeList*(this: IGESSolidTopoBuilder): Handle[IGESSolidEdgeList] {.
    noSideEffect, importcpp: "EdgeList", header: "IGESSolid_TopoBuilder.hxx".}
proc makeLoop*(this: var IGESSolidTopoBuilder) {.importcpp: "MakeLoop",
    header: "IGESSolid_TopoBuilder.hxx".}
proc makeEdge*(this: var IGESSolidTopoBuilder; edgetype: StandardInteger;
              edge3d: StandardInteger; orientation: StandardInteger) {.
    importcpp: "MakeEdge", header: "IGESSolid_TopoBuilder.hxx".}
proc addCurveUV*(this: var IGESSolidTopoBuilder; curve: Handle[IGESDataIGESEntity];
                iso: StandardInteger) {.importcpp: "AddCurveUV",
                                      header: "IGESSolid_TopoBuilder.hxx".}
proc endEdge*(this: var IGESSolidTopoBuilder) {.importcpp: "EndEdge",
    header: "IGESSolid_TopoBuilder.hxx".}
proc makeFace*(this: var IGESSolidTopoBuilder; surface: Handle[IGESDataIGESEntity]) {.
    importcpp: "MakeFace", header: "IGESSolid_TopoBuilder.hxx".}
proc setOuter*(this: var IGESSolidTopoBuilder) {.importcpp: "SetOuter",
    header: "IGESSolid_TopoBuilder.hxx".}
proc addInner*(this: var IGESSolidTopoBuilder) {.importcpp: "AddInner",
    header: "IGESSolid_TopoBuilder.hxx".}
proc endFace*(this: var IGESSolidTopoBuilder; orientation: StandardInteger) {.
    importcpp: "EndFace", header: "IGESSolid_TopoBuilder.hxx".}
proc makeShell*(this: var IGESSolidTopoBuilder) {.importcpp: "MakeShell",
    header: "IGESSolid_TopoBuilder.hxx".}
proc endSimpleShell*(this: var IGESSolidTopoBuilder) {.importcpp: "EndSimpleShell",
    header: "IGESSolid_TopoBuilder.hxx".}
proc setMainShell*(this: var IGESSolidTopoBuilder; orientation: StandardInteger) {.
    importcpp: "SetMainShell", header: "IGESSolid_TopoBuilder.hxx".}
proc addVoidShell*(this: var IGESSolidTopoBuilder; orientation: StandardInteger) {.
    importcpp: "AddVoidShell", header: "IGESSolid_TopoBuilder.hxx".}
proc endSolid*(this: var IGESSolidTopoBuilder) {.importcpp: "EndSolid",
    header: "IGESSolid_TopoBuilder.hxx".}
proc shell*(this: IGESSolidTopoBuilder): Handle[IGESSolidShell] {.noSideEffect,
    importcpp: "Shell", header: "IGESSolid_TopoBuilder.hxx".}
proc solid*(this: IGESSolidTopoBuilder): Handle[IGESSolidManifoldSolid] {.
    noSideEffect, importcpp: "Solid", header: "IGESSolid_TopoBuilder.hxx".}

