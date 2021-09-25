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

type
  FDrawInitAppli* = proc (a1: var DrawInterpretor)

when defined windows:
  proc drawAppli*(a1: Hinstance; a2: Hinstance; a3: cint; argc: cint;
                 argv: ptr ptr WcharT; drawInitAppli: FDrawInitAppli) {.
      importcpp: "Draw_Appli(@)", header: "Draw_Appli.hxx".}
else:
  proc drawAppli*(argc: cint; argv: cstringArray; drawInitAppli: FDrawInitAppli) {.
      importcpp: "Draw_Appli(@)", header: "Draw_Appli.hxx".}
when not defined windows:
  var dout* {.importcpp: "dout", header: "Draw_Appli.hxx".}: DrawViewer
  var drawBatch* {.importcpp: "Draw_Batch", header: "Draw_Appli.hxx".}: bool
type
  DrawSaveAndRestore* {.importcpp: "Draw_SaveAndRestore", header: "Draw_Appli.hxx",
                       bycopy.} = object


proc constructDrawSaveAndRestore*(name: cstring;
                                 test: proc (a1: Handle[DrawDrawable3D]): bool; save: proc (
    a1: Handle[DrawDrawable3D]; a2: var Ostream); restore: proc (a1: var Istream): Handle[
    DrawDrawable3D]; display: bool = true): DrawSaveAndRestore {.constructor,
    importcpp: "Draw_SaveAndRestore(@)", header: "Draw_Appli.hxx".}
proc name*(this: DrawSaveAndRestore): cstring {.noSideEffect, importcpp: "Name",
    header: "Draw_Appli.hxx".}
proc test*(this: var DrawSaveAndRestore; d: Handle[DrawDrawable3D]): bool {.
    importcpp: "Test", header: "Draw_Appli.hxx".}
proc save*(this: DrawSaveAndRestore; d: Handle[DrawDrawable3D]; os: var Ostream) {.
    noSideEffect, importcpp: "Save", header: "Draw_Appli.hxx".}
proc restore*(this: DrawSaveAndRestore; a2: var Istream): Handle[DrawDrawable3D] {.
    noSideEffect, importcpp: "Restore", header: "Draw_Appli.hxx".}
proc disp*(this: DrawSaveAndRestore): bool {.noSideEffect, importcpp: "Disp",
    header: "Draw_Appli.hxx".}
proc next*(this: var DrawSaveAndRestore): ptr DrawSaveAndRestore {.importcpp: "Next",
    header: "Draw_Appli.hxx".}
