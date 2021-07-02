##  Created on: 1992-11-19
##  Created by: Remi LEQUETTE
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Lin2d"
discard "forward decl of BRepClass_Edge"
type
  BRepClassFaceExplorer* {.importcpp: "BRepClass_FaceExplorer",
                          header: "BRepClass_FaceExplorer.hxx", bycopy.} = object ## !
                                                                             ## Computes UV
                                                                             ## bounds of a
                                                                             ## face


proc constructBRepClassFaceExplorer*(f: TopoDS_Face): BRepClassFaceExplorer {.
    constructor, importcpp: "BRepClass_FaceExplorer(@)",
    header: "BRepClass_FaceExplorer.hxx".}
proc checkPoint*(this: var BRepClassFaceExplorer; thePoint: var GpPnt2d): StandardBoolean {.
    importcpp: "CheckPoint", header: "BRepClass_FaceExplorer.hxx".}
proc reject*(this: BRepClassFaceExplorer; p: GpPnt2d): StandardBoolean {.noSideEffect,
    importcpp: "Reject", header: "BRepClass_FaceExplorer.hxx".}
proc segment*(this: var BRepClassFaceExplorer; p: GpPnt2d; L: var GpLin2d;
             par: var StandardReal): StandardBoolean {.importcpp: "Segment",
    header: "BRepClass_FaceExplorer.hxx".}
proc otherSegment*(this: var BRepClassFaceExplorer; p: GpPnt2d; L: var GpLin2d;
                  par: var StandardReal): StandardBoolean {.
    importcpp: "OtherSegment", header: "BRepClass_FaceExplorer.hxx".}
proc initWires*(this: var BRepClassFaceExplorer) {.importcpp: "InitWires",
    header: "BRepClass_FaceExplorer.hxx".}
proc moreWires*(this: BRepClassFaceExplorer): StandardBoolean {.noSideEffect,
    importcpp: "MoreWires", header: "BRepClass_FaceExplorer.hxx".}
proc nextWire*(this: var BRepClassFaceExplorer) {.importcpp: "NextWire",
    header: "BRepClass_FaceExplorer.hxx".}
proc rejectWire*(this: BRepClassFaceExplorer; L: GpLin2d; par: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "RejectWire", header: "BRepClass_FaceExplorer.hxx".}
proc initEdges*(this: var BRepClassFaceExplorer) {.importcpp: "InitEdges",
    header: "BRepClass_FaceExplorer.hxx".}
proc moreEdges*(this: BRepClassFaceExplorer): StandardBoolean {.noSideEffect,
    importcpp: "MoreEdges", header: "BRepClass_FaceExplorer.hxx".}
proc nextEdge*(this: var BRepClassFaceExplorer) {.importcpp: "NextEdge",
    header: "BRepClass_FaceExplorer.hxx".}
proc rejectEdge*(this: BRepClassFaceExplorer; L: GpLin2d; par: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "RejectEdge", header: "BRepClass_FaceExplorer.hxx".}
proc currentEdge*(this: BRepClassFaceExplorer; e: var BRepClassEdge;
                 `or`: var TopAbsOrientation) {.noSideEffect,
    importcpp: "CurrentEdge", header: "BRepClass_FaceExplorer.hxx".}

