##  Created on: 1997-04-14
##  Created by: Olga PILLOT
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Shape, ../gp/gp_Vec,
  ../Standard/Standard_Boolean, ../TopTools/TopTools_DataMapOfShapeListOfShape,
  ../gp/gp_Pnt, ../TopTools/TopTools_ListOfShape

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
type
  LocOpe_LinearForm* {.importcpp: "LocOpe_LinearForm",
                      header: "LocOpe_LinearForm.hxx", bycopy.} = object


proc constructLocOpe_LinearForm*(): LocOpe_LinearForm {.constructor,
    importcpp: "LocOpe_LinearForm(@)", header: "LocOpe_LinearForm.hxx".}
proc constructLocOpe_LinearForm*(Base: TopoDS_Shape; V: gp_Vec; Pnt1: gp_Pnt;
                                Pnt2: gp_Pnt): LocOpe_LinearForm {.constructor,
    importcpp: "LocOpe_LinearForm(@)", header: "LocOpe_LinearForm.hxx".}
proc constructLocOpe_LinearForm*(Base: TopoDS_Shape; V: gp_Vec; Vectra: gp_Vec;
                                Pnt1: gp_Pnt; Pnt2: gp_Pnt): LocOpe_LinearForm {.
    constructor, importcpp: "LocOpe_LinearForm(@)", header: "LocOpe_LinearForm.hxx".}
proc Perform*(this: var LocOpe_LinearForm; Base: TopoDS_Shape; V: gp_Vec; Pnt1: gp_Pnt;
             Pnt2: gp_Pnt) {.importcpp: "Perform", header: "LocOpe_LinearForm.hxx".}
proc Perform*(this: var LocOpe_LinearForm; Base: TopoDS_Shape; V: gp_Vec;
             Vectra: gp_Vec; Pnt1: gp_Pnt; Pnt2: gp_Pnt) {.importcpp: "Perform",
    header: "LocOpe_LinearForm.hxx".}
proc FirstShape*(this: LocOpe_LinearForm): TopoDS_Shape {.noSideEffect,
    importcpp: "FirstShape", header: "LocOpe_LinearForm.hxx".}
proc LastShape*(this: LocOpe_LinearForm): TopoDS_Shape {.noSideEffect,
    importcpp: "LastShape", header: "LocOpe_LinearForm.hxx".}
proc Shape*(this: LocOpe_LinearForm): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "LocOpe_LinearForm.hxx".}
proc Shapes*(this: LocOpe_LinearForm; S: TopoDS_Shape): TopTools_ListOfShape {.
    noSideEffect, importcpp: "Shapes", header: "LocOpe_LinearForm.hxx".}