##  Created on: 1995-09-18
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Face"
discard "forward decl of BRepFill_Evolved"
discard "forward decl of TopoDS_Shape"
type
  BRepOffsetAPI_MakeEvolved* {.importcpp: "BRepOffsetAPI_MakeEvolved",
                              header: "BRepOffsetAPI_MakeEvolved.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape


proc `new`*(this: var BRepOffsetAPI_MakeEvolved; theSize: csize_t): pointer {.
    importcpp: "BRepOffsetAPI_MakeEvolved::operator new",
    header: "BRepOffsetAPI_MakeEvolved.hxx".}
proc `delete`*(this: var BRepOffsetAPI_MakeEvolved; theAddress: pointer) {.
    importcpp: "BRepOffsetAPI_MakeEvolved::operator delete",
    header: "BRepOffsetAPI_MakeEvolved.hxx".}
proc `new[]`*(this: var BRepOffsetAPI_MakeEvolved; theSize: csize_t): pointer {.
    importcpp: "BRepOffsetAPI_MakeEvolved::operator new[]",
    header: "BRepOffsetAPI_MakeEvolved.hxx".}
proc `delete[]`*(this: var BRepOffsetAPI_MakeEvolved; theAddress: pointer) {.
    importcpp: "BRepOffsetAPI_MakeEvolved::operator delete[]",
    header: "BRepOffsetAPI_MakeEvolved.hxx".}
proc `new`*(this: var BRepOffsetAPI_MakeEvolved; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepOffsetAPI_MakeEvolved::operator new",
    header: "BRepOffsetAPI_MakeEvolved.hxx".}
proc `delete`*(this: var BRepOffsetAPI_MakeEvolved; a2: pointer; a3: pointer) {.
    importcpp: "BRepOffsetAPI_MakeEvolved::operator delete",
    header: "BRepOffsetAPI_MakeEvolved.hxx".}
proc constructBRepOffsetAPI_MakeEvolved*(): BRepOffsetAPI_MakeEvolved {.
    constructor, importcpp: "BRepOffsetAPI_MakeEvolved(@)",
    header: "BRepOffsetAPI_MakeEvolved.hxx".}
proc constructBRepOffsetAPI_MakeEvolved*(theSpine: TopoDS_Shape;
                                        theProfile: TopoDS_Wire; theJoinType: GeomAbsJoinType = geomAbsArc;
                                        theIsAxeProf: StandardBoolean = true;
                                        theIsSolid: StandardBoolean = false;
    theIsProfOnSpine: StandardBoolean = false; theTol: StandardReal = 0.0000001;
                                        theIsVolume: StandardBoolean = false;
    theRunInParallel: StandardBoolean = false): BRepOffsetAPI_MakeEvolved {.
    constructor, importcpp: "BRepOffsetAPI_MakeEvolved(@)",
    header: "BRepOffsetAPI_MakeEvolved.hxx".}
proc evolved*(this: BRepOffsetAPI_MakeEvolved): BRepFillEvolved {.noSideEffect,
    importcpp: "Evolved", header: "BRepOffsetAPI_MakeEvolved.hxx".}
proc build*(this: var BRepOffsetAPI_MakeEvolved) {.importcpp: "Build",
    header: "BRepOffsetAPI_MakeEvolved.hxx".}
proc generatedShapes*(this: BRepOffsetAPI_MakeEvolved; spineShape: TopoDS_Shape;
                     profShape: TopoDS_Shape): TopToolsListOfShape {.noSideEffect,
    importcpp: "GeneratedShapes", header: "BRepOffsetAPI_MakeEvolved.hxx".}
proc top*(this: BRepOffsetAPI_MakeEvolved): TopoDS_Shape {.noSideEffect,
    importcpp: "Top", header: "BRepOffsetAPI_MakeEvolved.hxx".}
proc bottom*(this: BRepOffsetAPI_MakeEvolved): TopoDS_Shape {.noSideEffect,
    importcpp: "Bottom", header: "BRepOffsetAPI_MakeEvolved.hxx".}