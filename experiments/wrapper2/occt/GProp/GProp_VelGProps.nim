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
  GPropVelGProps* {.importcpp: "GProp_VelGProps", header: "GProp_VelGProps.hxx",
                   bycopy.} = object of GPropGProps


proc constructGPropVelGProps*(): GPropVelGProps {.constructor,
    importcpp: "GProp_VelGProps(@)", header: "GProp_VelGProps.hxx".}
proc constructGPropVelGProps*(s: Cylinder; alpha1: float; alpha2: float; z1: float;
                             z2: float; vLocation: Pnt): GPropVelGProps {.
    constructor, importcpp: "GProp_VelGProps(@)", header: "GProp_VelGProps.hxx".}
proc constructGPropVelGProps*(s: Cone; alpha1: float; alpha2: float; z1: float;
                             z2: float; vLocation: Pnt): GPropVelGProps {.
    constructor, importcpp: "GProp_VelGProps(@)", header: "GProp_VelGProps.hxx".}
proc constructGPropVelGProps*(s: Sphere; teta1: float; teta2: float; alpha1: float;
                             alpha2: float; vLocation: Pnt): GPropVelGProps {.
    constructor, importcpp: "GProp_VelGProps(@)", header: "GProp_VelGProps.hxx".}
proc constructGPropVelGProps*(s: Torus; teta1: float; teta2: float; alpha1: float;
                             alpha2: float; vLocation: Pnt): GPropVelGProps {.
    constructor, importcpp: "GProp_VelGProps(@)", header: "GProp_VelGProps.hxx".}
proc setLocation*(this: var GPropVelGProps; vLocation: Pnt) {.
    importcpp: "SetLocation", header: "GProp_VelGProps.hxx".}
proc perform*(this: var GPropVelGProps; s: Cylinder; alpha1: float; alpha2: float;
             z1: float; z2: float) {.importcpp: "Perform",
                                 header: "GProp_VelGProps.hxx".}
proc perform*(this: var GPropVelGProps; s: Cone; alpha1: float; alpha2: float; z1: float;
             z2: float) {.importcpp: "Perform", header: "GProp_VelGProps.hxx".}
proc perform*(this: var GPropVelGProps; s: Sphere; teta1: float; teta2: float;
             alpha1: float; alpha2: float) {.importcpp: "Perform",
    header: "GProp_VelGProps.hxx".}
proc perform*(this: var GPropVelGProps; s: Torus; teta1: float; teta2: float;
             alpha1: float; alpha2: float) {.importcpp: "Perform",
    header: "GProp_VelGProps.hxx".}
