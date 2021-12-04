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

## ! Creation and modification of a spot.
## ! The attenuation factor F determines the illumination of a surface:
## ! @code
## !   F = 1/(ConstAttenuation() + LinearAttenuation() * Distance)
## ! @endcode
## ! Where Distance is the distance from the source to the surface.
## ! The default values (1.0, 0.0) correspond to a minimum of attenuation.
## ! The concentration factor determines the dispersion of the light on the surface, the default value (1.0) corresponds to a minimum of dispersion.

type
  V3dSpotLight* {.importcpp: "V3d_SpotLight", header: "V3d_SpotLight.hxx", bycopy.} = object of V3dPositionLight ##
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


proc newV3dSpotLight*(thePos: Pnt;
                     theDirection: V3dTypeOfOrientation = v3dXnegYnegZpos;
                     theColor: QuantityColor = newQuantityColor(quantityNOC_WHITE)): V3dSpotLight {.
    cdecl, constructor, importcpp: "V3d_SpotLight(@)", header: "V3d_SpotLight.hxx".}
proc newV3dSpotLight*(thePos: Pnt; theDirection: Dir;
                     theColor: QuantityColor = newQuantityColor(quantityNOC_WHITE)): V3dSpotLight {.
    cdecl, constructor, importcpp: "V3d_SpotLight(@)", header: "V3d_SpotLight.hxx".}
proc setDirection*(this: var V3dSpotLight; theOrientation: V3dTypeOfOrientation) {.
    cdecl, importcpp: "SetDirection", header: "V3d_SpotLight.hxx".}
## using statement

## using statement

## using statement

type
  HandleV3dSpotLight* = Handle[V3dSpotLight]
