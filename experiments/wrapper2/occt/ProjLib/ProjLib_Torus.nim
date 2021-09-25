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

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of gp_Torus"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Parab"
discard "forward decl of gp_Hypr"
type
  ProjLibTorus* {.importcpp: "ProjLib_Torus", header: "ProjLib_Torus.hxx", bycopy.} = object of ProjLibProjector ##
                                                                                                       ## !
                                                                                                       ## Undefined
                                                                                                       ## projection.


proc constructProjLibTorus*(): ProjLibTorus {.constructor,
    importcpp: "ProjLib_Torus(@)", header: "ProjLib_Torus.hxx".}
proc constructProjLibTorus*(to: Torus): ProjLibTorus {.constructor,
    importcpp: "ProjLib_Torus(@)", header: "ProjLib_Torus.hxx".}
proc constructProjLibTorus*(to: Torus; c: Circ): ProjLibTorus {.constructor,
    importcpp: "ProjLib_Torus(@)", header: "ProjLib_Torus.hxx".}
proc init*(this: var ProjLibTorus; to: Torus) {.importcpp: "Init",
    header: "ProjLib_Torus.hxx".}
proc project*(this: var ProjLibTorus; L: Lin) {.importcpp: "Project",
    header: "ProjLib_Torus.hxx".}
proc project*(this: var ProjLibTorus; c: Circ) {.importcpp: "Project",
    header: "ProjLib_Torus.hxx".}
proc project*(this: var ProjLibTorus; e: Elips) {.importcpp: "Project",
    header: "ProjLib_Torus.hxx".}
proc project*(this: var ProjLibTorus; p: Parab) {.importcpp: "Project",
    header: "ProjLib_Torus.hxx".}
proc project*(this: var ProjLibTorus; h: Hypr) {.importcpp: "Project",
    header: "ProjLib_Torus.hxx".}
