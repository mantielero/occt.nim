##  Created on: 1993-04-15
##  Created by: Christian CAILLET
##  Copyright (c) 1993-1999 Matra Datavision
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

## ! Simple Management of a Line Buffer, to be used by Interface
## ! File Writers.
## ! While a String is suitable to do that, this class ensures an
## ! optimised Memory Management, because this is a hard point of
## ! File Writing.

type
  InterfaceLineBuffer* {.importcpp: "Interface_LineBuffer",
                        header: "Interface_LineBuffer.hxx", bycopy.} = object ## ! Creates a
                                                                         ## LineBuffer with an
                                                                         ## absolute maximum size
                                                                         ## !
                                                                         ## (Default value is only to satisfy
                                                                         ## compiler
                                                                         ## requirement)
                                                                         ## !
                                                                         ## Prepares Move : Inserts Initial Blanks if
                                                                         ## required, and
                                                                         ## !
                                                                         ## determines if SetKeep can be
                                                                         ## supported (it cannot be if Length
                                                                         ## ! + Next String to get (see CanGet)
                                                                         ## overpass Max Size)


proc constructInterfaceLineBuffer*(size: StandardInteger = 10): InterfaceLineBuffer {.
    constructor, importcpp: "Interface_LineBuffer(@)",
    header: "Interface_LineBuffer.hxx".}
proc setMax*(this: var InterfaceLineBuffer; max: StandardInteger) {.
    importcpp: "SetMax", header: "Interface_LineBuffer.hxx".}
proc setInitial*(this: var InterfaceLineBuffer; initial: StandardInteger) {.
    importcpp: "SetInitial", header: "Interface_LineBuffer.hxx".}
proc setKeep*(this: var InterfaceLineBuffer) {.importcpp: "SetKeep",
    header: "Interface_LineBuffer.hxx".}
proc canGet*(this: var InterfaceLineBuffer; more: StandardInteger): StandardBoolean {.
    importcpp: "CanGet", header: "Interface_LineBuffer.hxx".}
proc content*(this: InterfaceLineBuffer): StandardCString {.noSideEffect,
    importcpp: "Content", header: "Interface_LineBuffer.hxx".}
proc length*(this: InterfaceLineBuffer): StandardInteger {.noSideEffect,
    importcpp: "Length", header: "Interface_LineBuffer.hxx".}
proc clear*(this: var InterfaceLineBuffer) {.importcpp: "Clear",
    header: "Interface_LineBuffer.hxx".}
proc freezeInitial*(this: var InterfaceLineBuffer) {.importcpp: "FreezeInitial",
    header: "Interface_LineBuffer.hxx".}
proc move*(this: var InterfaceLineBuffer; str: var TCollectionAsciiString) {.
    importcpp: "Move", header: "Interface_LineBuffer.hxx".}
proc move*(this: var InterfaceLineBuffer; str: Handle[TCollectionHAsciiString]) {.
    importcpp: "Move", header: "Interface_LineBuffer.hxx".}
proc moved*(this: var InterfaceLineBuffer): Handle[TCollectionHAsciiString] {.
    importcpp: "Moved", header: "Interface_LineBuffer.hxx".}
proc add*(this: var InterfaceLineBuffer; text: StandardCString) {.importcpp: "Add",
    header: "Interface_LineBuffer.hxx".}
proc add*(this: var InterfaceLineBuffer; text: StandardCString;
         lntext: StandardInteger) {.importcpp: "Add",
                                  header: "Interface_LineBuffer.hxx".}
proc add*(this: var InterfaceLineBuffer; text: TCollectionAsciiString) {.
    importcpp: "Add", header: "Interface_LineBuffer.hxx".}
proc add*(this: var InterfaceLineBuffer; text: StandardCharacter) {.importcpp: "Add",
    header: "Interface_LineBuffer.hxx".}

