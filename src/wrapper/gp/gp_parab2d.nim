import gp_types

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

proc parab2d*(): gp_Parab2d {.cdecl, constructor, importcpp: "gp_Parab2d(@)",
                           header: "gp_Parab2d.hxx".}
proc parab2d*(theMirrorAxis: gp_Ax2d; theFocalLength: cfloat; theSense: bool = true): gp_Parab2d {.
    cdecl, constructor, importcpp: "gp_Parab2d(@)", header: "gp_Parab2d.hxx".}
proc parab2d*(theAxes: gp_Ax22d; theFocalLength: cfloat): gp_Parab2d {.cdecl, constructor,
    importcpp: "gp_Parab2d(@)", header: "gp_Parab2d.hxx".}
proc parab2d*(theDirectrix: gp_Ax2d; theFocus: gp_Pnt2d; theSense: bool = true): gp_Parab2d {.
    cdecl, constructor, importcpp: "gp_Parab2d(@)", header: "gp_Parab2d.hxx".}
proc setFocal*(this: var gp_Parab2d; focal: cfloat) {.cdecl, importcpp: "SetFocal",
    header: "gp_Parab2d.hxx".}
proc setLocation*(this: var gp_Parab2d; p: gp_Pnt2d) {.cdecl, importcpp: "SetLocation",
    header: "gp_Parab2d.hxx".}
proc setMirrorAxis*(this: var gp_Parab2d; a: gp_Ax2d) {.cdecl, importcpp: "SetMirrorAxis",
    header: "gp_Parab2d.hxx".}
proc setAxis*(this: var gp_Parab2d; a: gp_Ax22d) {.cdecl, importcpp: "SetAxis", header: "gp_Parab2d.hxx".}
proc coefficients*(this: gp_Parab2d; a: var cfloat; b: var cfloat; c: var cfloat;
                  d: var cfloat; e: var cfloat; f: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coefficients", header: "gp_Parab2d.hxx".}
proc directrix*(this: gp_Parab2d): gp_Ax2d {.noSideEffect, cdecl, importcpp: "Directrix",
                                   header: "gp_Parab2d.hxx".}
proc focal*(this: gp_Parab2d): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                                 header: "gp_Parab2d.hxx".}
proc focus*(this: gp_Parab2d): gp_Pnt2d {.noSideEffect, cdecl, importcpp: "Focus",
                                header: "gp_Parab2d.hxx".}
proc location*(this: gp_Parab2d): gp_Pnt2d {.noSideEffect, cdecl, importcpp: "Location",
                                   header: "gp_Parab2d.hxx".}
proc mirrorAxis*(this: gp_Parab2d): gp_Ax2d {.noSideEffect, cdecl, importcpp: "MirrorAxis",
                                    header: "gp_Parab2d.hxx".}
proc axis*(this: gp_Parab2d): gp_Ax22d {.noSideEffect, cdecl, importcpp: "Axis",
                               header: "gp_Parab2d.hxx".}
proc parameter*(this: gp_Parab2d): cfloat {.noSideEffect, cdecl, importcpp: "Parameter",
                                     header: "gp_Parab2d.hxx".}
proc reverse*(this: var gp_Parab2d) {.cdecl, importcpp: "Reverse", header: "gp_Parab2d.hxx".}
proc reversed*(this: gp_Parab2d): gp_Parab2d {.noSideEffect, cdecl, importcpp: "Reversed",
                                     header: "gp_Parab2d.hxx".}
proc isDirect*(this: gp_Parab2d): bool {.noSideEffect, cdecl, importcpp: "IsDirect",
                                  header: "gp_Parab2d.hxx".}
proc mirror*(this: var gp_Parab2d; p: gp_Pnt2d) {.cdecl, importcpp: "Mirror", header: "gp_Parab2d.hxx".}
proc mirrored*(this: gp_Parab2d; p: gp_Pnt2d): gp_Parab2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Parab2d.hxx".}
proc mirror*(this: var gp_Parab2d; a: gp_Ax2d) {.cdecl, importcpp: "Mirror", header: "gp_Parab2d.hxx".}
proc mirrored*(this: gp_Parab2d; a: gp_Ax2d): gp_Parab2d {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Parab2d.hxx".}
proc rotate*(this: var gp_Parab2d; p: gp_Pnt2d; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Parab2d.hxx".}
proc rotated*(this: gp_Parab2d; p: gp_Pnt2d; ang: cfloat): gp_Parab2d {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Parab2d.hxx".}
proc scale*(this: var gp_Parab2d; p: gp_Pnt2d; s: cfloat) {.cdecl, importcpp: "Scale",
    header: "gp_Parab2d.hxx".}
proc scaled*(this: gp_Parab2d; p: gp_Pnt2d; s: cfloat): gp_Parab2d {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Parab2d.hxx".}
proc transform*(this: var gp_Parab2d; t: gp_Trsf2d) {.cdecl, importcpp: "Transform",
    header: "gp_Parab2d.hxx".}
proc transformed*(this: gp_Parab2d; t: gp_Trsf2d): gp_Parab2d {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Parab2d.hxx".}
proc translate*(this: var gp_Parab2d; v: gp_Vec2d) {.cdecl, importcpp: "Translate",
    header: "gp_Parab2d.hxx".}
proc translated*(this: gp_Parab2d; v: gp_Vec2d): gp_Parab2d {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Parab2d.hxx".}
proc translate*(this: var gp_Parab2d; p1: gp_Pnt2d; p2: gp_Pnt2d) {.cdecl, importcpp: "Translate",
    header: "gp_Parab2d.hxx".}
proc translated*(this: gp_Parab2d; p1: gp_Pnt2d; p2: gp_Pnt2d): gp_Parab2d {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Parab2d.hxx".}
