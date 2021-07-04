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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../TColStd/TColStd_HSequenceOfTransient, ../TColStd/TColStd_HSequenceOfInteger,
  ../TColgp/TColgp_HSequenceOfXYZ

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
  IGESSolid_TopoBuilder* {.importcpp: "IGESSolid_TopoBuilder",
                          header: "IGESSolid_TopoBuilder.hxx", bycopy.} = object ## !
                                                                            ## Creates an
                                                                            ## empty
                                                                            ## TopoBuilder
                                                                            ## ! This
                                                                            ## creates also a
                                                                            ## unique
                                                                            ## VertexList and a
                                                                            ## unique
                                                                            ## EdgeList,
                                                                            ## !
                                                                            ## empty, but
                                                                            ## which can be
                                                                            ## referenced from
                                                                            ## starting
                                                                            ## !
                                                                            ## Closes the
                                                                            ## definition of
                                                                            ## Vertex and Edge
                                                                            ## Lists
                                                                            ## !
                                                                            ## Warning :
                                                                            ## Called only by
                                                                            ## EndSimpleShell and
                                                                            ## EndSolid


proc constructIGESSolid_TopoBuilder*(): IGESSolid_TopoBuilder {.constructor,
    importcpp: "IGESSolid_TopoBuilder(@)", header: "IGESSolid_TopoBuilder.hxx".}
proc Clear*(this: var IGESSolid_TopoBuilder) {.importcpp: "Clear",
    header: "IGESSolid_TopoBuilder.hxx".}
proc AddVertex*(this: var IGESSolid_TopoBuilder; val: gp_XYZ) {.
    importcpp: "AddVertex", header: "IGESSolid_TopoBuilder.hxx".}
proc NbVertices*(this: IGESSolid_TopoBuilder): Standard_Integer {.noSideEffect,
    importcpp: "NbVertices", header: "IGESSolid_TopoBuilder.hxx".}
proc Vertex*(this: IGESSolid_TopoBuilder; num: Standard_Integer): gp_XYZ {.
    noSideEffect, importcpp: "Vertex", header: "IGESSolid_TopoBuilder.hxx".}
proc VertexList*(this: IGESSolid_TopoBuilder): handle[IGESSolid_VertexList] {.
    noSideEffect, importcpp: "VertexList", header: "IGESSolid_TopoBuilder.hxx".}
proc AddEdge*(this: var IGESSolid_TopoBuilder; curve: handle[IGESData_IGESEntity];
             vstart: Standard_Integer; vend: Standard_Integer) {.
    importcpp: "AddEdge", header: "IGESSolid_TopoBuilder.hxx".}
proc NbEdges*(this: IGESSolid_TopoBuilder): Standard_Integer {.noSideEffect,
    importcpp: "NbEdges", header: "IGESSolid_TopoBuilder.hxx".}
proc Edge*(this: IGESSolid_TopoBuilder; num: Standard_Integer;
          curve: var handle[IGESData_IGESEntity]; vstart: var Standard_Integer;
          vend: var Standard_Integer) {.noSideEffect, importcpp: "Edge",
                                     header: "IGESSolid_TopoBuilder.hxx".}
proc EdgeList*(this: IGESSolid_TopoBuilder): handle[IGESSolid_EdgeList] {.
    noSideEffect, importcpp: "EdgeList", header: "IGESSolid_TopoBuilder.hxx".}
proc MakeLoop*(this: var IGESSolid_TopoBuilder) {.importcpp: "MakeLoop",
    header: "IGESSolid_TopoBuilder.hxx".}
proc MakeEdge*(this: var IGESSolid_TopoBuilder; edgetype: Standard_Integer;
              edge3d: Standard_Integer; orientation: Standard_Integer) {.
    importcpp: "MakeEdge", header: "IGESSolid_TopoBuilder.hxx".}
proc AddCurveUV*(this: var IGESSolid_TopoBuilder;
                curve: handle[IGESData_IGESEntity]; iso: Standard_Integer) {.
    importcpp: "AddCurveUV", header: "IGESSolid_TopoBuilder.hxx".}
proc EndEdge*(this: var IGESSolid_TopoBuilder) {.importcpp: "EndEdge",
    header: "IGESSolid_TopoBuilder.hxx".}
proc MakeFace*(this: var IGESSolid_TopoBuilder; surface: handle[IGESData_IGESEntity]) {.
    importcpp: "MakeFace", header: "IGESSolid_TopoBuilder.hxx".}
proc SetOuter*(this: var IGESSolid_TopoBuilder) {.importcpp: "SetOuter",
    header: "IGESSolid_TopoBuilder.hxx".}
proc AddInner*(this: var IGESSolid_TopoBuilder) {.importcpp: "AddInner",
    header: "IGESSolid_TopoBuilder.hxx".}
proc EndFace*(this: var IGESSolid_TopoBuilder; orientation: Standard_Integer) {.
    importcpp: "EndFace", header: "IGESSolid_TopoBuilder.hxx".}
proc MakeShell*(this: var IGESSolid_TopoBuilder) {.importcpp: "MakeShell",
    header: "IGESSolid_TopoBuilder.hxx".}
proc EndSimpleShell*(this: var IGESSolid_TopoBuilder) {.importcpp: "EndSimpleShell",
    header: "IGESSolid_TopoBuilder.hxx".}
proc SetMainShell*(this: var IGESSolid_TopoBuilder; orientation: Standard_Integer) {.
    importcpp: "SetMainShell", header: "IGESSolid_TopoBuilder.hxx".}
proc AddVoidShell*(this: var IGESSolid_TopoBuilder; orientation: Standard_Integer) {.
    importcpp: "AddVoidShell", header: "IGESSolid_TopoBuilder.hxx".}
proc EndSolid*(this: var IGESSolid_TopoBuilder) {.importcpp: "EndSolid",
    header: "IGESSolid_TopoBuilder.hxx".}
proc Shell*(this: IGESSolid_TopoBuilder): handle[IGESSolid_Shell] {.noSideEffect,
    importcpp: "Shell", header: "IGESSolid_TopoBuilder.hxx".}
proc Solid*(this: IGESSolid_TopoBuilder): handle[IGESSolid_ManifoldSolid] {.
    noSideEffect, importcpp: "Solid", header: "IGESSolid_TopoBuilder.hxx".}