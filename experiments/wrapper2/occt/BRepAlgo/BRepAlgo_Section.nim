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

discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Pln"
discard "forward decl of Geom_Surface"
type
  BRepAlgoSection* {.importcpp: "BRepAlgo_Section", header: "BRepAlgo_Section.hxx",
                    bycopy.} = object of BRepAlgoBooleanOperation


proc `new`*(this: var BRepAlgoSection; theSize: csize_t): pointer {.
    importcpp: "BRepAlgo_Section::operator new", header: "BRepAlgo_Section.hxx".}
proc `delete`*(this: var BRepAlgoSection; theAddress: pointer) {.
    importcpp: "BRepAlgo_Section::operator delete", header: "BRepAlgo_Section.hxx".}
proc `new[]`*(this: var BRepAlgoSection; theSize: csize_t): pointer {.
    importcpp: "BRepAlgo_Section::operator new[]", header: "BRepAlgo_Section.hxx".}
proc `delete[]`*(this: var BRepAlgoSection; theAddress: pointer) {.
    importcpp: "BRepAlgo_Section::operator delete[]",
    header: "BRepAlgo_Section.hxx".}
proc `new`*(this: var BRepAlgoSection; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepAlgo_Section::operator new", header: "BRepAlgo_Section.hxx".}
proc `delete`*(this: var BRepAlgoSection; a2: pointer; a3: pointer) {.
    importcpp: "BRepAlgo_Section::operator delete", header: "BRepAlgo_Section.hxx".}
proc constructBRepAlgoSection*(sh1: TopoDS_Shape; sh2: TopoDS_Shape;
                              performNow: StandardBoolean = true): BRepAlgoSection {.
    constructor, importcpp: "BRepAlgo_Section(@)", header: "BRepAlgo_Section.hxx".}
proc constructBRepAlgoSection*(sh: TopoDS_Shape; pl: Pln;
                              performNow: StandardBoolean = true): BRepAlgoSection {.
    constructor, importcpp: "BRepAlgo_Section(@)", header: "BRepAlgo_Section.hxx".}
proc constructBRepAlgoSection*(sh: TopoDS_Shape; sf: Handle[GeomSurface];
                              performNow: StandardBoolean = true): BRepAlgoSection {.
    constructor, importcpp: "BRepAlgo_Section(@)", header: "BRepAlgo_Section.hxx".}
proc constructBRepAlgoSection*(sf: Handle[GeomSurface]; sh: TopoDS_Shape;
                              performNow: StandardBoolean = true): BRepAlgoSection {.
    constructor, importcpp: "BRepAlgo_Section(@)", header: "BRepAlgo_Section.hxx".}
proc constructBRepAlgoSection*(sf1: Handle[GeomSurface]; sf2: Handle[GeomSurface];
                              performNow: StandardBoolean = true): BRepAlgoSection {.
    constructor, importcpp: "BRepAlgo_Section(@)", header: "BRepAlgo_Section.hxx".}
proc init1*(this: var BRepAlgoSection; s1: TopoDS_Shape) {.importcpp: "Init1",
    header: "BRepAlgo_Section.hxx".}
proc init1*(this: var BRepAlgoSection; pl: Pln) {.importcpp: "Init1",
    header: "BRepAlgo_Section.hxx".}
proc init1*(this: var BRepAlgoSection; sf: Handle[GeomSurface]) {.importcpp: "Init1",
    header: "BRepAlgo_Section.hxx".}
proc init2*(this: var BRepAlgoSection; s2: TopoDS_Shape) {.importcpp: "Init2",
    header: "BRepAlgo_Section.hxx".}
proc init2*(this: var BRepAlgoSection; pl: Pln) {.importcpp: "Init2",
    header: "BRepAlgo_Section.hxx".}
proc init2*(this: var BRepAlgoSection; sf: Handle[GeomSurface]) {.importcpp: "Init2",
    header: "BRepAlgo_Section.hxx".}
proc approximation*(this: var BRepAlgoSection; b: StandardBoolean) {.
    importcpp: "Approximation", header: "BRepAlgo_Section.hxx".}
proc computePCurveOn1*(this: var BRepAlgoSection; b: StandardBoolean) {.
    importcpp: "ComputePCurveOn1", header: "BRepAlgo_Section.hxx".}
proc computePCurveOn2*(this: var BRepAlgoSection; b: StandardBoolean) {.
    importcpp: "ComputePCurveOn2", header: "BRepAlgo_Section.hxx".}
proc build*(this: var BRepAlgoSection) {.importcpp: "Build",
                                     header: "BRepAlgo_Section.hxx".}
proc hasAncestorFaceOn1*(this: BRepAlgoSection; e: TopoDS_Shape; f: var TopoDS_Shape): StandardBoolean {.
    noSideEffect, importcpp: "HasAncestorFaceOn1", header: "BRepAlgo_Section.hxx".}
proc hasAncestorFaceOn2*(this: BRepAlgoSection; e: TopoDS_Shape; f: var TopoDS_Shape): StandardBoolean {.
    noSideEffect, importcpp: "HasAncestorFaceOn2", header: "BRepAlgo_Section.hxx".}