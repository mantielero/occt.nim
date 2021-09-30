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
discard "forward decl of Bnd_Box"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
type
  BRepExtremaDistanceSS* {.importcpp: "BRepExtrema_DistanceSS",
                          header: "BRepExtrema_DistanceSS.hxx", bycopy.} = object ## !
                                                                             ## computes the
                                                                             ## distance
                                                                             ## between two
                                                                             ## Shapes (
                                                                             ## face
                                                                             ## edge
                                                                             ## vertex)
                                                                             ## <br>


proc `new`*(this: var BRepExtremaDistanceSS; theSize: csize_t): pointer {.
    importcpp: "BRepExtrema_DistanceSS::operator new",
    header: "BRepExtrema_DistanceSS.hxx".}
proc `delete`*(this: var BRepExtremaDistanceSS; theAddress: pointer) {.
    importcpp: "BRepExtrema_DistanceSS::operator delete",
    header: "BRepExtrema_DistanceSS.hxx".}
proc `new[]`*(this: var BRepExtremaDistanceSS; theSize: csize_t): pointer {.
    importcpp: "BRepExtrema_DistanceSS::operator new[]",
    header: "BRepExtrema_DistanceSS.hxx".}
proc `delete[]`*(this: var BRepExtremaDistanceSS; theAddress: pointer) {.
    importcpp: "BRepExtrema_DistanceSS::operator delete[]",
    header: "BRepExtrema_DistanceSS.hxx".}
proc `new`*(this: var BRepExtremaDistanceSS; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepExtrema_DistanceSS::operator new",
    header: "BRepExtrema_DistanceSS.hxx".}
proc `delete`*(this: var BRepExtremaDistanceSS; a2: pointer; a3: pointer) {.
    importcpp: "BRepExtrema_DistanceSS::operator delete",
    header: "BRepExtrema_DistanceSS.hxx".}
proc constructBRepExtremaDistanceSS*(s1: TopoDS_Shape; s2: TopoDS_Shape; b1: BndBox;
                                    b2: BndBox; dstRef: StandardReal;
                                    f: ExtremaExtFlag = extremaExtFlagMINMAX;
                                    a: ExtremaExtAlgo = extremaExtAlgoGrad): BRepExtremaDistanceSS {.
    constructor, importcpp: "BRepExtrema_DistanceSS(@)",
    header: "BRepExtrema_DistanceSS.hxx".}
proc constructBRepExtremaDistanceSS*(s1: TopoDS_Shape; s2: TopoDS_Shape; b1: BndBox;
                                    b2: BndBox; dstRef: StandardReal;
                                    aDeflection: StandardReal;
                                    f: ExtremaExtFlag = extremaExtFlagMINMAX;
                                    a: ExtremaExtAlgo = extremaExtAlgoGrad): BRepExtremaDistanceSS {.
    constructor, importcpp: "BRepExtrema_DistanceSS(@)",
    header: "BRepExtrema_DistanceSS.hxx".}
proc isDone*(this: BRepExtremaDistanceSS): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepExtrema_DistanceSS.hxx".}
proc distValue*(this: BRepExtremaDistanceSS): StandardReal {.noSideEffect,
    importcpp: "DistValue", header: "BRepExtrema_DistanceSS.hxx".}
proc seq1Value*(this: BRepExtremaDistanceSS): BRepExtremaSeqOfSolution {.
    noSideEffect, importcpp: "Seq1Value", header: "BRepExtrema_DistanceSS.hxx".}
proc seq2Value*(this: BRepExtremaDistanceSS): BRepExtremaSeqOfSolution {.
    noSideEffect, importcpp: "Seq2Value", header: "BRepExtrema_DistanceSS.hxx".}
proc setFlag*(this: var BRepExtremaDistanceSS; f: ExtremaExtFlag) {.
    importcpp: "SetFlag", header: "BRepExtrema_DistanceSS.hxx".}
proc setAlgo*(this: var BRepExtremaDistanceSS; a: ExtremaExtAlgo) {.
    importcpp: "SetAlgo", header: "BRepExtrema_DistanceSS.hxx".}