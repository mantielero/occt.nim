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

proc parab2d*(): Parab2dObj {.cdecl, constructor, importcpp: "gp_Parab2d(@)",
                           header: "gp_Parab2d.hxx".}
proc parab2d*(theMirrorAxis: Ax2dObj; theFocalLength: cfloat; theSense: bool = true): Parab2dObj {.
    cdecl, constructor, importcpp: "gp_Parab2d(@)", header: "gp_Parab2d.hxx".}
proc parab2d*(theAxes: Ax22dObj; theFocalLength: cfloat): Parab2dObj {.cdecl, constructor,
    importcpp: "gp_Parab2d(@)", header: "gp_Parab2d.hxx".}
proc parab2d*(theDirectrix: Ax2dObj; theFocus: Pnt2dObj; theSense: bool = true): Parab2dObj {.
    cdecl, constructor, importcpp: "gp_Parab2d(@)", header: "gp_Parab2d.hxx".}
proc setFocal*(this: var Parab2dObj; focal: cfloat) {.cdecl, importcpp: "SetFocal",
    header: "gp_Parab2d.hxx".}
proc setLocation*(this: var Parab2dObj; p: Pnt2dObj) {.cdecl, importcpp: "SetLocation",
    header: "gp_Parab2d.hxx".}
proc setMirrorAxis*(this: var Parab2dObj; a: Ax2dObj) {.cdecl, importcpp: "SetMirrorAxis",
    header: "gp_Parab2d.hxx".}
proc setAxis*(this: var Parab2dObj; a: Ax22dObj) {.cdecl, importcpp: "SetAxis", header: "gp_Parab2d.hxx".}
proc coefficients*(this: Parab2dObj; a: var cfloat; b: var cfloat; c: var cfloat;
                  d: var cfloat; e: var cfloat; f: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coefficients", header: "gp_Parab2d.hxx".}
proc directrix*(this: Parab2dObj): Ax2dObj {.noSideEffect, cdecl, importcpp: "Directrix",
                                   header: "gp_Parab2d.hxx".}
proc focal*(this: Parab2dObj): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                                 header: "gp_Parab2d.hxx".}
proc focus*(this: Parab2dObj): Pnt2dObj {.noSideEffect, cdecl, importcpp: "Focus",
                                header: "gp_Parab2d.hxx".}
proc location*(this: Parab2dObj): Pnt2dObj {.noSideEffect, cdecl, importcpp: "Location",
                                   header: "gp_Parab2d.hxx".}
proc mirrorAxis*(this: Parab2dObj): Ax2dObj {.noSideEffect, cdecl, importcpp: "MirrorAxis",
                                    header: "gp_Parab2d.hxx".}
proc axis*(this: Parab2dObj): Ax22dObj {.noSideEffect, cdecl, importcpp: "Axis",
                               header: "gp_Parab2d.hxx".}
proc parameter*(this: Parab2dObj): cfloat {.noSideEffect, cdecl, importcpp: "Parameter",
                                     header: "gp_Parab2d.hxx".}
proc reverse*(this: var Parab2dObj) {.cdecl, importcpp: "Reverse", header: "gp_Parab2d.hxx".}
proc reversed*(this: Parab2dObj): Parab2dObj {.noSideEffect, cdecl, importcpp: "Reversed",
                                     header: "gp_Parab2d.hxx".}
proc isDirect*(this: Parab2dObj): bool {.noSideEffect, cdecl, importcpp: "IsDirect",
                                  header: "gp_Parab2d.hxx".}
proc mirror*(this: var Parab2dObj; p: Pnt2dObj) {.cdecl, importcpp: "Mirror", header: "gp_Parab2d.hxx".}
proc mirrored*(this: Parab2dObj; p: Pnt2dObj): Parab2dObj {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Parab2d.hxx".}
proc mirror*(this: var Parab2dObj; a: Ax2dObj) {.cdecl, importcpp: "Mirror", header: "gp_Parab2d.hxx".}
proc mirrored*(this: Parab2dObj; a: Ax2dObj): Parab2dObj {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "gp_Parab2d.hxx".}
proc rotate*(this: var Parab2dObj; p: Pnt2dObj; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Parab2d.hxx".}
proc rotated*(this: Parab2dObj; p: Pnt2dObj; ang: cfloat): Parab2dObj {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Parab2d.hxx".}
proc scale*(this: var Parab2dObj; p: Pnt2dObj; s: cfloat) {.cdecl, importcpp: "Scale",
    header: "gp_Parab2d.hxx".}
proc scaled*(this: Parab2dObj; p: Pnt2dObj; s: cfloat): Parab2dObj {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Parab2d.hxx".}
proc transform*(this: var Parab2dObj; t: Trsf2dObj) {.cdecl, importcpp: "Transform",
    header: "gp_Parab2d.hxx".}
proc transformed*(this: Parab2dObj; t: Trsf2dObj): Parab2dObj {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Parab2d.hxx".}
proc translate*(this: var Parab2dObj; v: Vec2dObj) {.cdecl, importcpp: "Translate",
    header: "gp_Parab2d.hxx".}
proc translated*(this: Parab2dObj; v: Vec2dObj): Parab2dObj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Parab2d.hxx".}
proc translate*(this: var Parab2dObj; p1: Pnt2dObj; p2: Pnt2dObj) {.cdecl, importcpp: "Translate",
    header: "gp_Parab2d.hxx".}
proc translated*(this: Parab2dObj; p1: Pnt2dObj; p2: Pnt2dObj): Parab2dObj {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Parab2d.hxx".}
