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
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"
type
  Ax22d* {.importcpp: "gp_Ax22d", header: "gp_Ax22d.hxx", bycopy.} = object


proc `new`*(this: var Ax22d; theSize: csize_t): pointer {.
    importcpp: "gp_Ax22d::operator new", header: "gp_Ax22d.hxx".}
proc `delete`*(this: var Ax22d; theAddress: pointer) {.
    importcpp: "gp_Ax22d::operator delete", header: "gp_Ax22d.hxx".}
proc `new[]`*(this: var Ax22d; theSize: csize_t): pointer {.
    importcpp: "gp_Ax22d::operator new[]", header: "gp_Ax22d.hxx".}
proc `delete[]`*(this: var Ax22d; theAddress: pointer) {.
    importcpp: "gp_Ax22d::operator delete[]", header: "gp_Ax22d.hxx".}
proc `new`*(this: var Ax22d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Ax22d::operator new", header: "gp_Ax22d.hxx".}
proc `delete`*(this: var Ax22d; a2: pointer; a3: pointer) {.
    importcpp: "gp_Ax22d::operator delete", header: "gp_Ax22d.hxx".}
proc constructAx22d*(): Ax22d {.constructor, importcpp: "gp_Ax22d(@)",
                             header: "gp_Ax22d.hxx".}
proc constructAx22d*(p: Pnt2d; vx: Dir2d; vy: Dir2d): Ax22d {.constructor,
    importcpp: "gp_Ax22d(@)", header: "gp_Ax22d.hxx".}
proc constructAx22d*(p: Pnt2d; v: Dir2d; sense: StandardBoolean = true): Ax22d {.
    constructor, importcpp: "gp_Ax22d(@)", header: "gp_Ax22d.hxx".}
proc constructAx22d*(a: Ax2d; sense: StandardBoolean = true): Ax22d {.constructor,
    importcpp: "gp_Ax22d(@)", header: "gp_Ax22d.hxx".}
proc setAxis*(this: var Ax22d; a1: Ax22d) {.importcpp: "SetAxis", header: "gp_Ax22d.hxx".}
proc setXAxis*(this: var Ax22d; a1: Ax2d) {.importcpp: "SetXAxis",
                                      header: "gp_Ax22d.hxx".}
proc setYAxis*(this: var Ax22d; a1: Ax2d) {.importcpp: "SetYAxis",
                                      header: "gp_Ax22d.hxx".}
proc setLocation*(this: var Ax22d; p: Pnt2d) {.importcpp: "SetLocation",
    header: "gp_Ax22d.hxx".}
proc setXDirection*(this: var Ax22d; vx: Dir2d) {.importcpp: "SetXDirection",
    header: "gp_Ax22d.hxx".}
proc setYDirection*(this: var Ax22d; vy: Dir2d) {.importcpp: "SetYDirection",
    header: "gp_Ax22d.hxx".}
proc xAxis*(this: Ax22d): Ax2d {.noSideEffect, importcpp: "XAxis",
                             header: "gp_Ax22d.hxx".}
proc yAxis*(this: Ax22d): Ax2d {.noSideEffect, importcpp: "YAxis",
                             header: "gp_Ax22d.hxx".}
proc location*(this: Ax22d): Pnt2d {.noSideEffect, importcpp: "Location",
                                 header: "gp_Ax22d.hxx".}
proc xDirection*(this: Ax22d): Dir2d {.noSideEffect, importcpp: "XDirection",
                                   header: "gp_Ax22d.hxx".}
proc yDirection*(this: Ax22d): Dir2d {.noSideEffect, importcpp: "YDirection",
                                   header: "gp_Ax22d.hxx".}
proc mirror*(this: var Ax22d; p: Pnt2d) {.importcpp: "Mirror", header: "gp_Ax22d.hxx".}
proc mirrored*(this: Ax22d; p: Pnt2d): Ax22d {.noSideEffect, importcpp: "Mirrored",
    header: "gp_Ax22d.hxx".}
proc mirror*(this: var Ax22d; a: Ax2d) {.importcpp: "Mirror", header: "gp_Ax22d.hxx".}
proc mirrored*(this: Ax22d; a: Ax2d): Ax22d {.noSideEffect, importcpp: "Mirrored",
                                        header: "gp_Ax22d.hxx".}
proc rotate*(this: var Ax22d; p: Pnt2d; ang: StandardReal) {.importcpp: "Rotate",
    header: "gp_Ax22d.hxx".}
proc rotated*(this: Ax22d; p: Pnt2d; ang: StandardReal): Ax22d {.noSideEffect,
    importcpp: "Rotated", header: "gp_Ax22d.hxx".}
proc scale*(this: var Ax22d; p: Pnt2d; s: StandardReal) {.importcpp: "Scale",
    header: "gp_Ax22d.hxx".}
proc scaled*(this: Ax22d; p: Pnt2d; s: StandardReal): Ax22d {.noSideEffect,
    importcpp: "Scaled", header: "gp_Ax22d.hxx".}
proc transform*(this: var Ax22d; t: Trsf2d) {.importcpp: "Transform",
                                        header: "gp_Ax22d.hxx".}
proc transformed*(this: Ax22d; t: Trsf2d): Ax22d {.noSideEffect,
    importcpp: "Transformed", header: "gp_Ax22d.hxx".}
proc translate*(this: var Ax22d; v: Vec2d) {.importcpp: "Translate",
                                       header: "gp_Ax22d.hxx".}
proc translated*(this: Ax22d; v: Vec2d): Ax22d {.noSideEffect, importcpp: "Translated",
    header: "gp_Ax22d.hxx".}
proc translate*(this: var Ax22d; p1: Pnt2d; p2: Pnt2d) {.importcpp: "Translate",
    header: "gp_Ax22d.hxx".}
proc translated*(this: Ax22d; p1: Pnt2d; p2: Pnt2d): Ax22d {.noSideEffect,
    importcpp: "Translated", header: "gp_Ax22d.hxx".}
proc dumpJson*(this: Ax22d; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "gp_Ax22d.hxx".}