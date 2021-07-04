##  Created on: 1996-10-02
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
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Shape,
  ../TopTools/TopTools_DataMapOfShapeListOfShape, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../TopTools/TopTools_ListOfShape

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_NullObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Wire"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Pln"
type
  LocOpe_SplitDrafts* {.importcpp: "LocOpe_SplitDrafts",
                       header: "LocOpe_SplitDrafts.hxx", bycopy.} = object ## ! Empty
                                                                      ## constructor.


proc constructLocOpe_SplitDrafts*(): LocOpe_SplitDrafts {.constructor,
    importcpp: "LocOpe_SplitDrafts(@)", header: "LocOpe_SplitDrafts.hxx".}
proc constructLocOpe_SplitDrafts*(S: TopoDS_Shape): LocOpe_SplitDrafts {.
    constructor, importcpp: "LocOpe_SplitDrafts(@)",
    header: "LocOpe_SplitDrafts.hxx".}
proc Init*(this: var LocOpe_SplitDrafts; S: TopoDS_Shape) {.importcpp: "Init",
    header: "LocOpe_SplitDrafts.hxx".}
proc Perform*(this: var LocOpe_SplitDrafts; F: TopoDS_Face; W: TopoDS_Wire;
             Extractg: gp_Dir; NPlg: gp_Pln; Angleg: Standard_Real; Extractd: gp_Dir;
             NPld: gp_Pln; Angled: Standard_Real;
             ModifyLeft: Standard_Boolean = Standard_True;
             ModifyRight: Standard_Boolean = Standard_True) {.importcpp: "Perform",
    header: "LocOpe_SplitDrafts.hxx".}
proc Perform*(this: var LocOpe_SplitDrafts; F: TopoDS_Face; W: TopoDS_Wire;
             Extract: gp_Dir; NPl: gp_Pln; Angle: Standard_Real) {.
    importcpp: "Perform", header: "LocOpe_SplitDrafts.hxx".}
proc IsDone*(this: LocOpe_SplitDrafts): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "LocOpe_SplitDrafts.hxx".}
proc OriginalShape*(this: LocOpe_SplitDrafts): TopoDS_Shape {.noSideEffect,
    importcpp: "OriginalShape", header: "LocOpe_SplitDrafts.hxx".}
proc Shape*(this: LocOpe_SplitDrafts): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "LocOpe_SplitDrafts.hxx".}
proc ShapesFromShape*(this: LocOpe_SplitDrafts; S: TopoDS_Shape): TopTools_ListOfShape {.
    noSideEffect, importcpp: "ShapesFromShape", header: "LocOpe_SplitDrafts.hxx".}