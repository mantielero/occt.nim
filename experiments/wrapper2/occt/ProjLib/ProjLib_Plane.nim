##  Created on: 1993-08-11
##  Created by: Remi LEQUETTE
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
  ../Standard/Standard_Handle, ../gp/gp_Pln, ProjLib_Projector

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Parab"
discard "forward decl of gp_Hypr"
type
  ProjLib_Plane* {.importcpp: "ProjLib_Plane", header: "ProjLib_Plane.hxx", bycopy.} = object of ProjLib_Projector ##
                                                                                                         ## !
                                                                                                         ## Undefined
                                                                                                         ## projection.


proc constructProjLib_Plane*(): ProjLib_Plane {.constructor,
    importcpp: "ProjLib_Plane(@)", header: "ProjLib_Plane.hxx".}
proc constructProjLib_Plane*(Pl: gp_Pln): ProjLib_Plane {.constructor,
    importcpp: "ProjLib_Plane(@)", header: "ProjLib_Plane.hxx".}
proc constructProjLib_Plane*(Pl: gp_Pln; L: gp_Lin): ProjLib_Plane {.constructor,
    importcpp: "ProjLib_Plane(@)", header: "ProjLib_Plane.hxx".}
proc constructProjLib_Plane*(Pl: gp_Pln; C: gp_Circ): ProjLib_Plane {.constructor,
    importcpp: "ProjLib_Plane(@)", header: "ProjLib_Plane.hxx".}
proc constructProjLib_Plane*(Pl: gp_Pln; E: gp_Elips): ProjLib_Plane {.constructor,
    importcpp: "ProjLib_Plane(@)", header: "ProjLib_Plane.hxx".}
proc constructProjLib_Plane*(Pl: gp_Pln; P: gp_Parab): ProjLib_Plane {.constructor,
    importcpp: "ProjLib_Plane(@)", header: "ProjLib_Plane.hxx".}
proc constructProjLib_Plane*(Pl: gp_Pln; H: gp_Hypr): ProjLib_Plane {.constructor,
    importcpp: "ProjLib_Plane(@)", header: "ProjLib_Plane.hxx".}
proc Init*(this: var ProjLib_Plane; Pl: gp_Pln) {.importcpp: "Init",
    header: "ProjLib_Plane.hxx".}
proc Project*(this: var ProjLib_Plane; L: gp_Lin) {.importcpp: "Project",
    header: "ProjLib_Plane.hxx".}
proc Project*(this: var ProjLib_Plane; C: gp_Circ) {.importcpp: "Project",
    header: "ProjLib_Plane.hxx".}
proc Project*(this: var ProjLib_Plane; E: gp_Elips) {.importcpp: "Project",
    header: "ProjLib_Plane.hxx".}
proc Project*(this: var ProjLib_Plane; P: gp_Parab) {.importcpp: "Project",
    header: "ProjLib_Plane.hxx".}
proc Project*(this: var ProjLib_Plane; H: gp_Hypr) {.importcpp: "Project",
    header: "ProjLib_Plane.hxx".}