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
  ../Standard/Standard_Handle, Vrml_SFRotation, ../Standard/Standard_OStream

discard "forward decl of Vrml_SFRotation"
type
  Vrml_Rotation* {.importcpp: "Vrml_Rotation", header: "Vrml_Rotation.hxx", bycopy.} = object


proc constructVrml_Rotation*(): Vrml_Rotation {.constructor,
    importcpp: "Vrml_Rotation(@)", header: "Vrml_Rotation.hxx".}
proc constructVrml_Rotation*(aRotation: Vrml_SFRotation): Vrml_Rotation {.
    constructor, importcpp: "Vrml_Rotation(@)", header: "Vrml_Rotation.hxx".}
proc SetRotation*(this: var Vrml_Rotation; aRotation: Vrml_SFRotation) {.
    importcpp: "SetRotation", header: "Vrml_Rotation.hxx".}
proc Rotation*(this: Vrml_Rotation): Vrml_SFRotation {.noSideEffect,
    importcpp: "Rotation", header: "Vrml_Rotation.hxx".}
proc Print*(this: Vrml_Rotation; anOStream: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_Rotation.hxx".}