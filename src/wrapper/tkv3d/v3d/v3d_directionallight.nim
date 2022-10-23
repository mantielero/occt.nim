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

## ! Directional light source for a viewer.

type
  V3dDirectionalLight* {.importcpp: "V3d_DirectionalLight",
                        header: "V3d_DirectionalLight.hxx", bycopy.} = object of V3dPositionLight ##
                                                                                           ## !
                                                                                           ## Creates
                                                                                           ## a
                                                                                           ## directional
                                                                                           ## light
                                                                                           ## source
                                                                                           ## in
                                                                                           ## the
                                                                                           ## viewer.


proc newV3dDirectionalLight*(theDirection: V3dTypeOfOrientation = v3dXposYposZpos;
                            theColor: QuantityColor = newQuantityColor(quantityNOC_WHITE);
                            theIsHeadlight: bool = false): V3dDirectionalLight {.
    cdecl, constructor, importcpp: "V3d_DirectionalLight(@)", header: "V3d_DirectionalLight.hxx".}
proc newV3dDirectionalLight*(theDirection: DirObj;
                            theColor: QuantityColor = newQuantityColor(quantityNOC_WHITE);
                            theIsHeadlight: bool = false): V3dDirectionalLight {.
    cdecl, constructor, importcpp: "V3d_DirectionalLight(@)", header: "V3d_DirectionalLight.hxx".}
proc setDirection*(this: var V3dDirectionalLight; theDirection: V3dTypeOfOrientation) {.
    cdecl, importcpp: "SetDirection", header: "V3d_DirectionalLight.hxx".}
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

type
  HandleV3dDirectionalLight* = Handle[V3dDirectionalLight]
