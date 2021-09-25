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

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
type
  LocOpeLinearForm* {.importcpp: "LocOpe_LinearForm",
                     header: "LocOpe_LinearForm.hxx", bycopy.} = object


proc constructLocOpeLinearForm*(): LocOpeLinearForm {.constructor,
    importcpp: "LocOpe_LinearForm(@)", header: "LocOpe_LinearForm.hxx".}
proc constructLocOpeLinearForm*(base: TopoDS_Shape; v: Vec; pnt1: Pnt; pnt2: Pnt): LocOpeLinearForm {.
    constructor, importcpp: "LocOpe_LinearForm(@)", header: "LocOpe_LinearForm.hxx".}
proc constructLocOpeLinearForm*(base: TopoDS_Shape; v: Vec; vectra: Vec; pnt1: Pnt;
                               pnt2: Pnt): LocOpeLinearForm {.constructor,
    importcpp: "LocOpe_LinearForm(@)", header: "LocOpe_LinearForm.hxx".}
proc perform*(this: var LocOpeLinearForm; base: TopoDS_Shape; v: Vec; pnt1: Pnt; pnt2: Pnt) {.
    importcpp: "Perform", header: "LocOpe_LinearForm.hxx".}
proc perform*(this: var LocOpeLinearForm; base: TopoDS_Shape; v: Vec; vectra: Vec;
             pnt1: Pnt; pnt2: Pnt) {.importcpp: "Perform",
                                 header: "LocOpe_LinearForm.hxx".}
proc firstShape*(this: LocOpeLinearForm): TopoDS_Shape {.noSideEffect,
    importcpp: "FirstShape", header: "LocOpe_LinearForm.hxx".}
proc lastShape*(this: LocOpeLinearForm): TopoDS_Shape {.noSideEffect,
    importcpp: "LastShape", header: "LocOpe_LinearForm.hxx".}
proc shape*(this: LocOpeLinearForm): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "LocOpe_LinearForm.hxx".}
proc shapes*(this: LocOpeLinearForm; s: TopoDS_Shape): TopToolsListOfShape {.
    noSideEffect, importcpp: "Shapes", header: "LocOpe_LinearForm.hxx".}
