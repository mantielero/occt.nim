##  Created on: 1994-08-30
##  Created by: J.P. TIRAULT
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Address,
  ../Standard/Standard_PCharacter, ../Standard/Standard_CString,
  ../Standard/Standard_Boolean, OSD_LoadMode, OSD_Function

## ! Interface to dynamic library loader.
## ! Provides tools to load a shared library
## ! and retrieve the address of an entry point.

type
  OSD_SharedLibrary* {.importcpp: "OSD_SharedLibrary",
                      header: "OSD_SharedLibrary.hxx", bycopy.} = object ## ! Creates a
                                                                    ## SharedLibrary object with name NULL.


proc constructOSD_SharedLibrary*(): OSD_SharedLibrary {.constructor,
    importcpp: "OSD_SharedLibrary(@)", header: "OSD_SharedLibrary.hxx".}
proc constructOSD_SharedLibrary*(aFilename: Standard_CString): OSD_SharedLibrary {.
    constructor, importcpp: "OSD_SharedLibrary(@)", header: "OSD_SharedLibrary.hxx".}
proc SetName*(this: var OSD_SharedLibrary; aName: Standard_CString) {.
    importcpp: "SetName", header: "OSD_SharedLibrary.hxx".}
proc Name*(this: OSD_SharedLibrary): Standard_CString {.noSideEffect,
    importcpp: "Name", header: "OSD_SharedLibrary.hxx".}
proc DlOpen*(this: var OSD_SharedLibrary; Mode: OSD_LoadMode): Standard_Boolean {.
    importcpp: "DlOpen", header: "OSD_SharedLibrary.hxx".}
proc DlSymb*(this: OSD_SharedLibrary; Name: Standard_CString): OSD_Function {.
    noSideEffect, importcpp: "DlSymb", header: "OSD_SharedLibrary.hxx".}
proc DlClose*(this: OSD_SharedLibrary) {.noSideEffect, importcpp: "DlClose",
                                      header: "OSD_SharedLibrary.hxx".}
proc DlError*(this: OSD_SharedLibrary): Standard_CString {.noSideEffect,
    importcpp: "DlError", header: "OSD_SharedLibrary.hxx".}
proc Destroy*(this: var OSD_SharedLibrary) {.importcpp: "Destroy",
    header: "OSD_SharedLibrary.hxx".}
proc destroyOSD_SharedLibrary*(this: var OSD_SharedLibrary) {.
    importcpp: "#.~OSD_SharedLibrary()", header: "OSD_SharedLibrary.hxx".}