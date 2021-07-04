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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer, ../gp/gp_Trsf,
  ../Standard/Standard_Real, ../HLRBRep/HLRBRep_ListOfBPoint,
  ../TopoDS/TopoDS_Shape, ../Standard/Standard_Boolean

discard "forward decl of gp_Trsf"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Color"
type
  DBRep_HideData* {.importcpp: "DBRep_HideData", header: "DBRep_HideData.hxx", bycopy.} = object


proc constructDBRep_HideData*(): DBRep_HideData {.constructor,
    importcpp: "DBRep_HideData(@)", header: "DBRep_HideData.hxx".}
proc Set*(this: var DBRep_HideData; ViewId: Standard_Integer; TProj: gp_Trsf;
         Focal: Standard_Real; S: TopoDS_Shape; ang: Standard_Real) {.
    importcpp: "Set", header: "DBRep_HideData.hxx".}
proc ViewId*(this: DBRep_HideData): Standard_Integer {.noSideEffect,
    importcpp: "ViewId", header: "DBRep_HideData.hxx".}
proc Angle*(this: DBRep_HideData): Standard_Real {.noSideEffect, importcpp: "Angle",
    header: "DBRep_HideData.hxx".}
proc IsSame*(this: DBRep_HideData; TProj: gp_Trsf; Focla: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsSame", header: "DBRep_HideData.hxx".}
proc DrawOn*(this: var DBRep_HideData; D: var Draw_Display; withRg1: Standard_Boolean;
            withRgN: Standard_Boolean; withHid: Standard_Boolean;
            VisCol: Draw_Color; HidCol: Draw_Color) {.importcpp: "DrawOn",
    header: "DBRep_HideData.hxx".}
proc LastPick*(this: DBRep_HideData): TopoDS_Shape {.noSideEffect,
    importcpp: "LastPick", header: "DBRep_HideData.hxx".}