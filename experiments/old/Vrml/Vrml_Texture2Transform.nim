##  Created on: 1997-02-11
##  Created by: Alexander BRIVIN
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

discard "forward decl of gp_Vec2d"
type
  VrmlTexture2Transform* {.importcpp: "Vrml_Texture2Transform",
                          header: "Vrml_Texture2Transform.hxx", bycopy.} = object


proc constructVrmlTexture2Transform*(): VrmlTexture2Transform {.constructor,
    importcpp: "Vrml_Texture2Transform(@)", header: "Vrml_Texture2Transform.hxx".}
proc constructVrmlTexture2Transform*(aTranslation: Vec2d; aRotation: cfloat;
                                    aScaleFactor: Vec2d; aCenter: Vec2d): VrmlTexture2Transform {.
    constructor, importcpp: "Vrml_Texture2Transform(@)",
    header: "Vrml_Texture2Transform.hxx".}
proc setTranslation*(this: var VrmlTexture2Transform; aTranslation: Vec2d) {.
    importcpp: "SetTranslation", header: "Vrml_Texture2Transform.hxx".}
proc translation*(this: VrmlTexture2Transform): Vec2d {.noSideEffect,
    importcpp: "Translation", header: "Vrml_Texture2Transform.hxx".}
proc setRotation*(this: var VrmlTexture2Transform; aRotation: cfloat) {.
    importcpp: "SetRotation", header: "Vrml_Texture2Transform.hxx".}
proc rotation*(this: VrmlTexture2Transform): cfloat {.noSideEffect,
    importcpp: "Rotation", header: "Vrml_Texture2Transform.hxx".}
proc setScaleFactor*(this: var VrmlTexture2Transform; aScaleFactor: Vec2d) {.
    importcpp: "SetScaleFactor", header: "Vrml_Texture2Transform.hxx".}
proc scaleFactor*(this: VrmlTexture2Transform): Vec2d {.noSideEffect,
    importcpp: "ScaleFactor", header: "Vrml_Texture2Transform.hxx".}
proc setCenter*(this: var VrmlTexture2Transform; aCenter: Vec2d) {.
    importcpp: "SetCenter", header: "Vrml_Texture2Transform.hxx".}
proc center*(this: VrmlTexture2Transform): Vec2d {.noSideEffect, importcpp: "Center",
    header: "Vrml_Texture2Transform.hxx".}
proc print*(this: VrmlTexture2Transform; anOStream: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_Texture2Transform.hxx".}

























