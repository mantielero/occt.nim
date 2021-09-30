##  Created on: 1995-12-08
##  Created by: Jean Yves LEBEY
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

discard "forward decl of TopOpeBRepDS_DataStructure"
discard "forward decl of TopOpeBRepDS_Curve"
type
  TopOpeBRepDS_CurveExplorer* {.importcpp: "TopOpeBRepDS_CurveExplorer",
                               header: "TopOpeBRepDS_CurveExplorer.hxx", bycopy.} = object


proc `new`*(this: var TopOpeBRepDS_CurveExplorer; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepDS_CurveExplorer::operator new",
    header: "TopOpeBRepDS_CurveExplorer.hxx".}
proc `delete`*(this: var TopOpeBRepDS_CurveExplorer; theAddress: pointer) {.
    importcpp: "TopOpeBRepDS_CurveExplorer::operator delete",
    header: "TopOpeBRepDS_CurveExplorer.hxx".}
proc `new[]`*(this: var TopOpeBRepDS_CurveExplorer; theSize: csize_t): pointer {.
    importcpp: "TopOpeBRepDS_CurveExplorer::operator new[]",
    header: "TopOpeBRepDS_CurveExplorer.hxx".}
proc `delete[]`*(this: var TopOpeBRepDS_CurveExplorer; theAddress: pointer) {.
    importcpp: "TopOpeBRepDS_CurveExplorer::operator delete[]",
    header: "TopOpeBRepDS_CurveExplorer.hxx".}
proc `new`*(this: var TopOpeBRepDS_CurveExplorer; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TopOpeBRepDS_CurveExplorer::operator new",
    header: "TopOpeBRepDS_CurveExplorer.hxx".}
proc `delete`*(this: var TopOpeBRepDS_CurveExplorer; a2: pointer; a3: pointer) {.
    importcpp: "TopOpeBRepDS_CurveExplorer::operator delete",
    header: "TopOpeBRepDS_CurveExplorer.hxx".}
proc constructTopOpeBRepDS_CurveExplorer*(): TopOpeBRepDS_CurveExplorer {.
    constructor, importcpp: "TopOpeBRepDS_CurveExplorer(@)",
    header: "TopOpeBRepDS_CurveExplorer.hxx".}
proc constructTopOpeBRepDS_CurveExplorer*(ds: TopOpeBRepDS_DataStructure;
    findOnlyKeep: StandardBoolean = true): TopOpeBRepDS_CurveExplorer {.constructor,
    importcpp: "TopOpeBRepDS_CurveExplorer(@)",
    header: "TopOpeBRepDS_CurveExplorer.hxx".}
proc init*(this: var TopOpeBRepDS_CurveExplorer; ds: TopOpeBRepDS_DataStructure;
          findOnlyKeep: StandardBoolean = true) {.importcpp: "Init",
    header: "TopOpeBRepDS_CurveExplorer.hxx".}
proc more*(this: TopOpeBRepDS_CurveExplorer): StandardBoolean {.noSideEffect,
    importcpp: "More", header: "TopOpeBRepDS_CurveExplorer.hxx".}
proc next*(this: var TopOpeBRepDS_CurveExplorer) {.importcpp: "Next",
    header: "TopOpeBRepDS_CurveExplorer.hxx".}
proc curve*(this: TopOpeBRepDS_CurveExplorer): TopOpeBRepDS_Curve {.noSideEffect,
    importcpp: "Curve", header: "TopOpeBRepDS_CurveExplorer.hxx".}
proc isCurve*(this: TopOpeBRepDS_CurveExplorer; i: int): StandardBoolean {.
    noSideEffect, importcpp: "IsCurve", header: "TopOpeBRepDS_CurveExplorer.hxx".}
proc isCurveKeep*(this: TopOpeBRepDS_CurveExplorer; i: int): StandardBoolean {.
    noSideEffect, importcpp: "IsCurveKeep",
    header: "TopOpeBRepDS_CurveExplorer.hxx".}
proc curve*(this: TopOpeBRepDS_CurveExplorer; i: int): TopOpeBRepDS_Curve {.
    noSideEffect, importcpp: "Curve", header: "TopOpeBRepDS_CurveExplorer.hxx".}
proc nbCurve*(this: var TopOpeBRepDS_CurveExplorer): int {.importcpp: "NbCurve",
    header: "TopOpeBRepDS_CurveExplorer.hxx".}
proc index*(this: TopOpeBRepDS_CurveExplorer): int {.noSideEffect,
    importcpp: "Index", header: "TopOpeBRepDS_CurveExplorer.hxx".}