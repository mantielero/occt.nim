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
discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Parab"
discard "forward decl of gp_Hypr"
type
  ProjLibCylinder* {.importcpp: "ProjLib_Cylinder", header: "ProjLib_Cylinder.hxx",
                    bycopy.} = object of ProjLibProjector ## ! Undefined projection.


proc constructProjLibCylinder*(): ProjLibCylinder {.constructor,
    importcpp: "ProjLib_Cylinder(@)", header: "ProjLib_Cylinder.hxx".}
proc constructProjLibCylinder*(cyl: Cylinder): ProjLibCylinder {.constructor,
    importcpp: "ProjLib_Cylinder(@)", header: "ProjLib_Cylinder.hxx".}
proc constructProjLibCylinder*(cyl: Cylinder; L: Lin): ProjLibCylinder {.constructor,
    importcpp: "ProjLib_Cylinder(@)", header: "ProjLib_Cylinder.hxx".}
proc constructProjLibCylinder*(cyl: Cylinder; c: Circ): ProjLibCylinder {.constructor,
    importcpp: "ProjLib_Cylinder(@)", header: "ProjLib_Cylinder.hxx".}
proc constructProjLibCylinder*(cyl: Cylinder; e: Elips): ProjLibCylinder {.
    constructor, importcpp: "ProjLib_Cylinder(@)", header: "ProjLib_Cylinder.hxx".}
proc init*(this: var ProjLibCylinder; cyl: Cylinder) {.importcpp: "Init",
    header: "ProjLib_Cylinder.hxx".}
proc project*(this: var ProjLibCylinder; L: Lin) {.importcpp: "Project",
    header: "ProjLib_Cylinder.hxx".}
proc project*(this: var ProjLibCylinder; c: Circ) {.importcpp: "Project",
    header: "ProjLib_Cylinder.hxx".}
proc project*(this: var ProjLibCylinder; e: Elips) {.importcpp: "Project",
    header: "ProjLib_Cylinder.hxx".}
proc project*(this: var ProjLibCylinder; p: Parab) {.importcpp: "Project",
    header: "ProjLib_Cylinder.hxx".}
proc project*(this: var ProjLibCylinder; h: Hypr) {.importcpp: "Project",
    header: "ProjLib_Cylinder.hxx".}

























