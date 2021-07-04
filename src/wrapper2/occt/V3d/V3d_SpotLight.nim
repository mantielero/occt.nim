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

## ! Creation and modification of a spot.
## ! The attenuation factor F determines the illumination of a surface:
## ! @code
## !   F = 1/(ConstAttenuation() + LinearAttenuation() * Distance)
## ! @endcode
## ! Where Distance is the distance from the source to the surface.
## ! The default values (1.0, 0.0) correspond to a minimum of attenuation.
## ! The concentration factor determines the dispersion of the light on the surface, the default value (1.0) corresponds to a minimum of dispersion.

type
  V3d_SpotLight* {.importcpp: "V3d_SpotLight", header: "V3d_SpotLight.hxx", bycopy.} = object of V3d_PositionLight ##
                                                                                                         ## !
                                                                                                         ## Creates
                                                                                                         ## a
                                                                                                         ## light
                                                                                                         ## source
                                                                                                         ## of
                                                                                                         ## the
                                                                                                         ## Spot
                                                                                                         ## type
                                                                                                         ## in
                                                                                                         ## the
                                                                                                         ## viewer
                                                                                                         ## with
                                                                                                         ## default
                                                                                                         ## attenuation
                                                                                                         ## factors
                                                                                                         ## (1.0,
                                                                                                         ## 0.0),
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## concentration
                                                                                                         ## factor
                                                                                                         ## 1.0
                                                                                                         ## and
                                                                                                         ## spot
                                                                                                         ## angle
                                                                                                         ## 30
                                                                                                         ## degrees.

  V3d_SpotLightbase_type* = V3d_PositionLight

proc get_type_name*(): cstring {.importcpp: "V3d_SpotLight::get_type_name(@)",
                              header: "V3d_SpotLight.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "V3d_SpotLight::get_type_descriptor(@)",
    header: "V3d_SpotLight.hxx".}
proc DynamicType*(this: V3d_SpotLight): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "V3d_SpotLight.hxx".}
proc constructV3d_SpotLight*(thePos: gp_Pnt; theDirection: V3d_TypeOfOrientation = V3d_XnegYnegZpos;
                            theColor: Quantity_Color = Quantity_NOC_WHITE): V3d_SpotLight {.
    constructor, importcpp: "V3d_SpotLight(@)", header: "V3d_SpotLight.hxx".}
proc constructV3d_SpotLight*(thePos: gp_Pnt; theDirection: gp_Dir;
                            theColor: Quantity_Color = Quantity_NOC_WHITE): V3d_SpotLight {.
    constructor, importcpp: "V3d_SpotLight(@)", header: "V3d_SpotLight.hxx".}
proc SetDirection*(this: var V3d_SpotLight; theOrientation: V3d_TypeOfOrientation) {.
    importcpp: "SetDirection", header: "V3d_SpotLight.hxx".}
## using statement

## using statement

## using statement

discard "forward decl of V3d_SpotLight"
type
  Handle_V3d_SpotLight* = handle[V3d_SpotLight]
