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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../Adaptor3d/Adaptor3d_CurveOnSurface, ../Standard/Standard_Real,
  ../TopLoc/TopLoc_Location, ../Standard/Standard_Boolean,
  ShapeAnalysis_TransferParameters, ../TColStd/TColStd_HSequenceOfReal

discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of ShapeAnalysis_TransferParametersProj"
discard "forward decl of ShapeAnalysis_TransferParametersProj"
type
  Handle_ShapeAnalysis_TransferParametersProj* = handle[
      ShapeAnalysis_TransferParametersProj]

## ! This tool is used for transferring parameters
## ! from 3d curve of the edge to pcurve and vice versa.
## ! This tool transfers parameters with help of
## ! projection points from curve 3d on curve 2d and
## ! vice versa

type
  ShapeAnalysis_TransferParametersProj* {.
      importcpp: "ShapeAnalysis_TransferParametersProj",
      header: "ShapeAnalysis_TransferParametersProj.hxx", bycopy.} = object of ShapeAnalysis_TransferParameters ##
                                                                                                         ## !
                                                                                                         ## Creats
                                                                                                         ## empty
                                                                                                         ## constructor.


proc constructShapeAnalysis_TransferParametersProj*(): ShapeAnalysis_TransferParametersProj {.
    constructor, importcpp: "ShapeAnalysis_TransferParametersProj(@)",
    header: "ShapeAnalysis_TransferParametersProj.hxx".}
proc constructShapeAnalysis_TransferParametersProj*(E: TopoDS_Edge; F: TopoDS_Face): ShapeAnalysis_TransferParametersProj {.
    constructor, importcpp: "ShapeAnalysis_TransferParametersProj(@)",
    header: "ShapeAnalysis_TransferParametersProj.hxx".}
proc Init*(this: var ShapeAnalysis_TransferParametersProj; E: TopoDS_Edge;
          F: TopoDS_Face) {.importcpp: "Init",
                          header: "ShapeAnalysis_TransferParametersProj.hxx".}
proc Perform*(this: var ShapeAnalysis_TransferParametersProj;
             Papams: handle[TColStd_HSequenceOfReal]; To2d: Standard_Boolean): handle[
    TColStd_HSequenceOfReal] {.importcpp: "Perform", header: "ShapeAnalysis_TransferParametersProj.hxx".}
proc Perform*(this: var ShapeAnalysis_TransferParametersProj; Param: Standard_Real;
             To2d: Standard_Boolean): Standard_Real {.importcpp: "Perform",
    header: "ShapeAnalysis_TransferParametersProj.hxx".}
proc ForceProjection*(this: var ShapeAnalysis_TransferParametersProj): var Standard_Boolean {.
    importcpp: "ForceProjection",
    header: "ShapeAnalysis_TransferParametersProj.hxx".}
proc TransferRange*(this: var ShapeAnalysis_TransferParametersProj;
                   newEdge: var TopoDS_Edge; prevPar: Standard_Real;
                   currPar: Standard_Real; Is2d: Standard_Boolean) {.
    importcpp: "TransferRange", header: "ShapeAnalysis_TransferParametersProj.hxx".}
proc IsSameRange*(this: ShapeAnalysis_TransferParametersProj): Standard_Boolean {.
    noSideEffect, importcpp: "IsSameRange",
    header: "ShapeAnalysis_TransferParametersProj.hxx".}
proc CopyNMVertex*(theVert: TopoDS_Vertex; toedge: TopoDS_Edge; fromedge: TopoDS_Edge): TopoDS_Vertex {.
    importcpp: "ShapeAnalysis_TransferParametersProj::CopyNMVertex(@)",
    header: "ShapeAnalysis_TransferParametersProj.hxx".}
proc CopyNMVertex*(theVert: TopoDS_Vertex; toFace: TopoDS_Face; fromFace: TopoDS_Face): TopoDS_Vertex {.
    importcpp: "ShapeAnalysis_TransferParametersProj::CopyNMVertex(@)",
    header: "ShapeAnalysis_TransferParametersProj.hxx".}
type
  ShapeAnalysis_TransferParametersProjbase_type* = ShapeAnalysis_TransferParameters

proc get_type_name*(): cstring {.importcpp: "ShapeAnalysis_TransferParametersProj::get_type_name(@)", header: "ShapeAnalysis_TransferParametersProj.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeAnalysis_TransferParametersProj::get_type_descriptor(@)",
    header: "ShapeAnalysis_TransferParametersProj.hxx".}
proc DynamicType*(this: ShapeAnalysis_TransferParametersProj): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeAnalysis_TransferParametersProj.hxx".}