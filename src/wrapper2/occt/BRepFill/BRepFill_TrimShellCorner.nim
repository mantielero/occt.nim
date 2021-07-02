##  Created on: 2003-10-21
##  Created by: Mikhail KLOKOV
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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

discard "forward decl of gp_Ax2"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Shape"
type
  BRepFillTrimShellCorner* {.importcpp: "BRepFill_TrimShellCorner",
                            header: "BRepFill_TrimShellCorner.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Constructor:
                                                                                 ## takes
                                                                                 ## faces
                                                                                 ## to
                                                                                 ## intersect,
                                                                                 ##
                                                                                 ## !
                                                                                 ## type
                                                                                 ## of
                                                                                 ## transition
                                                                                 ## (it
                                                                                 ## can
                                                                                 ## be
                                                                                 ## RightCorner
                                                                                 ## or
                                                                                 ## RoundCorner)
                                                                                 ##
                                                                                 ## !
                                                                                 ## and
                                                                                 ## axis
                                                                                 ## of
                                                                                 ## bisector
                                                                                 ## plane


proc constructBRepFillTrimShellCorner*(theFaces: Handle[TopToolsHArray2OfShape];
                                      theTransition: BRepFillTransitionStyle;
                                      theAxeOfBisPlane: GpAx2): BRepFillTrimShellCorner {.
    constructor, importcpp: "BRepFill_TrimShellCorner(@)",
    header: "BRepFill_TrimShellCorner.hxx".}
proc addBounds*(this: var BRepFillTrimShellCorner;
               bounds: Handle[TopToolsHArray2OfShape]) {.importcpp: "AddBounds",
    header: "BRepFill_TrimShellCorner.hxx".}
proc addUEdges*(this: var BRepFillTrimShellCorner;
               theUEdges: Handle[TopToolsHArray2OfShape]) {.
    importcpp: "AddUEdges", header: "BRepFill_TrimShellCorner.hxx".}
proc addVEdges*(this: var BRepFillTrimShellCorner;
               theVEdges: Handle[TopToolsHArray2OfShape];
               theIndex: StandardInteger) {.importcpp: "AddVEdges",
    header: "BRepFill_TrimShellCorner.hxx".}
proc perform*(this: var BRepFillTrimShellCorner) {.importcpp: "Perform",
    header: "BRepFill_TrimShellCorner.hxx".}
proc isDone*(this: BRepFillTrimShellCorner): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepFill_TrimShellCorner.hxx".}
proc hasSection*(this: BRepFillTrimShellCorner): StandardBoolean {.noSideEffect,
    importcpp: "HasSection", header: "BRepFill_TrimShellCorner.hxx".}
proc modified*(this: var BRepFillTrimShellCorner; s: TopoDS_Shape;
              theModified: var TopToolsListOfShape) {.importcpp: "Modified",
    header: "BRepFill_TrimShellCorner.hxx".}

