##  Created by: Eugeny MALTCHIKOV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Edge,
  ../BRepAdaptor/BRepAdaptor_Curve, ../Standard/Standard_Real, IntTools_Range,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  IntTools_SequenceOfCommonPrts, IntTools_SequenceOfRanges,
  ../TopAbs/TopAbs_ShapeEnum

discard "forward decl of Geom_Curve"
discard "forward decl of TopoDS_Edge"
discard "forward decl of IntTools_Range"
discard "forward decl of Bnd_Box"
discard "forward decl of BRepAdaptor_Curve"
type
  IntTools_EdgeEdge* {.importcpp: "IntTools_EdgeEdge",
                      header: "IntTools_EdgeEdge.hxx", bycopy.} = object ## ! Empty contructor
                                                                    ## ! Checks the data
    ## ! Allows avoiding use Edge-Edge intersection
    ## ! algorithm (i.e. speeding up the Boolean algorithm)
    ## ! if the edges are coincided really.
    ## ! If it is not evidently set of this flag should
    ## ! be avoided (otherwise, the performance of
    ## ! Boolean algorithm will be slower).


proc constructIntTools_EdgeEdge*(): IntTools_EdgeEdge {.constructor,
    importcpp: "IntTools_EdgeEdge(@)", header: "IntTools_EdgeEdge.hxx".}
proc destroyIntTools_EdgeEdge*(this: var IntTools_EdgeEdge) {.
    importcpp: "#.~IntTools_EdgeEdge()", header: "IntTools_EdgeEdge.hxx".}
proc constructIntTools_EdgeEdge*(theEdge1: TopoDS_Edge; theEdge2: TopoDS_Edge): IntTools_EdgeEdge {.
    constructor, importcpp: "IntTools_EdgeEdge(@)", header: "IntTools_EdgeEdge.hxx".}
proc constructIntTools_EdgeEdge*(theEdge1: TopoDS_Edge; aT11: Standard_Real;
                                aT12: Standard_Real; theEdge2: TopoDS_Edge;
                                aT21: Standard_Real; aT22: Standard_Real): IntTools_EdgeEdge {.
    constructor, importcpp: "IntTools_EdgeEdge(@)", header: "IntTools_EdgeEdge.hxx".}
proc SetEdge1*(this: var IntTools_EdgeEdge; theEdge: TopoDS_Edge) {.
    importcpp: "SetEdge1", header: "IntTools_EdgeEdge.hxx".}
proc SetEdge1*(this: var IntTools_EdgeEdge; theEdge: TopoDS_Edge; aT1: Standard_Real;
              aT2: Standard_Real) {.importcpp: "SetEdge1",
                                  header: "IntTools_EdgeEdge.hxx".}
proc SetRange1*(this: var IntTools_EdgeEdge; theRange1: IntTools_Range) {.
    importcpp: "SetRange1", header: "IntTools_EdgeEdge.hxx".}
proc SetRange1*(this: var IntTools_EdgeEdge; aT1: Standard_Real; aT2: Standard_Real) {.
    importcpp: "SetRange1", header: "IntTools_EdgeEdge.hxx".}
proc SetEdge2*(this: var IntTools_EdgeEdge; theEdge: TopoDS_Edge) {.
    importcpp: "SetEdge2", header: "IntTools_EdgeEdge.hxx".}
proc SetEdge2*(this: var IntTools_EdgeEdge; theEdge: TopoDS_Edge; aT1: Standard_Real;
              aT2: Standard_Real) {.importcpp: "SetEdge2",
                                  header: "IntTools_EdgeEdge.hxx".}
proc SetRange2*(this: var IntTools_EdgeEdge; theRange: IntTools_Range) {.
    importcpp: "SetRange2", header: "IntTools_EdgeEdge.hxx".}
proc SetRange2*(this: var IntTools_EdgeEdge; aT1: Standard_Real; aT2: Standard_Real) {.
    importcpp: "SetRange2", header: "IntTools_EdgeEdge.hxx".}
proc SetFuzzyValue*(this: var IntTools_EdgeEdge; theFuzz: Standard_Real) {.
    importcpp: "SetFuzzyValue", header: "IntTools_EdgeEdge.hxx".}
proc Perform*(this: var IntTools_EdgeEdge) {.importcpp: "Perform",
    header: "IntTools_EdgeEdge.hxx".}
proc IsDone*(this: IntTools_EdgeEdge): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "IntTools_EdgeEdge.hxx".}
proc FuzzyValue*(this: IntTools_EdgeEdge): Standard_Real {.noSideEffect,
    importcpp: "FuzzyValue", header: "IntTools_EdgeEdge.hxx".}
proc CommonParts*(this: IntTools_EdgeEdge): IntTools_SequenceOfCommonPrts {.
    noSideEffect, importcpp: "CommonParts", header: "IntTools_EdgeEdge.hxx".}
proc UseQuickCoincidenceCheck*(this: var IntTools_EdgeEdge; bFlag: Standard_Boolean) {.
    importcpp: "UseQuickCoincidenceCheck", header: "IntTools_EdgeEdge.hxx".}
proc IsCoincidenceCheckedQuickly*(this: var IntTools_EdgeEdge): Standard_Boolean {.
    importcpp: "IsCoincidenceCheckedQuickly", header: "IntTools_EdgeEdge.hxx".}