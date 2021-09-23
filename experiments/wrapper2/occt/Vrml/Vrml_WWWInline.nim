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
  ../Standard/Standard_Handle, ../TCollection/TCollection_AsciiString,
  ../gp/gp_Vec, ../Standard/Standard_OStream

discard "forward decl of TCollection_AsciiString"
discard "forward decl of gp_Vec"
type
  Vrml_WWWInline* {.importcpp: "Vrml_WWWInline", header: "Vrml_WWWInline.hxx", bycopy.} = object


proc constructVrml_WWWInline*(): Vrml_WWWInline {.constructor,
    importcpp: "Vrml_WWWInline(@)", header: "Vrml_WWWInline.hxx".}
proc constructVrml_WWWInline*(aName: TCollection_AsciiString; aBboxSize: gp_Vec;
                             aBboxCenter: gp_Vec): Vrml_WWWInline {.constructor,
    importcpp: "Vrml_WWWInline(@)", header: "Vrml_WWWInline.hxx".}
proc SetName*(this: var Vrml_WWWInline; aName: TCollection_AsciiString) {.
    importcpp: "SetName", header: "Vrml_WWWInline.hxx".}
proc Name*(this: Vrml_WWWInline): TCollection_AsciiString {.noSideEffect,
    importcpp: "Name", header: "Vrml_WWWInline.hxx".}
proc SetBboxSize*(this: var Vrml_WWWInline; aBboxSize: gp_Vec) {.
    importcpp: "SetBboxSize", header: "Vrml_WWWInline.hxx".}
proc BboxSize*(this: Vrml_WWWInline): gp_Vec {.noSideEffect, importcpp: "BboxSize",
    header: "Vrml_WWWInline.hxx".}
proc SetBboxCenter*(this: var Vrml_WWWInline; aBboxCenter: gp_Vec) {.
    importcpp: "SetBboxCenter", header: "Vrml_WWWInline.hxx".}
proc BboxCenter*(this: Vrml_WWWInline): gp_Vec {.noSideEffect,
    importcpp: "BboxCenter", header: "Vrml_WWWInline.hxx".}
proc Print*(this: Vrml_WWWInline; anOStream: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_WWWInline.hxx".}