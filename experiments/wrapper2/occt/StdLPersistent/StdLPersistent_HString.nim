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

type
  StdLPersistentHString* {.importcpp: "StdLPersistent_HString",
                          header: "StdLPersistent_HString.hxx", bycopy.} = object

  StdLPersistentHStringAscii* {.importcpp: "StdLPersistent_HString::Ascii",
                               header: "StdLPersistent_HString.hxx", bycopy.} = object of StdLPersistentHStringinstance[
      TCollectionHAsciiString, StandardCharacter] ## ! Get referenced ASCII string.


proc asciiString*(this: StdLPersistentHStringAscii): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "AsciiString", header: "StdLPersistent_HString.hxx".}
proc pName*(this: StdLPersistentHStringAscii): StandardCString {.noSideEffect,
    importcpp: "PName", header: "StdLPersistent_HString.hxx".}
type
  StdLPersistentHStringExtended* {.importcpp: "StdLPersistent_HString::Extended",
                                  header: "StdLPersistent_HString.hxx", bycopy.} = object of StdLPersistentHStringinstance[
      TCollectionHExtendedString, StandardExtCharacter] ## ! Get referenced extended string.


proc extString*(this: StdLPersistentHStringExtended): Handle[
    TCollectionHExtendedString] {.noSideEffect, importcpp: "ExtString",
                                 header: "StdLPersistent_HString.hxx".}
proc pName*(this: StdLPersistentHStringExtended): StandardCString {.noSideEffect,
    importcpp: "PName", header: "StdLPersistent_HString.hxx".}
