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

discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of ShapeAnalysis_TransferParameters"
discard "forward decl of ShapeAnalysis_TransferParameters"
type
  HandleShapeAnalysisTransferParameters* = Handle[ShapeAnalysisTransferParameters]

## ! This tool is used for transferring parameters
## ! from 3d curve of the edge to pcurve and vice versa.
## !
## ! Default behaviour is to trsnafer parameters with help
## ! of linear transformation:
## !
## ! T2d = myShift + myScale * T3d
## ! where
## ! myScale = ( Last2d - First2d ) / ( Last3d - First3d )
## ! myShift = First2d - First3d * myScale
## ! [First3d, Last3d] and [First2d, Last2d] are ranges of
## ! edge on curve and pcurve
## !
## ! This behaviour can be redefined in derived classes, for example,
## ! using projection.

type
  ShapeAnalysisTransferParameters* {.importcpp: "ShapeAnalysis_TransferParameters", header: "ShapeAnalysis_TransferParameters.hxx",
                                    bycopy.} = object of StandardTransient ## ! Creates empty tool with myShift = 0 and myScale = 1


proc constructShapeAnalysisTransferParameters*(): ShapeAnalysisTransferParameters {.
    constructor, importcpp: "ShapeAnalysis_TransferParameters(@)",
    header: "ShapeAnalysis_TransferParameters.hxx".}
proc constructShapeAnalysisTransferParameters*(e: TopoDS_Edge; f: TopoDS_Face): ShapeAnalysisTransferParameters {.
    constructor, importcpp: "ShapeAnalysis_TransferParameters(@)",
    header: "ShapeAnalysis_TransferParameters.hxx".}
proc init*(this: var ShapeAnalysisTransferParameters; e: TopoDS_Edge; f: TopoDS_Face) {.
    importcpp: "Init", header: "ShapeAnalysis_TransferParameters.hxx".}
proc setMaxTolerance*(this: var ShapeAnalysisTransferParameters; maxtol: float) {.
    importcpp: "SetMaxTolerance", header: "ShapeAnalysis_TransferParameters.hxx".}
proc perform*(this: var ShapeAnalysisTransferParameters;
             params: Handle[TColStdHSequenceOfReal]; to2d: bool): Handle[
    TColStdHSequenceOfReal] {.importcpp: "Perform",
                             header: "ShapeAnalysis_TransferParameters.hxx".}
proc perform*(this: var ShapeAnalysisTransferParameters; param: float; to2d: bool): float {.
    importcpp: "Perform", header: "ShapeAnalysis_TransferParameters.hxx".}
proc transferRange*(this: var ShapeAnalysisTransferParameters;
                   newEdge: var TopoDS_Edge; prevPar: float; currPar: float; to2d: bool) {.
    importcpp: "TransferRange", header: "ShapeAnalysis_TransferParameters.hxx".}
proc isSameRange*(this: ShapeAnalysisTransferParameters): bool {.noSideEffect,
    importcpp: "IsSameRange", header: "ShapeAnalysis_TransferParameters.hxx".}
type
  ShapeAnalysisTransferParametersbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "ShapeAnalysis_TransferParameters::get_type_name(@)",
                            header: "ShapeAnalysis_TransferParameters.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeAnalysis_TransferParameters::get_type_descriptor(@)",
    header: "ShapeAnalysis_TransferParameters.hxx".}
proc dynamicType*(this: ShapeAnalysisTransferParameters): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeAnalysis_TransferParameters.hxx".}
