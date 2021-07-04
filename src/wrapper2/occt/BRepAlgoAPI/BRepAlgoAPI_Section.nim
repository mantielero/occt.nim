##  Created on: 1994-02-18
##  Created by: Remi LEQUETTE
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  BRepAlgoAPI_BooleanOperation

discard "forward decl of BOPAlgo_PaveFiller"
discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Pln"
discard "forward decl of Geom_Surface"
type
  BRepAlgoAPI_Section* {.importcpp: "BRepAlgoAPI_Section",
                        header: "BRepAlgoAPI_Section.hxx", bycopy.} = object of BRepAlgoAPI_BooleanOperation ##
                                                                                                      ## !
                                                                                                      ## Empty
                                                                                                      ## constructor


proc constructBRepAlgoAPI_Section*(): BRepAlgoAPI_Section {.constructor,
    importcpp: "BRepAlgoAPI_Section(@)", header: "BRepAlgoAPI_Section.hxx".}
proc destroyBRepAlgoAPI_Section*(this: var BRepAlgoAPI_Section) {.
    importcpp: "#.~BRepAlgoAPI_Section()", header: "BRepAlgoAPI_Section.hxx".}
proc constructBRepAlgoAPI_Section*(PF: BOPAlgo_PaveFiller): BRepAlgoAPI_Section {.
    constructor, importcpp: "BRepAlgoAPI_Section(@)",
    header: "BRepAlgoAPI_Section.hxx".}
proc constructBRepAlgoAPI_Section*(S1: TopoDS_Shape; S2: TopoDS_Shape;
                                  PerformNow: Standard_Boolean = Standard_True): BRepAlgoAPI_Section {.
    constructor, importcpp: "BRepAlgoAPI_Section(@)",
    header: "BRepAlgoAPI_Section.hxx".}
proc constructBRepAlgoAPI_Section*(S1: TopoDS_Shape; S2: TopoDS_Shape;
                                  aDSF: BOPAlgo_PaveFiller;
                                  PerformNow: Standard_Boolean = Standard_True): BRepAlgoAPI_Section {.
    constructor, importcpp: "BRepAlgoAPI_Section(@)",
    header: "BRepAlgoAPI_Section.hxx".}
proc constructBRepAlgoAPI_Section*(S1: TopoDS_Shape; Pl: gp_Pln;
                                  PerformNow: Standard_Boolean = Standard_True): BRepAlgoAPI_Section {.
    constructor, importcpp: "BRepAlgoAPI_Section(@)",
    header: "BRepAlgoAPI_Section.hxx".}
proc constructBRepAlgoAPI_Section*(S1: TopoDS_Shape; Sf: handle[Geom_Surface];
                                  PerformNow: Standard_Boolean = Standard_True): BRepAlgoAPI_Section {.
    constructor, importcpp: "BRepAlgoAPI_Section(@)",
    header: "BRepAlgoAPI_Section.hxx".}
proc constructBRepAlgoAPI_Section*(Sf: handle[Geom_Surface]; S2: TopoDS_Shape;
                                  PerformNow: Standard_Boolean = Standard_True): BRepAlgoAPI_Section {.
    constructor, importcpp: "BRepAlgoAPI_Section(@)",
    header: "BRepAlgoAPI_Section.hxx".}
proc constructBRepAlgoAPI_Section*(Sf1: handle[Geom_Surface];
                                  Sf2: handle[Geom_Surface];
                                  PerformNow: Standard_Boolean = Standard_True): BRepAlgoAPI_Section {.
    constructor, importcpp: "BRepAlgoAPI_Section(@)",
    header: "BRepAlgoAPI_Section.hxx".}
proc Init1*(this: var BRepAlgoAPI_Section; S1: TopoDS_Shape) {.importcpp: "Init1",
    header: "BRepAlgoAPI_Section.hxx".}
proc Init1*(this: var BRepAlgoAPI_Section; Pl: gp_Pln) {.importcpp: "Init1",
    header: "BRepAlgoAPI_Section.hxx".}
proc Init1*(this: var BRepAlgoAPI_Section; Sf: handle[Geom_Surface]) {.
    importcpp: "Init1", header: "BRepAlgoAPI_Section.hxx".}
proc Init2*(this: var BRepAlgoAPI_Section; S2: TopoDS_Shape) {.importcpp: "Init2",
    header: "BRepAlgoAPI_Section.hxx".}
proc Init2*(this: var BRepAlgoAPI_Section; Pl: gp_Pln) {.importcpp: "Init2",
    header: "BRepAlgoAPI_Section.hxx".}
proc Init2*(this: var BRepAlgoAPI_Section; Sf: handle[Geom_Surface]) {.
    importcpp: "Init2", header: "BRepAlgoAPI_Section.hxx".}
proc Approximation*(this: var BRepAlgoAPI_Section; B: Standard_Boolean) {.
    importcpp: "Approximation", header: "BRepAlgoAPI_Section.hxx".}
proc ComputePCurveOn1*(this: var BRepAlgoAPI_Section; B: Standard_Boolean) {.
    importcpp: "ComputePCurveOn1", header: "BRepAlgoAPI_Section.hxx".}
proc ComputePCurveOn2*(this: var BRepAlgoAPI_Section; B: Standard_Boolean) {.
    importcpp: "ComputePCurveOn2", header: "BRepAlgoAPI_Section.hxx".}
proc Build*(this: var BRepAlgoAPI_Section) {.importcpp: "Build",
    header: "BRepAlgoAPI_Section.hxx".}
proc HasAncestorFaceOn1*(this: BRepAlgoAPI_Section; E: TopoDS_Shape;
                        F: var TopoDS_Shape): Standard_Boolean {.noSideEffect,
    importcpp: "HasAncestorFaceOn1", header: "BRepAlgoAPI_Section.hxx".}
proc HasAncestorFaceOn2*(this: BRepAlgoAPI_Section; E: TopoDS_Shape;
                        F: var TopoDS_Shape): Standard_Boolean {.noSideEffect,
    importcpp: "HasAncestorFaceOn2", header: "BRepAlgoAPI_Section.hxx".}