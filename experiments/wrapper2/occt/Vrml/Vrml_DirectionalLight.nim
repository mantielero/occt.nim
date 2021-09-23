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
  Vrml_DirectionalLight* {.importcpp: "Vrml_DirectionalLight",
                          header: "Vrml_DirectionalLight.hxx", bycopy.} = object


proc constructVrml_DirectionalLight*(): Vrml_DirectionalLight {.constructor,
    importcpp: "Vrml_DirectionalLight(@)", header: "Vrml_DirectionalLight.hxx".}
proc constructVrml_DirectionalLight*(aOnOff: Standard_Boolean;
                                    aIntensity: Standard_Real;
                                    aColor: Quantity_Color; aDirection: gp_Vec): Vrml_DirectionalLight {.
    constructor, importcpp: "Vrml_DirectionalLight(@)",
    header: "Vrml_DirectionalLight.hxx".}
proc SetOnOff*(this: var Vrml_DirectionalLight; aOnOff: Standard_Boolean) {.
    importcpp: "SetOnOff", header: "Vrml_DirectionalLight.hxx".}
proc OnOff*(this: Vrml_DirectionalLight): Standard_Boolean {.noSideEffect,
    importcpp: "OnOff", header: "Vrml_DirectionalLight.hxx".}
proc SetIntensity*(this: var Vrml_DirectionalLight; aIntensity: Standard_Real) {.
    importcpp: "SetIntensity", header: "Vrml_DirectionalLight.hxx".}
proc Intensity*(this: Vrml_DirectionalLight): Standard_Real {.noSideEffect,
    importcpp: "Intensity", header: "Vrml_DirectionalLight.hxx".}
proc SetColor*(this: var Vrml_DirectionalLight; aColor: Quantity_Color) {.
    importcpp: "SetColor", header: "Vrml_DirectionalLight.hxx".}
proc Color*(this: Vrml_DirectionalLight): Quantity_Color {.noSideEffect,
    importcpp: "Color", header: "Vrml_DirectionalLight.hxx".}
proc SetDirection*(this: var Vrml_DirectionalLight; aDirection: gp_Vec) {.
    importcpp: "SetDirection", header: "Vrml_DirectionalLight.hxx".}
proc Direction*(this: Vrml_DirectionalLight): gp_Vec {.noSideEffect,
    importcpp: "Direction", header: "Vrml_DirectionalLight.hxx".}
proc Print*(this: Vrml_DirectionalLight; anOStream: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_DirectionalLight.hxx".}