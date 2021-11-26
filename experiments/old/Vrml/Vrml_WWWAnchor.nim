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

discard "forward decl of TCollection_AsciiString"
type
  VrmlWWWAnchor* {.importcpp: "Vrml_WWWAnchor", header: "Vrml_WWWAnchor.hxx", bycopy.} = object


proc constructVrmlWWWAnchor*(aName: TCollectionAsciiString = "";
                            aDescription: TCollectionAsciiString = "";
                            aMap: VrmlWWWAnchorMap = vrmlMAP_NONE): VrmlWWWAnchor {.
    constructor, importcpp: "Vrml_WWWAnchor(@)", header: "Vrml_WWWAnchor.hxx".}
proc setName*(this: var VrmlWWWAnchor; aName: TCollectionAsciiString) {.
    importcpp: "SetName", header: "Vrml_WWWAnchor.hxx".}
proc name*(this: VrmlWWWAnchor): TCollectionAsciiString {.noSideEffect,
    importcpp: "Name", header: "Vrml_WWWAnchor.hxx".}
proc setDescription*(this: var VrmlWWWAnchor; aDescription: TCollectionAsciiString) {.
    importcpp: "SetDescription", header: "Vrml_WWWAnchor.hxx".}
proc description*(this: VrmlWWWAnchor): TCollectionAsciiString {.noSideEffect,
    importcpp: "Description", header: "Vrml_WWWAnchor.hxx".}
proc setMap*(this: var VrmlWWWAnchor; aMap: VrmlWWWAnchorMap) {.importcpp: "SetMap",
    header: "Vrml_WWWAnchor.hxx".}
proc map*(this: VrmlWWWAnchor): VrmlWWWAnchorMap {.noSideEffect, importcpp: "Map",
    header: "Vrml_WWWAnchor.hxx".}
proc print*(this: VrmlWWWAnchor; anOStream: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_WWWAnchor.hxx".}

























