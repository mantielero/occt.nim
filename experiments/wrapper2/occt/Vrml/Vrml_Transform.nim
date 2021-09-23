##  Created on: 1997-02-12
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
  ../Standard/Standard_Handle, ../gp/gp_Vec, Vrml_SFRotation,
  ../Standard/Standard_OStream

discard "forward decl of gp_Vec"
discard "forward decl of Vrml_SFRotation"
type
  Vrml_Transform* {.importcpp: "Vrml_Transform", header: "Vrml_Transform.hxx", bycopy.} = object


proc constructVrml_Transform*(): Vrml_Transform {.constructor,
    importcpp: "Vrml_Transform(@)", header: "Vrml_Transform.hxx".}
proc constructVrml_Transform*(aTranslation: gp_Vec; aRotation: Vrml_SFRotation;
                             aScaleFactor: gp_Vec;
                             aScaleOrientation: Vrml_SFRotation; aCenter: gp_Vec): Vrml_Transform {.
    constructor, importcpp: "Vrml_Transform(@)", header: "Vrml_Transform.hxx".}
proc SetTranslation*(this: var Vrml_Transform; aTranslation: gp_Vec) {.
    importcpp: "SetTranslation", header: "Vrml_Transform.hxx".}
proc Translation*(this: Vrml_Transform): gp_Vec {.noSideEffect,
    importcpp: "Translation", header: "Vrml_Transform.hxx".}
proc SetRotation*(this: var Vrml_Transform; aRotation: Vrml_SFRotation) {.
    importcpp: "SetRotation", header: "Vrml_Transform.hxx".}
proc Rotation*(this: Vrml_Transform): Vrml_SFRotation {.noSideEffect,
    importcpp: "Rotation", header: "Vrml_Transform.hxx".}
proc SetScaleFactor*(this: var Vrml_Transform; aScaleFactor: gp_Vec) {.
    importcpp: "SetScaleFactor", header: "Vrml_Transform.hxx".}
proc ScaleFactor*(this: Vrml_Transform): gp_Vec {.noSideEffect,
    importcpp: "ScaleFactor", header: "Vrml_Transform.hxx".}
proc SetScaleOrientation*(this: var Vrml_Transform;
                         aScaleOrientation: Vrml_SFRotation) {.
    importcpp: "SetScaleOrientation", header: "Vrml_Transform.hxx".}
proc ScaleOrientation*(this: Vrml_Transform): Vrml_SFRotation {.noSideEffect,
    importcpp: "ScaleOrientation", header: "Vrml_Transform.hxx".}
proc SetCenter*(this: var Vrml_Transform; aCenter: gp_Vec) {.importcpp: "SetCenter",
    header: "Vrml_Transform.hxx".}
proc Center*(this: Vrml_Transform): gp_Vec {.noSideEffect, importcpp: "Center",
    header: "Vrml_Transform.hxx".}
proc Print*(this: Vrml_Transform; anOStream: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_Transform.hxx".}