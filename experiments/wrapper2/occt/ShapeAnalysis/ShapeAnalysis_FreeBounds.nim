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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Compound"
type
  ShapeAnalysisFreeBounds* {.importcpp: "ShapeAnalysis_FreeBounds",
                            header: "ShapeAnalysis_FreeBounds.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Empty
                                                                                 ## constructor


proc constructShapeAnalysisFreeBounds*(): ShapeAnalysisFreeBounds {.constructor,
    importcpp: "ShapeAnalysis_FreeBounds(@)",
    header: "ShapeAnalysis_FreeBounds.hxx".}
proc constructShapeAnalysisFreeBounds*(shape: TopoDS_Shape; toler: float;
                                      splitclosed: bool = false;
                                      splitopen: bool = true): ShapeAnalysisFreeBounds {.
    constructor, importcpp: "ShapeAnalysis_FreeBounds(@)",
    header: "ShapeAnalysis_FreeBounds.hxx".}
proc constructShapeAnalysisFreeBounds*(shape: TopoDS_Shape;
                                      splitclosed: bool = false;
                                      splitopen: bool = true;
                                      checkinternaledges: bool = false): ShapeAnalysisFreeBounds {.
    constructor, importcpp: "ShapeAnalysis_FreeBounds(@)",
    header: "ShapeAnalysis_FreeBounds.hxx".}
proc getClosedWires*(this: ShapeAnalysisFreeBounds): TopoDS_Compound {.noSideEffect,
    importcpp: "GetClosedWires", header: "ShapeAnalysis_FreeBounds.hxx".}
proc getOpenWires*(this: ShapeAnalysisFreeBounds): TopoDS_Compound {.noSideEffect,
    importcpp: "GetOpenWires", header: "ShapeAnalysis_FreeBounds.hxx".}
proc connectEdgesToWires*(edges: var Handle[TopToolsHSequenceOfShape]; toler: float;
                         shared: bool; wires: var Handle[TopToolsHSequenceOfShape]) {.
    importcpp: "ShapeAnalysis_FreeBounds::ConnectEdgesToWires(@)",
    header: "ShapeAnalysis_FreeBounds.hxx".}
proc connectWiresToWires*(iwires: var Handle[TopToolsHSequenceOfShape];
                         toler: float; shared: bool;
                         owires: var Handle[TopToolsHSequenceOfShape]) {.
    importcpp: "ShapeAnalysis_FreeBounds::ConnectWiresToWires(@)",
    header: "ShapeAnalysis_FreeBounds.hxx".}
proc connectWiresToWires*(iwires: var Handle[TopToolsHSequenceOfShape];
                         toler: float; shared: bool;
                         owires: var Handle[TopToolsHSequenceOfShape];
                         vertices: var TopToolsDataMapOfShapeShape) {.
    importcpp: "ShapeAnalysis_FreeBounds::ConnectWiresToWires(@)",
    header: "ShapeAnalysis_FreeBounds.hxx".}
proc splitWires*(wires: Handle[TopToolsHSequenceOfShape]; toler: float; shared: bool;
                closed: var Handle[TopToolsHSequenceOfShape];
                open: var Handle[TopToolsHSequenceOfShape]) {.
    importcpp: "ShapeAnalysis_FreeBounds::SplitWires(@)",
    header: "ShapeAnalysis_FreeBounds.hxx".}
proc dispatchWires*(wires: Handle[TopToolsHSequenceOfShape];
                   closed: var TopoDS_Compound; open: var TopoDS_Compound) {.
    importcpp: "ShapeAnalysis_FreeBounds::DispatchWires(@)",
    header: "ShapeAnalysis_FreeBounds.hxx".}
