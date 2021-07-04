##  Created on: 1992-01-22
##  Created by: GG
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
  V3d_PositionLight, V3d_TypeOfOrientation

## ! Directional light source for a viewer.

type
  V3d_DirectionalLight* {.importcpp: "V3d_DirectionalLight",
                         header: "V3d_DirectionalLight.hxx", bycopy.} = object of V3d_PositionLight ##
                                                                                             ## !
                                                                                             ## Creates
                                                                                             ## a
                                                                                             ## directional
                                                                                             ## light
                                                                                             ## source
                                                                                             ## in
                                                                                             ## the
                                                                                             ## viewer.

  V3d_DirectionalLightbase_type* = V3d_PositionLight

proc get_type_name*(): cstring {.importcpp: "V3d_DirectionalLight::get_type_name(@)",
                              header: "V3d_DirectionalLight.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "V3d_DirectionalLight::get_type_descriptor(@)",
    header: "V3d_DirectionalLight.hxx".}
proc DynamicType*(this: V3d_DirectionalLight): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "V3d_DirectionalLight.hxx".}
proc constructV3d_DirectionalLight*(theDirection: V3d_TypeOfOrientation = V3d_XposYposZpos;
    theColor: Quantity_Color = Quantity_NOC_WHITE; theIsHeadlight: Standard_Boolean = Standard_False): V3d_DirectionalLight {.
    constructor, importcpp: "V3d_DirectionalLight(@)",
    header: "V3d_DirectionalLight.hxx".}
proc constructV3d_DirectionalLight*(theDirection: gp_Dir; theColor: Quantity_Color = Quantity_NOC_WHITE;
    theIsHeadlight: Standard_Boolean = Standard_False): V3d_DirectionalLight {.
    constructor, importcpp: "V3d_DirectionalLight(@)",
    header: "V3d_DirectionalLight.hxx".}
proc SetDirection*(this: var V3d_DirectionalLight;
                  theDirection: V3d_TypeOfOrientation) {.
    importcpp: "SetDirection", header: "V3d_DirectionalLight.hxx".}
## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

discard "forward decl of V3d_DirectionalLight"
type
  Handle_V3d_DirectionalLight* = handle[V3d_DirectionalLight]
