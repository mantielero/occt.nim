##  Created on: 2013-01-28
##  Created by: Kirill GAVRILOV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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

##  forward declarations to avoid including of FreeType headers

type
  FT_Library* = ptr fT_LibraryRec

## ! Wrapper over FT_Library. Provides access to FreeType library.

type
  FontFTLibrary* {.importcpp: "Font_FTLibrary", header: "Font_FTLibrary.hxx", bycopy.} = object of StandardTransient ##
                                                                                                           ## !
                                                                                                           ## Initialize
                                                                                                           ## new
                                                                                                           ## FT_Library
                                                                                                           ## instance.


proc constructFontFTLibrary*(): FontFTLibrary {.constructor,
    importcpp: "Font_FTLibrary(@)", header: "Font_FTLibrary.hxx".}
proc destroyFontFTLibrary*(this: var FontFTLibrary) {.
    importcpp: "#.~Font_FTLibrary()", header: "Font_FTLibrary.hxx".}
proc isValid*(this: FontFTLibrary): bool {.noSideEffect, importcpp: "IsValid",
                                       header: "Font_FTLibrary.hxx".}
proc instance*(this: FontFTLibrary): FT_Library {.noSideEffect,
    importcpp: "Instance", header: "Font_FTLibrary.hxx".}
type
  FontFTLibrarybaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Font_FTLibrary::get_type_name(@)",
                            header: "Font_FTLibrary.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Font_FTLibrary::get_type_descriptor(@)",
    header: "Font_FTLibrary.hxx".}
proc dynamicType*(this: FontFTLibrary): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Font_FTLibrary.hxx".}
discard "forward decl of Font_FTLibrary"
type
  HandleC1C1* = Handle[FontFTLibrary]


























