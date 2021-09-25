##  Created on: 1992-04-06
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Interface_ParamSet"
discard "forward decl of Interface_Check"
discard "forward decl of gp_XYZ"
type
  IGESDataGlobalSection* {.importcpp: "IGESData_GlobalSection",
                          header: "IGESData_GlobalSection.hxx", bycopy.} = object ## !
                                                                             ## Creates an
                                                                             ## empty
                                                                             ## GlobalSection,
                                                                             ## ready to be
                                                                             ## filled,
                                                                             ## !
                                                                             ## Warning : No
                                                                             ## default
                                                                             ## value is
                                                                             ## provided


proc constructIGESDataGlobalSection*(): IGESDataGlobalSection {.constructor,
    importcpp: "IGESData_GlobalSection(@)", header: "IGESData_GlobalSection.hxx".}
proc init*(this: var IGESDataGlobalSection; params: Handle[InterfaceParamSet];
          ach: var Handle[InterfaceCheck]) {.importcpp: "Init",
    header: "IGESData_GlobalSection.hxx".}
proc copyRefs*(this: var IGESDataGlobalSection) {.importcpp: "CopyRefs",
    header: "IGESData_GlobalSection.hxx".}
proc params*(this: IGESDataGlobalSection): Handle[InterfaceParamSet] {.noSideEffect,
    importcpp: "Params", header: "IGESData_GlobalSection.hxx".}
proc translatedFromHollerith*(this: IGESDataGlobalSection;
                             astr: Handle[TCollectionHAsciiString]): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "TranslatedFromHollerith",
                              header: "IGESData_GlobalSection.hxx".}
proc separator*(this: IGESDataGlobalSection): StandardCharacter {.noSideEffect,
    importcpp: "Separator", header: "IGESData_GlobalSection.hxx".}
proc endMark*(this: IGESDataGlobalSection): StandardCharacter {.noSideEffect,
    importcpp: "EndMark", header: "IGESData_GlobalSection.hxx".}
proc sendName*(this: IGESDataGlobalSection): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "SendName", header: "IGESData_GlobalSection.hxx".}
proc fileName*(this: IGESDataGlobalSection): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "FileName", header: "IGESData_GlobalSection.hxx".}
proc systemId*(this: IGESDataGlobalSection): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "SystemId", header: "IGESData_GlobalSection.hxx".}
proc interfaceVersion*(this: IGESDataGlobalSection): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "InterfaceVersion",
    header: "IGESData_GlobalSection.hxx".}
proc integerBits*(this: IGESDataGlobalSection): int {.noSideEffect,
    importcpp: "IntegerBits", header: "IGESData_GlobalSection.hxx".}
proc maxPower10Single*(this: IGESDataGlobalSection): int {.noSideEffect,
    importcpp: "MaxPower10Single", header: "IGESData_GlobalSection.hxx".}
proc maxDigitsSingle*(this: IGESDataGlobalSection): int {.noSideEffect,
    importcpp: "MaxDigitsSingle", header: "IGESData_GlobalSection.hxx".}
proc maxPower10Double*(this: IGESDataGlobalSection): int {.noSideEffect,
    importcpp: "MaxPower10Double", header: "IGESData_GlobalSection.hxx".}
proc maxDigitsDouble*(this: IGESDataGlobalSection): int {.noSideEffect,
    importcpp: "MaxDigitsDouble", header: "IGESData_GlobalSection.hxx".}
proc receiveName*(this: IGESDataGlobalSection): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "ReceiveName", header: "IGESData_GlobalSection.hxx".}
proc scale*(this: IGESDataGlobalSection): float {.noSideEffect, importcpp: "Scale",
    header: "IGESData_GlobalSection.hxx".}
proc unitFlag*(this: IGESDataGlobalSection): int {.noSideEffect,
    importcpp: "UnitFlag", header: "IGESData_GlobalSection.hxx".}
proc unitName*(this: IGESDataGlobalSection): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "UnitName", header: "IGESData_GlobalSection.hxx".}
proc lineWeightGrad*(this: IGESDataGlobalSection): int {.noSideEffect,
    importcpp: "LineWeightGrad", header: "IGESData_GlobalSection.hxx".}
proc maxLineWeight*(this: IGESDataGlobalSection): float {.noSideEffect,
    importcpp: "MaxLineWeight", header: "IGESData_GlobalSection.hxx".}
proc date*(this: IGESDataGlobalSection): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Date", header: "IGESData_GlobalSection.hxx".}
proc resolution*(this: IGESDataGlobalSection): float {.noSideEffect,
    importcpp: "Resolution", header: "IGESData_GlobalSection.hxx".}
proc maxCoord*(this: IGESDataGlobalSection): float {.noSideEffect,
    importcpp: "MaxCoord", header: "IGESData_GlobalSection.hxx".}
proc hasMaxCoord*(this: IGESDataGlobalSection): bool {.noSideEffect,
    importcpp: "HasMaxCoord", header: "IGESData_GlobalSection.hxx".}
proc authorName*(this: IGESDataGlobalSection): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "AuthorName", header: "IGESData_GlobalSection.hxx".}
proc companyName*(this: IGESDataGlobalSection): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "CompanyName", header: "IGESData_GlobalSection.hxx".}
proc iGESVersion*(this: IGESDataGlobalSection): int {.noSideEffect,
    importcpp: "IGESVersion", header: "IGESData_GlobalSection.hxx".}
proc draftingStandard*(this: IGESDataGlobalSection): int {.noSideEffect,
    importcpp: "DraftingStandard", header: "IGESData_GlobalSection.hxx".}
proc lastChangeDate*(this: IGESDataGlobalSection): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "LastChangeDate", header: "IGESData_GlobalSection.hxx".}
proc hasLastChangeDate*(this: IGESDataGlobalSection): bool {.noSideEffect,
    importcpp: "HasLastChangeDate", header: "IGESData_GlobalSection.hxx".}
proc setLastChangeDate*(this: var IGESDataGlobalSection) {.
    importcpp: "SetLastChangeDate", header: "IGESData_GlobalSection.hxx".}
proc applicationProtocol*(this: IGESDataGlobalSection): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "ApplicationProtocol",
                              header: "IGESData_GlobalSection.hxx".}
proc hasApplicationProtocol*(this: IGESDataGlobalSection): bool {.noSideEffect,
    importcpp: "HasApplicationProtocol", header: "IGESData_GlobalSection.hxx".}
proc newDateString*(year: int; month: int; day: int; hour: int; minut: int; second: int;
                   mode: int = -1): Handle[TCollectionHAsciiString] {.
    importcpp: "IGESData_GlobalSection::NewDateString(@)",
    header: "IGESData_GlobalSection.hxx".}
proc newDateString*(date: Handle[TCollectionHAsciiString]; mode: int = 1): Handle[
    TCollectionHAsciiString] {.importcpp: "IGESData_GlobalSection::NewDateString(@)",
                              header: "IGESData_GlobalSection.hxx".}
proc unitValue*(this: IGESDataGlobalSection): float {.noSideEffect,
    importcpp: "UnitValue", header: "IGESData_GlobalSection.hxx".}
proc setSeparator*(this: var IGESDataGlobalSection; val: StandardCharacter) {.
    importcpp: "SetSeparator", header: "IGESData_GlobalSection.hxx".}
proc setEndMark*(this: var IGESDataGlobalSection; val: StandardCharacter) {.
    importcpp: "SetEndMark", header: "IGESData_GlobalSection.hxx".}
proc setSendName*(this: var IGESDataGlobalSection;
                 val: Handle[TCollectionHAsciiString]) {.importcpp: "SetSendName",
    header: "IGESData_GlobalSection.hxx".}
proc setFileName*(this: var IGESDataGlobalSection;
                 val: Handle[TCollectionHAsciiString]) {.importcpp: "SetFileName",
    header: "IGESData_GlobalSection.hxx".}
proc setSystemId*(this: var IGESDataGlobalSection;
                 val: Handle[TCollectionHAsciiString]) {.importcpp: "SetSystemId",
    header: "IGESData_GlobalSection.hxx".}
proc setInterfaceVersion*(this: var IGESDataGlobalSection;
                         val: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetInterfaceVersion", header: "IGESData_GlobalSection.hxx".}
proc setIntegerBits*(this: var IGESDataGlobalSection; val: int) {.
    importcpp: "SetIntegerBits", header: "IGESData_GlobalSection.hxx".}
proc setMaxPower10Single*(this: var IGESDataGlobalSection; val: int) {.
    importcpp: "SetMaxPower10Single", header: "IGESData_GlobalSection.hxx".}
proc setMaxDigitsSingle*(this: var IGESDataGlobalSection; val: int) {.
    importcpp: "SetMaxDigitsSingle", header: "IGESData_GlobalSection.hxx".}
proc setMaxPower10Double*(this: var IGESDataGlobalSection; val: int) {.
    importcpp: "SetMaxPower10Double", header: "IGESData_GlobalSection.hxx".}
proc setMaxDigitsDouble*(this: var IGESDataGlobalSection; val: int) {.
    importcpp: "SetMaxDigitsDouble", header: "IGESData_GlobalSection.hxx".}
proc setReceiveName*(this: var IGESDataGlobalSection;
                    val: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetReceiveName", header: "IGESData_GlobalSection.hxx".}
proc setScale*(this: var IGESDataGlobalSection; val: float) {.importcpp: "SetScale",
    header: "IGESData_GlobalSection.hxx".}
proc setUnitFlag*(this: var IGESDataGlobalSection; val: int) {.
    importcpp: "SetUnitFlag", header: "IGESData_GlobalSection.hxx".}
proc setUnitName*(this: var IGESDataGlobalSection;
                 val: Handle[TCollectionHAsciiString]) {.importcpp: "SetUnitName",
    header: "IGESData_GlobalSection.hxx".}
proc setLineWeightGrad*(this: var IGESDataGlobalSection; val: int) {.
    importcpp: "SetLineWeightGrad", header: "IGESData_GlobalSection.hxx".}
proc setMaxLineWeight*(this: var IGESDataGlobalSection; val: float) {.
    importcpp: "SetMaxLineWeight", header: "IGESData_GlobalSection.hxx".}
proc setDate*(this: var IGESDataGlobalSection; val: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDate", header: "IGESData_GlobalSection.hxx".}
proc setResolution*(this: var IGESDataGlobalSection; val: float) {.
    importcpp: "SetResolution", header: "IGESData_GlobalSection.hxx".}
proc setMaxCoord*(this: var IGESDataGlobalSection; val: float = 0.0) {.
    importcpp: "SetMaxCoord", header: "IGESData_GlobalSection.hxx".}
proc maxMaxCoord*(this: var IGESDataGlobalSection; val: float = 0.0) {.
    importcpp: "MaxMaxCoord", header: "IGESData_GlobalSection.hxx".}
proc maxMaxCoords*(this: var IGESDataGlobalSection; xyz: Xyz) {.
    importcpp: "MaxMaxCoords", header: "IGESData_GlobalSection.hxx".}
proc setAuthorName*(this: var IGESDataGlobalSection;
                   val: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetAuthorName", header: "IGESData_GlobalSection.hxx".}
proc setCompanyName*(this: var IGESDataGlobalSection;
                    val: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetCompanyName", header: "IGESData_GlobalSection.hxx".}
proc setIGESVersion*(this: var IGESDataGlobalSection; val: int) {.
    importcpp: "SetIGESVersion", header: "IGESData_GlobalSection.hxx".}
proc setDraftingStandard*(this: var IGESDataGlobalSection; val: int) {.
    importcpp: "SetDraftingStandard", header: "IGESData_GlobalSection.hxx".}
proc setLastChangeDate*(this: var IGESDataGlobalSection;
                       val: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetLastChangeDate", header: "IGESData_GlobalSection.hxx".}
proc setApplicationProtocol*(this: var IGESDataGlobalSection;
                            val: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetApplicationProtocol", header: "IGESData_GlobalSection.hxx".}
