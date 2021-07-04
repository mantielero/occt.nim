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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../TopoDS/TopoDS_Edge, ../TopoDS/TopoDS_Face, ../Standard/Standard_Transient,
  ../TColStd/TColStd_HSequenceOfReal, ../Standard/Standard_Boolean

discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of ShapeAnalysis_TransferParameters"
discard "forward decl of ShapeAnalysis_TransferParameters"
type
  Handle_ShapeAnalysis_TransferParameters* = handle[
      ShapeAnalysis_TransferParameters]

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
  ShapeAnalysis_TransferParameters* {.importcpp: "ShapeAnalysis_TransferParameters", header: "ShapeAnalysis_TransferParameters.hxx",
                                     bycopy.} = object of Standard_Transient ## ! Creates empty tool with myShift = 0 and myScale = 1


proc constructShapeAnalysis_TransferParameters*(): ShapeAnalysis_TransferParameters {.
    constructor, importcpp: "ShapeAnalysis_TransferParameters(@)",
    header: "ShapeAnalysis_TransferParameters.hxx".}
proc constructShapeAnalysis_TransferParameters*(E: TopoDS_Edge; F: TopoDS_Face): ShapeAnalysis_TransferParameters {.
    constructor, importcpp: "ShapeAnalysis_TransferParameters(@)",
    header: "ShapeAnalysis_TransferParameters.hxx".}
proc Init*(this: var ShapeAnalysis_TransferParameters; E: TopoDS_Edge; F: TopoDS_Face) {.
    importcpp: "Init", header: "ShapeAnalysis_TransferParameters.hxx".}
proc SetMaxTolerance*(this: var ShapeAnalysis_TransferParameters;
                     maxtol: Standard_Real) {.importcpp: "SetMaxTolerance",
    header: "ShapeAnalysis_TransferParameters.hxx".}
proc Perform*(this: var ShapeAnalysis_TransferParameters;
             Params: handle[TColStd_HSequenceOfReal]; To2d: Standard_Boolean): handle[
    TColStd_HSequenceOfReal] {.importcpp: "Perform",
                              header: "ShapeAnalysis_TransferParameters.hxx".}
proc Perform*(this: var ShapeAnalysis_TransferParameters; Param: Standard_Real;
             To2d: Standard_Boolean): Standard_Real {.importcpp: "Perform",
    header: "ShapeAnalysis_TransferParameters.hxx".}
proc TransferRange*(this: var ShapeAnalysis_TransferParameters;
                   newEdge: var TopoDS_Edge; prevPar: Standard_Real;
                   currPar: Standard_Real; To2d: Standard_Boolean) {.
    importcpp: "TransferRange", header: "ShapeAnalysis_TransferParameters.hxx".}
proc IsSameRange*(this: ShapeAnalysis_TransferParameters): Standard_Boolean {.
    noSideEffect, importcpp: "IsSameRange",
    header: "ShapeAnalysis_TransferParameters.hxx".}
type
  ShapeAnalysis_TransferParametersbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "ShapeAnalysis_TransferParameters::get_type_name(@)",
                              header: "ShapeAnalysis_TransferParameters.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeAnalysis_TransferParameters::get_type_descriptor(@)",
    header: "ShapeAnalysis_TransferParameters.hxx".}
proc DynamicType*(this: ShapeAnalysis_TransferParameters): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeAnalysis_TransferParameters.hxx".}