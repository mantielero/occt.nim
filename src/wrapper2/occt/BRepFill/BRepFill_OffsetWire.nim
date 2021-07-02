##  Created on: 1995-04-19
##  Created by: Yves FRICAUD
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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Face"
discard "forward decl of BRepMAT2d_BisectingLocus"
discard "forward decl of BRepMAT2d_LinkTopoBilo"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Bisector_Bisec"
discard "forward decl of BRepFill_TrimEdgeTool"
type
  BRepFillOffsetWire* {.importcpp: "BRepFill_OffsetWire",
                       header: "BRepFill_OffsetWire.hxx", bycopy.} = object


proc constructBRepFillOffsetWire*(): BRepFillOffsetWire {.constructor,
    importcpp: "BRepFill_OffsetWire(@)", header: "BRepFill_OffsetWire.hxx".}
proc constructBRepFillOffsetWire*(spine: TopoDS_Face;
                                 join: GeomAbsJoinType = geomAbsArc;
                                 isOpenResult: StandardBoolean = standardFalse): BRepFillOffsetWire {.
    constructor, importcpp: "BRepFill_OffsetWire(@)",
    header: "BRepFill_OffsetWire.hxx".}
proc init*(this: var BRepFillOffsetWire; spine: TopoDS_Face;
          join: GeomAbsJoinType = geomAbsArc;
          isOpenResult: StandardBoolean = standardFalse) {.importcpp: "Init",
    header: "BRepFill_OffsetWire.hxx".}
proc perform*(this: var BRepFillOffsetWire; offset: StandardReal;
             alt: StandardReal = 0.0) {.importcpp: "Perform",
                                    header: "BRepFill_OffsetWire.hxx".}
proc performWithBiLo*(this: var BRepFillOffsetWire; wsp: TopoDS_Face;
                     offset: StandardReal; locus: BRepMAT2dBisectingLocus;
                     link: var BRepMAT2dLinkTopoBilo;
                     join: GeomAbsJoinType = geomAbsArc; alt: StandardReal = 0.0) {.
    importcpp: "PerformWithBiLo", header: "BRepFill_OffsetWire.hxx".}
proc isDone*(this: BRepFillOffsetWire): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepFill_OffsetWire.hxx".}
proc spine*(this: BRepFillOffsetWire): TopoDS_Face {.noSideEffect,
    importcpp: "Spine", header: "BRepFill_OffsetWire.hxx".}
proc shape*(this: BRepFillOffsetWire): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "BRepFill_OffsetWire.hxx".}
proc generatedShapes*(this: var BRepFillOffsetWire; spineShape: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "GeneratedShapes", header: "BRepFill_OffsetWire.hxx".}
proc joinType*(this: BRepFillOffsetWire): GeomAbsJoinType {.noSideEffect,
    importcpp: "JoinType", header: "BRepFill_OffsetWire.hxx".}

