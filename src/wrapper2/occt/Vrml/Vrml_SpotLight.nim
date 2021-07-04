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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../Quantity/Quantity_Color, ../gp/gp_Vec,
  ../Standard/Standard_OStream

discard "forward decl of Quantity_Color"
discard "forward decl of gp_Vec"
type
  Vrml_SpotLight* {.importcpp: "Vrml_SpotLight", header: "Vrml_SpotLight.hxx", bycopy.} = object


proc constructVrml_SpotLight*(): Vrml_SpotLight {.constructor,
    importcpp: "Vrml_SpotLight(@)", header: "Vrml_SpotLight.hxx".}
proc constructVrml_SpotLight*(aOnOff: Standard_Boolean; aIntensity: Standard_Real;
                             aColor: Quantity_Color; aLocation: gp_Vec;
                             aDirection: gp_Vec; aDropOffRate: Standard_Real;
                             aCutOffAngle: Standard_Real): Vrml_SpotLight {.
    constructor, importcpp: "Vrml_SpotLight(@)", header: "Vrml_SpotLight.hxx".}
proc SetOnOff*(this: var Vrml_SpotLight; anOnOff: Standard_Boolean) {.
    importcpp: "SetOnOff", header: "Vrml_SpotLight.hxx".}
proc OnOff*(this: Vrml_SpotLight): Standard_Boolean {.noSideEffect,
    importcpp: "OnOff", header: "Vrml_SpotLight.hxx".}
proc SetIntensity*(this: var Vrml_SpotLight; aIntensity: Standard_Real) {.
    importcpp: "SetIntensity", header: "Vrml_SpotLight.hxx".}
proc Intensity*(this: Vrml_SpotLight): Standard_Real {.noSideEffect,
    importcpp: "Intensity", header: "Vrml_SpotLight.hxx".}
proc SetColor*(this: var Vrml_SpotLight; aColor: Quantity_Color) {.
    importcpp: "SetColor", header: "Vrml_SpotLight.hxx".}
proc Color*(this: Vrml_SpotLight): Quantity_Color {.noSideEffect, importcpp: "Color",
    header: "Vrml_SpotLight.hxx".}
proc SetLocation*(this: var Vrml_SpotLight; aLocation: gp_Vec) {.
    importcpp: "SetLocation", header: "Vrml_SpotLight.hxx".}
proc Location*(this: Vrml_SpotLight): gp_Vec {.noSideEffect, importcpp: "Location",
    header: "Vrml_SpotLight.hxx".}
proc SetDirection*(this: var Vrml_SpotLight; aDirection: gp_Vec) {.
    importcpp: "SetDirection", header: "Vrml_SpotLight.hxx".}
proc Direction*(this: Vrml_SpotLight): gp_Vec {.noSideEffect, importcpp: "Direction",
    header: "Vrml_SpotLight.hxx".}
proc SetDropOffRate*(this: var Vrml_SpotLight; aDropOffRate: Standard_Real) {.
    importcpp: "SetDropOffRate", header: "Vrml_SpotLight.hxx".}
proc DropOffRate*(this: Vrml_SpotLight): Standard_Real {.noSideEffect,
    importcpp: "DropOffRate", header: "Vrml_SpotLight.hxx".}
proc SetCutOffAngle*(this: var Vrml_SpotLight; aCutOffAngle: Standard_Real) {.
    importcpp: "SetCutOffAngle", header: "Vrml_SpotLight.hxx".}
proc CutOffAngle*(this: Vrml_SpotLight): Standard_Real {.noSideEffect,
    importcpp: "CutOffAngle", header: "Vrml_SpotLight.hxx".}
proc Print*(this: Vrml_SpotLight; anOStream: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_SpotLight.hxx".}