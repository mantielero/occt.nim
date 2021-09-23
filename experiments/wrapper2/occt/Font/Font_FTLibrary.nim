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

import
  ../Standard/Standard_Type, ../Standard/Standard_Transient

##  forward declarations to avoid including of FreeType headers

type
  FT_Library* = ptr FT_LibraryRec_

## ! Wrapper over FT_Library. Provides access to FreeType library.

type
  Font_FTLibrary* {.importcpp: "Font_FTLibrary", header: "Font_FTLibrary.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                             ## !
                                                                                                             ## Initialize
                                                                                                             ## new
                                                                                                             ## FT_Library
                                                                                                             ## instance.


proc constructFont_FTLibrary*(): Font_FTLibrary {.constructor,
    importcpp: "Font_FTLibrary(@)", header: "Font_FTLibrary.hxx".}
proc destroyFont_FTLibrary*(this: var Font_FTLibrary) {.
    importcpp: "#.~Font_FTLibrary()", header: "Font_FTLibrary.hxx".}
proc IsValid*(this: Font_FTLibrary): bool {.noSideEffect, importcpp: "IsValid",
                                        header: "Font_FTLibrary.hxx".}
proc Instance*(this: Font_FTLibrary): FT_Library {.noSideEffect,
    importcpp: "Instance", header: "Font_FTLibrary.hxx".}
type
  Font_FTLibrarybase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Font_FTLibrary::get_type_name(@)",
                              header: "Font_FTLibrary.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Font_FTLibrary::get_type_descriptor(@)",
    header: "Font_FTLibrary.hxx".}
proc DynamicType*(this: Font_FTLibrary): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Font_FTLibrary.hxx".}
discard "forward decl of Font_FTLibrary"
type
  Handle_Font_FTLibrary* = handle[Font_FTLibrary]
