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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, GProp_GProps, ../Standard/Standard_Real

discard "forward decl of gp_Circ"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Lin"
type
  GProp_CelGProps* {.importcpp: "GProp_CelGProps", header: "GProp_CelGProps.hxx",
                    bycopy.} = object of GProp_GProps


proc constructGProp_CelGProps*(): GProp_CelGProps {.constructor,
    importcpp: "GProp_CelGProps(@)", header: "GProp_CelGProps.hxx".}
proc constructGProp_CelGProps*(C: gp_Circ; CLocation: gp_Pnt): GProp_CelGProps {.
    constructor, importcpp: "GProp_CelGProps(@)", header: "GProp_CelGProps.hxx".}
proc constructGProp_CelGProps*(C: gp_Circ; U1: Standard_Real; U2: Standard_Real;
                              CLocation: gp_Pnt): GProp_CelGProps {.constructor,
    importcpp: "GProp_CelGProps(@)", header: "GProp_CelGProps.hxx".}
proc constructGProp_CelGProps*(C: gp_Lin; U1: Standard_Real; U2: Standard_Real;
                              CLocation: gp_Pnt): GProp_CelGProps {.constructor,
    importcpp: "GProp_CelGProps(@)", header: "GProp_CelGProps.hxx".}
proc SetLocation*(this: var GProp_CelGProps; CLocation: gp_Pnt) {.
    importcpp: "SetLocation", header: "GProp_CelGProps.hxx".}
proc Perform*(this: var GProp_CelGProps; C: gp_Circ; U1: Standard_Real;
             U2: Standard_Real) {.importcpp: "Perform",
                                header: "GProp_CelGProps.hxx".}
proc Perform*(this: var GProp_CelGProps; C: gp_Lin; U1: Standard_Real; U2: Standard_Real) {.
    importcpp: "Perform", header: "GProp_CelGProps.hxx".}