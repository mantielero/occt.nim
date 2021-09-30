##  Created on: 1994-09-28
##  Created by: Marie Jose MARTZ
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

discard "forward decl of IGESToBRep_CurveAndSurface"
discard "forward decl of TopoDS_Shape"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of IGESSolid_VertexList"
discard "forward decl of IGESSolid_EdgeList"
discard "forward decl of IGESSolid_Loop"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Trsf2d"
discard "forward decl of IGESSolid_Face"
discard "forward decl of IGESSolid_Shell"
discard "forward decl of IGESSolid_ManifoldSolid"
type
  IGESToBRepBRepEntity* {.importcpp: "IGESToBRep_BRepEntity",
                         header: "IGESToBRep_BRepEntity.hxx", bycopy.} = object of IGESToBRepCurveAndSurface ##
                                                                                                      ## !
                                                                                                      ## Creates
                                                                                                      ## a
                                                                                                      ## tool
                                                                                                      ## BRepEntity
                                                                                                      ## ready
                                                                                                      ## to
                                                                                                      ## run,
                                                                                                      ## with
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## epsilons
                                                                                                      ## set
                                                                                                      ## to
                                                                                                      ## 1.E-04,
                                                                                                      ## TheModeTopo
                                                                                                      ## to
                                                                                                      ## True,
                                                                                                      ## the
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## optimization
                                                                                                      ## of
                                                                                                      ## the
                                                                                                      ## continuity
                                                                                                      ## to
                                                                                                      ## False.


proc constructIGESToBRepBRepEntity*(): IGESToBRepBRepEntity {.constructor,
    importcpp: "IGESToBRep_BRepEntity(@)", header: "IGESToBRep_BRepEntity.hxx".}
proc constructIGESToBRepBRepEntity*(cs: IGESToBRepCurveAndSurface): IGESToBRepBRepEntity {.
    constructor, importcpp: "IGESToBRep_BRepEntity(@)",
    header: "IGESToBRep_BRepEntity.hxx".}
proc constructIGESToBRepBRepEntity*(eps: cfloat; epsGeom: cfloat; epsCoeff: cfloat;
                                   mode: bool; modeapprox: bool; optimized: bool): IGESToBRepBRepEntity {.
    constructor, importcpp: "IGESToBRep_BRepEntity(@)",
    header: "IGESToBRep_BRepEntity.hxx".}
proc transferBRepEntity*(this: var IGESToBRepBRepEntity;
                        start: Handle[IGESDataIGESEntity]; theProgress: MessageProgressRange = messageProgressRange()): TopoDS_Shape {.
    importcpp: "TransferBRepEntity", header: "IGESToBRep_BRepEntity.hxx".}
proc transferVertex*(this: var IGESToBRepBRepEntity;
                    start: Handle[IGESSolidVertexList]; index: cint): TopoDS_Vertex {.
    importcpp: "TransferVertex", header: "IGESToBRep_BRepEntity.hxx".}
proc transferEdge*(this: var IGESToBRepBRepEntity; start: Handle[IGESSolidEdgeList];
                  index: cint): TopoDS_Shape {.importcpp: "TransferEdge",
    header: "IGESToBRep_BRepEntity.hxx".}
proc transferLoop*(this: var IGESToBRepBRepEntity; start: Handle[IGESSolidLoop];
                  face: TopoDS_Face; trans: Trsf2d; uFact: cfloat): TopoDS_Shape {.
    importcpp: "TransferLoop", header: "IGESToBRep_BRepEntity.hxx".}
proc transferFace*(this: var IGESToBRepBRepEntity; start: Handle[IGESSolidFace]): TopoDS_Shape {.
    importcpp: "TransferFace", header: "IGESToBRep_BRepEntity.hxx".}
proc transferShell*(this: var IGESToBRepBRepEntity; start: Handle[IGESSolidShell];
                   theProgress: MessageProgressRange = messageProgressRange()): TopoDS_Shape {.
    importcpp: "TransferShell", header: "IGESToBRep_BRepEntity.hxx".}
proc transferManifoldSolid*(this: var IGESToBRepBRepEntity;
                           start: Handle[IGESSolidManifoldSolid]; theProgress: MessageProgressRange = messageProgressRange()): TopoDS_Shape {.
    importcpp: "TransferManifoldSolid", header: "IGESToBRep_BRepEntity.hxx".}

























