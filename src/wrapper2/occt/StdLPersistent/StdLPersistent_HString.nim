##  Copyright (c) 2015 OPEN CASCADE SAS
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
  ../StdObjMgt/StdObjMgt_Persistent, ../Standard/Standard_TypeDef,
  ../TCollection/TCollection_HAsciiString,
  ../TCollection/TCollection_HExtendedString

type
  StdLPersistent_HString* {.importcpp: "StdLPersistent_HString",
                           header: "StdLPersistent_HString.hxx", bycopy.} = object

  StdLPersistent_HStringAscii* {.importcpp: "StdLPersistent_HString::Ascii",
                                header: "StdLPersistent_HString.hxx", bycopy.} = object of StdLPersistent_HStringinstance[
      TCollection_HAsciiString, Standard_Character] ## ! Get referenced ASCII string.


proc AsciiString*(this: StdLPersistent_HStringAscii): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "AsciiString",
                               header: "StdLPersistent_HString.hxx".}
proc PName*(this: StdLPersistent_HStringAscii): Standard_CString {.noSideEffect,
    importcpp: "PName", header: "StdLPersistent_HString.hxx".}
type
  StdLPersistent_HStringExtended* {.importcpp: "StdLPersistent_HString::Extended",
                                   header: "StdLPersistent_HString.hxx", bycopy.} = object of StdLPersistent_HStringinstance[
      TCollection_HExtendedString, Standard_ExtCharacter] ## ! Get referenced extended string.


proc ExtString*(this: StdLPersistent_HStringExtended): handle[
    TCollection_HExtendedString] {.noSideEffect, importcpp: "ExtString",
                                  header: "StdLPersistent_HString.hxx".}
proc PName*(this: StdLPersistent_HStringExtended): Standard_CString {.noSideEffect,
    importcpp: "PName", header: "StdLPersistent_HString.hxx".}