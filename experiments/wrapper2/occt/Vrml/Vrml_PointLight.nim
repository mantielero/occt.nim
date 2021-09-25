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
  VrmlPointLight* {.importcpp: "Vrml_PointLight", header: "Vrml_PointLight.hxx",
                   bycopy.} = object


proc constructVrmlPointLight*(): VrmlPointLight {.constructor,
    importcpp: "Vrml_PointLight(@)", header: "Vrml_PointLight.hxx".}
proc constructVrmlPointLight*(aOnOff: bool; aIntensity: float; aColor: QuantityColor;
                             aLocation: Vec): VrmlPointLight {.constructor,
    importcpp: "Vrml_PointLight(@)", header: "Vrml_PointLight.hxx".}
proc setOnOff*(this: var VrmlPointLight; aOnOff: bool) {.importcpp: "SetOnOff",
    header: "Vrml_PointLight.hxx".}
proc onOff*(this: VrmlPointLight): bool {.noSideEffect, importcpp: "OnOff",
                                      header: "Vrml_PointLight.hxx".}
proc setIntensity*(this: var VrmlPointLight; aIntensity: float) {.
    importcpp: "SetIntensity", header: "Vrml_PointLight.hxx".}
proc intensity*(this: VrmlPointLight): float {.noSideEffect, importcpp: "Intensity",
    header: "Vrml_PointLight.hxx".}
proc setColor*(this: var VrmlPointLight; aColor: QuantityColor) {.
    importcpp: "SetColor", header: "Vrml_PointLight.hxx".}
proc color*(this: VrmlPointLight): QuantityColor {.noSideEffect, importcpp: "Color",
    header: "Vrml_PointLight.hxx".}
proc setLocation*(this: var VrmlPointLight; aLocation: Vec) {.
    importcpp: "SetLocation", header: "Vrml_PointLight.hxx".}
proc location*(this: VrmlPointLight): Vec {.noSideEffect, importcpp: "Location",
                                        header: "Vrml_PointLight.hxx".}
proc print*(this: VrmlPointLight; anOStream: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_PointLight.hxx".}
