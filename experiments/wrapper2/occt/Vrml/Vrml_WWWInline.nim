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
discard "forward decl of gp_Vec"
type
  VrmlWWWInline* {.importcpp: "Vrml_WWWInline", header: "Vrml_WWWInline.hxx", bycopy.} = object


proc constructVrmlWWWInline*(): VrmlWWWInline {.constructor,
    importcpp: "Vrml_WWWInline(@)", header: "Vrml_WWWInline.hxx".}
proc constructVrmlWWWInline*(aName: TCollectionAsciiString; aBboxSize: Vec;
                            aBboxCenter: Vec): VrmlWWWInline {.constructor,
    importcpp: "Vrml_WWWInline(@)", header: "Vrml_WWWInline.hxx".}
proc setName*(this: var VrmlWWWInline; aName: TCollectionAsciiString) {.
    importcpp: "SetName", header: "Vrml_WWWInline.hxx".}
proc name*(this: VrmlWWWInline): TCollectionAsciiString {.noSideEffect,
    importcpp: "Name", header: "Vrml_WWWInline.hxx".}
proc setBboxSize*(this: var VrmlWWWInline; aBboxSize: Vec) {.importcpp: "SetBboxSize",
    header: "Vrml_WWWInline.hxx".}
proc bboxSize*(this: VrmlWWWInline): Vec {.noSideEffect, importcpp: "BboxSize",
                                       header: "Vrml_WWWInline.hxx".}
proc setBboxCenter*(this: var VrmlWWWInline; aBboxCenter: Vec) {.
    importcpp: "SetBboxCenter", header: "Vrml_WWWInline.hxx".}
proc bboxCenter*(this: VrmlWWWInline): Vec {.noSideEffect, importcpp: "BboxCenter",
    header: "Vrml_WWWInline.hxx".}
proc print*(this: VrmlWWWInline; anOStream: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_WWWInline.hxx".}
