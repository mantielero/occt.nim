##  Created on: 1993-10-11
##  Created by: Christophe MARION
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Shape,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  HLRBRep_TypeOfResultingEdge

discard "forward decl of HLRBRep_Algo"
discard "forward decl of TopoDS_Shape"
discard "forward decl of HLRBRep_Data"
discard "forward decl of HLRBRep_EdgeData"
type
  HLRBRep_HLRToShape* {.importcpp: "HLRBRep_HLRToShape",
                       header: "HLRBRep_HLRToShape.hxx", bycopy.} = object ## ! Constructs a framework for filtering the
                                                                      ## ! results of the
                                                                      ## HLRBRep_Algo algorithm, A.
                                                                      ## ! Use the extraction filters to obtain the results you want for A.


proc constructHLRBRep_HLRToShape*(A: handle[HLRBRep_Algo]): HLRBRep_HLRToShape {.
    constructor, importcpp: "HLRBRep_HLRToShape(@)",
    header: "HLRBRep_HLRToShape.hxx".}
proc VCompound*(this: var HLRBRep_HLRToShape): TopoDS_Shape {.importcpp: "VCompound",
    header: "HLRBRep_HLRToShape.hxx".}
proc VCompound*(this: var HLRBRep_HLRToShape; S: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "VCompound", header: "HLRBRep_HLRToShape.hxx".}
proc Rg1LineVCompound*(this: var HLRBRep_HLRToShape): TopoDS_Shape {.
    importcpp: "Rg1LineVCompound", header: "HLRBRep_HLRToShape.hxx".}
proc Rg1LineVCompound*(this: var HLRBRep_HLRToShape; S: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "Rg1LineVCompound", header: "HLRBRep_HLRToShape.hxx".}
proc RgNLineVCompound*(this: var HLRBRep_HLRToShape): TopoDS_Shape {.
    importcpp: "RgNLineVCompound", header: "HLRBRep_HLRToShape.hxx".}
proc RgNLineVCompound*(this: var HLRBRep_HLRToShape; S: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "RgNLineVCompound", header: "HLRBRep_HLRToShape.hxx".}
proc OutLineVCompound*(this: var HLRBRep_HLRToShape): TopoDS_Shape {.
    importcpp: "OutLineVCompound", header: "HLRBRep_HLRToShape.hxx".}
proc OutLineVCompound3d*(this: var HLRBRep_HLRToShape): TopoDS_Shape {.
    importcpp: "OutLineVCompound3d", header: "HLRBRep_HLRToShape.hxx".}
proc OutLineVCompound*(this: var HLRBRep_HLRToShape; S: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "OutLineVCompound", header: "HLRBRep_HLRToShape.hxx".}
proc IsoLineVCompound*(this: var HLRBRep_HLRToShape): TopoDS_Shape {.
    importcpp: "IsoLineVCompound", header: "HLRBRep_HLRToShape.hxx".}
proc IsoLineVCompound*(this: var HLRBRep_HLRToShape; S: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "IsoLineVCompound", header: "HLRBRep_HLRToShape.hxx".}
proc HCompound*(this: var HLRBRep_HLRToShape): TopoDS_Shape {.importcpp: "HCompound",
    header: "HLRBRep_HLRToShape.hxx".}
proc HCompound*(this: var HLRBRep_HLRToShape; S: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "HCompound", header: "HLRBRep_HLRToShape.hxx".}
proc Rg1LineHCompound*(this: var HLRBRep_HLRToShape): TopoDS_Shape {.
    importcpp: "Rg1LineHCompound", header: "HLRBRep_HLRToShape.hxx".}
proc Rg1LineHCompound*(this: var HLRBRep_HLRToShape; S: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "Rg1LineHCompound", header: "HLRBRep_HLRToShape.hxx".}
proc RgNLineHCompound*(this: var HLRBRep_HLRToShape): TopoDS_Shape {.
    importcpp: "RgNLineHCompound", header: "HLRBRep_HLRToShape.hxx".}
proc RgNLineHCompound*(this: var HLRBRep_HLRToShape; S: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "RgNLineHCompound", header: "HLRBRep_HLRToShape.hxx".}
proc OutLineHCompound*(this: var HLRBRep_HLRToShape): TopoDS_Shape {.
    importcpp: "OutLineHCompound", header: "HLRBRep_HLRToShape.hxx".}
proc OutLineHCompound*(this: var HLRBRep_HLRToShape; S: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "OutLineHCompound", header: "HLRBRep_HLRToShape.hxx".}
proc IsoLineHCompound*(this: var HLRBRep_HLRToShape): TopoDS_Shape {.
    importcpp: "IsoLineHCompound", header: "HLRBRep_HLRToShape.hxx".}
proc IsoLineHCompound*(this: var HLRBRep_HLRToShape; S: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "IsoLineHCompound", header: "HLRBRep_HLRToShape.hxx".}
proc CompoundOfEdges*(this: var HLRBRep_HLRToShape;
                     `type`: HLRBRep_TypeOfResultingEdge;
                     visible: Standard_Boolean; In3d: Standard_Boolean): TopoDS_Shape {.
    importcpp: "CompoundOfEdges", header: "HLRBRep_HLRToShape.hxx".}
proc CompoundOfEdges*(this: var HLRBRep_HLRToShape; S: TopoDS_Shape;
                     `type`: HLRBRep_TypeOfResultingEdge;
                     visible: Standard_Boolean; In3d: Standard_Boolean): TopoDS_Shape {.
    importcpp: "CompoundOfEdges", header: "HLRBRep_HLRToShape.hxx".}