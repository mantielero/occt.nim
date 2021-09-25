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
  VrmlDirectionalLight* {.importcpp: "Vrml_DirectionalLight",
                         header: "Vrml_DirectionalLight.hxx", bycopy.} = object


proc constructVrmlDirectionalLight*(): VrmlDirectionalLight {.constructor,
    importcpp: "Vrml_DirectionalLight(@)", header: "Vrml_DirectionalLight.hxx".}
proc constructVrmlDirectionalLight*(aOnOff: bool; aIntensity: float;
                                   aColor: QuantityColor; aDirection: Vec): VrmlDirectionalLight {.
    constructor, importcpp: "Vrml_DirectionalLight(@)",
    header: "Vrml_DirectionalLight.hxx".}
proc setOnOff*(this: var VrmlDirectionalLight; aOnOff: bool) {.importcpp: "SetOnOff",
    header: "Vrml_DirectionalLight.hxx".}
proc onOff*(this: VrmlDirectionalLight): bool {.noSideEffect, importcpp: "OnOff",
    header: "Vrml_DirectionalLight.hxx".}
proc setIntensity*(this: var VrmlDirectionalLight; aIntensity: float) {.
    importcpp: "SetIntensity", header: "Vrml_DirectionalLight.hxx".}
proc intensity*(this: VrmlDirectionalLight): float {.noSideEffect,
    importcpp: "Intensity", header: "Vrml_DirectionalLight.hxx".}
proc setColor*(this: var VrmlDirectionalLight; aColor: QuantityColor) {.
    importcpp: "SetColor", header: "Vrml_DirectionalLight.hxx".}
proc color*(this: VrmlDirectionalLight): QuantityColor {.noSideEffect,
    importcpp: "Color", header: "Vrml_DirectionalLight.hxx".}
proc setDirection*(this: var VrmlDirectionalLight; aDirection: Vec) {.
    importcpp: "SetDirection", header: "Vrml_DirectionalLight.hxx".}
proc direction*(this: VrmlDirectionalLight): Vec {.noSideEffect,
    importcpp: "Direction", header: "Vrml_DirectionalLight.hxx".}
proc print*(this: VrmlDirectionalLight; anOStream: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_DirectionalLight.hxx".}
