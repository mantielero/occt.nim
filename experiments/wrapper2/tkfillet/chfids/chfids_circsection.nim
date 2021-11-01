##  Created on: 1996-03-06
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of gp_Circ"
discard "forward decl of gp_Lin"
type
  ChFiDS_CircSection* {.importcpp: "ChFiDS_CircSection",
                       header: "ChFiDS_CircSection.hxx", bycopy.} = object


proc newChFiDS_CircSection*(): ChFiDS_CircSection {.cdecl, constructor,
    importcpp: "ChFiDS_CircSection(@)", dynlib: tkfillet.}
proc set*(this: var ChFiDS_CircSection; c: Circ; f: cfloat; L: cfloat) {.cdecl,
    importcpp: "Set", dynlib: tkfillet.}
proc set*(this: var ChFiDS_CircSection; c: Lin; f: cfloat; L: cfloat) {.cdecl,
    importcpp: "Set", dynlib: tkfillet.}
proc get*(this: ChFiDS_CircSection; c: var Circ; f: var cfloat; L: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Get", dynlib: tkfillet.}
proc get*(this: ChFiDS_CircSection; c: var Lin; f: var cfloat; L: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Get", dynlib: tkfillet.}