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

discard "forward decl of HLRBRep_PolyAlgo"
discard "forward decl of TopoDS_Shape"
type
  HLRBRepPolyHLRToShape* {.importcpp: "HLRBRep_PolyHLRToShape",
                          header: "HLRBRep_PolyHLRToShape.hxx", bycopy.} = object ## !
                                                                             ## Constructs a
                                                                             ## framework for
                                                                             ## filtering the
                                                                             ## results
                                                                             ## ! of the
                                                                             ## HLRBRep_Algo
                                                                             ## algorithm, A.
                                                                             ## ! Use the
                                                                             ## extraction
                                                                             ## filters to
                                                                             ## obtain the
                                                                             ## results you
                                                                             ## want for A.


proc constructHLRBRepPolyHLRToShape*(): HLRBRepPolyHLRToShape {.constructor,
    importcpp: "HLRBRep_PolyHLRToShape(@)", header: "HLRBRep_PolyHLRToShape.hxx".}
proc update*(this: var HLRBRepPolyHLRToShape; a: Handle[HLRBRepPolyAlgo]) {.
    importcpp: "Update", header: "HLRBRep_PolyHLRToShape.hxx".}
proc show*(this: var HLRBRepPolyHLRToShape) {.importcpp: "Show",
    header: "HLRBRep_PolyHLRToShape.hxx".}
proc hide*(this: var HLRBRepPolyHLRToShape) {.importcpp: "Hide",
    header: "HLRBRep_PolyHLRToShape.hxx".}
proc vCompound*(this: var HLRBRepPolyHLRToShape): TopoDS_Shape {.
    importcpp: "VCompound", header: "HLRBRep_PolyHLRToShape.hxx".}
proc vCompound*(this: var HLRBRepPolyHLRToShape; s: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "VCompound", header: "HLRBRep_PolyHLRToShape.hxx".}
proc rg1LineVCompound*(this: var HLRBRepPolyHLRToShape): TopoDS_Shape {.
    importcpp: "Rg1LineVCompound", header: "HLRBRep_PolyHLRToShape.hxx".}
proc rg1LineVCompound*(this: var HLRBRepPolyHLRToShape; s: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "Rg1LineVCompound", header: "HLRBRep_PolyHLRToShape.hxx".}
proc rgNLineVCompound*(this: var HLRBRepPolyHLRToShape): TopoDS_Shape {.
    importcpp: "RgNLineVCompound", header: "HLRBRep_PolyHLRToShape.hxx".}
proc rgNLineVCompound*(this: var HLRBRepPolyHLRToShape; s: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "RgNLineVCompound", header: "HLRBRep_PolyHLRToShape.hxx".}
proc outLineVCompound*(this: var HLRBRepPolyHLRToShape): TopoDS_Shape {.
    importcpp: "OutLineVCompound", header: "HLRBRep_PolyHLRToShape.hxx".}
proc outLineVCompound*(this: var HLRBRepPolyHLRToShape; s: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "OutLineVCompound", header: "HLRBRep_PolyHLRToShape.hxx".}
proc hCompound*(this: var HLRBRepPolyHLRToShape): TopoDS_Shape {.
    importcpp: "HCompound", header: "HLRBRep_PolyHLRToShape.hxx".}
proc hCompound*(this: var HLRBRepPolyHLRToShape; s: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "HCompound", header: "HLRBRep_PolyHLRToShape.hxx".}
proc rg1LineHCompound*(this: var HLRBRepPolyHLRToShape): TopoDS_Shape {.
    importcpp: "Rg1LineHCompound", header: "HLRBRep_PolyHLRToShape.hxx".}
proc rg1LineHCompound*(this: var HLRBRepPolyHLRToShape; s: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "Rg1LineHCompound", header: "HLRBRep_PolyHLRToShape.hxx".}
proc rgNLineHCompound*(this: var HLRBRepPolyHLRToShape): TopoDS_Shape {.
    importcpp: "RgNLineHCompound", header: "HLRBRep_PolyHLRToShape.hxx".}
proc rgNLineHCompound*(this: var HLRBRepPolyHLRToShape; s: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "RgNLineHCompound", header: "HLRBRep_PolyHLRToShape.hxx".}
proc outLineHCompound*(this: var HLRBRepPolyHLRToShape): TopoDS_Shape {.
    importcpp: "OutLineHCompound", header: "HLRBRep_PolyHLRToShape.hxx".}
proc outLineHCompound*(this: var HLRBRepPolyHLRToShape; s: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "OutLineHCompound", header: "HLRBRep_PolyHLRToShape.hxx".}
