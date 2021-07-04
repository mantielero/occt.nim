##  Created on: 1996-01-30
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../TopoDS/TopoDS_Shape, ../TopAbs/TopAbs_Orientation, LocOpe_Operation,
  ../TopTools/TopTools_IndexedDataMapOfShapeShape,
  ../TopTools/TopTools_DataMapOfShapeShape,
  ../TopTools/TopTools_DataMapOfShapeListOfShape,
  ../TopTools/TopTools_ListOfShape

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
type
  LocOpe_Gluer* {.importcpp: "LocOpe_Gluer", header: "LocOpe_Gluer.hxx", bycopy.} = object


proc constructLocOpe_Gluer*(): LocOpe_Gluer {.constructor,
    importcpp: "LocOpe_Gluer(@)", header: "LocOpe_Gluer.hxx".}
proc constructLocOpe_Gluer*(Sbase: TopoDS_Shape; Snew: TopoDS_Shape): LocOpe_Gluer {.
    constructor, importcpp: "LocOpe_Gluer(@)", header: "LocOpe_Gluer.hxx".}
proc Init*(this: var LocOpe_Gluer; Sbase: TopoDS_Shape; Snew: TopoDS_Shape) {.
    importcpp: "Init", header: "LocOpe_Gluer.hxx".}
proc Bind*(this: var LocOpe_Gluer; Fnew: TopoDS_Face; Fbase: TopoDS_Face) {.
    importcpp: "Bind", header: "LocOpe_Gluer.hxx".}
proc Bind*(this: var LocOpe_Gluer; Enew: TopoDS_Edge; Ebase: TopoDS_Edge) {.
    importcpp: "Bind", header: "LocOpe_Gluer.hxx".}
proc OpeType*(this: LocOpe_Gluer): LocOpe_Operation {.noSideEffect,
    importcpp: "OpeType", header: "LocOpe_Gluer.hxx".}
proc Perform*(this: var LocOpe_Gluer) {.importcpp: "Perform",
                                    header: "LocOpe_Gluer.hxx".}
proc IsDone*(this: LocOpe_Gluer): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "LocOpe_Gluer.hxx".}
proc ResultingShape*(this: LocOpe_Gluer): TopoDS_Shape {.noSideEffect,
    importcpp: "ResultingShape", header: "LocOpe_Gluer.hxx".}
proc DescendantFaces*(this: LocOpe_Gluer; F: TopoDS_Face): TopTools_ListOfShape {.
    noSideEffect, importcpp: "DescendantFaces", header: "LocOpe_Gluer.hxx".}
proc BasisShape*(this: LocOpe_Gluer): TopoDS_Shape {.noSideEffect,
    importcpp: "BasisShape", header: "LocOpe_Gluer.hxx".}
proc GluedShape*(this: LocOpe_Gluer): TopoDS_Shape {.noSideEffect,
    importcpp: "GluedShape", header: "LocOpe_Gluer.hxx".}
proc Edges*(this: LocOpe_Gluer): TopTools_ListOfShape {.noSideEffect,
    importcpp: "Edges", header: "LocOpe_Gluer.hxx".}
proc TgtEdges*(this: LocOpe_Gluer): TopTools_ListOfShape {.noSideEffect,
    importcpp: "TgtEdges", header: "LocOpe_Gluer.hxx".}