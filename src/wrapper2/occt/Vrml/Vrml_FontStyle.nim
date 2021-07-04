##  Created on: 1997-02-10
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real, Vrml_FontStyleFamily,
  Vrml_FontStyleStyle, ../Standard/Standard_OStream

## ! defines a FontStyle node of VRML of properties of geometry
## ! and its appearance.
## ! The  size  field  specifies  the  height  (in  object  space  units)
## ! of  glyphs  rendered  and  determines  the  vertical  spacing  of
## ! adjacent  lines  of  text.

type
  Vrml_FontStyle* {.importcpp: "Vrml_FontStyle", header: "Vrml_FontStyle.hxx", bycopy.} = object


proc constructVrml_FontStyle*(aSize: Standard_Real = 10;
                             aFamily: Vrml_FontStyleFamily = Vrml_SERIF;
                             aStyle: Vrml_FontStyleStyle = Vrml_NONE): Vrml_FontStyle {.
    constructor, importcpp: "Vrml_FontStyle(@)", header: "Vrml_FontStyle.hxx".}
proc SetSize*(this: var Vrml_FontStyle; aSize: Standard_Real) {.importcpp: "SetSize",
    header: "Vrml_FontStyle.hxx".}
proc Size*(this: Vrml_FontStyle): Standard_Real {.noSideEffect, importcpp: "Size",
    header: "Vrml_FontStyle.hxx".}
proc SetFamily*(this: var Vrml_FontStyle; aFamily: Vrml_FontStyleFamily) {.
    importcpp: "SetFamily", header: "Vrml_FontStyle.hxx".}
proc Family*(this: Vrml_FontStyle): Vrml_FontStyleFamily {.noSideEffect,
    importcpp: "Family", header: "Vrml_FontStyle.hxx".}
proc SetStyle*(this: var Vrml_FontStyle; aStyle: Vrml_FontStyleStyle) {.
    importcpp: "SetStyle", header: "Vrml_FontStyle.hxx".}
proc Style*(this: Vrml_FontStyle): Vrml_FontStyleStyle {.noSideEffect,
    importcpp: "Style", header: "Vrml_FontStyle.hxx".}
proc Print*(this: Vrml_FontStyle; anOStream: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_FontStyle.hxx".}