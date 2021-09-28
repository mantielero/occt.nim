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
discard "forward decl of gp_Cone"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Parab"
discard "forward decl of gp_Hypr"
type
  ProjLibCone* {.importcpp: "ProjLib_Cone", header: "ProjLib_Cone.hxx", bycopy.} = object of ProjLibProjector ##
                                                                                                    ## !
                                                                                                    ## Undefined
                                                                                                    ## projection.


proc constructProjLibCone*(): ProjLibCone {.constructor,
    importcpp: "ProjLib_Cone(@)", header: "ProjLib_Cone.hxx".}
proc constructProjLibCone*(co: Cone): ProjLibCone {.constructor,
    importcpp: "ProjLib_Cone(@)", header: "ProjLib_Cone.hxx".}
proc constructProjLibCone*(co: Cone; L: Lin): ProjLibCone {.constructor,
    importcpp: "ProjLib_Cone(@)", header: "ProjLib_Cone.hxx".}
proc constructProjLibCone*(co: Cone; c: Circ): ProjLibCone {.constructor,
    importcpp: "ProjLib_Cone(@)", header: "ProjLib_Cone.hxx".}
proc init*(this: var ProjLibCone; co: Cone) {.importcpp: "Init",
                                        header: "ProjLib_Cone.hxx".}
proc project*(this: var ProjLibCone; L: Lin) {.importcpp: "Project",
    header: "ProjLib_Cone.hxx".}
proc project*(this: var ProjLibCone; c: Circ) {.importcpp: "Project",
    header: "ProjLib_Cone.hxx".}
proc project*(this: var ProjLibCone; e: Elips) {.importcpp: "Project",
    header: "ProjLib_Cone.hxx".}
proc project*(this: var ProjLibCone; p: Parab) {.importcpp: "Project",
    header: "ProjLib_Cone.hxx".}
proc project*(this: var ProjLibCone; h: Hypr) {.importcpp: "Project",
    header: "ProjLib_Cone.hxx".}

























