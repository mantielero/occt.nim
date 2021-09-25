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

## ! defines a FontStyle node of VRML of properties of geometry
## ! and its appearance.
## ! The  size  field  specifies  the  height  (in  object  space  units)
## ! of  glyphs  rendered  and  determines  the  vertical  spacing  of
## ! adjacent  lines  of  text.

type
  VrmlFontStyle* {.importcpp: "Vrml_FontStyle", header: "Vrml_FontStyle.hxx", bycopy.} = object


proc constructVrmlFontStyle*(aSize: float = 10;
                            aFamily: VrmlFontStyleFamily = vrmlSERIF;
                            aStyle: VrmlFontStyleStyle = vrmlNONE): VrmlFontStyle {.
    constructor, importcpp: "Vrml_FontStyle(@)", header: "Vrml_FontStyle.hxx".}
proc setSize*(this: var VrmlFontStyle; aSize: float) {.importcpp: "SetSize",
    header: "Vrml_FontStyle.hxx".}
proc size*(this: VrmlFontStyle): float {.noSideEffect, importcpp: "Size",
                                     header: "Vrml_FontStyle.hxx".}
proc setFamily*(this: var VrmlFontStyle; aFamily: VrmlFontStyleFamily) {.
    importcpp: "SetFamily", header: "Vrml_FontStyle.hxx".}
proc family*(this: VrmlFontStyle): VrmlFontStyleFamily {.noSideEffect,
    importcpp: "Family", header: "Vrml_FontStyle.hxx".}
proc setStyle*(this: var VrmlFontStyle; aStyle: VrmlFontStyleStyle) {.
    importcpp: "SetStyle", header: "Vrml_FontStyle.hxx".}
proc style*(this: VrmlFontStyle): VrmlFontStyleStyle {.noSideEffect,
    importcpp: "Style", header: "Vrml_FontStyle.hxx".}
proc print*(this: VrmlFontStyle; anOStream: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_FontStyle.hxx".}
