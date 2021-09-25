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

discard "forward decl of HLRBRep_Algo"
discard "forward decl of TopoDS_Shape"
discard "forward decl of HLRBRep_Data"
discard "forward decl of HLRBRep_EdgeData"
type
  HLRBRepHLRToShape* {.importcpp: "HLRBRep_HLRToShape",
                      header: "HLRBRep_HLRToShape.hxx", bycopy.} = object ## ! Constructs a framework for filtering the
                                                                     ## ! results of the
                                                                     ## HLRBRep_Algo algorithm, A.
                                                                     ## ! Use the extraction filters to obtain the results you want for A.


proc constructHLRBRepHLRToShape*(a: Handle[HLRBRepAlgo]): HLRBRepHLRToShape {.
    constructor, importcpp: "HLRBRep_HLRToShape(@)",
    header: "HLRBRep_HLRToShape.hxx".}
proc vCompound*(this: var HLRBRepHLRToShape): TopoDS_Shape {.importcpp: "VCompound",
    header: "HLRBRep_HLRToShape.hxx".}
proc vCompound*(this: var HLRBRepHLRToShape; s: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "VCompound", header: "HLRBRep_HLRToShape.hxx".}
proc rg1LineVCompound*(this: var HLRBRepHLRToShape): TopoDS_Shape {.
    importcpp: "Rg1LineVCompound", header: "HLRBRep_HLRToShape.hxx".}
proc rg1LineVCompound*(this: var HLRBRepHLRToShape; s: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "Rg1LineVCompound", header: "HLRBRep_HLRToShape.hxx".}
proc rgNLineVCompound*(this: var HLRBRepHLRToShape): TopoDS_Shape {.
    importcpp: "RgNLineVCompound", header: "HLRBRep_HLRToShape.hxx".}
proc rgNLineVCompound*(this: var HLRBRepHLRToShape; s: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "RgNLineVCompound", header: "HLRBRep_HLRToShape.hxx".}
proc outLineVCompound*(this: var HLRBRepHLRToShape): TopoDS_Shape {.
    importcpp: "OutLineVCompound", header: "HLRBRep_HLRToShape.hxx".}
proc outLineVCompound3d*(this: var HLRBRepHLRToShape): TopoDS_Shape {.
    importcpp: "OutLineVCompound3d", header: "HLRBRep_HLRToShape.hxx".}
proc outLineVCompound*(this: var HLRBRepHLRToShape; s: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "OutLineVCompound", header: "HLRBRep_HLRToShape.hxx".}
proc isoLineVCompound*(this: var HLRBRepHLRToShape): TopoDS_Shape {.
    importcpp: "IsoLineVCompound", header: "HLRBRep_HLRToShape.hxx".}
proc isoLineVCompound*(this: var HLRBRepHLRToShape; s: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "IsoLineVCompound", header: "HLRBRep_HLRToShape.hxx".}
proc hCompound*(this: var HLRBRepHLRToShape): TopoDS_Shape {.importcpp: "HCompound",
    header: "HLRBRep_HLRToShape.hxx".}
proc hCompound*(this: var HLRBRepHLRToShape; s: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "HCompound", header: "HLRBRep_HLRToShape.hxx".}
proc rg1LineHCompound*(this: var HLRBRepHLRToShape): TopoDS_Shape {.
    importcpp: "Rg1LineHCompound", header: "HLRBRep_HLRToShape.hxx".}
proc rg1LineHCompound*(this: var HLRBRepHLRToShape; s: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "Rg1LineHCompound", header: "HLRBRep_HLRToShape.hxx".}
proc rgNLineHCompound*(this: var HLRBRepHLRToShape): TopoDS_Shape {.
    importcpp: "RgNLineHCompound", header: "HLRBRep_HLRToShape.hxx".}
proc rgNLineHCompound*(this: var HLRBRepHLRToShape; s: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "RgNLineHCompound", header: "HLRBRep_HLRToShape.hxx".}
proc outLineHCompound*(this: var HLRBRepHLRToShape): TopoDS_Shape {.
    importcpp: "OutLineHCompound", header: "HLRBRep_HLRToShape.hxx".}
proc outLineHCompound*(this: var HLRBRepHLRToShape; s: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "OutLineHCompound", header: "HLRBRep_HLRToShape.hxx".}
proc isoLineHCompound*(this: var HLRBRepHLRToShape): TopoDS_Shape {.
    importcpp: "IsoLineHCompound", header: "HLRBRep_HLRToShape.hxx".}
proc isoLineHCompound*(this: var HLRBRepHLRToShape; s: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "IsoLineHCompound", header: "HLRBRep_HLRToShape.hxx".}
proc compoundOfEdges*(this: var HLRBRepHLRToShape;
                     `type`: HLRBRepTypeOfResultingEdge; visible: bool; in3d: bool): TopoDS_Shape {.
    importcpp: "CompoundOfEdges", header: "HLRBRep_HLRToShape.hxx".}
proc compoundOfEdges*(this: var HLRBRepHLRToShape; s: TopoDS_Shape;
                     `type`: HLRBRepTypeOfResultingEdge; visible: bool; in3d: bool): TopoDS_Shape {.
    importcpp: "CompoundOfEdges", header: "HLRBRep_HLRToShape.hxx".}
