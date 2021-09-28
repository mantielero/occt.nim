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
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Vec"
type
  Hypr* {.importcpp: "gp_Hypr", header: "gp_Hypr.hxx", bycopy.} = object


proc `new`*(this: var Hypr; theSize: csize_t): pointer {.
    importcpp: "gp_Hypr::operator new", header: "gp_Hypr.hxx".}
proc `delete`*(this: var Hypr; theAddress: pointer) {.
    importcpp: "gp_Hypr::operator delete", header: "gp_Hypr.hxx".}
proc `new[]`*(this: var Hypr; theSize: csize_t): pointer {.
    importcpp: "gp_Hypr::operator new[]", header: "gp_Hypr.hxx".}
proc `delete[]`*(this: var Hypr; theAddress: pointer) {.
    importcpp: "gp_Hypr::operator delete[]", header: "gp_Hypr.hxx".}
proc `new`*(this: var Hypr; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "gp_Hypr::operator new", header: "gp_Hypr.hxx".}
proc `delete`*(this: var Hypr; a2: pointer; a3: pointer) {.
    importcpp: "gp_Hypr::operator delete", header: "gp_Hypr.hxx".}
proc constructHypr*(): Hypr {.constructor, importcpp: "gp_Hypr(@)",
                           header: "gp_Hypr.hxx".}
proc constructHypr*(a2: Ax2; majorRadius: StandardReal; minorRadius: StandardReal): Hypr {.
    constructor, importcpp: "gp_Hypr(@)", header: "gp_Hypr.hxx".}
proc setAxis*(this: var Hypr; a1: Ax1) {.importcpp: "SetAxis", header: "gp_Hypr.hxx".}
proc setLocation*(this: var Hypr; p: Pnt) {.importcpp: "SetLocation",
                                      header: "gp_Hypr.hxx".}
proc setMajorRadius*(this: var Hypr; majorRadius: StandardReal) {.
    importcpp: "SetMajorRadius", header: "gp_Hypr.hxx".}
proc setMinorRadius*(this: var Hypr; minorRadius: StandardReal) {.
    importcpp: "SetMinorRadius", header: "gp_Hypr.hxx".}
proc setPosition*(this: var Hypr; a2: Ax2) {.importcpp: "SetPosition",
                                       header: "gp_Hypr.hxx".}
proc asymptote1*(this: Hypr): Ax1 {.noSideEffect, importcpp: "Asymptote1",
                                header: "gp_Hypr.hxx".}
proc asymptote2*(this: Hypr): Ax1 {.noSideEffect, importcpp: "Asymptote2",
                                header: "gp_Hypr.hxx".}
proc axis*(this: Hypr): Ax1 {.noSideEffect, importcpp: "Axis", header: "gp_Hypr.hxx".}
proc conjugateBranch1*(this: Hypr): Hypr {.noSideEffect,
                                       importcpp: "ConjugateBranch1",
                                       header: "gp_Hypr.hxx".}
proc conjugateBranch2*(this: Hypr): Hypr {.noSideEffect,
                                       importcpp: "ConjugateBranch2",
                                       header: "gp_Hypr.hxx".}
proc directrix1*(this: Hypr): Ax1 {.noSideEffect, importcpp: "Directrix1",
                                header: "gp_Hypr.hxx".}
proc directrix2*(this: Hypr): Ax1 {.noSideEffect, importcpp: "Directrix2",
                                header: "gp_Hypr.hxx".}
proc eccentricity*(this: Hypr): StandardReal {.noSideEffect,
    importcpp: "Eccentricity", header: "gp_Hypr.hxx".}
proc focal*(this: Hypr): StandardReal {.noSideEffect, importcpp: "Focal",
                                    header: "gp_Hypr.hxx".}
proc focus1*(this: Hypr): Pnt {.noSideEffect, importcpp: "Focus1",
                            header: "gp_Hypr.hxx".}
proc focus2*(this: Hypr): Pnt {.noSideEffect, importcpp: "Focus2",
                            header: "gp_Hypr.hxx".}
proc location*(this: Hypr): Pnt {.noSideEffect, importcpp: "Location",
                              header: "gp_Hypr.hxx".}
proc majorRadius*(this: Hypr): StandardReal {.noSideEffect, importcpp: "MajorRadius",
    header: "gp_Hypr.hxx".}
proc minorRadius*(this: Hypr): StandardReal {.noSideEffect, importcpp: "MinorRadius",
    header: "gp_Hypr.hxx".}
proc otherBranch*(this: Hypr): Hypr {.noSideEffect, importcpp: "OtherBranch",
                                  header: "gp_Hypr.hxx".}
proc parameter*(this: Hypr): StandardReal {.noSideEffect, importcpp: "Parameter",
                                        header: "gp_Hypr.hxx".}
proc position*(this: Hypr): Ax2 {.noSideEffect, importcpp: "Position",
                              header: "gp_Hypr.hxx".}
proc xAxis*(this: Hypr): Ax1 {.noSideEffect, importcpp: "XAxis", header: "gp_Hypr.hxx".}
proc yAxis*(this: Hypr): Ax1 {.noSideEffect, importcpp: "YAxis", header: "gp_Hypr.hxx".}
proc mirror*(this: var Hypr; p: Pnt) {.importcpp: "Mirror", header: "gp_Hypr.hxx".}
proc mirrored*(this: Hypr; p: Pnt): Hypr {.noSideEffect, importcpp: "Mirrored",
                                     header: "gp_Hypr.hxx".}
proc mirror*(this: var Hypr; a1: Ax1) {.importcpp: "Mirror", header: "gp_Hypr.hxx".}
proc mirrored*(this: Hypr; a1: Ax1): Hypr {.noSideEffect, importcpp: "Mirrored",
                                      header: "gp_Hypr.hxx".}
proc mirror*(this: var Hypr; a2: Ax2) {.importcpp: "Mirror", header: "gp_Hypr.hxx".}
proc mirrored*(this: Hypr; a2: Ax2): Hypr {.noSideEffect, importcpp: "Mirrored",
                                      header: "gp_Hypr.hxx".}
proc rotate*(this: var Hypr; a1: Ax1; ang: StandardReal) {.importcpp: "Rotate",
    header: "gp_Hypr.hxx".}
proc rotated*(this: Hypr; a1: Ax1; ang: StandardReal): Hypr {.noSideEffect,
    importcpp: "Rotated", header: "gp_Hypr.hxx".}
proc scale*(this: var Hypr; p: Pnt; s: StandardReal) {.importcpp: "Scale",
    header: "gp_Hypr.hxx".}
proc scaled*(this: Hypr; p: Pnt; s: StandardReal): Hypr {.noSideEffect,
    importcpp: "Scaled", header: "gp_Hypr.hxx".}
proc transform*(this: var Hypr; t: Trsf) {.importcpp: "Transform", header: "gp_Hypr.hxx".}
proc transformed*(this: Hypr; t: Trsf): Hypr {.noSideEffect, importcpp: "Transformed",
    header: "gp_Hypr.hxx".}
proc translate*(this: var Hypr; v: Vec) {.importcpp: "Translate", header: "gp_Hypr.hxx".}
proc translated*(this: Hypr; v: Vec): Hypr {.noSideEffect, importcpp: "Translated",
                                       header: "gp_Hypr.hxx".}
proc translate*(this: var Hypr; p1: Pnt; p2: Pnt) {.importcpp: "Translate",
    header: "gp_Hypr.hxx".}
proc translated*(this: Hypr; p1: Pnt; p2: Pnt): Hypr {.noSideEffect,
    importcpp: "Translated", header: "gp_Hypr.hxx".}