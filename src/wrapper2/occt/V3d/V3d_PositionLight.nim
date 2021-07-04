##  Created on: 1997-11-21
##  Created by: ZOV
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
  ../Graphic3d/Graphic3d_Vertex, V3d_Light, V3d_TypeOfPickLight,
  V3d_TypeOfRepresentation

## ! Base class for Positional, Spot and Directional Light classes.

type
  V3d_PositionLight* {.importcpp: "V3d_PositionLight",
                      header: "V3d_PositionLight.hxx", bycopy.} = object of Graphic3d_CLight ##
                                                                                      ## !
                                                                                      ## Protected
                                                                                      ## constructor.

  V3d_PositionLightbase_type* = Graphic3d_CLight

proc get_type_name*(): cstring {.importcpp: "V3d_PositionLight::get_type_name(@)",
                              header: "V3d_PositionLight.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "V3d_PositionLight::get_type_descriptor(@)",
    header: "V3d_PositionLight.hxx".}
proc DynamicType*(this: V3d_PositionLight): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "V3d_PositionLight.hxx".}
## using statement

## using statement

discard "forward decl of V3d_PositionLight"
type
  Handle_V3d_PositionLight* = handle[V3d_PositionLight]
