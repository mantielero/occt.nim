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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Character,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Interface_ParamSet"
discard "forward decl of Interface_Check"
discard "forward decl of gp_XYZ"
type
  IGESData_GlobalSection* {.importcpp: "IGESData_GlobalSection",
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


proc constructIGESData_GlobalSection*(): IGESData_GlobalSection {.constructor,
    importcpp: "IGESData_GlobalSection(@)", header: "IGESData_GlobalSection.hxx".}
proc Init*(this: var IGESData_GlobalSection; params: handle[Interface_ParamSet];
          ach: var handle[Interface_Check]) {.importcpp: "Init",
    header: "IGESData_GlobalSection.hxx".}
proc CopyRefs*(this: var IGESData_GlobalSection) {.importcpp: "CopyRefs",
    header: "IGESData_GlobalSection.hxx".}
proc Params*(this: IGESData_GlobalSection): handle[Interface_ParamSet] {.
    noSideEffect, importcpp: "Params", header: "IGESData_GlobalSection.hxx".}
proc TranslatedFromHollerith*(this: IGESData_GlobalSection;
                             astr: handle[TCollection_HAsciiString]): handle[
    TCollection_HAsciiString] {.noSideEffect,
                               importcpp: "TranslatedFromHollerith",
                               header: "IGESData_GlobalSection.hxx".}
proc Separator*(this: IGESData_GlobalSection): Standard_Character {.noSideEffect,
    importcpp: "Separator", header: "IGESData_GlobalSection.hxx".}
proc EndMark*(this: IGESData_GlobalSection): Standard_Character {.noSideEffect,
    importcpp: "EndMark", header: "IGESData_GlobalSection.hxx".}
proc SendName*(this: IGESData_GlobalSection): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "SendName", header: "IGESData_GlobalSection.hxx".}
proc FileName*(this: IGESData_GlobalSection): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "FileName", header: "IGESData_GlobalSection.hxx".}
proc SystemId*(this: IGESData_GlobalSection): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "SystemId", header: "IGESData_GlobalSection.hxx".}
proc InterfaceVersion*(this: IGESData_GlobalSection): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "InterfaceVersion",
                               header: "IGESData_GlobalSection.hxx".}
proc IntegerBits*(this: IGESData_GlobalSection): Standard_Integer {.noSideEffect,
    importcpp: "IntegerBits", header: "IGESData_GlobalSection.hxx".}
proc MaxPower10Single*(this: IGESData_GlobalSection): Standard_Integer {.
    noSideEffect, importcpp: "MaxPower10Single",
    header: "IGESData_GlobalSection.hxx".}
proc MaxDigitsSingle*(this: IGESData_GlobalSection): Standard_Integer {.
    noSideEffect, importcpp: "MaxDigitsSingle",
    header: "IGESData_GlobalSection.hxx".}
proc MaxPower10Double*(this: IGESData_GlobalSection): Standard_Integer {.
    noSideEffect, importcpp: "MaxPower10Double",
    header: "IGESData_GlobalSection.hxx".}
proc MaxDigitsDouble*(this: IGESData_GlobalSection): Standard_Integer {.
    noSideEffect, importcpp: "MaxDigitsDouble",
    header: "IGESData_GlobalSection.hxx".}
proc ReceiveName*(this: IGESData_GlobalSection): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "ReceiveName", header: "IGESData_GlobalSection.hxx".}
proc Scale*(this: IGESData_GlobalSection): Standard_Real {.noSideEffect,
    importcpp: "Scale", header: "IGESData_GlobalSection.hxx".}
proc UnitFlag*(this: IGESData_GlobalSection): Standard_Integer {.noSideEffect,
    importcpp: "UnitFlag", header: "IGESData_GlobalSection.hxx".}
proc UnitName*(this: IGESData_GlobalSection): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "UnitName", header: "IGESData_GlobalSection.hxx".}
proc LineWeightGrad*(this: IGESData_GlobalSection): Standard_Integer {.noSideEffect,
    importcpp: "LineWeightGrad", header: "IGESData_GlobalSection.hxx".}
proc MaxLineWeight*(this: IGESData_GlobalSection): Standard_Real {.noSideEffect,
    importcpp: "MaxLineWeight", header: "IGESData_GlobalSection.hxx".}
proc Date*(this: IGESData_GlobalSection): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Date", header: "IGESData_GlobalSection.hxx".}
proc Resolution*(this: IGESData_GlobalSection): Standard_Real {.noSideEffect,
    importcpp: "Resolution", header: "IGESData_GlobalSection.hxx".}
proc MaxCoord*(this: IGESData_GlobalSection): Standard_Real {.noSideEffect,
    importcpp: "MaxCoord", header: "IGESData_GlobalSection.hxx".}
proc HasMaxCoord*(this: IGESData_GlobalSection): Standard_Boolean {.noSideEffect,
    importcpp: "HasMaxCoord", header: "IGESData_GlobalSection.hxx".}
proc AuthorName*(this: IGESData_GlobalSection): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "AuthorName", header: "IGESData_GlobalSection.hxx".}
proc CompanyName*(this: IGESData_GlobalSection): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "CompanyName", header: "IGESData_GlobalSection.hxx".}
proc IGESVersion*(this: IGESData_GlobalSection): Standard_Integer {.noSideEffect,
    importcpp: "IGESVersion", header: "IGESData_GlobalSection.hxx".}
proc DraftingStandard*(this: IGESData_GlobalSection): Standard_Integer {.
    noSideEffect, importcpp: "DraftingStandard",
    header: "IGESData_GlobalSection.hxx".}
proc LastChangeDate*(this: IGESData_GlobalSection): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "LastChangeDate", header: "IGESData_GlobalSection.hxx".}
proc HasLastChangeDate*(this: IGESData_GlobalSection): Standard_Boolean {.
    noSideEffect, importcpp: "HasLastChangeDate",
    header: "IGESData_GlobalSection.hxx".}
proc SetLastChangeDate*(this: var IGESData_GlobalSection) {.
    importcpp: "SetLastChangeDate", header: "IGESData_GlobalSection.hxx".}
proc ApplicationProtocol*(this: IGESData_GlobalSection): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "ApplicationProtocol",
                               header: "IGESData_GlobalSection.hxx".}
proc HasApplicationProtocol*(this: IGESData_GlobalSection): Standard_Boolean {.
    noSideEffect, importcpp: "HasApplicationProtocol",
    header: "IGESData_GlobalSection.hxx".}
proc NewDateString*(year: Standard_Integer; month: Standard_Integer;
                   day: Standard_Integer; hour: Standard_Integer;
                   minut: Standard_Integer; second: Standard_Integer;
                   mode: Standard_Integer = -1): handle[TCollection_HAsciiString] {.
    importcpp: "IGESData_GlobalSection::NewDateString(@)",
    header: "IGESData_GlobalSection.hxx".}
proc NewDateString*(date: handle[TCollection_HAsciiString];
                   mode: Standard_Integer = 1): handle[TCollection_HAsciiString] {.
    importcpp: "IGESData_GlobalSection::NewDateString(@)",
    header: "IGESData_GlobalSection.hxx".}
proc UnitValue*(this: IGESData_GlobalSection): Standard_Real {.noSideEffect,
    importcpp: "UnitValue", header: "IGESData_GlobalSection.hxx".}
proc SetSeparator*(this: var IGESData_GlobalSection; val: Standard_Character) {.
    importcpp: "SetSeparator", header: "IGESData_GlobalSection.hxx".}
proc SetEndMark*(this: var IGESData_GlobalSection; val: Standard_Character) {.
    importcpp: "SetEndMark", header: "IGESData_GlobalSection.hxx".}
proc SetSendName*(this: var IGESData_GlobalSection;
                 val: handle[TCollection_HAsciiString]) {.
    importcpp: "SetSendName", header: "IGESData_GlobalSection.hxx".}
proc SetFileName*(this: var IGESData_GlobalSection;
                 val: handle[TCollection_HAsciiString]) {.
    importcpp: "SetFileName", header: "IGESData_GlobalSection.hxx".}
proc SetSystemId*(this: var IGESData_GlobalSection;
                 val: handle[TCollection_HAsciiString]) {.
    importcpp: "SetSystemId", header: "IGESData_GlobalSection.hxx".}
proc SetInterfaceVersion*(this: var IGESData_GlobalSection;
                         val: handle[TCollection_HAsciiString]) {.
    importcpp: "SetInterfaceVersion", header: "IGESData_GlobalSection.hxx".}
proc SetIntegerBits*(this: var IGESData_GlobalSection; val: Standard_Integer) {.
    importcpp: "SetIntegerBits", header: "IGESData_GlobalSection.hxx".}
proc SetMaxPower10Single*(this: var IGESData_GlobalSection; val: Standard_Integer) {.
    importcpp: "SetMaxPower10Single", header: "IGESData_GlobalSection.hxx".}
proc SetMaxDigitsSingle*(this: var IGESData_GlobalSection; val: Standard_Integer) {.
    importcpp: "SetMaxDigitsSingle", header: "IGESData_GlobalSection.hxx".}
proc SetMaxPower10Double*(this: var IGESData_GlobalSection; val: Standard_Integer) {.
    importcpp: "SetMaxPower10Double", header: "IGESData_GlobalSection.hxx".}
proc SetMaxDigitsDouble*(this: var IGESData_GlobalSection; val: Standard_Integer) {.
    importcpp: "SetMaxDigitsDouble", header: "IGESData_GlobalSection.hxx".}
proc SetReceiveName*(this: var IGESData_GlobalSection;
                    val: handle[TCollection_HAsciiString]) {.
    importcpp: "SetReceiveName", header: "IGESData_GlobalSection.hxx".}
proc SetScale*(this: var IGESData_GlobalSection; val: Standard_Real) {.
    importcpp: "SetScale", header: "IGESData_GlobalSection.hxx".}
proc SetUnitFlag*(this: var IGESData_GlobalSection; val: Standard_Integer) {.
    importcpp: "SetUnitFlag", header: "IGESData_GlobalSection.hxx".}
proc SetUnitName*(this: var IGESData_GlobalSection;
                 val: handle[TCollection_HAsciiString]) {.
    importcpp: "SetUnitName", header: "IGESData_GlobalSection.hxx".}
proc SetLineWeightGrad*(this: var IGESData_GlobalSection; val: Standard_Integer) {.
    importcpp: "SetLineWeightGrad", header: "IGESData_GlobalSection.hxx".}
proc SetMaxLineWeight*(this: var IGESData_GlobalSection; val: Standard_Real) {.
    importcpp: "SetMaxLineWeight", header: "IGESData_GlobalSection.hxx".}
proc SetDate*(this: var IGESData_GlobalSection;
             val: handle[TCollection_HAsciiString]) {.importcpp: "SetDate",
    header: "IGESData_GlobalSection.hxx".}
proc SetResolution*(this: var IGESData_GlobalSection; val: Standard_Real) {.
    importcpp: "SetResolution", header: "IGESData_GlobalSection.hxx".}
proc SetMaxCoord*(this: var IGESData_GlobalSection; val: Standard_Real = 0.0) {.
    importcpp: "SetMaxCoord", header: "IGESData_GlobalSection.hxx".}
proc MaxMaxCoord*(this: var IGESData_GlobalSection; val: Standard_Real = 0.0) {.
    importcpp: "MaxMaxCoord", header: "IGESData_GlobalSection.hxx".}
proc MaxMaxCoords*(this: var IGESData_GlobalSection; xyz: gp_XYZ) {.
    importcpp: "MaxMaxCoords", header: "IGESData_GlobalSection.hxx".}
proc SetAuthorName*(this: var IGESData_GlobalSection;
                   val: handle[TCollection_HAsciiString]) {.
    importcpp: "SetAuthorName", header: "IGESData_GlobalSection.hxx".}
proc SetCompanyName*(this: var IGESData_GlobalSection;
                    val: handle[TCollection_HAsciiString]) {.
    importcpp: "SetCompanyName", header: "IGESData_GlobalSection.hxx".}
proc SetIGESVersion*(this: var IGESData_GlobalSection; val: Standard_Integer) {.
    importcpp: "SetIGESVersion", header: "IGESData_GlobalSection.hxx".}
proc SetDraftingStandard*(this: var IGESData_GlobalSection; val: Standard_Integer) {.
    importcpp: "SetDraftingStandard", header: "IGESData_GlobalSection.hxx".}
proc SetLastChangeDate*(this: var IGESData_GlobalSection;
                       val: handle[TCollection_HAsciiString]) {.
    importcpp: "SetLastChangeDate", header: "IGESData_GlobalSection.hxx".}
proc SetApplicationProtocol*(this: var IGESData_GlobalSection;
                            val: handle[TCollection_HAsciiString]) {.
    importcpp: "SetApplicationProtocol", header: "IGESData_GlobalSection.hxx".}