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
  V3d_PositionLight

## ! Creation and modification of an isolated (positional) light source.
## ! It is also defined by the color and two attenuation factors ConstAttentuation() and LinearAttentuation().
## ! The resulting attenuation factor determining the illumination of a surface depends on the following formula:
## ! @code
## !   F = 1 / (ConstAttenuation() + LinearAttenuation() * Distance)
## ! @endcode
## ! Where Distance is the distance of the isolated source from the surface.

type
  V3d_PositionalLight* {.importcpp: "V3d_PositionalLight",
                        header: "V3d_PositionalLight.hxx", bycopy.} = object of V3d_PositionLight ##
                                                                                           ## !
                                                                                           ## Creates
                                                                                           ## an
                                                                                           ## isolated
                                                                                           ## light
                                                                                           ## source
                                                                                           ## in
                                                                                           ## the
                                                                                           ## viewer
                                                                                           ## with
                                                                                           ## default
                                                                                           ## attenuation
                                                                                           ## factors
                                                                                           ## (1.0,
                                                                                           ## 0.0).

  V3d_PositionalLightbase_type* = V3d_PositionLight

proc get_type_name*(): cstring {.importcpp: "V3d_PositionalLight::get_type_name(@)",
                              header: "V3d_PositionalLight.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "V3d_PositionalLight::get_type_descriptor(@)",
    header: "V3d_PositionalLight.hxx".}
proc DynamicType*(this: V3d_PositionalLight): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "V3d_PositionalLight.hxx".}
proc constructV3d_PositionalLight*(thePos: gp_Pnt;
                                  theColor: Quantity_Color = Quantity_NOC_WHITE): V3d_PositionalLight {.
    constructor, importcpp: "V3d_PositionalLight(@)",
    header: "V3d_PositionalLight.hxx".}
## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

discard "forward decl of V3d_PositionalLight"
type
  Handle_V3d_PositionalLight* = handle[V3d_PositionalLight]
