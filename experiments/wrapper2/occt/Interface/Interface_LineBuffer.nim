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

import
  ../NCollection/NCollection_Array1, ../TCollection/TCollection_HAsciiString

## ! Simple Management of a Line Buffer, to be used by Interface
## ! File Writers.
## ! While a String is suitable to do that, this class ensures an
## ! optimised Memory Management, because this is a hard point of
## ! File Writing.

type
  Interface_LineBuffer* {.importcpp: "Interface_LineBuffer",
                         header: "Interface_LineBuffer.hxx", bycopy.} = object ## !
                                                                          ## Creates a
                                                                          ## LineBuffer with an
                                                                          ## absolute
                                                                          ## maximum size
                                                                          ## !
                                                                          ## (Default value is only to
                                                                          ## satisfy
                                                                          ## compiler
                                                                          ## requirement)
                                                                          ## !
                                                                          ## Prepares Move :
                                                                          ## Inserts
                                                                          ## Initial Blanks if
                                                                          ## required, and
                                                                          ## !
                                                                          ## determines if
                                                                          ## SetKeep can be
                                                                          ## supported (it cannot be if Length
                                                                          ## ! + Next String to get (see
                                                                          ## CanGet)
                                                                          ## overpass Max Size)


proc constructInterface_LineBuffer*(size: Standard_Integer = 10): Interface_LineBuffer {.
    constructor, importcpp: "Interface_LineBuffer(@)",
    header: "Interface_LineBuffer.hxx".}
proc SetMax*(this: var Interface_LineBuffer; max: Standard_Integer) {.
    importcpp: "SetMax", header: "Interface_LineBuffer.hxx".}
proc SetInitial*(this: var Interface_LineBuffer; initial: Standard_Integer) {.
    importcpp: "SetInitial", header: "Interface_LineBuffer.hxx".}
proc SetKeep*(this: var Interface_LineBuffer) {.importcpp: "SetKeep",
    header: "Interface_LineBuffer.hxx".}
proc CanGet*(this: var Interface_LineBuffer; more: Standard_Integer): Standard_Boolean {.
    importcpp: "CanGet", header: "Interface_LineBuffer.hxx".}
proc Content*(this: Interface_LineBuffer): Standard_CString {.noSideEffect,
    importcpp: "Content", header: "Interface_LineBuffer.hxx".}
proc Length*(this: Interface_LineBuffer): Standard_Integer {.noSideEffect,
    importcpp: "Length", header: "Interface_LineBuffer.hxx".}
proc Clear*(this: var Interface_LineBuffer) {.importcpp: "Clear",
    header: "Interface_LineBuffer.hxx".}
proc FreezeInitial*(this: var Interface_LineBuffer) {.importcpp: "FreezeInitial",
    header: "Interface_LineBuffer.hxx".}
proc Move*(this: var Interface_LineBuffer; str: var TCollection_AsciiString) {.
    importcpp: "Move", header: "Interface_LineBuffer.hxx".}
proc Move*(this: var Interface_LineBuffer; str: handle[TCollection_HAsciiString]) {.
    importcpp: "Move", header: "Interface_LineBuffer.hxx".}
proc Moved*(this: var Interface_LineBuffer): handle[TCollection_HAsciiString] {.
    importcpp: "Moved", header: "Interface_LineBuffer.hxx".}
proc Add*(this: var Interface_LineBuffer; text: Standard_CString) {.importcpp: "Add",
    header: "Interface_LineBuffer.hxx".}
proc Add*(this: var Interface_LineBuffer; text: Standard_CString;
         lntext: Standard_Integer) {.importcpp: "Add",
                                   header: "Interface_LineBuffer.hxx".}
proc Add*(this: var Interface_LineBuffer; text: TCollection_AsciiString) {.
    importcpp: "Add", header: "Interface_LineBuffer.hxx".}
proc Add*(this: var Interface_LineBuffer; text: Standard_Character) {.
    importcpp: "Add", header: "Interface_LineBuffer.hxx".}