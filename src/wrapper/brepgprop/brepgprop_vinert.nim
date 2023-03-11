import brepgprop_types
import ../gp/gp_types
##  Created on: 1991-04-12
##  Created by: Michel CHAUVAT
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

discard "forward decl of BRepGProp_Face"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pln"
discard "forward decl of BRepGProp_Domain"

proc newBRepGProp_Vinert*(): BRepGProp_Vinert {.cdecl, constructor,
    importcpp: "BRepGProp_Vinert(@)".}
proc newBRepGProp_Vinert*(S: BRepGProp_Face; VLocation: gp_Pnt): BRepGProp_Vinert {.
    cdecl, constructor, importcpp: "BRepGProp_Vinert(@)".}
proc newBRepGProp_Vinert*(S: var BRepGProp_Face; VLocation: gp_Pnt; Eps: cfloat): BRepGProp_Vinert {.
    cdecl, constructor, importcpp: "BRepGProp_Vinert(@)".}
proc newBRepGProp_Vinert*(S: BRepGProp_Face; O: gp_Pnt; VLocation: gp_Pnt): BRepGProp_Vinert {.
    cdecl, constructor, importcpp: "BRepGProp_Vinert(@)".}
proc newBRepGProp_Vinert*(S: var BRepGProp_Face; O: gp_Pnt; VLocation: gp_Pnt;
                         Eps: cfloat): BRepGProp_Vinert {.cdecl, constructor,
    importcpp: "BRepGProp_Vinert(@)".}
proc newBRepGProp_Vinert*(S: BRepGProp_Face; Pl: gp_Pln; VLocation: gp_Pnt): BRepGProp_Vinert {.
    cdecl, constructor, importcpp: "BRepGProp_Vinert(@)".}
proc newBRepGProp_Vinert*(S: var BRepGProp_Face; Pl: gp_Pln; VLocation: gp_Pnt;
                         Eps: cfloat): BRepGProp_Vinert {.cdecl, constructor,
    importcpp: "BRepGProp_Vinert(@)".}
proc newBRepGProp_Vinert*(S: var BRepGProp_Face; D: var BRepGProp_Domain;
                         VLocation: gp_Pnt): BRepGProp_Vinert {.cdecl, constructor,
    importcpp: "BRepGProp_Vinert(@)".}
proc newBRepGProp_Vinert*(S: var BRepGProp_Face; D: var BRepGProp_Domain;
                         VLocation: gp_Pnt; Eps: cfloat): BRepGProp_Vinert {.cdecl,
    constructor, importcpp: "BRepGProp_Vinert(@)".}
proc newBRepGProp_Vinert*(S: var BRepGProp_Face; D: var BRepGProp_Domain; O: gp_Pnt;
                         VLocation: gp_Pnt): BRepGProp_Vinert {.cdecl, constructor,
    importcpp: "BRepGProp_Vinert(@)".}
proc newBRepGProp_Vinert*(S: var BRepGProp_Face; D: var BRepGProp_Domain; O: gp_Pnt;
                         VLocation: gp_Pnt; Eps: cfloat): BRepGProp_Vinert {.cdecl,
    constructor, importcpp: "BRepGProp_Vinert(@)".}
proc newBRepGProp_Vinert*(S: var BRepGProp_Face; D: var BRepGProp_Domain; Pl: gp_Pln;
                         VLocation: gp_Pnt): BRepGProp_Vinert {.cdecl, constructor,
    importcpp: "BRepGProp_Vinert(@)".}
proc newBRepGProp_Vinert*(S: var BRepGProp_Face; D: var BRepGProp_Domain; Pl: gp_Pln;
                         VLocation: gp_Pnt; Eps: cfloat): BRepGProp_Vinert {.cdecl,
    constructor, importcpp: "BRepGProp_Vinert(@)".}
proc SetLocation*(this: var BRepGProp_Vinert; VLocation: gp_Pnt) {.cdecl,
    importcpp: "SetLocation".}
proc Perform*(this: var BRepGProp_Vinert; S: BRepGProp_Face) {.cdecl,
    importcpp: "Perform".}
proc Perform*(this: var BRepGProp_Vinert; S: var BRepGProp_Face; Eps: cfloat): cfloat {.
    cdecl, importcpp: "Perform".}
proc Perform*(this: var BRepGProp_Vinert; S: BRepGProp_Face; O: gp_Pnt) {.cdecl,
    importcpp: "Perform".}
proc Perform*(this: var BRepGProp_Vinert; S: var BRepGProp_Face; O: gp_Pnt; Eps: cfloat): cfloat {.
    cdecl, importcpp: "Perform".}
proc Perform*(this: var BRepGProp_Vinert; S: BRepGProp_Face; Pl: gp_Pln) {.cdecl,
    importcpp: "Perform".}
proc Perform*(this: var BRepGProp_Vinert; S: var BRepGProp_Face; Pl: gp_Pln; Eps: cfloat): cfloat {.
    cdecl, importcpp: "Perform".}
proc Perform*(this: var BRepGProp_Vinert; S: var BRepGProp_Face;
             D: var BRepGProp_Domain) {.cdecl, importcpp: "Perform".}
proc Perform*(this: var BRepGProp_Vinert; S: var BRepGProp_Face;
             D: var BRepGProp_Domain; Eps: cfloat): cfloat {.cdecl,
    importcpp: "Perform".}
proc Perform*(this: var BRepGProp_Vinert; S: var BRepGProp_Face;
             D: var BRepGProp_Domain; O: gp_Pnt) {.cdecl, importcpp: "Perform",
    .}
proc Perform*(this: var BRepGProp_Vinert; S: var BRepGProp_Face;
             D: var BRepGProp_Domain; O: gp_Pnt; Eps: cfloat): cfloat {.cdecl,
    importcpp: "Perform".}
proc Perform*(this: var BRepGProp_Vinert; S: var BRepGProp_Face;
             D: var BRepGProp_Domain; Pl: gp_Pln) {.cdecl, importcpp: "Perform",
    .}
proc Perform*(this: var BRepGProp_Vinert; S: var BRepGProp_Face;
             D: var BRepGProp_Domain; Pl: gp_Pln; Eps: cfloat): cfloat {.cdecl,
    importcpp: "Perform".}
proc GetEpsilon*(this: var BRepGProp_Vinert): cfloat {.cdecl, importcpp: "GetEpsilon",
    .}