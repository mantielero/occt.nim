##  Created on: 1999-06-21
##  Created by: Galina KULIKOVA
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of ShapeAnalysis_TransferParametersProj"
discard "forward decl of ShapeAnalysis_TransferParametersProj"
type
  HandleC1C1* = Handle[ShapeAnalysisTransferParametersProj]

## ! This tool is used for transferring parameters
## ! from 3d curve of the edge to pcurve and vice versa.
## ! This tool transfers parameters with help of
## ! projection points from curve 3d on curve 2d and
## ! vice versa

type
  ShapeAnalysisTransferParametersProj* {.importcpp: "ShapeAnalysis_TransferParametersProj", header: "ShapeAnalysis_TransferParametersProj.hxx",
                                        bycopy.} = object of ShapeAnalysisTransferParameters ##
                                                                                        ## !
                                                                                        ## Creats
                                                                                        ## empty
                                                                                        ## constructor.


proc constructShapeAnalysisTransferParametersProj*(): ShapeAnalysisTransferParametersProj {.
    constructor, importcpp: "ShapeAnalysis_TransferParametersProj(@)",
    header: "ShapeAnalysis_TransferParametersProj.hxx".}
proc constructShapeAnalysisTransferParametersProj*(e: TopoDS_Edge; f: TopoDS_Face): ShapeAnalysisTransferParametersProj {.
    constructor, importcpp: "ShapeAnalysis_TransferParametersProj(@)",
    header: "ShapeAnalysis_TransferParametersProj.hxx".}
proc init*(this: var ShapeAnalysisTransferParametersProj; e: TopoDS_Edge;
          f: TopoDS_Face) {.importcpp: "Init",
                          header: "ShapeAnalysis_TransferParametersProj.hxx".}
proc perform*(this: var ShapeAnalysisTransferParametersProj;
             papams: Handle[TColStdHSequenceOfReal]; to2d: bool): Handle[
    TColStdHSequenceOfReal] {.importcpp: "Perform",
                             header: "ShapeAnalysis_TransferParametersProj.hxx".}
proc perform*(this: var ShapeAnalysisTransferParametersProj; param: cfloat; to2d: bool): cfloat {.
    importcpp: "Perform", header: "ShapeAnalysis_TransferParametersProj.hxx".}
proc forceProjection*(this: var ShapeAnalysisTransferParametersProj): var bool {.
    importcpp: "ForceProjection",
    header: "ShapeAnalysis_TransferParametersProj.hxx".}
proc transferRange*(this: var ShapeAnalysisTransferParametersProj;
                   newEdge: var TopoDS_Edge; prevPar: cfloat; currPar: cfloat;
                   is2d: bool) {.importcpp: "TransferRange", header: "ShapeAnalysis_TransferParametersProj.hxx".}
proc isSameRange*(this: ShapeAnalysisTransferParametersProj): bool {.noSideEffect,
    importcpp: "IsSameRange", header: "ShapeAnalysis_TransferParametersProj.hxx".}
proc copyNMVertex*(theVert: TopoDS_Vertex; toedge: TopoDS_Edge; fromedge: TopoDS_Edge): TopoDS_Vertex {.
    importcpp: "ShapeAnalysis_TransferParametersProj::CopyNMVertex(@)",
    header: "ShapeAnalysis_TransferParametersProj.hxx".}
proc copyNMVertex*(theVert: TopoDS_Vertex; toFace: TopoDS_Face; fromFace: TopoDS_Face): TopoDS_Vertex {.
    importcpp: "ShapeAnalysis_TransferParametersProj::CopyNMVertex(@)",
    header: "ShapeAnalysis_TransferParametersProj.hxx".}
type
  ShapeAnalysisTransferParametersProjbaseType* = ShapeAnalysisTransferParameters

proc getTypeName*(): cstring {.importcpp: "ShapeAnalysis_TransferParametersProj::get_type_name(@)",
                            header: "ShapeAnalysis_TransferParametersProj.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeAnalysis_TransferParametersProj::get_type_descriptor(@)",
    header: "ShapeAnalysis_TransferParametersProj.hxx".}
proc dynamicType*(this: ShapeAnalysisTransferParametersProj): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeAnalysis_TransferParametersProj.hxx".}

























