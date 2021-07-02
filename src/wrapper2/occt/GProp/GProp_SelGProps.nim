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

discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Cone"
discard "forward decl of gp_Sphere"
discard "forward decl of gp_Torus"
type
  GPropSelGProps* {.importcpp: "GProp_SelGProps", header: "GProp_SelGProps.hxx",
                   bycopy.} = object of GPropGProps


proc constructGPropSelGProps*(): GPropSelGProps {.constructor,
    importcpp: "GProp_SelGProps(@)", header: "GProp_SelGProps.hxx".}
proc constructGPropSelGProps*(s: GpCylinder; alpha1: StandardReal;
                             alpha2: StandardReal; z1: StandardReal;
                             z2: StandardReal; sLocation: GpPnt): GPropSelGProps {.
    constructor, importcpp: "GProp_SelGProps(@)", header: "GProp_SelGProps.hxx".}
proc constructGPropSelGProps*(s: GpCone; alpha1: StandardReal; alpha2: StandardReal;
                             z1: StandardReal; z2: StandardReal; sLocation: GpPnt): GPropSelGProps {.
    constructor, importcpp: "GProp_SelGProps(@)", header: "GProp_SelGProps.hxx".}
proc constructGPropSelGProps*(s: GpSphere; teta1: StandardReal; teta2: StandardReal;
                             alpha1: StandardReal; alpha2: StandardReal;
                             sLocation: GpPnt): GPropSelGProps {.constructor,
    importcpp: "GProp_SelGProps(@)", header: "GProp_SelGProps.hxx".}
proc constructGPropSelGProps*(s: GpTorus; teta1: StandardReal; teta2: StandardReal;
                             alpha1: StandardReal; alpha2: StandardReal;
                             sLocation: GpPnt): GPropSelGProps {.constructor,
    importcpp: "GProp_SelGProps(@)", header: "GProp_SelGProps.hxx".}
proc setLocation*(this: var GPropSelGProps; sLocation: GpPnt) {.
    importcpp: "SetLocation", header: "GProp_SelGProps.hxx".}
proc perform*(this: var GPropSelGProps; s: GpCylinder; alpha1: StandardReal;
             alpha2: StandardReal; z1: StandardReal; z2: StandardReal) {.
    importcpp: "Perform", header: "GProp_SelGProps.hxx".}
proc perform*(this: var GPropSelGProps; s: GpCone; alpha1: StandardReal;
             alpha2: StandardReal; z1: StandardReal; z2: StandardReal) {.
    importcpp: "Perform", header: "GProp_SelGProps.hxx".}
proc perform*(this: var GPropSelGProps; s: GpSphere; teta1: StandardReal;
             teta2: StandardReal; alpha1: StandardReal; alpha2: StandardReal) {.
    importcpp: "Perform", header: "GProp_SelGProps.hxx".}
proc perform*(this: var GPropSelGProps; s: GpTorus; teta1: StandardReal;
             teta2: StandardReal; alpha1: StandardReal; alpha2: StandardReal) {.
    importcpp: "Perform", header: "GProp_SelGProps.hxx".}

