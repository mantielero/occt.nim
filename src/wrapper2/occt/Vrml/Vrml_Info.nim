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
  ../Standard/Standard_Handle, ../TCollection/TCollection_AsciiString,
  ../Standard/Standard_OStream

discard "forward decl of TCollection_AsciiString"
type
  Vrml_Info* {.importcpp: "Vrml_Info", header: "Vrml_Info.hxx", bycopy.} = object


proc constructVrml_Info*(aString: TCollection_AsciiString = "<Undefined info>"): Vrml_Info {.
    constructor, importcpp: "Vrml_Info(@)", header: "Vrml_Info.hxx".}
proc SetString*(this: var Vrml_Info; aString: TCollection_AsciiString) {.
    importcpp: "SetString", header: "Vrml_Info.hxx".}
proc String*(this: Vrml_Info): TCollection_AsciiString {.noSideEffect,
    importcpp: "String", header: "Vrml_Info.hxx".}
proc Print*(this: Vrml_Info; anOStream: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_Info.hxx".}