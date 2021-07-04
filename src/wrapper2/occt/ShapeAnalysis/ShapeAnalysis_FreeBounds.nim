##  Created on: 1998-06-03
##  Created by: Daniel RISSER
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Compound,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../TopTools/TopTools_HSequenceOfShape, ../TopTools/TopTools_DataMapOfShapeShape

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Compound"
type
  ShapeAnalysis_FreeBounds* {.importcpp: "ShapeAnalysis_FreeBounds",
                             header: "ShapeAnalysis_FreeBounds.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Empty
                                                                                  ## constructor


proc constructShapeAnalysis_FreeBounds*(): ShapeAnalysis_FreeBounds {.constructor,
    importcpp: "ShapeAnalysis_FreeBounds(@)",
    header: "ShapeAnalysis_FreeBounds.hxx".}
proc constructShapeAnalysis_FreeBounds*(shape: TopoDS_Shape; toler: Standard_Real;
    splitclosed: Standard_Boolean = Standard_False; splitopen: Standard_Boolean = Standard_True): ShapeAnalysis_FreeBounds {.
    constructor, importcpp: "ShapeAnalysis_FreeBounds(@)",
    header: "ShapeAnalysis_FreeBounds.hxx".}
proc constructShapeAnalysis_FreeBounds*(shape: TopoDS_Shape; splitclosed: Standard_Boolean = Standard_False;
    splitopen: Standard_Boolean = Standard_True; checkinternaledges: Standard_Boolean = Standard_False): ShapeAnalysis_FreeBounds {.
    constructor, importcpp: "ShapeAnalysis_FreeBounds(@)",
    header: "ShapeAnalysis_FreeBounds.hxx".}
proc GetClosedWires*(this: ShapeAnalysis_FreeBounds): TopoDS_Compound {.
    noSideEffect, importcpp: "GetClosedWires",
    header: "ShapeAnalysis_FreeBounds.hxx".}
proc GetOpenWires*(this: ShapeAnalysis_FreeBounds): TopoDS_Compound {.noSideEffect,
    importcpp: "GetOpenWires", header: "ShapeAnalysis_FreeBounds.hxx".}
proc ConnectEdgesToWires*(edges: var handle[TopTools_HSequenceOfShape];
                         toler: Standard_Real; shared: Standard_Boolean;
                         wires: var handle[TopTools_HSequenceOfShape]) {.
    importcpp: "ShapeAnalysis_FreeBounds::ConnectEdgesToWires(@)",
    header: "ShapeAnalysis_FreeBounds.hxx".}
proc ConnectWiresToWires*(iwires: var handle[TopTools_HSequenceOfShape];
                         toler: Standard_Real; shared: Standard_Boolean;
                         owires: var handle[TopTools_HSequenceOfShape]) {.
    importcpp: "ShapeAnalysis_FreeBounds::ConnectWiresToWires(@)",
    header: "ShapeAnalysis_FreeBounds.hxx".}
proc ConnectWiresToWires*(iwires: var handle[TopTools_HSequenceOfShape];
                         toler: Standard_Real; shared: Standard_Boolean;
                         owires: var handle[TopTools_HSequenceOfShape];
                         vertices: var TopTools_DataMapOfShapeShape) {.
    importcpp: "ShapeAnalysis_FreeBounds::ConnectWiresToWires(@)",
    header: "ShapeAnalysis_FreeBounds.hxx".}
proc SplitWires*(wires: handle[TopTools_HSequenceOfShape]; toler: Standard_Real;
                shared: Standard_Boolean;
                closed: var handle[TopTools_HSequenceOfShape];
                open: var handle[TopTools_HSequenceOfShape]) {.
    importcpp: "ShapeAnalysis_FreeBounds::SplitWires(@)",
    header: "ShapeAnalysis_FreeBounds.hxx".}
proc DispatchWires*(wires: handle[TopTools_HSequenceOfShape];
                   closed: var TopoDS_Compound; open: var TopoDS_Compound) {.
    importcpp: "ShapeAnalysis_FreeBounds::DispatchWires(@)",
    header: "ShapeAnalysis_FreeBounds.hxx".}