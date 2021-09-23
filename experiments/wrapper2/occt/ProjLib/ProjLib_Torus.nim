##  Created on: 1993-08-24
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1993-1999 Matra Datavision
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../gp/gp_Torus, ProjLib_Projector

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of gp_Torus"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Parab"
discard "forward decl of gp_Hypr"
type
  ProjLib_Torus* {.importcpp: "ProjLib_Torus", header: "ProjLib_Torus.hxx", bycopy.} = object of ProjLib_Projector ##
                                                                                                         ## !
                                                                                                         ## Undefined
                                                                                                         ## projection.


proc constructProjLib_Torus*(): ProjLib_Torus {.constructor,
    importcpp: "ProjLib_Torus(@)", header: "ProjLib_Torus.hxx".}
proc constructProjLib_Torus*(To: gp_Torus): ProjLib_Torus {.constructor,
    importcpp: "ProjLib_Torus(@)", header: "ProjLib_Torus.hxx".}
proc constructProjLib_Torus*(To: gp_Torus; C: gp_Circ): ProjLib_Torus {.constructor,
    importcpp: "ProjLib_Torus(@)", header: "ProjLib_Torus.hxx".}
proc Init*(this: var ProjLib_Torus; To: gp_Torus) {.importcpp: "Init",
    header: "ProjLib_Torus.hxx".}
proc Project*(this: var ProjLib_Torus; L: gp_Lin) {.importcpp: "Project",
    header: "ProjLib_Torus.hxx".}
proc Project*(this: var ProjLib_Torus; C: gp_Circ) {.importcpp: "Project",
    header: "ProjLib_Torus.hxx".}
proc Project*(this: var ProjLib_Torus; E: gp_Elips) {.importcpp: "Project",
    header: "ProjLib_Torus.hxx".}
proc Project*(this: var ProjLib_Torus; P: gp_Parab) {.importcpp: "Project",
    header: "ProjLib_Torus.hxx".}
proc Project*(this: var ProjLib_Torus; H: gp_Hypr) {.importcpp: "Project",
    header: "ProjLib_Torus.hxx".}