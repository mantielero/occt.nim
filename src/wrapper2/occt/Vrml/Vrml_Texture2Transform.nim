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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../gp/gp_Vec2d, ../Standard/Standard_Real,
  ../Standard/Standard_OStream

discard "forward decl of gp_Vec2d"
type
  Vrml_Texture2Transform* {.importcpp: "Vrml_Texture2Transform",
                           header: "Vrml_Texture2Transform.hxx", bycopy.} = object


proc constructVrml_Texture2Transform*(): Vrml_Texture2Transform {.constructor,
    importcpp: "Vrml_Texture2Transform(@)", header: "Vrml_Texture2Transform.hxx".}
proc constructVrml_Texture2Transform*(aTranslation: gp_Vec2d;
                                     aRotation: Standard_Real;
                                     aScaleFactor: gp_Vec2d; aCenter: gp_Vec2d): Vrml_Texture2Transform {.
    constructor, importcpp: "Vrml_Texture2Transform(@)",
    header: "Vrml_Texture2Transform.hxx".}
proc SetTranslation*(this: var Vrml_Texture2Transform; aTranslation: gp_Vec2d) {.
    importcpp: "SetTranslation", header: "Vrml_Texture2Transform.hxx".}
proc Translation*(this: Vrml_Texture2Transform): gp_Vec2d {.noSideEffect,
    importcpp: "Translation", header: "Vrml_Texture2Transform.hxx".}
proc SetRotation*(this: var Vrml_Texture2Transform; aRotation: Standard_Real) {.
    importcpp: "SetRotation", header: "Vrml_Texture2Transform.hxx".}
proc Rotation*(this: Vrml_Texture2Transform): Standard_Real {.noSideEffect,
    importcpp: "Rotation", header: "Vrml_Texture2Transform.hxx".}
proc SetScaleFactor*(this: var Vrml_Texture2Transform; aScaleFactor: gp_Vec2d) {.
    importcpp: "SetScaleFactor", header: "Vrml_Texture2Transform.hxx".}
proc ScaleFactor*(this: Vrml_Texture2Transform): gp_Vec2d {.noSideEffect,
    importcpp: "ScaleFactor", header: "Vrml_Texture2Transform.hxx".}
proc SetCenter*(this: var Vrml_Texture2Transform; aCenter: gp_Vec2d) {.
    importcpp: "SetCenter", header: "Vrml_Texture2Transform.hxx".}
proc Center*(this: Vrml_Texture2Transform): gp_Vec2d {.noSideEffect,
    importcpp: "Center", header: "Vrml_Texture2Transform.hxx".}
proc Print*(this: Vrml_Texture2Transform; anOStream: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_Texture2Transform.hxx".}