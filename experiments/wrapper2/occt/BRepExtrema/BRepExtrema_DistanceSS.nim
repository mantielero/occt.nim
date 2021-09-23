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
  BRepExtrema_SeqOfSolution, ../Extrema/Extrema_ExtFlag,
  ../Extrema/Extrema_ExtAlgo, ../Precision/Precision,
  ../Standard/Standard_DefineAlloc

discard "forward decl of TopoDS_Shape"
discard "forward decl of Bnd_Box"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
type
  BRepExtrema_DistanceSS* {.importcpp: "BRepExtrema_DistanceSS",
                           header: "BRepExtrema_DistanceSS.hxx", bycopy.} = object ## !
                                                                              ## computes
                                                                              ## the
                                                                              ## distance
                                                                              ## between
                                                                              ## two
                                                                              ## Shapes (
                                                                              ## face
                                                                              ## edge
                                                                              ## vertex).
                                                                              ## <br>
                                                                              ## !
                                                                              ## computes
                                                                              ## the
                                                                              ## distance
                                                                              ## between
                                                                              ## two
                                                                              ## Shapes (
                                                                              ## face
                                                                              ## edge
                                                                              ## vertex)
                                                                              ## <br>


proc constructBRepExtrema_DistanceSS*(S1: TopoDS_Shape; S2: TopoDS_Shape;
                                     B1: Bnd_Box; B2: Bnd_Box;
                                     DstRef: Standard_Real; F: Extrema_ExtFlag = Extrema_ExtFlag_MINMAX;
                                     A: Extrema_ExtAlgo = Extrema_ExtAlgo_Grad): BRepExtrema_DistanceSS {.
    constructor, importcpp: "BRepExtrema_DistanceSS(@)",
    header: "BRepExtrema_DistanceSS.hxx".}
proc constructBRepExtrema_DistanceSS*(S1: TopoDS_Shape; S2: TopoDS_Shape;
                                     B1: Bnd_Box; B2: Bnd_Box;
                                     DstRef: Standard_Real;
                                     aDeflection: Standard_Real; F: Extrema_ExtFlag = Extrema_ExtFlag_MINMAX;
                                     A: Extrema_ExtAlgo = Extrema_ExtAlgo_Grad): BRepExtrema_DistanceSS {.
    constructor, importcpp: "BRepExtrema_DistanceSS(@)",
    header: "BRepExtrema_DistanceSS.hxx".}
proc IsDone*(this: BRepExtrema_DistanceSS): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepExtrema_DistanceSS.hxx".}
proc DistValue*(this: BRepExtrema_DistanceSS): Standard_Real {.noSideEffect,
    importcpp: "DistValue", header: "BRepExtrema_DistanceSS.hxx".}
proc Seq1Value*(this: BRepExtrema_DistanceSS): BRepExtrema_SeqOfSolution {.
    noSideEffect, importcpp: "Seq1Value", header: "BRepExtrema_DistanceSS.hxx".}
proc Seq2Value*(this: BRepExtrema_DistanceSS): BRepExtrema_SeqOfSolution {.
    noSideEffect, importcpp: "Seq2Value", header: "BRepExtrema_DistanceSS.hxx".}
proc SetFlag*(this: var BRepExtrema_DistanceSS; F: Extrema_ExtFlag) {.
    importcpp: "SetFlag", header: "BRepExtrema_DistanceSS.hxx".}
proc SetAlgo*(this: var BRepExtrema_DistanceSS; A: Extrema_ExtAlgo) {.
    importcpp: "SetAlgo", header: "BRepExtrema_DistanceSS.hxx".}