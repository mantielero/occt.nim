import gprop_types
import ../gp/gp_types

##  Created on: 1992-12-02
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1992-1999 Matra Datavision
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
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Lin"

{.push header:"GProp_CelGProps.hxx".}
proc newGProp_CelGProps*(): GProp_CelGProps {.cdecl, constructor,
    importcpp: "GProp_CelGProps(@)".}
proc newGProp_CelGProps*(C: gp_Circ; CLocation: gp_Pnt): GProp_CelGProps {.cdecl,
    constructor, importcpp: "GProp_CelGProps(@)".}
proc newGProp_CelGProps*(C: gp_Circ; U1: cfloat; U2: cfloat; CLocation: gp_Pnt): GProp_CelGProps {.
    cdecl, constructor, importcpp: "GProp_CelGProps(@)".}
proc newGProp_CelGProps*(C: gp_Lin; U1: cfloat; U2: cfloat; CLocation: gp_Pnt): GProp_CelGProps {.
    cdecl, constructor, importcpp: "GProp_CelGProps(@)".}
proc SetLocation*(this: var GProp_CelGProps; CLocation: gp_Pnt) {.cdecl,
    importcpp: "SetLocation".}
proc Perform*(this: var GProp_CelGProps; C: gp_Circ; U1: cfloat; U2: cfloat) {.cdecl,
    importcpp: "Perform".}
proc Perform*(this: var GProp_CelGProps; C: gp_Lin; U1: cfloat; U2: cfloat) {.cdecl,
    importcpp: "Perform".}
{.pop.}