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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Face, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../TopoDS/TopoDS_Shape,
  ../GeomAbs/GeomAbs_JoinType, BRepFill_IndexedDataMapOfOrientedShapeListOfShape,
  ../BRepMAT2d/BRepMAT2d_BisectingLocus, ../BRepMAT2d/BRepMAT2d_LinkTopoBilo,
  ../TopTools/TopTools_DataMapOfShapeShape, ../TopTools/TopTools_ListOfShape,
  BRepFill_DataMapOfOrientedShapeListOfShape,
  ../TopTools/TopTools_SequenceOfShape, ../TColgp/TColgp_SequenceOfPnt

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Face"
discard "forward decl of BRepMAT2d_BisectingLocus"
discard "forward decl of BRepMAT2d_LinkTopoBilo"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Bisector_Bisec"
discard "forward decl of BRepFill_TrimEdgeTool"
type
  BRepFill_OffsetWire* {.importcpp: "BRepFill_OffsetWire",
                        header: "BRepFill_OffsetWire.hxx", bycopy.} = object


proc constructBRepFill_OffsetWire*(): BRepFill_OffsetWire {.constructor,
    importcpp: "BRepFill_OffsetWire(@)", header: "BRepFill_OffsetWire.hxx".}
proc constructBRepFill_OffsetWire*(Spine: TopoDS_Face;
                                  Join: GeomAbs_JoinType = GeomAbs_Arc; IsOpenResult: Standard_Boolean = Standard_False): BRepFill_OffsetWire {.
    constructor, importcpp: "BRepFill_OffsetWire(@)",
    header: "BRepFill_OffsetWire.hxx".}
proc Init*(this: var BRepFill_OffsetWire; Spine: TopoDS_Face;
          Join: GeomAbs_JoinType = GeomAbs_Arc;
          IsOpenResult: Standard_Boolean = Standard_False) {.importcpp: "Init",
    header: "BRepFill_OffsetWire.hxx".}
proc Perform*(this: var BRepFill_OffsetWire; Offset: Standard_Real;
             Alt: Standard_Real = 0.0) {.importcpp: "Perform",
                                     header: "BRepFill_OffsetWire.hxx".}
proc PerformWithBiLo*(this: var BRepFill_OffsetWire; WSP: TopoDS_Face;
                     Offset: Standard_Real; Locus: BRepMAT2d_BisectingLocus;
                     Link: var BRepMAT2d_LinkTopoBilo;
                     Join: GeomAbs_JoinType = GeomAbs_Arc; Alt: Standard_Real = 0.0) {.
    importcpp: "PerformWithBiLo", header: "BRepFill_OffsetWire.hxx".}
proc IsDone*(this: BRepFill_OffsetWire): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepFill_OffsetWire.hxx".}
proc Spine*(this: BRepFill_OffsetWire): TopoDS_Face {.noSideEffect,
    importcpp: "Spine", header: "BRepFill_OffsetWire.hxx".}
proc Shape*(this: BRepFill_OffsetWire): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "BRepFill_OffsetWire.hxx".}
proc GeneratedShapes*(this: var BRepFill_OffsetWire; SpineShape: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "GeneratedShapes", header: "BRepFill_OffsetWire.hxx".}
proc JoinType*(this: BRepFill_OffsetWire): GeomAbs_JoinType {.noSideEffect,
    importcpp: "JoinType", header: "BRepFill_OffsetWire.hxx".}