##  Created on: 1992-01-21
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
  V3d_Light

discard "forward decl of V3d_Viewer"
type
  V3d_AmbientLight* {.importcpp: "V3d_AmbientLight",
                     header: "V3d_AmbientLight.hxx", bycopy.} = object of Graphic3d_CLight ##
                                                                                    ## !
                                                                                    ## Constructs
                                                                                    ## an
                                                                                    ## ambient
                                                                                    ## light
                                                                                    ## source
                                                                                    ## in
                                                                                    ## the
                                                                                    ## viewer.
                                                                                    ##
                                                                                    ## !
                                                                                    ## The
                                                                                    ## default
                                                                                    ## Color
                                                                                    ## of
                                                                                    ## this
                                                                                    ## light
                                                                                    ## source
                                                                                    ## is
                                                                                    ## WHITE.

  V3d_AmbientLightbase_type* = Graphic3d_CLight

proc get_type_name*(): cstring {.importcpp: "V3d_AmbientLight::get_type_name(@)",
                              header: "V3d_AmbientLight.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "V3d_AmbientLight::get_type_descriptor(@)",
    header: "V3d_AmbientLight.hxx".}
proc DynamicType*(this: V3d_AmbientLight): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "V3d_AmbientLight.hxx".}
proc constructV3d_AmbientLight*(theColor: Quantity_Color = Quantity_NOC_WHITE): V3d_AmbientLight {.
    constructor, importcpp: "V3d_AmbientLight(@)", header: "V3d_AmbientLight.hxx".}
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

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

## using statement

discard "forward decl of V3d_AmbientLight"
type
  Handle_V3d_AmbientLight* = handle[V3d_AmbientLight]
