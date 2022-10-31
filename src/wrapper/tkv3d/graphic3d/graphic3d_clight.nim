import ../../tkmath/gp/gp_types
import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/standard/standard_types
import graphic3d_types
import ../../tkernel/quantity/quantity_types



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



proc newGraphic3dCLight*(theType: Graphic3dTypeOfLightSource): Graphic3dCLight {.
    cdecl, constructor, importcpp: "Graphic3d_CLight(@)", header: "Graphic3d_CLight.hxx".}
proc `type`*(this: Graphic3dCLight): Graphic3dTypeOfLightSource {.noSideEffect,
    cdecl, importcpp: "Type", header: "Graphic3d_CLight.hxx".}
proc name*(this: Graphic3dCLight): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Name", header: "Graphic3d_CLight.hxx".}
proc setName*(this: var Graphic3dCLight; theName: TCollectionAsciiString) {.cdecl,
    importcpp: "SetName", header: "Graphic3d_CLight.hxx".}
proc color*(this: Graphic3dCLight): QuantityColor {.noSideEffect, cdecl,
    importcpp: "Color", header: "Graphic3d_CLight.hxx".}
proc setColor*(this: var Graphic3dCLight; theColor: QuantityColor) {.cdecl,
    importcpp: "SetColor", header: "Graphic3d_CLight.hxx".}
proc isEnabled*(this: Graphic3dCLight): bool {.noSideEffect, cdecl,
    importcpp: "IsEnabled", header: "Graphic3d_CLight.hxx".}
proc setEnabled*(this: var Graphic3dCLight; theIsOn: bool) {.cdecl,
    importcpp: "SetEnabled", header: "Graphic3d_CLight.hxx".}
proc isHeadlight*(this: Graphic3dCLight): bool {.noSideEffect, cdecl,
    importcpp: "IsHeadlight", header: "Graphic3d_CLight.hxx".}
proc headlight*(this: Graphic3dCLight): bool {.noSideEffect, cdecl,
    importcpp: "Headlight", header: "Graphic3d_CLight.hxx".}
proc setHeadlight*(this: var Graphic3dCLight; theValue: bool) {.cdecl,
    importcpp: "SetHeadlight", header: "Graphic3d_CLight.hxx".}
proc position*(this: Graphic3dCLight): PntObj {.noSideEffect, cdecl,
    importcpp: "Position", header: "Graphic3d_CLight.hxx".}
proc setPosition*(this: var Graphic3dCLight; thePosition: PntObj) {.cdecl,
    importcpp: "SetPosition", header: "Graphic3d_CLight.hxx".}
proc position*(this: Graphic3dCLight; theX: var cfloat; theY: var cfloat;
              theZ: var cfloat) {.noSideEffect, cdecl, importcpp: "Position",
                               header: "Graphic3d_CLight.hxx".}
proc setPosition*(this: var Graphic3dCLight; theX: cfloat; theY: cfloat; theZ: cfloat) {.
    cdecl, importcpp: "SetPosition", header: "Graphic3d_CLight.hxx".}
proc constAttenuation*(this: Graphic3dCLight): StandardShortReal {.noSideEffect,
    cdecl, importcpp: "ConstAttenuation", header: "Graphic3d_CLight.hxx".}
proc linearAttenuation*(this: Graphic3dCLight): StandardShortReal {.noSideEffect,
    cdecl, importcpp: "LinearAttenuation", header: "Graphic3d_CLight.hxx".}
proc attenuation*(this: Graphic3dCLight; theConstAttenuation: var cfloat;
                 theLinearAttenuation: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Attenuation", header: "Graphic3d_CLight.hxx".}
proc setAttenuation*(this: var Graphic3dCLight;
                    theConstAttenuation: StandardShortReal;
                    theLinearAttenuation: StandardShortReal) {.cdecl,
    importcpp: "SetAttenuation", header: "Graphic3d_CLight.hxx".}
proc direction*(this: Graphic3dCLight): DirObj {.noSideEffect, cdecl,
    importcpp: "Direction", header: "Graphic3d_CLight.hxx".}
proc setDirection*(this: var Graphic3dCLight; theDir: DirObj) {.cdecl,
    importcpp: "SetDirection", header: "Graphic3d_CLight.hxx".}
proc direction*(this: Graphic3dCLight; theVx: var cfloat; theVy: var cfloat;
               theVz: var cfloat) {.noSideEffect, cdecl, importcpp: "Direction",
                                 header: "Graphic3d_CLight.hxx".}
proc setDirection*(this: var Graphic3dCLight; theVx: cfloat; theVy: cfloat;
                  theVz: cfloat) {.cdecl, importcpp: "SetDirection", header: "Graphic3d_CLight.hxx".}
proc angle*(this: Graphic3dCLight): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "Angle", header: "Graphic3d_CLight.hxx".}
proc setAngle*(this: var Graphic3dCLight; theAngle: StandardShortReal) {.cdecl,
    importcpp: "SetAngle", header: "Graphic3d_CLight.hxx".}
proc concentration*(this: Graphic3dCLight): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "Concentration", header: "Graphic3d_CLight.hxx".}
proc setConcentration*(this: var Graphic3dCLight;
                      theConcentration: StandardShortReal) {.cdecl,
    importcpp: "SetConcentration", header: "Graphic3d_CLight.hxx".}
proc intensity*(this: Graphic3dCLight): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "Intensity", header: "Graphic3d_CLight.hxx".}
proc setIntensity*(this: var Graphic3dCLight; theValue: StandardShortReal) {.cdecl,
    importcpp: "SetIntensity", header: "Graphic3d_CLight.hxx".}
proc smoothness*(this: Graphic3dCLight): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "Smoothness", header: "Graphic3d_CLight.hxx".}
proc setSmoothRadius*(this: var Graphic3dCLight; theValue: StandardShortReal) {.cdecl,
    importcpp: "SetSmoothRadius", header: "Graphic3d_CLight.hxx".}
proc setSmoothAngle*(this: var Graphic3dCLight; theValue: StandardShortReal) {.cdecl,
    importcpp: "SetSmoothAngle", header: "Graphic3d_CLight.hxx".}
proc range*(this: Graphic3dCLight): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "Range", header: "Graphic3d_CLight.hxx".}
proc setRange*(this: var Graphic3dCLight; theValue: StandardShortReal) {.cdecl,
    importcpp: "SetRange", header: "Graphic3d_CLight.hxx".}
proc getId*(this: Graphic3dCLight): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "GetId", header: "Graphic3d_CLight.hxx".}
proc packedParams*(this: Graphic3dCLight): Graphic3dVec4 {.noSideEffect, cdecl,
    importcpp: "PackedParams", header: "Graphic3d_CLight.hxx".}
proc packedColor*(this: Graphic3dCLight): Graphic3dVec4 {.noSideEffect, cdecl,
    importcpp: "PackedColor", header: "Graphic3d_CLight.hxx".}
proc packedDirectionRange*(this: Graphic3dCLight): Graphic3dVec4 {.noSideEffect,
    cdecl, importcpp: "PackedDirectionRange", header: "Graphic3d_CLight.hxx".}
proc revision*(this: Graphic3dCLight): csize_t {.noSideEffect, cdecl,
    importcpp: "Revision", header: "Graphic3d_CLight.hxx".}
proc dumpJson*(this: Graphic3dCLight; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Graphic3d_CLight.hxx".}


