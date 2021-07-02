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
  LocOpeSplitDrafts* {.importcpp: "LocOpe_SplitDrafts",
                      header: "LocOpe_SplitDrafts.hxx", bycopy.} = object ## ! Empty
                                                                     ## constructor.


proc constructLocOpeSplitDrafts*(): LocOpeSplitDrafts {.constructor,
    importcpp: "LocOpe_SplitDrafts(@)", header: "LocOpe_SplitDrafts.hxx".}
proc constructLocOpeSplitDrafts*(s: TopoDS_Shape): LocOpeSplitDrafts {.constructor,
    importcpp: "LocOpe_SplitDrafts(@)", header: "LocOpe_SplitDrafts.hxx".}
proc init*(this: var LocOpeSplitDrafts; s: TopoDS_Shape) {.importcpp: "Init",
    header: "LocOpe_SplitDrafts.hxx".}
proc perform*(this: var LocOpeSplitDrafts; f: TopoDS_Face; w: TopoDS_Wire;
             extractg: GpDir; nPlg: GpPln; angleg: StandardReal; extractd: GpDir;
             nPld: GpPln; angled: StandardReal;
             modifyLeft: StandardBoolean = standardTrue;
             modifyRight: StandardBoolean = standardTrue) {.importcpp: "Perform",
    header: "LocOpe_SplitDrafts.hxx".}
proc perform*(this: var LocOpeSplitDrafts; f: TopoDS_Face; w: TopoDS_Wire;
             extract: GpDir; nPl: GpPln; angle: StandardReal) {.importcpp: "Perform",
    header: "LocOpe_SplitDrafts.hxx".}
proc isDone*(this: LocOpeSplitDrafts): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "LocOpe_SplitDrafts.hxx".}
proc originalShape*(this: LocOpeSplitDrafts): TopoDS_Shape {.noSideEffect,
    importcpp: "OriginalShape", header: "LocOpe_SplitDrafts.hxx".}
proc shape*(this: LocOpeSplitDrafts): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "LocOpe_SplitDrafts.hxx".}
proc shapesFromShape*(this: LocOpeSplitDrafts; s: TopoDS_Shape): TopToolsListOfShape {.
    noSideEffect, importcpp: "ShapesFromShape", header: "LocOpe_SplitDrafts.hxx".}

