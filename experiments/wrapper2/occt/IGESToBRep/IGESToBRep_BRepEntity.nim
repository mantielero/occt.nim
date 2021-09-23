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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, IGESToBRep_CurveAndSurface,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Message/Message_ProgressRange

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
  IGESToBRep_BRepEntity* {.importcpp: "IGESToBRep_BRepEntity",
                          header: "IGESToBRep_BRepEntity.hxx", bycopy.} = object of IGESToBRep_CurveAndSurface ##
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


proc constructIGESToBRep_BRepEntity*(): IGESToBRep_BRepEntity {.constructor,
    importcpp: "IGESToBRep_BRepEntity(@)", header: "IGESToBRep_BRepEntity.hxx".}
proc constructIGESToBRep_BRepEntity*(CS: IGESToBRep_CurveAndSurface): IGESToBRep_BRepEntity {.
    constructor, importcpp: "IGESToBRep_BRepEntity(@)",
    header: "IGESToBRep_BRepEntity.hxx".}
proc constructIGESToBRep_BRepEntity*(eps: Standard_Real; epsGeom: Standard_Real;
                                    epsCoeff: Standard_Real;
                                    mode: Standard_Boolean;
                                    modeapprox: Standard_Boolean;
                                    optimized: Standard_Boolean): IGESToBRep_BRepEntity {.
    constructor, importcpp: "IGESToBRep_BRepEntity(@)",
    header: "IGESToBRep_BRepEntity.hxx".}
proc TransferBRepEntity*(this: var IGESToBRep_BRepEntity;
                        start: handle[IGESData_IGESEntity]; theProgress: Message_ProgressRange = Message_ProgressRange()): TopoDS_Shape {.
    importcpp: "TransferBRepEntity", header: "IGESToBRep_BRepEntity.hxx".}
proc TransferVertex*(this: var IGESToBRep_BRepEntity;
                    start: handle[IGESSolid_VertexList]; index: Standard_Integer): TopoDS_Vertex {.
    importcpp: "TransferVertex", header: "IGESToBRep_BRepEntity.hxx".}
proc TransferEdge*(this: var IGESToBRep_BRepEntity;
                  start: handle[IGESSolid_EdgeList]; index: Standard_Integer): TopoDS_Shape {.
    importcpp: "TransferEdge", header: "IGESToBRep_BRepEntity.hxx".}
proc TransferLoop*(this: var IGESToBRep_BRepEntity; start: handle[IGESSolid_Loop];
                  Face: TopoDS_Face; trans: gp_Trsf2d; uFact: Standard_Real): TopoDS_Shape {.
    importcpp: "TransferLoop", header: "IGESToBRep_BRepEntity.hxx".}
proc TransferFace*(this: var IGESToBRep_BRepEntity; start: handle[IGESSolid_Face]): TopoDS_Shape {.
    importcpp: "TransferFace", header: "IGESToBRep_BRepEntity.hxx".}
proc TransferShell*(this: var IGESToBRep_BRepEntity; start: handle[IGESSolid_Shell];
                   theProgress: Message_ProgressRange = Message_ProgressRange()): TopoDS_Shape {.
    importcpp: "TransferShell", header: "IGESToBRep_BRepEntity.hxx".}
proc TransferManifoldSolid*(this: var IGESToBRep_BRepEntity;
                           start: handle[IGESSolid_ManifoldSolid]; theProgress: Message_ProgressRange = Message_ProgressRange()): TopoDS_Shape {.
    importcpp: "TransferManifoldSolid", header: "IGESToBRep_BRepEntity.hxx".}