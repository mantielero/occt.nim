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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Address, ../Standard/Standard_Boolean

discard "forward decl of TopOpeBRepDS_DataStructure"
discard "forward decl of TopOpeBRepDS_Curve"
type
  TopOpeBRepDS_CurveExplorer* {.importcpp: "TopOpeBRepDS_CurveExplorer",
                               header: "TopOpeBRepDS_CurveExplorer.hxx", bycopy.} = object


proc constructTopOpeBRepDS_CurveExplorer*(): TopOpeBRepDS_CurveExplorer {.
    constructor, importcpp: "TopOpeBRepDS_CurveExplorer(@)",
    header: "TopOpeBRepDS_CurveExplorer.hxx".}
proc constructTopOpeBRepDS_CurveExplorer*(DS: TopOpeBRepDS_DataStructure;
    FindOnlyKeep: Standard_Boolean = Standard_True): TopOpeBRepDS_CurveExplorer {.
    constructor, importcpp: "TopOpeBRepDS_CurveExplorer(@)",
    header: "TopOpeBRepDS_CurveExplorer.hxx".}
proc Init*(this: var TopOpeBRepDS_CurveExplorer; DS: TopOpeBRepDS_DataStructure;
          FindOnlyKeep: Standard_Boolean = Standard_True) {.importcpp: "Init",
    header: "TopOpeBRepDS_CurveExplorer.hxx".}
proc More*(this: TopOpeBRepDS_CurveExplorer): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "TopOpeBRepDS_CurveExplorer.hxx".}
proc Next*(this: var TopOpeBRepDS_CurveExplorer) {.importcpp: "Next",
    header: "TopOpeBRepDS_CurveExplorer.hxx".}
proc Curve*(this: TopOpeBRepDS_CurveExplorer): TopOpeBRepDS_Curve {.noSideEffect,
    importcpp: "Curve", header: "TopOpeBRepDS_CurveExplorer.hxx".}
proc IsCurve*(this: TopOpeBRepDS_CurveExplorer; I: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCurve", header: "TopOpeBRepDS_CurveExplorer.hxx".}
proc IsCurveKeep*(this: TopOpeBRepDS_CurveExplorer; I: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCurveKeep",
    header: "TopOpeBRepDS_CurveExplorer.hxx".}
proc Curve*(this: TopOpeBRepDS_CurveExplorer; I: Standard_Integer): TopOpeBRepDS_Curve {.
    noSideEffect, importcpp: "Curve", header: "TopOpeBRepDS_CurveExplorer.hxx".}
proc NbCurve*(this: var TopOpeBRepDS_CurveExplorer): Standard_Integer {.
    importcpp: "NbCurve", header: "TopOpeBRepDS_CurveExplorer.hxx".}
proc Index*(this: TopOpeBRepDS_CurveExplorer): Standard_Integer {.noSideEffect,
    importcpp: "Index", header: "TopOpeBRepDS_CurveExplorer.hxx".}