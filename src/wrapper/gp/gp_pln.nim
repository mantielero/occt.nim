{.experimental: "callOperator".}
import gp_types
#import ../ncollection/ncollection_types
import ../standard/standard_types
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

proc pln*(): gp_Pln {.cdecl, constructor, importcpp: "gp_Pln(@)", header: "gp_Pln.hxx".}
proc pln*(a3: gp_Ax3): gp_Pln {.cdecl, constructor, importcpp: "gp_Pln(@)", header: "gp_Pln.hxx".}
proc pln*(p: gp_Pnt; v: gp_Dir): gp_Pln {.cdecl, constructor, importcpp: "gp_Pln(@)",
                              header: "gp_Pln.hxx".}
proc pln*(a: cfloat; b: cfloat; c: cfloat; d: cfloat): gp_Pln {.cdecl, constructor,
    importcpp: "gp_Pln(@)", header: "gp_Pln.hxx".}
proc coefficients*(this: gp_Pln; a: var cfloat; b: var cfloat; c: var cfloat; d: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Coefficients", header: "gp_Pln.hxx".}
proc setAxis*(this: var gp_Pln; a1: gp_Ax1) {.cdecl, importcpp: "SetAxis", header: "gp_Pln.hxx".}
proc setLocation*(this: var gp_Pln; loc: gp_Pnt) {.cdecl, importcpp: "SetLocation",
                                       header: "gp_Pln.hxx".}
proc setPosition*(this: var gp_Pln; a3: gp_Ax3) {.cdecl, importcpp: "SetPosition",
                                      header: "gp_Pln.hxx".}
proc uReverse*(this: var gp_Pln) {.cdecl, importcpp: "UReverse", header: "gp_Pln.hxx".}
proc vReverse*(this: var gp_Pln) {.cdecl, importcpp: "VReverse", header: "gp_Pln.hxx".}
proc direct*(this: gp_Pln): bool {.noSideEffect, cdecl, importcpp: "Direct", header: "gp_Pln.hxx".}
proc axis*(this: gp_Pln): gp_Ax1 {.noSideEffect, cdecl, importcpp: "Axis", header: "gp_Pln.hxx".}
proc location*(this: gp_Pln): gp_Pnt {.noSideEffect, cdecl, importcpp: "Location",
                             header: "gp_Pln.hxx".}
proc position*(this: gp_Pln): gp_Ax3 {.noSideEffect, cdecl, importcpp: "Position",
                             header: "gp_Pln.hxx".}
proc distance*(this: gp_Pln; p: gp_Pnt): cfloat {.noSideEffect, cdecl, importcpp: "Distance",
                                      header: "gp_Pln.hxx".}
proc distance*(this: gp_Pln; L: gp_Lin): cfloat {.noSideEffect, cdecl, importcpp: "Distance",
                                      header: "gp_Pln.hxx".}
proc distance*(this: gp_Pln; other: gp_Pln): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", header: "gp_Pln.hxx".}
proc squareDistance*(this: gp_Pln; p: gp_Pnt): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "gp_Pln.hxx".}
proc squareDistance*(this: gp_Pln; L: gp_Lin): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "gp_Pln.hxx".}
proc squareDistance*(this: gp_Pln; other: gp_Pln): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "gp_Pln.hxx".}
proc xAxis*(this: gp_Pln): gp_Ax1 {.noSideEffect, cdecl, importcpp: "XAxis", header: "gp_Pln.hxx".}
proc yAxis*(this: gp_Pln): gp_Ax1 {.noSideEffect, cdecl, importcpp: "YAxis", header: "gp_Pln.hxx".}
proc contains*(this: gp_Pln; p: gp_Pnt; linearTolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "Contains", header: "gp_Pln.hxx".}
proc contains*(this: gp_Pln; L: gp_Lin; linearTolerance: cfloat; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "Contains", header: "gp_Pln.hxx".}
proc mirror*(this: var gp_Pln; p: gp_Pnt) {.cdecl, importcpp: "Mirror", header: "gp_Pln.hxx".}
proc mirrored*(this: gp_Pln; p: gp_Pnt): gp_Pln {.noSideEffect, cdecl, importcpp: "Mirrored",
                                   header: "gp_Pln.hxx".}
proc mirror*(this: var gp_Pln; a1: gp_Ax1) {.cdecl, importcpp: "Mirror", header: "gp_Pln.hxx".}
proc mirrored*(this: gp_Pln; a1: gp_Ax1): gp_Pln {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    header: "gp_Pln.hxx".}
proc mirror*(this: var gp_Pln; a2: gp_Ax2) {.cdecl, importcpp: "Mirror", header: "gp_Pln.hxx".}
proc mirrored*(this: gp_Pln; a2: gp_Ax2): gp_Pln {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    header: "gp_Pln.hxx".}
proc rotate*(this: var gp_Pln; a1: gp_Ax1; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Pln.hxx".}
proc rotated*(this: gp_Pln; a1: gp_Ax1; ang: cfloat): gp_Pln {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Pln.hxx".}
proc scale*(this: var gp_Pln; p: gp_Pnt; s: cfloat) {.cdecl, importcpp: "Scale", header: "gp_Pln.hxx".}
proc scaled*(this: gp_Pln; p: gp_Pnt; s: cfloat): gp_Pln {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Pln.hxx".}
proc transform*(this: var gp_Pln; t: gp_Trsf) {.cdecl, importcpp: "Transform", header: "gp_Pln.hxx".}
proc transformed*(this: gp_Pln; t: gp_Trsf): gp_Pln {.noSideEffect, cdecl,
                                       importcpp: "Transformed", header: "gp_Pln.hxx".}
proc translate*(this: var gp_Pln; v: gp_Vec) {.cdecl, importcpp: "Translate", header: "gp_Pln.hxx".}
proc translated*(this: gp_Pln; v: gp_Vec): gp_Pln {.noSideEffect, cdecl, importcpp: "Translated",
                                     header: "gp_Pln.hxx".}
proc translate*(this: var gp_Pln; p1: gp_Pnt; p2: gp_Pnt) {.cdecl, importcpp: "Translate",
    header: "gp_Pln.hxx".}
proc translated*(this: gp_Pln; p1: gp_Pnt; p2: gp_Pnt): gp_Pln {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Pln.hxx".}
proc dumpJson*(this: gp_Pln; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "gp_Pln.hxx".}
