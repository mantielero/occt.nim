import brepextrema_types
import ../tkbrep/topods/topods_types
import ../tkmath/bnd/bnd_types
import ../extrema/extrema_types
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


proc newBRepExtrema_DistanceSS*(S1: TopoDS_Shape; S2: TopoDS_Shape; B1: Bnd_Box;
                               B2: Bnd_Box; DstRef: cfloat;
                               F: Extrema_ExtFlag = extremaExtFlagMINMAX;
                               A: Extrema_ExtAlgo = extremaExtAlgoGrad): BRepExtrema_DistanceSS {.
    cdecl, constructor, importcpp: "BRepExtrema_DistanceSS(@)",
    header: "BRepExtrema_DistanceSS.hxx".}
proc newBRepExtrema_DistanceSS*(S1: TopoDS_Shape; S2: TopoDS_Shape; B1: Bnd_Box;
                               B2: Bnd_Box; DstRef: cfloat; aDeflection: cfloat;
                               F: Extrema_ExtFlag = extremaExtFlagMINMAX;
                               A: Extrema_ExtAlgo = extremaExtAlgoGrad): BRepExtrema_DistanceSS {.
    cdecl, constructor, importcpp: "BRepExtrema_DistanceSS(@)",
    header: "BRepExtrema_DistanceSS.hxx".}
proc IsDone*(this: BRepExtrema_DistanceSS): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "BRepExtrema_DistanceSS.hxx".}
proc DistValue*(this: BRepExtrema_DistanceSS): cfloat {.noSideEffect, cdecl,
    importcpp: "DistValue", header: "BRepExtrema_DistanceSS.hxx".}
proc Seq1Value*(this: BRepExtrema_DistanceSS): BRepExtrema_SeqOfSolution {.
    noSideEffect, cdecl, importcpp: "Seq1Value",
    header: "BRepExtrema_DistanceSS.hxx".}
proc Seq2Value*(this: BRepExtrema_DistanceSS): BRepExtrema_SeqOfSolution {.
    noSideEffect, cdecl, importcpp: "Seq2Value",
    header: "BRepExtrema_DistanceSS.hxx".}
proc SetFlag*(this: var BRepExtrema_DistanceSS; F: Extrema_ExtFlag) {.cdecl,
    importcpp: "SetFlag", header: "BRepExtrema_DistanceSS.hxx".}
proc SetAlgo*(this: var BRepExtrema_DistanceSS; A: Extrema_ExtAlgo) {.cdecl,
    importcpp: "SetAlgo", header: "BRepExtrema_DistanceSS.hxx".}