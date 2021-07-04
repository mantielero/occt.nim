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
  ../Standard/Standard_Handle, ../gp/gp_Cone, ProjLib_Projector

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of gp_Cone"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Parab"
discard "forward decl of gp_Hypr"
type
  ProjLib_Cone* {.importcpp: "ProjLib_Cone", header: "ProjLib_Cone.hxx", bycopy.} = object of ProjLib_Projector ##
                                                                                                      ## !
                                                                                                      ## Undefined
                                                                                                      ## projection.


proc constructProjLib_Cone*(): ProjLib_Cone {.constructor,
    importcpp: "ProjLib_Cone(@)", header: "ProjLib_Cone.hxx".}
proc constructProjLib_Cone*(Co: gp_Cone): ProjLib_Cone {.constructor,
    importcpp: "ProjLib_Cone(@)", header: "ProjLib_Cone.hxx".}
proc constructProjLib_Cone*(Co: gp_Cone; L: gp_Lin): ProjLib_Cone {.constructor,
    importcpp: "ProjLib_Cone(@)", header: "ProjLib_Cone.hxx".}
proc constructProjLib_Cone*(Co: gp_Cone; C: gp_Circ): ProjLib_Cone {.constructor,
    importcpp: "ProjLib_Cone(@)", header: "ProjLib_Cone.hxx".}
proc Init*(this: var ProjLib_Cone; Co: gp_Cone) {.importcpp: "Init",
    header: "ProjLib_Cone.hxx".}
proc Project*(this: var ProjLib_Cone; L: gp_Lin) {.importcpp: "Project",
    header: "ProjLib_Cone.hxx".}
proc Project*(this: var ProjLib_Cone; C: gp_Circ) {.importcpp: "Project",
    header: "ProjLib_Cone.hxx".}
proc Project*(this: var ProjLib_Cone; E: gp_Elips) {.importcpp: "Project",
    header: "ProjLib_Cone.hxx".}
proc Project*(this: var ProjLib_Cone; P: gp_Parab) {.importcpp: "Project",
    header: "ProjLib_Cone.hxx".}
proc Project*(this: var ProjLib_Cone; H: gp_Hypr) {.importcpp: "Project",
    header: "ProjLib_Cone.hxx".}