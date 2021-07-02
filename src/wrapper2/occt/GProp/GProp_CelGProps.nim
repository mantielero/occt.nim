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
type
  GPropCelGProps* {.importcpp: "GProp_CelGProps", header: "GProp_CelGProps.hxx",
                   bycopy.} = object of GPropGProps


proc constructGPropCelGProps*(): GPropCelGProps {.constructor,
    importcpp: "GProp_CelGProps(@)", header: "GProp_CelGProps.hxx".}
proc constructGPropCelGProps*(c: GpCirc; cLocation: GpPnt): GPropCelGProps {.
    constructor, importcpp: "GProp_CelGProps(@)", header: "GProp_CelGProps.hxx".}
proc constructGPropCelGProps*(c: GpCirc; u1: StandardReal; u2: StandardReal;
                             cLocation: GpPnt): GPropCelGProps {.constructor,
    importcpp: "GProp_CelGProps(@)", header: "GProp_CelGProps.hxx".}
proc constructGPropCelGProps*(c: GpLin; u1: StandardReal; u2: StandardReal;
                             cLocation: GpPnt): GPropCelGProps {.constructor,
    importcpp: "GProp_CelGProps(@)", header: "GProp_CelGProps.hxx".}
proc setLocation*(this: var GPropCelGProps; cLocation: GpPnt) {.
    importcpp: "SetLocation", header: "GProp_CelGProps.hxx".}
proc perform*(this: var GPropCelGProps; c: GpCirc; u1: StandardReal; u2: StandardReal) {.
    importcpp: "Perform", header: "GProp_CelGProps.hxx".}
proc perform*(this: var GPropCelGProps; c: GpLin; u1: StandardReal; u2: StandardReal) {.
    importcpp: "Perform", header: "GProp_CelGProps.hxx".}

