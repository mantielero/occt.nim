##  Created on: 1995-09-21
##  Created by: Remi LEQUETTE
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

discard "forward decl of gp_Trsf"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Color"
type
  DBRepHideData* {.importcpp: "DBRep_HideData", header: "DBRep_HideData.hxx", bycopy.} = object


proc constructDBRepHideData*(): DBRepHideData {.constructor,
    importcpp: "DBRep_HideData(@)", header: "DBRep_HideData.hxx".}
proc set*(this: var DBRepHideData; viewId: int; tProj: Trsf; focal: float;
         s: TopoDS_Shape; ang: float) {.importcpp: "Set", header: "DBRep_HideData.hxx".}
proc viewId*(this: DBRepHideData): int {.noSideEffect, importcpp: "ViewId",
                                     header: "DBRep_HideData.hxx".}
proc angle*(this: DBRepHideData): float {.noSideEffect, importcpp: "Angle",
                                      header: "DBRep_HideData.hxx".}
proc isSame*(this: DBRepHideData; tProj: Trsf; focla: float): bool {.noSideEffect,
    importcpp: "IsSame", header: "DBRep_HideData.hxx".}
proc drawOn*(this: var DBRepHideData; d: var DrawDisplay; withRg1: bool; withRgN: bool;
            withHid: bool; visCol: DrawColor; hidCol: DrawColor) {.
    importcpp: "DrawOn", header: "DBRep_HideData.hxx".}
proc lastPick*(this: DBRepHideData): TopoDS_Shape {.noSideEffect,
    importcpp: "LastPick", header: "DBRep_HideData.hxx".}
