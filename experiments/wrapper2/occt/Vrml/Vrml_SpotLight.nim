##  Created on: 1997-02-12
##  Created by: Alexander BRIVIN
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of Quantity_Color"
discard "forward decl of gp_Vec"
type
  VrmlSpotLight* {.importcpp: "Vrml_SpotLight", header: "Vrml_SpotLight.hxx", bycopy.} = object


proc constructVrmlSpotLight*(): VrmlSpotLight {.constructor,
    importcpp: "Vrml_SpotLight(@)", header: "Vrml_SpotLight.hxx".}
proc constructVrmlSpotLight*(aOnOff: bool; aIntensity: cfloat; aColor: QuantityColor;
                            aLocation: Vec; aDirection: Vec; aDropOffRate: cfloat;
                            aCutOffAngle: cfloat): VrmlSpotLight {.constructor,
    importcpp: "Vrml_SpotLight(@)", header: "Vrml_SpotLight.hxx".}
proc setOnOff*(this: var VrmlSpotLight; anOnOff: bool) {.importcpp: "SetOnOff",
    header: "Vrml_SpotLight.hxx".}
proc onOff*(this: VrmlSpotLight): bool {.noSideEffect, importcpp: "OnOff",
                                     header: "Vrml_SpotLight.hxx".}
proc setIntensity*(this: var VrmlSpotLight; aIntensity: cfloat) {.
    importcpp: "SetIntensity", header: "Vrml_SpotLight.hxx".}
proc intensity*(this: VrmlSpotLight): cfloat {.noSideEffect, importcpp: "Intensity",
    header: "Vrml_SpotLight.hxx".}
proc setColor*(this: var VrmlSpotLight; aColor: QuantityColor) {.
    importcpp: "SetColor", header: "Vrml_SpotLight.hxx".}
proc color*(this: VrmlSpotLight): QuantityColor {.noSideEffect, importcpp: "Color",
    header: "Vrml_SpotLight.hxx".}
proc setLocation*(this: var VrmlSpotLight; aLocation: Vec) {.importcpp: "SetLocation",
    header: "Vrml_SpotLight.hxx".}
proc location*(this: VrmlSpotLight): Vec {.noSideEffect, importcpp: "Location",
                                       header: "Vrml_SpotLight.hxx".}
proc setDirection*(this: var VrmlSpotLight; aDirection: Vec) {.
    importcpp: "SetDirection", header: "Vrml_SpotLight.hxx".}
proc direction*(this: VrmlSpotLight): Vec {.noSideEffect, importcpp: "Direction",
                                        header: "Vrml_SpotLight.hxx".}
proc setDropOffRate*(this: var VrmlSpotLight; aDropOffRate: cfloat) {.
    importcpp: "SetDropOffRate", header: "Vrml_SpotLight.hxx".}
proc dropOffRate*(this: VrmlSpotLight): cfloat {.noSideEffect,
    importcpp: "DropOffRate", header: "Vrml_SpotLight.hxx".}
proc setCutOffAngle*(this: var VrmlSpotLight; aCutOffAngle: cfloat) {.
    importcpp: "SetCutOffAngle", header: "Vrml_SpotLight.hxx".}
proc cutOffAngle*(this: VrmlSpotLight): cfloat {.noSideEffect,
    importcpp: "CutOffAngle", header: "Vrml_SpotLight.hxx".}
proc print*(this: VrmlSpotLight; anOStream: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_SpotLight.hxx".}

























