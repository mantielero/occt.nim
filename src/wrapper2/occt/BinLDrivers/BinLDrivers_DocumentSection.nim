##  Created by: Alexander GRIGORIEV
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle, ../TCollection/TCollection_AsciiString,
  ../Standard/Standard_Size, ../Standard/Standard_Boolean,
  ../Standard/Standard_OStream, ../Standard/Standard_IStream,
  ../Message/Message_ProgressIndicator

discard "forward decl of TCollection_AsciiString"
type
  BinLDrivers_DocumentSection* {.importcpp: "BinLDrivers_DocumentSection",
                                header: "BinLDrivers_DocumentSection.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Empty
                                                                                        ## constructor


proc constructBinLDrivers_DocumentSection*(): BinLDrivers_DocumentSection {.
    constructor, importcpp: "BinLDrivers_DocumentSection(@)",
    header: "BinLDrivers_DocumentSection.hxx".}
proc constructBinLDrivers_DocumentSection*(theName: TCollection_AsciiString;
    isPostRead: Standard_Boolean): BinLDrivers_DocumentSection {.constructor,
    importcpp: "BinLDrivers_DocumentSection(@)",
    header: "BinLDrivers_DocumentSection.hxx".}
proc Name*(this: BinLDrivers_DocumentSection): TCollection_AsciiString {.
    noSideEffect, importcpp: "Name", header: "BinLDrivers_DocumentSection.hxx".}
proc IsPostRead*(this: BinLDrivers_DocumentSection): Standard_Boolean {.
    noSideEffect, importcpp: "IsPostRead",
    header: "BinLDrivers_DocumentSection.hxx".}
proc Offset*(this: BinLDrivers_DocumentSection): uint64_t {.noSideEffect,
    importcpp: "Offset", header: "BinLDrivers_DocumentSection.hxx".}
proc SetOffset*(this: var BinLDrivers_DocumentSection; theOffset: uint64_t) {.
    importcpp: "SetOffset", header: "BinLDrivers_DocumentSection.hxx".}
proc Length*(this: BinLDrivers_DocumentSection): uint64_t {.noSideEffect,
    importcpp: "Length", header: "BinLDrivers_DocumentSection.hxx".}
proc SetLength*(this: var BinLDrivers_DocumentSection; theLength: uint64_t) {.
    importcpp: "SetLength", header: "BinLDrivers_DocumentSection.hxx".}
proc WriteTOC*(this: var BinLDrivers_DocumentSection; theOS: var Standard_OStream) {.
    importcpp: "WriteTOC", header: "BinLDrivers_DocumentSection.hxx".}
proc Write*(this: var BinLDrivers_DocumentSection; theOS: var Standard_OStream;
           theOffset: uint64_t) {.importcpp: "Write",
                                header: "BinLDrivers_DocumentSection.hxx".}
proc ReadTOC*(theSection: var BinLDrivers_DocumentSection;
             theIS: var Standard_IStream; theDocFormatVersion: Standard_Integer) {.
    importcpp: "BinLDrivers_DocumentSection::ReadTOC(@)",
    header: "BinLDrivers_DocumentSection.hxx".}