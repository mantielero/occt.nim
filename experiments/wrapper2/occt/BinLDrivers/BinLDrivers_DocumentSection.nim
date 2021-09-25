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

discard "forward decl of TCollection_AsciiString"
type
  BinLDriversDocumentSection* {.importcpp: "BinLDrivers_DocumentSection",
                               header: "BinLDrivers_DocumentSection.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## Empty
                                                                                       ## constructor


proc constructBinLDriversDocumentSection*(): BinLDriversDocumentSection {.
    constructor, importcpp: "BinLDrivers_DocumentSection(@)",
    header: "BinLDrivers_DocumentSection.hxx".}
proc constructBinLDriversDocumentSection*(theName: TCollectionAsciiString;
    isPostRead: bool): BinLDriversDocumentSection {.constructor,
    importcpp: "BinLDrivers_DocumentSection(@)",
    header: "BinLDrivers_DocumentSection.hxx".}
proc name*(this: BinLDriversDocumentSection): TCollectionAsciiString {.noSideEffect,
    importcpp: "Name", header: "BinLDrivers_DocumentSection.hxx".}
proc isPostRead*(this: BinLDriversDocumentSection): bool {.noSideEffect,
    importcpp: "IsPostRead", header: "BinLDrivers_DocumentSection.hxx".}
proc offset*(this: BinLDriversDocumentSection): uint64T {.noSideEffect,
    importcpp: "Offset", header: "BinLDrivers_DocumentSection.hxx".}
proc setOffset*(this: var BinLDriversDocumentSection; theOffset: uint64T) {.
    importcpp: "SetOffset", header: "BinLDrivers_DocumentSection.hxx".}
proc length*(this: BinLDriversDocumentSection): uint64T {.noSideEffect,
    importcpp: "Length", header: "BinLDrivers_DocumentSection.hxx".}
proc setLength*(this: var BinLDriversDocumentSection; theLength: uint64T) {.
    importcpp: "SetLength", header: "BinLDrivers_DocumentSection.hxx".}
proc writeTOC*(this: var BinLDriversDocumentSection; theOS: var StandardOStream) {.
    importcpp: "WriteTOC", header: "BinLDrivers_DocumentSection.hxx".}
proc write*(this: var BinLDriversDocumentSection; theOS: var StandardOStream;
           theOffset: uint64T) {.importcpp: "Write",
                               header: "BinLDrivers_DocumentSection.hxx".}
proc readTOC*(theSection: var BinLDriversDocumentSection;
             theIS: var StandardIStream; theDocFormatVersion: int) {.
    importcpp: "BinLDrivers_DocumentSection::ReadTOC(@)",
    header: "BinLDrivers_DocumentSection.hxx".}
