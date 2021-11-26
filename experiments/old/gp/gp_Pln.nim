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
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  Pln* {.importcpp: "gp_Pln", header: "gp_Pln.hxx", bycopy.} = object


proc `new`*(this: var Pln; theSize: csize_t): pointer {.
    importcpp: "gp_Pln::operator new", header: "gp_Pln.hxx".}
proc `delete`*(this: var Pln; theAddress: pointer) {.
    importcpp: "gp_Pln::operator delete", header: "gp_Pln.hxx".}
proc `new[]`*(this: var Pln; theSize: csize_t): pointer {.
    importcpp: "gp_Pln::operator new[]", header: "gp_Pln.hxx".}
proc `delete[]`*(this: var Pln; theAddress: pointer) {.
    importcpp: "gp_Pln::operator delete[]", header: "gp_Pln.hxx".}
proc `new`*(this: var Pln; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Pln::operator new", header: "gp_Pln.hxx".}
proc `delete`*(this: var Pln; a2: pointer; a3: pointer) {.
    importcpp: "gp_Pln::operator delete", header: "gp_Pln.hxx".}
proc constructPln*(): Pln {.constructor, importcpp: "gp_Pln(@)", header: "gp_Pln.hxx".}
proc constructPln*(a3: Ax3): Pln {.constructor, importcpp: "gp_Pln(@)",
                               header: "gp_Pln.hxx".}
proc constructPln*(p: Pnt; v: Dir): Pln {.constructor, importcpp: "gp_Pln(@)",
                                    header: "gp_Pln.hxx".}
proc constructPln*(a: StandardReal; b: StandardReal; c: StandardReal; d: StandardReal): Pln {.
    constructor, importcpp: "gp_Pln(@)", header: "gp_Pln.hxx".}
proc coefficients*(this: Pln; a: var StandardReal; b: var StandardReal;
                  c: var StandardReal; d: var StandardReal) {.noSideEffect,
    importcpp: "Coefficients", header: "gp_Pln.hxx".}
proc setAxis*(this: var Pln; a1: Ax1) {.importcpp: "SetAxis", header: "gp_Pln.hxx".}
proc setLocation*(this: var Pln; loc: Pnt) {.importcpp: "SetLocation",
                                       header: "gp_Pln.hxx".}
proc setPosition*(this: var Pln; a3: Ax3) {.importcpp: "SetPosition",
                                      header: "gp_Pln.hxx".}
proc uReverse*(this: var Pln) {.importcpp: "UReverse", header: "gp_Pln.hxx".}
proc vReverse*(this: var Pln) {.importcpp: "VReverse", header: "gp_Pln.hxx".}
proc direct*(this: Pln): StandardBoolean {.noSideEffect, importcpp: "Direct",
                                       header: "gp_Pln.hxx".}
proc axis*(this: Pln): Ax1 {.noSideEffect, importcpp: "Axis", header: "gp_Pln.hxx".}
proc location*(this: Pln): Pnt {.noSideEffect, importcpp: "Location",
                             header: "gp_Pln.hxx".}
proc position*(this: Pln): Ax3 {.noSideEffect, importcpp: "Position",
                             header: "gp_Pln.hxx".}
proc distance*(this: Pln; p: Pnt): StandardReal {.noSideEffect, importcpp: "Distance",
    header: "gp_Pln.hxx".}
proc distance*(this: Pln; L: Lin): StandardReal {.noSideEffect, importcpp: "Distance",
    header: "gp_Pln.hxx".}
proc distance*(this: Pln; other: Pln): StandardReal {.noSideEffect,
    importcpp: "Distance", header: "gp_Pln.hxx".}
proc squareDistance*(this: Pln; p: Pnt): StandardReal {.noSideEffect,
    importcpp: "SquareDistance", header: "gp_Pln.hxx".}
proc squareDistance*(this: Pln; L: Lin): StandardReal {.noSideEffect,
    importcpp: "SquareDistance", header: "gp_Pln.hxx".}
proc squareDistance*(this: Pln; other: Pln): StandardReal {.noSideEffect,
    importcpp: "SquareDistance", header: "gp_Pln.hxx".}
proc xAxis*(this: Pln): Ax1 {.noSideEffect, importcpp: "XAxis", header: "gp_Pln.hxx".}
proc yAxis*(this: Pln): Ax1 {.noSideEffect, importcpp: "YAxis", header: "gp_Pln.hxx".}
proc contains*(this: Pln; p: Pnt; linearTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "Contains", header: "gp_Pln.hxx".}
proc contains*(this: Pln; L: Lin; linearTolerance: StandardReal;
              angularTolerance: StandardReal): StandardBoolean {.noSideEffect,
    importcpp: "Contains", header: "gp_Pln.hxx".}
proc mirror*(this: var Pln; p: Pnt) {.importcpp: "Mirror", header: "gp_Pln.hxx".}
proc mirrored*(this: Pln; p: Pnt): Pln {.noSideEffect, importcpp: "Mirrored",
                                   header: "gp_Pln.hxx".}
proc mirror*(this: var Pln; a1: Ax1) {.importcpp: "Mirror", header: "gp_Pln.hxx".}
proc mirrored*(this: Pln; a1: Ax1): Pln {.noSideEffect, importcpp: "Mirrored",
                                    header: "gp_Pln.hxx".}
proc mirror*(this: var Pln; a2: Ax2) {.importcpp: "Mirror", header: "gp_Pln.hxx".}
proc mirrored*(this: Pln; a2: Ax2): Pln {.noSideEffect, importcpp: "Mirrored",
                                    header: "gp_Pln.hxx".}
proc rotate*(this: var Pln; a1: Ax1; ang: StandardReal) {.importcpp: "Rotate",
    header: "gp_Pln.hxx".}
proc rotated*(this: Pln; a1: Ax1; ang: StandardReal): Pln {.noSideEffect,
    importcpp: "Rotated", header: "gp_Pln.hxx".}
proc scale*(this: var Pln; p: Pnt; s: StandardReal) {.importcpp: "Scale",
    header: "gp_Pln.hxx".}
proc scaled*(this: Pln; p: Pnt; s: StandardReal): Pln {.noSideEffect,
    importcpp: "Scaled", header: "gp_Pln.hxx".}
proc transform*(this: var Pln; t: Trsf) {.importcpp: "Transform", header: "gp_Pln.hxx".}
proc transformed*(this: Pln; t: Trsf): Pln {.noSideEffect, importcpp: "Transformed",
                                       header: "gp_Pln.hxx".}
proc translate*(this: var Pln; v: Vec) {.importcpp: "Translate", header: "gp_Pln.hxx".}
proc translated*(this: Pln; v: Vec): Pln {.noSideEffect, importcpp: "Translated",
                                     header: "gp_Pln.hxx".}
proc translate*(this: var Pln; p1: Pnt; p2: Pnt) {.importcpp: "Translate",
    header: "gp_Pln.hxx".}
proc translated*(this: Pln; p1: Pnt; p2: Pnt): Pln {.noSideEffect,
    importcpp: "Translated", header: "gp_Pln.hxx".}
proc dumpJson*(this: Pln; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "gp_Pln.hxx".}