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

## ! Interface to dynamic library loader.
## ! Provides tools to load a shared library
## ! and retrieve the address of an entry point.

type
  OSD_SharedLibrary* {.importcpp: "OSD_SharedLibrary",
                      header: "OSD_SharedLibrary.hxx", bycopy.} = object ## ! Creates a
                                                                    ## SharedLibrary object with name NULL.


proc constructOSD_SharedLibrary*(): OSD_SharedLibrary {.constructor,
    importcpp: "OSD_SharedLibrary(@)", header: "OSD_SharedLibrary.hxx".}
proc constructOSD_SharedLibrary*(aFilename: StandardCString): OSD_SharedLibrary {.
    constructor, importcpp: "OSD_SharedLibrary(@)", header: "OSD_SharedLibrary.hxx".}
proc setName*(this: var OSD_SharedLibrary; aName: StandardCString) {.
    importcpp: "SetName", header: "OSD_SharedLibrary.hxx".}
proc name*(this: OSD_SharedLibrary): StandardCString {.noSideEffect,
    importcpp: "Name", header: "OSD_SharedLibrary.hxx".}
proc dlOpen*(this: var OSD_SharedLibrary; mode: OSD_LoadMode): bool {.
    importcpp: "DlOpen", header: "OSD_SharedLibrary.hxx".}
proc dlSymb*(this: OSD_SharedLibrary; name: StandardCString): OSD_Function {.
    noSideEffect, importcpp: "DlSymb", header: "OSD_SharedLibrary.hxx".}
proc dlClose*(this: OSD_SharedLibrary) {.noSideEffect, importcpp: "DlClose",
                                      header: "OSD_SharedLibrary.hxx".}
proc dlError*(this: OSD_SharedLibrary): StandardCString {.noSideEffect,
    importcpp: "DlError", header: "OSD_SharedLibrary.hxx".}
proc destroy*(this: var OSD_SharedLibrary) {.importcpp: "Destroy",
    header: "OSD_SharedLibrary.hxx".}
proc destroyOSD_SharedLibrary*(this: var OSD_SharedLibrary) {.
    importcpp: "#.~OSD_SharedLibrary()", header: "OSD_SharedLibrary.hxx".}

























