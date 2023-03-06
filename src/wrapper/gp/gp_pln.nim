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

proc pln*(): PlnObj {.cdecl, constructor, importcpp: "gp_Pln(@)", header: "gp_Pln.hxx".}
proc pln*(a3: Ax3Obj): PlnObj {.cdecl, constructor, importcpp: "gp_Pln(@)", header: "gp_Pln.hxx".}
proc pln*(p: gp_Pnt; v: DirObj): PlnObj {.cdecl, constructor, importcpp: "gp_Pln(@)",
                              header: "gp_Pln.hxx".}
proc pln*(a: cfloat; b: cfloat; c: cfloat; d: cfloat): PlnObj {.cdecl, constructor,
    importcpp: "gp_Pln(@)", header: "gp_Pln.hxx".}
proc coefficients*(this: PlnObj; a: var cfloat; b: var cfloat; c: var cfloat; d: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Coefficients", header: "gp_Pln.hxx".}
proc setAxis*(this: var PlnObj; a1: Ax1Obj) {.cdecl, importcpp: "SetAxis", header: "gp_Pln.hxx".}
proc setLocation*(this: var PlnObj; loc: gp_Pnt) {.cdecl, importcpp: "SetLocation",
                                       header: "gp_Pln.hxx".}
proc setPosition*(this: var PlnObj; a3: Ax3Obj) {.cdecl, importcpp: "SetPosition",
                                      header: "gp_Pln.hxx".}
proc uReverse*(this: var PlnObj) {.cdecl, importcpp: "UReverse", header: "gp_Pln.hxx".}
proc vReverse*(this: var PlnObj) {.cdecl, importcpp: "VReverse", header: "gp_Pln.hxx".}
proc direct*(this: PlnObj): bool {.noSideEffect, cdecl, importcpp: "Direct", header: "gp_Pln.hxx".}
proc axis*(this: PlnObj): Ax1Obj {.noSideEffect, cdecl, importcpp: "Axis", header: "gp_Pln.hxx".}
proc location*(this: PlnObj): gp_Pnt {.noSideEffect, cdecl, importcpp: "Location",
                             header: "gp_Pln.hxx".}
proc position*(this: PlnObj): Ax3Obj {.noSideEffect, cdecl, importcpp: "Position",
                             header: "gp_Pln.hxx".}
proc distance*(this: PlnObj; p: gp_Pnt): cfloat {.noSideEffect, cdecl, importcpp: "Distance",
                                      header: "gp_Pln.hxx".}
proc distance*(this: PlnObj; L: LinObj): cfloat {.noSideEffect, cdecl, importcpp: "Distance",
                                      header: "gp_Pln.hxx".}
proc distance*(this: PlnObj; other: PlnObj): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", header: "gp_Pln.hxx".}
proc squareDistance*(this: PlnObj; p: gp_Pnt): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "gp_Pln.hxx".}
proc squareDistance*(this: PlnObj; L: LinObj): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "gp_Pln.hxx".}
proc squareDistance*(this: PlnObj; other: PlnObj): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "gp_Pln.hxx".}
proc xAxis*(this: PlnObj): Ax1Obj {.noSideEffect, cdecl, importcpp: "XAxis", header: "gp_Pln.hxx".}
proc yAxis*(this: PlnObj): Ax1Obj {.noSideEffect, cdecl, importcpp: "YAxis", header: "gp_Pln.hxx".}
proc contains*(this: PlnObj; p: gp_Pnt; linearTolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "Contains", header: "gp_Pln.hxx".}
proc contains*(this: PlnObj; L: LinObj; linearTolerance: cfloat; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "Contains", header: "gp_Pln.hxx".}
proc mirror*(this: var PlnObj; p: gp_Pnt) {.cdecl, importcpp: "Mirror", header: "gp_Pln.hxx".}
proc mirrored*(this: PlnObj; p: gp_Pnt): PlnObj {.noSideEffect, cdecl, importcpp: "Mirrored",
                                   header: "gp_Pln.hxx".}
proc mirror*(this: var PlnObj; a1: Ax1Obj) {.cdecl, importcpp: "Mirror", header: "gp_Pln.hxx".}
proc mirrored*(this: PlnObj; a1: Ax1Obj): PlnObj {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    header: "gp_Pln.hxx".}
proc mirror*(this: var PlnObj; a2: Ax2Obj) {.cdecl, importcpp: "Mirror", header: "gp_Pln.hxx".}
proc mirrored*(this: PlnObj; a2: Ax2Obj): PlnObj {.noSideEffect, cdecl, importcpp: "Mirrored",
                                    header: "gp_Pln.hxx".}
proc rotate*(this: var PlnObj; a1: Ax1Obj; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Pln.hxx".}
proc rotated*(this: PlnObj; a1: Ax1Obj; ang: cfloat): PlnObj {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Pln.hxx".}
proc scale*(this: var PlnObj; p: gp_Pnt; s: cfloat) {.cdecl, importcpp: "Scale", header: "gp_Pln.hxx".}
proc scaled*(this: PlnObj; p: gp_Pnt; s: cfloat): PlnObj {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Pln.hxx".}
proc transform*(this: var PlnObj; t: TrsfObj) {.cdecl, importcpp: "Transform", header: "gp_Pln.hxx".}
proc transformed*(this: PlnObj; t: TrsfObj): PlnObj {.noSideEffect, cdecl,
                                       importcpp: "Transformed", header: "gp_Pln.hxx".}
proc translate*(this: var PlnObj; v: VecObj) {.cdecl, importcpp: "Translate", header: "gp_Pln.hxx".}
proc translated*(this: PlnObj; v: VecObj): PlnObj {.noSideEffect, cdecl, importcpp: "Translated",
                                     header: "gp_Pln.hxx".}
proc translate*(this: var PlnObj; p1: gp_Pnt; p2: gp_Pnt) {.cdecl, importcpp: "Translate",
    header: "gp_Pln.hxx".}
proc translated*(this: PlnObj; p1: gp_Pnt; p2: gp_Pnt): PlnObj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Pln.hxx".}
proc dumpJson*(this: PlnObj; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "gp_Pln.hxx".}
