##  Created on: 1992-04-07
##  Created by: Remi LEQUETTE
##  Copyright (c) 1992-1999 Matra Datavision
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
  Draw_Viewer, Draw

type
  FDraw_InitAppli* = proc (a1: var Draw_Interpretor)

when defined(_WIN32):
  proc Draw_Appli*(a1: HINSTANCE; a2: HINSTANCE; a3: cint; argc: cint;
                  argv: ptr ptr wchar_t; Draw_InitAppli: FDraw_InitAppli) {.
      importcpp: "Draw_Appli(@)", header: "Draw_Appli.hxx".}
else:
  proc Draw_Appli*(argc: cint; argv: cstringArray; Draw_InitAppli: FDraw_InitAppli) {.
      importcpp: "Draw_Appli(@)", header: "Draw_Appli.hxx".}
when not defined(_WIN32):
  var dout* {.importcpp: "dout", header: "Draw_Appli.hxx".}: Draw_Viewer
  var Draw_Batch* {.importcpp: "Draw_Batch", header: "Draw_Appli.hxx".}: Standard_Boolean
type
  Draw_SaveAndRestore* {.importcpp: "Draw_SaveAndRestore",
                        header: "Draw_Appli.hxx", bycopy.} = object


proc constructDraw_SaveAndRestore*(name: cstring; test: proc (
    a1: handle[Draw_Drawable3D]): Standard_Boolean; save: proc (
    a1: handle[Draw_Drawable3D]; a2: var ostream); restore: proc (a1: var istream): handle[
    Draw_Drawable3D]; display: Standard_Boolean = Standard_True): Draw_SaveAndRestore {.
    constructor, importcpp: "Draw_SaveAndRestore(@)", header: "Draw_Appli.hxx".}
proc Name*(this: Draw_SaveAndRestore): cstring {.noSideEffect, importcpp: "Name",
    header: "Draw_Appli.hxx".}
proc Test*(this: var Draw_SaveAndRestore; d: handle[Draw_Drawable3D]): Standard_Boolean {.
    importcpp: "Test", header: "Draw_Appli.hxx".}
proc Save*(this: Draw_SaveAndRestore; d: handle[Draw_Drawable3D]; os: var ostream) {.
    noSideEffect, importcpp: "Save", header: "Draw_Appli.hxx".}
proc Restore*(this: Draw_SaveAndRestore; a2: var istream): handle[Draw_Drawable3D] {.
    noSideEffect, importcpp: "Restore", header: "Draw_Appli.hxx".}
proc Disp*(this: Draw_SaveAndRestore): Standard_Boolean {.noSideEffect,
    importcpp: "Disp", header: "Draw_Appli.hxx".}
proc Next*(this: var Draw_SaveAndRestore): ptr Draw_SaveAndRestore {.
    importcpp: "Next", header: "Draw_Appli.hxx".}