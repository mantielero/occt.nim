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

discard "forward decl of TCollection_AsciiString"
type
  VrmlInfo* {.importcpp: "Vrml_Info", header: "Vrml_Info.hxx", bycopy.} = object


proc constructVrmlInfo*(aString: TCollectionAsciiString = "<Undefined info>"): VrmlInfo {.
    constructor, importcpp: "Vrml_Info(@)", header: "Vrml_Info.hxx".}
proc setString*(this: var VrmlInfo; aString: TCollectionAsciiString) {.
    importcpp: "SetString", header: "Vrml_Info.hxx".}
proc string*(this: VrmlInfo): TCollectionAsciiString {.noSideEffect,
    importcpp: "String", header: "Vrml_Info.hxx".}
proc print*(this: VrmlInfo; anOStream: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_Info.hxx".}

























