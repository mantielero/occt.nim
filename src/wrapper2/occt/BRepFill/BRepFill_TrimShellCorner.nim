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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, BRepFill_TransitionStyle, ../gp/gp_Ax2,
  ../TopoDS/TopoDS_Shape, ../TopoDS/TopoDS_Wire, ../TopoDS/TopoDS_Face,
  ../TopTools/TopTools_HArray2OfShape, ../TopTools/TopTools_HArray1OfShape,
  ../Standard/Standard_Boolean, ../TopTools/TopTools_DataMapOfShapeListOfShape,
  ../TopTools/TopTools_ListOfShape, ../BOPDS/BOPDS_PDS

discard "forward decl of gp_Ax2"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Shape"
type
  BRepFill_TrimShellCorner* {.importcpp: "BRepFill_TrimShellCorner",
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


proc constructBRepFill_TrimShellCorner*(theFaces: handle[TopTools_HArray2OfShape];
                                       theTransition: BRepFill_TransitionStyle;
                                       theAxeOfBisPlane: gp_Ax2): BRepFill_TrimShellCorner {.
    constructor, importcpp: "BRepFill_TrimShellCorner(@)",
    header: "BRepFill_TrimShellCorner.hxx".}
proc AddBounds*(this: var BRepFill_TrimShellCorner;
               Bounds: handle[TopTools_HArray2OfShape]) {.importcpp: "AddBounds",
    header: "BRepFill_TrimShellCorner.hxx".}
proc AddUEdges*(this: var BRepFill_TrimShellCorner;
               theUEdges: handle[TopTools_HArray2OfShape]) {.
    importcpp: "AddUEdges", header: "BRepFill_TrimShellCorner.hxx".}
proc AddVEdges*(this: var BRepFill_TrimShellCorner;
               theVEdges: handle[TopTools_HArray2OfShape];
               theIndex: Standard_Integer) {.importcpp: "AddVEdges",
    header: "BRepFill_TrimShellCorner.hxx".}
proc Perform*(this: var BRepFill_TrimShellCorner) {.importcpp: "Perform",
    header: "BRepFill_TrimShellCorner.hxx".}
proc IsDone*(this: BRepFill_TrimShellCorner): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepFill_TrimShellCorner.hxx".}
proc HasSection*(this: BRepFill_TrimShellCorner): Standard_Boolean {.noSideEffect,
    importcpp: "HasSection", header: "BRepFill_TrimShellCorner.hxx".}
proc Modified*(this: var BRepFill_TrimShellCorner; S: TopoDS_Shape;
              theModified: var TopTools_ListOfShape) {.importcpp: "Modified",
    header: "BRepFill_TrimShellCorner.hxx".}