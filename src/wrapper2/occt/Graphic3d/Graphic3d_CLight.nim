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
  ../gp/gp_Dir, Graphic3d_TypeOfLightSource, Graphic3d_Vec,
  ../NCollection/NCollection_List, ../TCollection/TCollection_AsciiString,
  ../Quantity/Quantity_ColorRGBA

## ! Generic light source definition.
## ! This class defines arbitrary light source - see Graphic3d_TypeOfLightSource enumeration.
## ! Some parameters are applicable only to particular light type;
## ! calling methods unrelated to current type will throw an exception.

type
  Graphic3d_CLight* {.importcpp: "Graphic3d_CLight",
                     header: "Graphic3d_CLight.hxx", bycopy.} = object of Standard_Transient ##
                                                                                      ## !
                                                                                      ## Empty
                                                                                      ## constructor,
                                                                                      ## which
                                                                                      ## should
                                                                                      ## be
                                                                                      ## followed
                                                                                      ## by
                                                                                      ## light
                                                                                      ## source
                                                                                      ## properties
                                                                                      ## configuration.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## location
                                                                                      ## of
                                                                                      ## positional/spot
                                                                                      ## light;
                                                                                      ## (0,
                                                                                      ## 0,
                                                                                      ## 0)
                                                                                      ## by
                                                                                      ## default.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## direction
                                                                                      ## of
                                                                                      ## directional/spot
                                                                                      ## light.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## an
                                                                                      ## angle
                                                                                      ## in
                                                                                      ## radians
                                                                                      ## of
                                                                                      ## the
                                                                                      ## cone
                                                                                      ## created
                                                                                      ## by
                                                                                      ## the
                                                                                      ## spot;
                                                                                      ## 30
                                                                                      ## degrees
                                                                                      ## by
                                                                                      ## default.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## the
                                                                                      ## intensity
                                                                                      ## of
                                                                                      ## light
                                                                                      ## source;
                                                                                      ## 1.0
                                                                                      ## by
                                                                                      ## default.
                                                                                      ##
                                                                                      ## !
                                                                                      ## @return
                                                                                      ## light
                                                                                      ## resource
                                                                                      ## identifier
                                                                                      ## string
                                                                                      ##
                                                                                      ## !
                                                                                      ## Access
                                                                                      ## positional/spot
                                                                                      ## light
                                                                                      ## constant
                                                                                      ## attenuation
                                                                                      ## coefficient
                                                                                      ## from
                                                                                      ## packed
                                                                                      ## vector.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Generate
                                                                                      ## unique
                                                                                      ## object
                                                                                      ## id.
    ## !< resource id
    ## !< user given name
    ## !< light position
    ## !< light color
    ## !< direction of directional/spot light
    ## !< packed light parameters
    ## !< radius for point light or cone angle for directional light
    ## !< intensity multiplier for light
    ## !< Graphic3d_TypeOfLightSource enumeration
    ## !< modification counter
    ## !< flag to mark head light
    ## !< enabled state

  Graphic3d_CLightbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Graphic3d_CLight::get_type_name(@)",
                              header: "Graphic3d_CLight.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_CLight::get_type_descriptor(@)",
    header: "Graphic3d_CLight.hxx".}
proc DynamicType*(this: Graphic3d_CLight): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_CLight.hxx".}
proc constructGraphic3d_CLight*(theType: Graphic3d_TypeOfLightSource): Graphic3d_CLight {.
    constructor, importcpp: "Graphic3d_CLight(@)", header: "Graphic3d_CLight.hxx".}
proc Type*(this: Graphic3d_CLight): Graphic3d_TypeOfLightSource {.noSideEffect,
    importcpp: "Type", header: "Graphic3d_CLight.hxx".}
proc Name*(this: Graphic3d_CLight): TCollection_AsciiString {.noSideEffect,
    importcpp: "Name", header: "Graphic3d_CLight.hxx".}
proc SetName*(this: var Graphic3d_CLight; theName: TCollection_AsciiString) {.
    importcpp: "SetName", header: "Graphic3d_CLight.hxx".}
proc Color*(this: Graphic3d_CLight): Quantity_Color {.noSideEffect,
    importcpp: "Color", header: "Graphic3d_CLight.hxx".}
proc SetColor*(this: var Graphic3d_CLight; theColor: Quantity_Color) {.
    importcpp: "SetColor", header: "Graphic3d_CLight.hxx".}
proc IsEnabled*(this: Graphic3d_CLight): Standard_Boolean {.noSideEffect,
    importcpp: "IsEnabled", header: "Graphic3d_CLight.hxx".}
proc SetEnabled*(this: var Graphic3d_CLight; theIsOn: Standard_Boolean) {.
    importcpp: "SetEnabled", header: "Graphic3d_CLight.hxx".}
proc IsHeadlight*(this: Graphic3d_CLight): Standard_Boolean {.noSideEffect,
    importcpp: "IsHeadlight", header: "Graphic3d_CLight.hxx".}
proc Headlight*(this: Graphic3d_CLight): Standard_Boolean {.noSideEffect,
    importcpp: "Headlight", header: "Graphic3d_CLight.hxx".}
proc SetHeadlight*(this: var Graphic3d_CLight; theValue: Standard_Boolean) {.
    importcpp: "SetHeadlight", header: "Graphic3d_CLight.hxx".}
proc Position*(this: Graphic3d_CLight): gp_Pnt {.noSideEffect, importcpp: "Position",
    header: "Graphic3d_CLight.hxx".}
proc SetPosition*(this: var Graphic3d_CLight; thePosition: gp_Pnt) {.
    importcpp: "SetPosition", header: "Graphic3d_CLight.hxx".}
proc Position*(this: Graphic3d_CLight; theX: var Standard_Real;
              theY: var Standard_Real; theZ: var Standard_Real) {.noSideEffect,
    importcpp: "Position", header: "Graphic3d_CLight.hxx".}
proc SetPosition*(this: var Graphic3d_CLight; theX: Standard_Real;
                 theY: Standard_Real; theZ: Standard_Real) {.
    importcpp: "SetPosition", header: "Graphic3d_CLight.hxx".}
proc ConstAttenuation*(this: Graphic3d_CLight): Standard_ShortReal {.noSideEffect,
    importcpp: "ConstAttenuation", header: "Graphic3d_CLight.hxx".}
proc LinearAttenuation*(this: Graphic3d_CLight): Standard_ShortReal {.noSideEffect,
    importcpp: "LinearAttenuation", header: "Graphic3d_CLight.hxx".}
proc Attenuation*(this: Graphic3d_CLight; theConstAttenuation: var Standard_Real;
                 theLinearAttenuation: var Standard_Real) {.noSideEffect,
    importcpp: "Attenuation", header: "Graphic3d_CLight.hxx".}
proc SetAttenuation*(this: var Graphic3d_CLight;
                    theConstAttenuation: Standard_ShortReal;
                    theLinearAttenuation: Standard_ShortReal) {.
    importcpp: "SetAttenuation", header: "Graphic3d_CLight.hxx".}
proc Direction*(this: Graphic3d_CLight): gp_Dir {.noSideEffect,
    importcpp: "Direction", header: "Graphic3d_CLight.hxx".}
proc SetDirection*(this: var Graphic3d_CLight; theDir: gp_Dir) {.
    importcpp: "SetDirection", header: "Graphic3d_CLight.hxx".}
proc Direction*(this: Graphic3d_CLight; theVx: var Standard_Real;
               theVy: var Standard_Real; theVz: var Standard_Real) {.noSideEffect,
    importcpp: "Direction", header: "Graphic3d_CLight.hxx".}
proc SetDirection*(this: var Graphic3d_CLight; theVx: Standard_Real;
                  theVy: Standard_Real; theVz: Standard_Real) {.
    importcpp: "SetDirection", header: "Graphic3d_CLight.hxx".}
proc Angle*(this: Graphic3d_CLight): Standard_ShortReal {.noSideEffect,
    importcpp: "Angle", header: "Graphic3d_CLight.hxx".}
proc SetAngle*(this: var Graphic3d_CLight; theAngle: Standard_ShortReal) {.
    importcpp: "SetAngle", header: "Graphic3d_CLight.hxx".}
proc Concentration*(this: Graphic3d_CLight): Standard_ShortReal {.noSideEffect,
    importcpp: "Concentration", header: "Graphic3d_CLight.hxx".}
proc SetConcentration*(this: var Graphic3d_CLight;
                      theConcentration: Standard_ShortReal) {.
    importcpp: "SetConcentration", header: "Graphic3d_CLight.hxx".}
proc Intensity*(this: Graphic3d_CLight): Standard_ShortReal {.noSideEffect,
    importcpp: "Intensity", header: "Graphic3d_CLight.hxx".}
proc SetIntensity*(this: var Graphic3d_CLight; theValue: Standard_ShortReal) {.
    importcpp: "SetIntensity", header: "Graphic3d_CLight.hxx".}
proc Smoothness*(this: Graphic3d_CLight): Standard_ShortReal {.noSideEffect,
    importcpp: "Smoothness", header: "Graphic3d_CLight.hxx".}
proc SetSmoothRadius*(this: var Graphic3d_CLight; theValue: Standard_ShortReal) {.
    importcpp: "SetSmoothRadius", header: "Graphic3d_CLight.hxx".}
proc SetSmoothAngle*(this: var Graphic3d_CLight; theValue: Standard_ShortReal) {.
    importcpp: "SetSmoothAngle", header: "Graphic3d_CLight.hxx".}
proc Range*(this: Graphic3d_CLight): Standard_ShortReal {.noSideEffect,
    importcpp: "Range", header: "Graphic3d_CLight.hxx".}
proc SetRange*(this: var Graphic3d_CLight; theValue: Standard_ShortReal) {.
    importcpp: "SetRange", header: "Graphic3d_CLight.hxx".}
proc GetId*(this: Graphic3d_CLight): TCollection_AsciiString {.noSideEffect,
    importcpp: "GetId", header: "Graphic3d_CLight.hxx".}
proc PackedParams*(this: Graphic3d_CLight): Graphic3d_Vec4 {.noSideEffect,
    importcpp: "PackedParams", header: "Graphic3d_CLight.hxx".}
proc PackedColor*(this: Graphic3d_CLight): Graphic3d_Vec4 {.noSideEffect,
    importcpp: "PackedColor", header: "Graphic3d_CLight.hxx".}
proc PackedDirectionRange*(this: Graphic3d_CLight): Graphic3d_Vec4 {.noSideEffect,
    importcpp: "PackedDirectionRange", header: "Graphic3d_CLight.hxx".}
proc Revision*(this: Graphic3d_CLight): Standard_Size {.noSideEffect,
    importcpp: "Revision", header: "Graphic3d_CLight.hxx".}
proc DumpJson*(this: Graphic3d_CLight; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_CLight.hxx".}
discard "forward decl of Graphic3d_CLight"
type
  Handle_Graphic3d_CLight* = handle[Graphic3d_CLight]
