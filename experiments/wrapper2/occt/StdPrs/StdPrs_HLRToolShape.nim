##  Created on: 1993-03-09
##  Created by: Jean-Louis Frenkel
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of HLRBRep_Data"
discard "forward decl of TopoDS_Shape"
discard "forward decl of HLRAlgo_Projector"
discard "forward decl of BRepAdaptor_Curve"
type
  StdPrsHLRToolShape* {.importcpp: "StdPrs_HLRToolShape",
                       header: "StdPrs_HLRToolShape.hxx", bycopy.} = object


proc constructStdPrsHLRToolShape*(theShape: TopoDS_Shape;
                                 theProjector: HLRAlgoProjector): StdPrsHLRToolShape {.
    constructor, importcpp: "StdPrs_HLRToolShape(@)",
    header: "StdPrs_HLRToolShape.hxx".}
proc nbEdges*(this: StdPrsHLRToolShape): int {.noSideEffect, importcpp: "NbEdges",
    header: "StdPrs_HLRToolShape.hxx".}
proc initVisible*(this: var StdPrsHLRToolShape; edgeNumber: int) {.
    importcpp: "InitVisible", header: "StdPrs_HLRToolShape.hxx".}
proc moreVisible*(this: StdPrsHLRToolShape): bool {.noSideEffect,
    importcpp: "MoreVisible", header: "StdPrs_HLRToolShape.hxx".}
proc nextVisible*(this: var StdPrsHLRToolShape) {.importcpp: "NextVisible",
    header: "StdPrs_HLRToolShape.hxx".}
proc visible*(this: var StdPrsHLRToolShape; theEdge: var BRepAdaptorCurve;
             u1: var float; u2: var float) {.importcpp: "Visible",
                                       header: "StdPrs_HLRToolShape.hxx".}
proc initHidden*(this: var StdPrsHLRToolShape; edgeNumber: int) {.
    importcpp: "InitHidden", header: "StdPrs_HLRToolShape.hxx".}
proc moreHidden*(this: StdPrsHLRToolShape): bool {.noSideEffect,
    importcpp: "MoreHidden", header: "StdPrs_HLRToolShape.hxx".}
proc nextHidden*(this: var StdPrsHLRToolShape) {.importcpp: "NextHidden",
    header: "StdPrs_HLRToolShape.hxx".}
proc hidden*(this: var StdPrsHLRToolShape; theEdge: var BRepAdaptorCurve;
            u1: var float; u2: var float) {.importcpp: "Hidden",
                                      header: "StdPrs_HLRToolShape.hxx".}
