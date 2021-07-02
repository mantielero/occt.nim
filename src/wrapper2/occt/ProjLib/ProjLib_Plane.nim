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

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Parab"
discard "forward decl of gp_Hypr"
type
  ProjLibPlane* {.importcpp: "ProjLib_Plane", header: "ProjLib_Plane.hxx", bycopy.} = object of ProjLibProjector ##
                                                                                                       ## !
                                                                                                       ## Undefined
                                                                                                       ## projection.


proc constructProjLibPlane*(): ProjLibPlane {.constructor,
    importcpp: "ProjLib_Plane(@)", header: "ProjLib_Plane.hxx".}
proc constructProjLibPlane*(pl: GpPln): ProjLibPlane {.constructor,
    importcpp: "ProjLib_Plane(@)", header: "ProjLib_Plane.hxx".}
proc constructProjLibPlane*(pl: GpPln; L: GpLin): ProjLibPlane {.constructor,
    importcpp: "ProjLib_Plane(@)", header: "ProjLib_Plane.hxx".}
proc constructProjLibPlane*(pl: GpPln; c: GpCirc): ProjLibPlane {.constructor,
    importcpp: "ProjLib_Plane(@)", header: "ProjLib_Plane.hxx".}
proc constructProjLibPlane*(pl: GpPln; e: GpElips): ProjLibPlane {.constructor,
    importcpp: "ProjLib_Plane(@)", header: "ProjLib_Plane.hxx".}
proc constructProjLibPlane*(pl: GpPln; p: GpParab): ProjLibPlane {.constructor,
    importcpp: "ProjLib_Plane(@)", header: "ProjLib_Plane.hxx".}
proc constructProjLibPlane*(pl: GpPln; h: GpHypr): ProjLibPlane {.constructor,
    importcpp: "ProjLib_Plane(@)", header: "ProjLib_Plane.hxx".}
proc init*(this: var ProjLibPlane; pl: GpPln) {.importcpp: "Init",
    header: "ProjLib_Plane.hxx".}
proc project*(this: var ProjLibPlane; L: GpLin) {.importcpp: "Project",
    header: "ProjLib_Plane.hxx".}
proc project*(this: var ProjLibPlane; c: GpCirc) {.importcpp: "Project",
    header: "ProjLib_Plane.hxx".}
proc project*(this: var ProjLibPlane; e: GpElips) {.importcpp: "Project",
    header: "ProjLib_Plane.hxx".}
proc project*(this: var ProjLibPlane; p: GpParab) {.importcpp: "Project",
    header: "ProjLib_Plane.hxx".}
proc project*(this: var ProjLibPlane; h: GpHypr) {.importcpp: "Project",
    header: "ProjLib_Plane.hxx".}

