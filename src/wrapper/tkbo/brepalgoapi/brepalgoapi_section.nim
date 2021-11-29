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


proc newBRepAlgoAPI_Section*(): BRepAlgoAPI_Section {.cdecl, constructor,
    importcpp: "BRepAlgoAPI_Section(@)", header: "BRepAlgoAPI_Section.hxx".}
proc destroyBRepAlgoAPI_Section*(this: var BRepAlgoAPI_Section) {.cdecl,
    importcpp: "#.~BRepAlgoAPI_Section()", header: "BRepAlgoAPI_Section.hxx".}
proc newBRepAlgoAPI_Section*(pf: BOPAlgoPaveFiller): BRepAlgoAPI_Section {.cdecl,
    constructor, importcpp: "BRepAlgoAPI_Section(@)", header: "BRepAlgoAPI_Section.hxx".}
proc newBRepAlgoAPI_Section*(s1: TopoDS_Shape; s2: TopoDS_Shape;
                            performNow: bool = true): BRepAlgoAPI_Section {.cdecl,
    constructor, importcpp: "BRepAlgoAPI_Section(@)", header: "BRepAlgoAPI_Section.hxx".}
proc newBRepAlgoAPI_Section*(s1: TopoDS_Shape; s2: TopoDS_Shape;
                            aDSF: BOPAlgoPaveFiller; performNow: bool = true): BRepAlgoAPI_Section {.
    cdecl, constructor, importcpp: "BRepAlgoAPI_Section(@)", header: "BRepAlgoAPI_Section.hxx".}
proc newBRepAlgoAPI_Section*(s1: TopoDS_Shape; pl: Pln; performNow: bool = true): BRepAlgoAPI_Section {.
    cdecl, constructor, importcpp: "BRepAlgoAPI_Section(@)", header: "BRepAlgoAPI_Section.hxx".}
proc newBRepAlgoAPI_Section*(s1: TopoDS_Shape; sf: Handle[GeomSurface];
                            performNow: bool = true): BRepAlgoAPI_Section {.cdecl,
    constructor, importcpp: "BRepAlgoAPI_Section(@)", header: "BRepAlgoAPI_Section.hxx".}
proc newBRepAlgoAPI_Section*(sf: Handle[GeomSurface]; s2: TopoDS_Shape;
                            performNow: bool = true): BRepAlgoAPI_Section {.cdecl,
    constructor, importcpp: "BRepAlgoAPI_Section(@)", header: "BRepAlgoAPI_Section.hxx".}
proc newBRepAlgoAPI_Section*(sf1: Handle[GeomSurface]; sf2: Handle[GeomSurface];
                            performNow: bool = true): BRepAlgoAPI_Section {.cdecl,
    constructor, importcpp: "BRepAlgoAPI_Section(@)", header: "BRepAlgoAPI_Section.hxx".}
proc init1*(this: var BRepAlgoAPI_Section; s1: TopoDS_Shape) {.cdecl,
    importcpp: "Init1", header: "BRepAlgoAPI_Section.hxx".}
proc init1*(this: var BRepAlgoAPI_Section; pl: Pln) {.cdecl, importcpp: "Init1",
    header: "BRepAlgoAPI_Section.hxx".}
proc init1*(this: var BRepAlgoAPI_Section; sf: Handle[GeomSurface]) {.cdecl,
    importcpp: "Init1", header: "BRepAlgoAPI_Section.hxx".}
proc init2*(this: var BRepAlgoAPI_Section; s2: TopoDS_Shape) {.cdecl,
    importcpp: "Init2", header: "BRepAlgoAPI_Section.hxx".}
proc init2*(this: var BRepAlgoAPI_Section; pl: Pln) {.cdecl, importcpp: "Init2",
    header: "BRepAlgoAPI_Section.hxx".}
proc init2*(this: var BRepAlgoAPI_Section; sf: Handle[GeomSurface]) {.cdecl,
    importcpp: "Init2", header: "BRepAlgoAPI_Section.hxx".}
proc approximation*(this: var BRepAlgoAPI_Section; b: bool) {.cdecl,
    importcpp: "Approximation", header: "BRepAlgoAPI_Section.hxx".}
proc computePCurveOn1*(this: var BRepAlgoAPI_Section; b: bool) {.cdecl,
    importcpp: "ComputePCurveOn1", header: "BRepAlgoAPI_Section.hxx".}
proc computePCurveOn2*(this: var BRepAlgoAPI_Section; b: bool) {.cdecl,
    importcpp: "ComputePCurveOn2", header: "BRepAlgoAPI_Section.hxx".}
proc build*(this: var BRepAlgoAPI_Section) {.cdecl, importcpp: "Build", header: "BRepAlgoAPI_Section.hxx".}
proc hasAncestorFaceOn1*(this: BRepAlgoAPI_Section; e: TopoDS_Shape;
                        f: var TopoDS_Shape): bool {.noSideEffect, cdecl,
    importcpp: "HasAncestorFaceOn1", header: "BRepAlgoAPI_Section.hxx".}
proc hasAncestorFaceOn2*(this: BRepAlgoAPI_Section; e: TopoDS_Shape;
                        f: var TopoDS_Shape): bool {.noSideEffect, cdecl,
    importcpp: "HasAncestorFaceOn2", header: "BRepAlgoAPI_Section.hxx".}