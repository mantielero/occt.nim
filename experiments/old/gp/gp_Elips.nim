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
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  Elips* {.importcpp: "gp_Elips", header: "gp_Elips.hxx", bycopy.} = object


proc `new`*(this: var Elips; theSize: csize_t): pointer {.
    importcpp: "gp_Elips::operator new", header: "gp_Elips.hxx".}
proc `delete`*(this: var Elips; theAddress: pointer) {.
    importcpp: "gp_Elips::operator delete", header: "gp_Elips.hxx".}
proc `new[]`*(this: var Elips; theSize: csize_t): pointer {.
    importcpp: "gp_Elips::operator new[]", header: "gp_Elips.hxx".}
proc `delete[]`*(this: var Elips; theAddress: pointer) {.
    importcpp: "gp_Elips::operator delete[]", header: "gp_Elips.hxx".}
proc `new`*(this: var Elips; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Elips::operator new", header: "gp_Elips.hxx".}
proc `delete`*(this: var Elips; a2: pointer; a3: pointer) {.
    importcpp: "gp_Elips::operator delete", header: "gp_Elips.hxx".}
proc constructElips*(): Elips {.constructor, importcpp: "gp_Elips(@)",
                             header: "gp_Elips.hxx".}
proc constructElips*(a2: Ax2; majorRadius: StandardReal; minorRadius: StandardReal): Elips {.
    constructor, importcpp: "gp_Elips(@)", header: "gp_Elips.hxx".}
proc setAxis*(this: var Elips; a1: Ax1) {.importcpp: "SetAxis", header: "gp_Elips.hxx".}
proc setLocation*(this: var Elips; p: Pnt) {.importcpp: "SetLocation",
                                       header: "gp_Elips.hxx".}
proc setMajorRadius*(this: var Elips; majorRadius: StandardReal) {.
    importcpp: "SetMajorRadius", header: "gp_Elips.hxx".}
proc setMinorRadius*(this: var Elips; minorRadius: StandardReal) {.
    importcpp: "SetMinorRadius", header: "gp_Elips.hxx".}
proc setPosition*(this: var Elips; a2: Ax2) {.importcpp: "SetPosition",
                                        header: "gp_Elips.hxx".}
proc area*(this: Elips): StandardReal {.noSideEffect, importcpp: "Area",
                                    header: "gp_Elips.hxx".}
proc axis*(this: Elips): Ax1 {.noSideEffect, importcpp: "Axis", header: "gp_Elips.hxx".}
proc directrix1*(this: Elips): Ax1 {.noSideEffect, importcpp: "Directrix1",
                                 header: "gp_Elips.hxx".}
proc directrix2*(this: Elips): Ax1 {.noSideEffect, importcpp: "Directrix2",
                                 header: "gp_Elips.hxx".}
proc eccentricity*(this: Elips): StandardReal {.noSideEffect,
    importcpp: "Eccentricity", header: "gp_Elips.hxx".}
proc focal*(this: Elips): StandardReal {.noSideEffect, importcpp: "Focal",
                                     header: "gp_Elips.hxx".}
proc focus1*(this: Elips): Pnt {.noSideEffect, importcpp: "Focus1",
                             header: "gp_Elips.hxx".}
proc focus2*(this: Elips): Pnt {.noSideEffect, importcpp: "Focus2",
                             header: "gp_Elips.hxx".}
proc location*(this: Elips): Pnt {.noSideEffect, importcpp: "Location",
                               header: "gp_Elips.hxx".}
proc majorRadius*(this: Elips): StandardReal {.noSideEffect,
    importcpp: "MajorRadius", header: "gp_Elips.hxx".}
proc minorRadius*(this: Elips): StandardReal {.noSideEffect,
    importcpp: "MinorRadius", header: "gp_Elips.hxx".}
proc parameter*(this: Elips): StandardReal {.noSideEffect, importcpp: "Parameter",
    header: "gp_Elips.hxx".}
proc position*(this: Elips): Ax2 {.noSideEffect, importcpp: "Position",
                               header: "gp_Elips.hxx".}
proc xAxis*(this: Elips): Ax1 {.noSideEffect, importcpp: "XAxis",
                            header: "gp_Elips.hxx".}
proc yAxis*(this: Elips): Ax1 {.noSideEffect, importcpp: "YAxis",
                            header: "gp_Elips.hxx".}
proc mirror*(this: var Elips; p: Pnt) {.importcpp: "Mirror", header: "gp_Elips.hxx".}
proc mirrored*(this: Elips; p: Pnt): Elips {.noSideEffect, importcpp: "Mirrored",
                                       header: "gp_Elips.hxx".}
proc mirror*(this: var Elips; a1: Ax1) {.importcpp: "Mirror", header: "gp_Elips.hxx".}
proc mirrored*(this: Elips; a1: Ax1): Elips {.noSideEffect, importcpp: "Mirrored",
                                        header: "gp_Elips.hxx".}
proc mirror*(this: var Elips; a2: Ax2) {.importcpp: "Mirror", header: "gp_Elips.hxx".}
proc mirrored*(this: Elips; a2: Ax2): Elips {.noSideEffect, importcpp: "Mirrored",
                                        header: "gp_Elips.hxx".}
proc rotate*(this: var Elips; a1: Ax1; ang: StandardReal) {.importcpp: "Rotate",
    header: "gp_Elips.hxx".}
proc rotated*(this: Elips; a1: Ax1; ang: StandardReal): Elips {.noSideEffect,
    importcpp: "Rotated", header: "gp_Elips.hxx".}
proc scale*(this: var Elips; p: Pnt; s: StandardReal) {.importcpp: "Scale",
    header: "gp_Elips.hxx".}
proc scaled*(this: Elips; p: Pnt; s: StandardReal): Elips {.noSideEffect,
    importcpp: "Scaled", header: "gp_Elips.hxx".}
proc transform*(this: var Elips; t: Trsf) {.importcpp: "Transform",
                                      header: "gp_Elips.hxx".}
proc transformed*(this: Elips; t: Trsf): Elips {.noSideEffect,
    importcpp: "Transformed", header: "gp_Elips.hxx".}
proc translate*(this: var Elips; v: Vec) {.importcpp: "Translate",
                                     header: "gp_Elips.hxx".}
proc translated*(this: Elips; v: Vec): Elips {.noSideEffect, importcpp: "Translated",
    header: "gp_Elips.hxx".}
proc translate*(this: var Elips; p1: Pnt; p2: Pnt) {.importcpp: "Translate",
    header: "gp_Elips.hxx".}
proc translated*(this: Elips; p1: Pnt; p2: Pnt): Elips {.noSideEffect,
    importcpp: "Translated", header: "gp_Elips.hxx".}