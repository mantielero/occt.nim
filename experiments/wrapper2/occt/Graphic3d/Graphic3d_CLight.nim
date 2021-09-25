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

## ! Generic light source definition.
## ! This class defines arbitrary light source - see Graphic3d_TypeOfLightSource enumeration.
## ! Some parameters are applicable only to particular light type;
## ! calling methods unrelated to current type will throw an exception.

type
  Graphic3dCLight* {.importcpp: "Graphic3d_CLight", header: "Graphic3d_CLight.hxx",
                    bycopy.} = object of StandardTransient ## ! Empty constructor, which should be followed by light source properties configuration.
                                                      ## ! Returns location of positional/spot light; (0, 0, 0) by default.
                                                      ## ! Returns direction of directional/spot light.
                                                      ## ! Returns an angle in radians of the cone created by the spot; 30 degrees by default.
                                                      ## ! Returns the intensity of light source; 1.0 by default.
                                                      ## ! @return light resource identifier string
                                                      ## ! Access positional/spot light constant attenuation coefficient from packed vector.
                                                      ## ! Generate unique object id.
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

  Graphic3dCLightbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Graphic3d_CLight::get_type_name(@)",
                            header: "Graphic3d_CLight.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_CLight::get_type_descriptor(@)",
    header: "Graphic3d_CLight.hxx".}
proc dynamicType*(this: Graphic3dCLight): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_CLight.hxx".}
proc constructGraphic3dCLight*(theType: Graphic3dTypeOfLightSource): Graphic3dCLight {.
    constructor, importcpp: "Graphic3d_CLight(@)", header: "Graphic3d_CLight.hxx".}
proc `type`*(this: Graphic3dCLight): Graphic3dTypeOfLightSource {.noSideEffect,
    importcpp: "Type", header: "Graphic3d_CLight.hxx".}
proc name*(this: Graphic3dCLight): TCollectionAsciiString {.noSideEffect,
    importcpp: "Name", header: "Graphic3d_CLight.hxx".}
proc setName*(this: var Graphic3dCLight; theName: TCollectionAsciiString) {.
    importcpp: "SetName", header: "Graphic3d_CLight.hxx".}
proc color*(this: Graphic3dCLight): QuantityColor {.noSideEffect, importcpp: "Color",
    header: "Graphic3d_CLight.hxx".}
proc setColor*(this: var Graphic3dCLight; theColor: QuantityColor) {.
    importcpp: "SetColor", header: "Graphic3d_CLight.hxx".}
proc isEnabled*(this: Graphic3dCLight): bool {.noSideEffect, importcpp: "IsEnabled",
    header: "Graphic3d_CLight.hxx".}
proc setEnabled*(this: var Graphic3dCLight; theIsOn: bool) {.importcpp: "SetEnabled",
    header: "Graphic3d_CLight.hxx".}
proc isHeadlight*(this: Graphic3dCLight): bool {.noSideEffect,
    importcpp: "IsHeadlight", header: "Graphic3d_CLight.hxx".}
proc headlight*(this: Graphic3dCLight): bool {.noSideEffect, importcpp: "Headlight",
    header: "Graphic3d_CLight.hxx".}
proc setHeadlight*(this: var Graphic3dCLight; theValue: bool) {.
    importcpp: "SetHeadlight", header: "Graphic3d_CLight.hxx".}
proc position*(this: Graphic3dCLight): Pnt {.noSideEffect, importcpp: "Position",
    header: "Graphic3d_CLight.hxx".}
proc setPosition*(this: var Graphic3dCLight; thePosition: Pnt) {.
    importcpp: "SetPosition", header: "Graphic3d_CLight.hxx".}
proc position*(this: Graphic3dCLight; theX: var float; theY: var float; theZ: var float) {.
    noSideEffect, importcpp: "Position", header: "Graphic3d_CLight.hxx".}
proc setPosition*(this: var Graphic3dCLight; theX: float; theY: float; theZ: float) {.
    importcpp: "SetPosition", header: "Graphic3d_CLight.hxx".}
proc constAttenuation*(this: Graphic3dCLight): StandardShortReal {.noSideEffect,
    importcpp: "ConstAttenuation", header: "Graphic3d_CLight.hxx".}
proc linearAttenuation*(this: Graphic3dCLight): StandardShortReal {.noSideEffect,
    importcpp: "LinearAttenuation", header: "Graphic3d_CLight.hxx".}
proc attenuation*(this: Graphic3dCLight; theConstAttenuation: var float;
                 theLinearAttenuation: var float) {.noSideEffect,
    importcpp: "Attenuation", header: "Graphic3d_CLight.hxx".}
proc setAttenuation*(this: var Graphic3dCLight;
                    theConstAttenuation: StandardShortReal;
                    theLinearAttenuation: StandardShortReal) {.
    importcpp: "SetAttenuation", header: "Graphic3d_CLight.hxx".}
proc direction*(this: Graphic3dCLight): Dir {.noSideEffect, importcpp: "Direction",
    header: "Graphic3d_CLight.hxx".}
proc setDirection*(this: var Graphic3dCLight; theDir: Dir) {.
    importcpp: "SetDirection", header: "Graphic3d_CLight.hxx".}
proc direction*(this: Graphic3dCLight; theVx: var float; theVy: var float;
               theVz: var float) {.noSideEffect, importcpp: "Direction",
                                header: "Graphic3d_CLight.hxx".}
proc setDirection*(this: var Graphic3dCLight; theVx: float; theVy: float; theVz: float) {.
    importcpp: "SetDirection", header: "Graphic3d_CLight.hxx".}
proc angle*(this: Graphic3dCLight): StandardShortReal {.noSideEffect,
    importcpp: "Angle", header: "Graphic3d_CLight.hxx".}
proc setAngle*(this: var Graphic3dCLight; theAngle: StandardShortReal) {.
    importcpp: "SetAngle", header: "Graphic3d_CLight.hxx".}
proc concentration*(this: Graphic3dCLight): StandardShortReal {.noSideEffect,
    importcpp: "Concentration", header: "Graphic3d_CLight.hxx".}
proc setConcentration*(this: var Graphic3dCLight;
                      theConcentration: StandardShortReal) {.
    importcpp: "SetConcentration", header: "Graphic3d_CLight.hxx".}
proc intensity*(this: Graphic3dCLight): StandardShortReal {.noSideEffect,
    importcpp: "Intensity", header: "Graphic3d_CLight.hxx".}
proc setIntensity*(this: var Graphic3dCLight; theValue: StandardShortReal) {.
    importcpp: "SetIntensity", header: "Graphic3d_CLight.hxx".}
proc smoothness*(this: Graphic3dCLight): StandardShortReal {.noSideEffect,
    importcpp: "Smoothness", header: "Graphic3d_CLight.hxx".}
proc setSmoothRadius*(this: var Graphic3dCLight; theValue: StandardShortReal) {.
    importcpp: "SetSmoothRadius", header: "Graphic3d_CLight.hxx".}
proc setSmoothAngle*(this: var Graphic3dCLight; theValue: StandardShortReal) {.
    importcpp: "SetSmoothAngle", header: "Graphic3d_CLight.hxx".}
proc range*(this: Graphic3dCLight): StandardShortReal {.noSideEffect,
    importcpp: "Range", header: "Graphic3d_CLight.hxx".}
proc setRange*(this: var Graphic3dCLight; theValue: StandardShortReal) {.
    importcpp: "SetRange", header: "Graphic3d_CLight.hxx".}
proc getId*(this: Graphic3dCLight): TCollectionAsciiString {.noSideEffect,
    importcpp: "GetId", header: "Graphic3d_CLight.hxx".}
proc packedParams*(this: Graphic3dCLight): Graphic3dVec4 {.noSideEffect,
    importcpp: "PackedParams", header: "Graphic3d_CLight.hxx".}
proc packedColor*(this: Graphic3dCLight): Graphic3dVec4 {.noSideEffect,
    importcpp: "PackedColor", header: "Graphic3d_CLight.hxx".}
proc packedDirectionRange*(this: Graphic3dCLight): Graphic3dVec4 {.noSideEffect,
    importcpp: "PackedDirectionRange", header: "Graphic3d_CLight.hxx".}
proc revision*(this: Graphic3dCLight): StandardSize {.noSideEffect,
    importcpp: "Revision", header: "Graphic3d_CLight.hxx".}
proc dumpJson*(this: Graphic3dCLight; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Graphic3d_CLight.hxx".}
discard "forward decl of Graphic3d_CLight"
type
  HandleGraphic3dCLight* = Handle[Graphic3dCLight]

