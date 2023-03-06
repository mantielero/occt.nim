import gp_types
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

discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Dir2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of gp_Vec2d"

proc ax2d*(): gp_Ax2d {.cdecl, constructor, importcpp: "gp_Ax2d(@)", header: "gp_Ax2d.hxx".}
proc ax2d*(p: gp_Pnt2d; v: gp_Dir2d): gp_Ax2d {.cdecl, constructor, importcpp: "gp_Ax2d(@)",
                                    header: "gp_Ax2d.hxx".}
proc setLocation*(this: var gp_Ax2d; locat: gp_Pnt2d) {.cdecl, importcpp: "SetLocation",
    header: "gp_Ax2d.hxx".}
proc setDirection*(this: var gp_Ax2d; v: gp_Dir2d) {.cdecl, importcpp: "SetDirection",
    header: "gp_Ax2d.hxx".}
proc location*(this: gp_Ax2d): gp_Pnt2d {.noSideEffect, cdecl, importcpp: "Location",
                                header: "gp_Ax2d.hxx".}
proc direction*(this: gp_Ax2d): gp_Dir2d {.noSideEffect, cdecl, importcpp: "Direction",
                                 header: "gp_Ax2d.hxx".}
proc isCoaxial*(this: gp_Ax2d; other: gp_Ax2d; angularTolerance: cfloat;
               linearTolerance: cfloat): bool {.noSideEffect, cdecl,
    importcpp: "IsCoaxial", header: "gp_Ax2d.hxx".}
proc isNormal*(this: gp_Ax2d; other: gp_Ax2d; angularTolerance: cfloat): bool {.noSideEffect,
    cdecl, importcpp: "IsNormal", header: "gp_Ax2d.hxx".}
proc isOpposite*(this: gp_Ax2d; other: gp_Ax2d; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsOpposite", header: "gp_Ax2d.hxx".}
proc isParallel*(this: gp_Ax2d; other: gp_Ax2d; angularTolerance: cfloat): bool {.
    noSideEffect, cdecl, importcpp: "IsParallel", header: "gp_Ax2d.hxx".}
proc angle*(this: gp_Ax2d; other: gp_Ax2d): cfloat {.noSideEffect, cdecl, importcpp: "Angle",
    header: "gp_Ax2d.hxx".}
proc reverse*(this: var gp_Ax2d) {.cdecl, importcpp: "Reverse", header: "gp_Ax2d.hxx".}
proc reversed*(this: gp_Ax2d): gp_Ax2d {.noSideEffect, cdecl, importcpp: "Reversed",
                               header: "gp_Ax2d.hxx".}
proc mirror*(this: var gp_Ax2d; p: gp_Pnt2d) {.cdecl, importcpp: "Mirror", header: "gp_Ax2d.hxx".}
proc mirrored*(this: gp_Ax2d; p: gp_Pnt2d): gp_Ax2d {.noSideEffect, cdecl, importcpp: "Mirrored",
                                       header: "gp_Ax2d.hxx".}
proc mirror*(this: var gp_Ax2d; a: gp_Ax2d) {.cdecl, importcpp: "Mirror", header: "gp_Ax2d.hxx".}
proc mirrored*(this: gp_Ax2d; a: gp_Ax2d): gp_Ax2d {.noSideEffect, cdecl, importcpp: "Mirrored",
                                      header: "gp_Ax2d.hxx".}
proc rotate*(this: var gp_Ax2d; p: gp_Pnt2d; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "gp_Ax2d.hxx".}
proc rotated*(this: gp_Ax2d; p: gp_Pnt2d; ang: cfloat): gp_Ax2d {.noSideEffect, cdecl,
    importcpp: "Rotated", header: "gp_Ax2d.hxx".}
proc scale*(this: var gp_Ax2d; p: gp_Pnt2d; s: cfloat) {.cdecl, importcpp: "Scale",
    header: "gp_Ax2d.hxx".}
proc scaled*(this: gp_Ax2d; p: gp_Pnt2d; s: cfloat): gp_Ax2d {.noSideEffect, cdecl,
    importcpp: "Scaled", header: "gp_Ax2d.hxx".}
proc transform*(this: var gp_Ax2d; t: gp_Trsf2d) {.cdecl, importcpp: "Transform",
                                       header: "gp_Ax2d.hxx".}
proc transformed*(this: gp_Ax2d; t: gp_Trsf2d): gp_Ax2d {.noSideEffect, cdecl,
    importcpp: "Transformed", header: "gp_Ax2d.hxx".}
proc translate*(this: var gp_Ax2d; v: gp_Vec2d) {.cdecl, importcpp: "Translate", header: "gp_Ax2d.hxx".}
proc translated*(this: gp_Ax2d; v: gp_Vec2d): gp_Ax2d {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Ax2d.hxx".}
proc translate*(this: var gp_Ax2d; p1: gp_Pnt2d; p2: gp_Pnt2d) {.cdecl, importcpp: "Translate",
    header: "gp_Ax2d.hxx".}
proc translated*(this: gp_Ax2d; p1: gp_Pnt2d; p2: gp_Pnt2d): gp_Ax2d {.noSideEffect, cdecl,
    importcpp: "Translated", header: "gp_Ax2d.hxx".}
proc dumpJson*(this: gp_Ax2d; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "gp_Ax2d.hxx".}
