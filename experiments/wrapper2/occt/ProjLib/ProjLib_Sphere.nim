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
  ../Standard/Standard_Handle, ../gp/gp_Sphere, ProjLib_Projector,
  ../Standard/Standard_Real

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of gp_Sphere"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Parab"
discard "forward decl of gp_Hypr"
type
  ProjLib_Sphere* {.importcpp: "ProjLib_Sphere", header: "ProjLib_Sphere.hxx", bycopy.} = object of ProjLib_Projector ##
                                                                                                            ## !
                                                                                                            ## Undefined
                                                                                                            ## projection.


proc constructProjLib_Sphere*(): ProjLib_Sphere {.constructor,
    importcpp: "ProjLib_Sphere(@)", header: "ProjLib_Sphere.hxx".}
proc constructProjLib_Sphere*(Sp: gp_Sphere): ProjLib_Sphere {.constructor,
    importcpp: "ProjLib_Sphere(@)", header: "ProjLib_Sphere.hxx".}
proc constructProjLib_Sphere*(Sp: gp_Sphere; C: gp_Circ): ProjLib_Sphere {.
    constructor, importcpp: "ProjLib_Sphere(@)", header: "ProjLib_Sphere.hxx".}
proc Init*(this: var ProjLib_Sphere; Sp: gp_Sphere) {.importcpp: "Init",
    header: "ProjLib_Sphere.hxx".}
proc Project*(this: var ProjLib_Sphere; L: gp_Lin) {.importcpp: "Project",
    header: "ProjLib_Sphere.hxx".}
proc Project*(this: var ProjLib_Sphere; C: gp_Circ) {.importcpp: "Project",
    header: "ProjLib_Sphere.hxx".}
proc Project*(this: var ProjLib_Sphere; E: gp_Elips) {.importcpp: "Project",
    header: "ProjLib_Sphere.hxx".}
proc Project*(this: var ProjLib_Sphere; P: gp_Parab) {.importcpp: "Project",
    header: "ProjLib_Sphere.hxx".}
proc Project*(this: var ProjLib_Sphere; H: gp_Hypr) {.importcpp: "Project",
    header: "ProjLib_Sphere.hxx".}
proc SetInBounds*(this: var ProjLib_Sphere; U: Standard_Real) {.
    importcpp: "SetInBounds", header: "ProjLib_Sphere.hxx".}