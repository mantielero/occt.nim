##  Copyright (c) 1991-1999 Matra Datavision
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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  Lin* {.importcpp: "gp_Lin", header: "gp_Lin.hxx", bycopy.} = object ## ! Creates a Line corresponding to Z axis of the
                                                              ## ! reference coordinate system.


proc newLin*(): Lin {.cdecl, constructor, importcpp: "gp_Lin(@)", dynlib: tkmath.}
proc newLin*(a1: Ax1): Lin {.cdecl, constructor, importcpp: "gp_Lin(@)", dynlib: tkmath.}
proc newLin*(p: Pnt; v: Dir): Lin {.cdecl, constructor, importcpp: "gp_Lin(@)",
                              dynlib: tkmath.}
proc reverse*(this: var Lin) {.cdecl, importcpp: "Reverse", dynlib: tkmath.}
proc reversed*(this: Lin): Lin {.noSideEffect, cdecl, importcpp: "Reversed",
                             dynlib: tkmath.}
proc setDirection*(this: var Lin; v: Dir) {.cdecl, importcpp: "SetDirection",
                                      dynlib: tkmath.}
proc setLocation*(this: var Lin; p: Pnt) {.cdecl, importcpp: "SetLocation",
                                     dynlib: tkmath.}
proc setPosition*(this: var Lin; a1: Ax1) {.cdecl, importcpp: "SetPosition",
                                      dynlib: tkmath.}
proc direction*(this: Lin): Dir {.noSideEffect, cdecl, importcpp: "Direction",
                              dynlib: tkmath.}
proc location*(this: Lin): Pnt {.noSideEffect, cdecl, importcpp: "Location",
                             dynlib: tkmath.}
proc position*(this: Lin): Ax1 {.noSideEffect, cdecl, importcpp: "Position",
                             dynlib: tkmath.}
proc angle*(this: Lin; other: Lin): cfloat {.noSideEffect, cdecl, importcpp: "Angle",
                                       dynlib: tkmath.}
proc contains*(this: Lin; p: Pnt; linearTolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "Contains", dynlib: tkmath.}
proc distance*(this: Lin; p: Pnt): cfloat {.noSideEffect, cdecl, importcpp: "Distance",
                                      dynlib: tkmath.}
proc distance*(this: Lin; other: Lin): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", dynlib: tkmath.}
proc squareDistance*(this: Lin; p: Pnt): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkmath.}
proc squareDistance*(this: Lin; other: Lin): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", dynlib: tkmath.}
proc normal*(this: Lin; p: Pnt): Lin {.noSideEffect, cdecl, importcpp: "Normal",
                                 dynlib: tkmath.}
proc mirror*(this: var Lin; p: Pnt) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Lin; p: Pnt): Lin {.noSideEffect, cdecl, importcpp: "Mirrored",
                                   dynlib: tkmath.}
proc mirror*(this: var Lin; a1: Ax1) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Lin; a1: Ax1): Lin {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    dynlib: tkmath.}
proc mirror*(this: var Lin; a2: Ax2) {.cdecl, importcpp: "Mirror", dynlib: tkmath.}
proc mirrored*(this: Lin; a2: Ax2): Lin {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    dynlib: tkmath.}
proc rotate*(this: var Lin; a1: Ax1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    dynlib: tkmath.}
proc rotated*(this: Lin; a1: Ax1; ang: cfloat): Lin {.noSideEffect, cdecl,
    importcpp: "Rotated", dynlib: tkmath.}
proc scale*(this: var Lin; p: Pnt; s: cfloat) {.cdecl, importcpp: "Scale", dynlib: tkmath.}
proc scaled*(this: Lin; p: Pnt; s: cfloat): Lin {.noSideEffect, cdecl,
    importcpp: "Scaled", dynlib: tkmath.}
proc transform*(this: var Lin; t: Trsf) {.cdecl, importcpp: "Transform", dynlib: tkmath.}
proc transformed*(this: Lin; t: Trsf): Lin {.noSideEffect, cdecl,
                                       importcpp: "Transformed", dynlib: tkmath.}
proc translate*(this: var Lin; v: Vec) {.cdecl, importcpp: "Translate", dynlib: tkmath.}
proc translated*(this: Lin; v: Vec): Lin {.noSideEffect, cdecl, importcpp: "Translated",
                                     dynlib: tkmath.}
proc translate*(this: var Lin; p1: Pnt; p2: Pnt) {.cdecl, importcpp: "Translate",
    dynlib: tkmath.}
proc translated*(this: Lin; p1: Pnt; p2: Pnt): Lin {.noSideEffect, cdecl,
    importcpp: "Translated", dynlib: tkmath.}