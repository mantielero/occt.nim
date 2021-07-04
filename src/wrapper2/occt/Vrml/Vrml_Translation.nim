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
  ../Standard/Standard_Handle, ../gp/gp_Vec, ../Standard/Standard_OStream

discard "forward decl of gp_Vec"
type
  Vrml_Translation* {.importcpp: "Vrml_Translation",
                     header: "Vrml_Translation.hxx", bycopy.} = object


proc constructVrml_Translation*(): Vrml_Translation {.constructor,
    importcpp: "Vrml_Translation(@)", header: "Vrml_Translation.hxx".}
proc constructVrml_Translation*(aTranslation: gp_Vec): Vrml_Translation {.
    constructor, importcpp: "Vrml_Translation(@)", header: "Vrml_Translation.hxx".}
proc SetTranslation*(this: var Vrml_Translation; aTranslation: gp_Vec) {.
    importcpp: "SetTranslation", header: "Vrml_Translation.hxx".}
proc Translation*(this: Vrml_Translation): gp_Vec {.noSideEffect,
    importcpp: "Translation", header: "Vrml_Translation.hxx".}
proc Print*(this: Vrml_Translation; anOStream: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_Translation.hxx".}