##  Created on: 2001-09-12
##  Created by: Alexander GRIGORIEV
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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

discard "forward decl of LDOM_BasicText"
type
  LDOM_CharacterData* {.importcpp: "LDOM_CharacterData",
                       header: "LDOM_CharacterData.hxx", bycopy.} = object of LDOM_Node ##  ---------- PUBLIC METHODS ----------
                                                                                 ##  ---------- PROTECTED METHODS ----------
                                                                                 ##  ------------ PRIVATE FIELDS -----------


proc constructLDOM_CharacterData*(): LDOM_CharacterData {.constructor,
    importcpp: "LDOM_CharacterData(@)", header: "LDOM_CharacterData.hxx".}
proc constructLDOM_CharacterData*(theOther: LDOM_CharacterData): LDOM_CharacterData {.
    constructor, importcpp: "LDOM_CharacterData(@)",
    header: "LDOM_CharacterData.hxx".}
proc getData*(this: LDOM_CharacterData): LDOMString {.noSideEffect,
    importcpp: "getData", header: "LDOM_CharacterData.hxx".}
proc setData*(this: var LDOM_CharacterData; aValue: LDOMString) {.
    importcpp: "setData", header: "LDOM_CharacterData.hxx".}
proc getLength*(this: LDOM_CharacterData): int {.noSideEffect,
    importcpp: "getLength", header: "LDOM_CharacterData.hxx".}
