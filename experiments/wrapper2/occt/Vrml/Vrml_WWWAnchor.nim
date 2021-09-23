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
  Vrml_WWWAnchorMap, ../Standard/Standard_OStream

discard "forward decl of TCollection_AsciiString"
type
  Vrml_WWWAnchor* {.importcpp: "Vrml_WWWAnchor", header: "Vrml_WWWAnchor.hxx", bycopy.} = object


proc constructVrml_WWWAnchor*(aName: TCollection_AsciiString = "";
                             aDescription: TCollection_AsciiString = "";
                             aMap: Vrml_WWWAnchorMap = Vrml_MAP_NONE): Vrml_WWWAnchor {.
    constructor, importcpp: "Vrml_WWWAnchor(@)", header: "Vrml_WWWAnchor.hxx".}
proc SetName*(this: var Vrml_WWWAnchor; aName: TCollection_AsciiString) {.
    importcpp: "SetName", header: "Vrml_WWWAnchor.hxx".}
proc Name*(this: Vrml_WWWAnchor): TCollection_AsciiString {.noSideEffect,
    importcpp: "Name", header: "Vrml_WWWAnchor.hxx".}
proc SetDescription*(this: var Vrml_WWWAnchor; aDescription: TCollection_AsciiString) {.
    importcpp: "SetDescription", header: "Vrml_WWWAnchor.hxx".}
proc Description*(this: Vrml_WWWAnchor): TCollection_AsciiString {.noSideEffect,
    importcpp: "Description", header: "Vrml_WWWAnchor.hxx".}
proc SetMap*(this: var Vrml_WWWAnchor; aMap: Vrml_WWWAnchorMap) {.importcpp: "SetMap",
    header: "Vrml_WWWAnchor.hxx".}
proc Map*(this: Vrml_WWWAnchor): Vrml_WWWAnchorMap {.noSideEffect, importcpp: "Map",
    header: "Vrml_WWWAnchor.hxx".}
proc Print*(this: Vrml_WWWAnchor; anOStream: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_WWWAnchor.hxx".}