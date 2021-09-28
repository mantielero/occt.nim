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
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"
type
  Circ2d* {.importcpp: "gp_Circ2d", header: "gp_Circ2d.hxx", bycopy.} = object


proc `new`*(this: var Circ2d; theSize: csize_t): pointer {.
    importcpp: "gp_Circ2d::operator new", header: "gp_Circ2d.hxx".}
proc `delete`*(this: var Circ2d; theAddress: pointer) {.
    importcpp: "gp_Circ2d::operator delete", header: "gp_Circ2d.hxx".}
proc `new[]`*(this: var Circ2d; theSize: csize_t): pointer {.
    importcpp: "gp_Circ2d::operator new[]", header: "gp_Circ2d.hxx".}
proc `delete[]`*(this: var Circ2d; theAddress: pointer) {.
    importcpp: "gp_Circ2d::operator delete[]", header: "gp_Circ2d.hxx".}
proc `new`*(this: var Circ2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Circ2d::operator new", header: "gp_Circ2d.hxx".}
proc `delete`*(this: var Circ2d; a2: pointer; a3: pointer) {.
    importcpp: "gp_Circ2d::operator delete", header: "gp_Circ2d.hxx".}
proc constructCirc2d*(): Circ2d {.constructor, importcpp: "gp_Circ2d(@)",
                               header: "gp_Circ2d.hxx".}
proc constructCirc2d*(xAxis: Ax2d; radius: StandardReal;
                     sense: StandardBoolean = true): Circ2d {.constructor,
    importcpp: "gp_Circ2d(@)", header: "gp_Circ2d.hxx".}
proc constructCirc2d*(axis: Ax22d; radius: StandardReal): Circ2d {.constructor,
    importcpp: "gp_Circ2d(@)", header: "gp_Circ2d.hxx".}
proc setLocation*(this: var Circ2d; p: Pnt2d) {.importcpp: "SetLocation",
    header: "gp_Circ2d.hxx".}
proc setXAxis*(this: var Circ2d; a: Ax2d) {.importcpp: "SetXAxis",
                                      header: "gp_Circ2d.hxx".}
proc setAxis*(this: var Circ2d; a: Ax22d) {.importcpp: "SetAxis",
                                      header: "gp_Circ2d.hxx".}
proc setYAxis*(this: var Circ2d; a: Ax2d) {.importcpp: "SetYAxis",
                                      header: "gp_Circ2d.hxx".}
proc setRadius*(this: var Circ2d; radius: StandardReal) {.importcpp: "SetRadius",
    header: "gp_Circ2d.hxx".}
proc area*(this: Circ2d): StandardReal {.noSideEffect, importcpp: "Area",
                                     header: "gp_Circ2d.hxx".}
proc coefficients*(this: Circ2d; a: var StandardReal; b: var StandardReal;
                  c: var StandardReal; d: var StandardReal; e: var StandardReal;
                  f: var StandardReal) {.noSideEffect, importcpp: "Coefficients",
                                      header: "gp_Circ2d.hxx".}
proc contains*(this: Circ2d; p: Pnt2d; linearTolerance: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "Contains", header: "gp_Circ2d.hxx".}
proc distance*(this: Circ2d; p: Pnt2d): StandardReal {.noSideEffect,
    importcpp: "Distance", header: "gp_Circ2d.hxx".}
proc squareDistance*(this: Circ2d; p: Pnt2d): StandardReal {.noSideEffect,
    importcpp: "SquareDistance", header: "gp_Circ2d.hxx".}
proc length*(this: Circ2d): StandardReal {.noSideEffect, importcpp: "Length",
                                       header: "gp_Circ2d.hxx".}
proc location*(this: Circ2d): Pnt2d {.noSideEffect, importcpp: "Location",
                                  header: "gp_Circ2d.hxx".}
proc radius*(this: Circ2d): StandardReal {.noSideEffect, importcpp: "Radius",
                                       header: "gp_Circ2d.hxx".}
proc axis*(this: Circ2d): Ax22d {.noSideEffect, importcpp: "Axis",
                              header: "gp_Circ2d.hxx".}
proc position*(this: Circ2d): Ax22d {.noSideEffect, importcpp: "Position",
                                  header: "gp_Circ2d.hxx".}
proc xAxis*(this: Circ2d): Ax2d {.noSideEffect, importcpp: "XAxis",
                              header: "gp_Circ2d.hxx".}
proc yAxis*(this: Circ2d): Ax2d {.noSideEffect, importcpp: "YAxis",
                              header: "gp_Circ2d.hxx".}
proc reverse*(this: var Circ2d) {.importcpp: "Reverse", header: "gp_Circ2d.hxx".}
proc reversed*(this: Circ2d): Circ2d {.noSideEffect, importcpp: "Reversed",
                                   header: "gp_Circ2d.hxx".}
proc isDirect*(this: Circ2d): StandardBoolean {.noSideEffect, importcpp: "IsDirect",
    header: "gp_Circ2d.hxx".}
proc mirror*(this: var Circ2d; p: Pnt2d) {.importcpp: "Mirror", header: "gp_Circ2d.hxx".}
proc mirrored*(this: Circ2d; p: Pnt2d): Circ2d {.noSideEffect, importcpp: "Mirrored",
    header: "gp_Circ2d.hxx".}
proc mirror*(this: var Circ2d; a: Ax2d) {.importcpp: "Mirror", header: "gp_Circ2d.hxx".}
proc mirrored*(this: Circ2d; a: Ax2d): Circ2d {.noSideEffect, importcpp: "Mirrored",
    header: "gp_Circ2d.hxx".}
proc rotate*(this: var Circ2d; p: Pnt2d; ang: StandardReal) {.importcpp: "Rotate",
    header: "gp_Circ2d.hxx".}
proc rotated*(this: Circ2d; p: Pnt2d; ang: StandardReal): Circ2d {.noSideEffect,
    importcpp: "Rotated", header: "gp_Circ2d.hxx".}
proc scale*(this: var Circ2d; p: Pnt2d; s: StandardReal) {.importcpp: "Scale",
    header: "gp_Circ2d.hxx".}
proc scaled*(this: Circ2d; p: Pnt2d; s: StandardReal): Circ2d {.noSideEffect,
    importcpp: "Scaled", header: "gp_Circ2d.hxx".}
proc transform*(this: var Circ2d; t: Trsf2d) {.importcpp: "Transform",
    header: "gp_Circ2d.hxx".}
proc transformed*(this: Circ2d; t: Trsf2d): Circ2d {.noSideEffect,
    importcpp: "Transformed", header: "gp_Circ2d.hxx".}
proc translate*(this: var Circ2d; v: Vec2d) {.importcpp: "Translate",
                                        header: "gp_Circ2d.hxx".}
proc translated*(this: Circ2d; v: Vec2d): Circ2d {.noSideEffect,
    importcpp: "Translated", header: "gp_Circ2d.hxx".}
proc translate*(this: var Circ2d; p1: Pnt2d; p2: Pnt2d) {.importcpp: "Translate",
    header: "gp_Circ2d.hxx".}
proc translated*(this: Circ2d; p1: Pnt2d; p2: Pnt2d): Circ2d {.noSideEffect,
    importcpp: "Translated", header: "gp_Circ2d.hxx".}