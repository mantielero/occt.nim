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

discard "forward decl of gp_Vec"
type
  VrmlTranslation* {.importcpp: "Vrml_Translation", header: "Vrml_Translation.hxx",
                    bycopy.} = object


proc constructVrmlTranslation*(): VrmlTranslation {.constructor,
    importcpp: "Vrml_Translation(@)", header: "Vrml_Translation.hxx".}
proc constructVrmlTranslation*(aTranslation: Vec): VrmlTranslation {.constructor,
    importcpp: "Vrml_Translation(@)", header: "Vrml_Translation.hxx".}
proc setTranslation*(this: var VrmlTranslation; aTranslation: Vec) {.
    importcpp: "SetTranslation", header: "Vrml_Translation.hxx".}
proc translation*(this: VrmlTranslation): Vec {.noSideEffect,
    importcpp: "Translation", header: "Vrml_Translation.hxx".}
proc print*(this: VrmlTranslation; anOStream: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_Translation.hxx".}
