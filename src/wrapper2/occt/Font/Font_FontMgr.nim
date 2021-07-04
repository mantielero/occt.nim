##  Created on: 2008-01-20
##  Created by: Alexander A. BORODIN
##  Copyright (c) 2008-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Transient, ../Standard/Standard_Type,
  Font_FontAspect, Font_NListOfSystemFont, Font_StrictLevel, Font_UnicodeSubset,
  ../NCollection/NCollection_DataMap, ../NCollection/NCollection_IndexedMap,
  ../NCollection/NCollection_Shared, ../TColStd/TColStd_SequenceOfHAsciiString

discard "forward decl of Font_SystemFont"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of NCollection_Buffer"
discard "forward decl of Font_FontMgr"
type
  Handle_Font_FontMgr* = handle[Font_FontMgr]

## ! Collects and provides information about available fonts in system.

type
  Font_FontMgr* {.importcpp: "Font_FontMgr", header: "Font_FontMgr.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                       ## !
                                                                                                       ## Return
                                                                                                       ## global
                                                                                                       ## instance
                                                                                                       ## of
                                                                                                       ## font
                                                                                                       ## manager.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## Return
                                                                                                       ## the
                                                                                                       ## list
                                                                                                       ## of
                                                                                                       ## available
                                                                                                       ## fonts.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## Return
                                                                                                       ## flag
                                                                                                       ## for
                                                                                                       ## tracing
                                                                                                       ## font
                                                                                                       ## aliases
                                                                                                       ## usage
                                                                                                       ## via
                                                                                                       ## Message_Trace
                                                                                                       ## messages;
                                                                                                       ## TRUE
                                                                                                       ## by
                                                                                                       ## default.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## Collects
                                                                                                       ## available
                                                                                                       ## fonts
                                                                                                       ## paths.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## Creates
                                                                                                       ## empty
                                                                                                       ## font
                                                                                                       ## manager
                                                                                                       ## object
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## Map
                                                                                                       ## storing
                                                                                                       ## registered
                                                                                                       ## fonts.

  Font_FontMgrbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Font_FontMgr::get_type_name(@)",
                              header: "Font_FontMgr.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Font_FontMgr::get_type_descriptor(@)", header: "Font_FontMgr.hxx".}
proc DynamicType*(this: Font_FontMgr): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Font_FontMgr.hxx".}
proc GetInstance*(): handle[Font_FontMgr] {.
    importcpp: "Font_FontMgr::GetInstance(@)", header: "Font_FontMgr.hxx".}
proc FontAspectToString*(theAspect: Font_FontAspect): cstring {.
    importcpp: "Font_FontMgr::FontAspectToString(@)", header: "Font_FontMgr.hxx".}
proc ToUseUnicodeSubsetFallback*(): var Standard_Boolean {.
    importcpp: "Font_FontMgr::ToUseUnicodeSubsetFallback(@)",
    header: "Font_FontMgr.hxx".}
proc AvailableFonts*(this: Font_FontMgr; theList: var Font_NListOfSystemFont) {.
    noSideEffect, importcpp: "AvailableFonts", header: "Font_FontMgr.hxx".}
proc GetAvailableFonts*(this: Font_FontMgr): Font_NListOfSystemFont {.noSideEffect,
    importcpp: "GetAvailableFonts", header: "Font_FontMgr.hxx".}
proc GetAvailableFontsNames*(this: Font_FontMgr;
                            theFontsNames: var TColStd_SequenceOfHAsciiString) {.
    noSideEffect, importcpp: "GetAvailableFontsNames", header: "Font_FontMgr.hxx".}
proc GetFont*(this: Font_FontMgr; theFontName: handle[TCollection_HAsciiString];
             theFontAspect: Font_FontAspect; theFontSize: Standard_Integer): handle[
    Font_SystemFont] {.noSideEffect, importcpp: "GetFont",
                      header: "Font_FontMgr.hxx".}
proc GetFont*(this: Font_FontMgr; theFontName: TCollection_AsciiString): handle[
    Font_SystemFont] {.noSideEffect, importcpp: "GetFont",
                      header: "Font_FontMgr.hxx".}
proc FindFont*(this: Font_FontMgr; theFontName: TCollection_AsciiString;
              theStrictLevel: Font_StrictLevel;
              theFontAspect: var Font_FontAspect;
              theDoFailMsg: Standard_Boolean = Standard_True): handle[
    Font_SystemFont] {.noSideEffect, importcpp: "FindFont",
                      header: "Font_FontMgr.hxx".}
proc FindFont*(this: Font_FontMgr; theFontName: TCollection_AsciiString;
              theFontAspect: var Font_FontAspect): handle[Font_SystemFont] {.
    noSideEffect, importcpp: "FindFont", header: "Font_FontMgr.hxx".}
proc FindFallbackFont*(this: Font_FontMgr; theSubset: Font_UnicodeSubset;
                      theFontAspect: Font_FontAspect): handle[Font_SystemFont] {.
    noSideEffect, importcpp: "FindFallbackFont", header: "Font_FontMgr.hxx".}
proc CheckFont*(this: Font_FontMgr;
               theFonts: var NCollection_Sequence[handle[Font_SystemFont]];
               theFontPath: TCollection_AsciiString): Standard_Boolean {.
    noSideEffect, importcpp: "CheckFont", header: "Font_FontMgr.hxx".}
proc CheckFont*(this: Font_FontMgr; theFontPath: Standard_CString): handle[
    Font_SystemFont] {.noSideEffect, importcpp: "CheckFont",
                      header: "Font_FontMgr.hxx".}
proc RegisterFont*(this: var Font_FontMgr; theFont: handle[Font_SystemFont];
                  theToOverride: Standard_Boolean): Standard_Boolean {.
    importcpp: "RegisterFont", header: "Font_FontMgr.hxx".}
proc RegisterFonts*(this: var Font_FontMgr;
                   theFonts: NCollection_Sequence[handle[Font_SystemFont]];
                   theToOverride: Standard_Boolean): Standard_Boolean {.
    importcpp: "RegisterFonts", header: "Font_FontMgr.hxx".}
proc ToTraceAliases*(this: Font_FontMgr): Standard_Boolean {.noSideEffect,
    importcpp: "ToTraceAliases", header: "Font_FontMgr.hxx".}
proc SetTraceAliases*(this: var Font_FontMgr; theToTrace: Standard_Boolean) {.
    importcpp: "SetTraceAliases", header: "Font_FontMgr.hxx".}
proc GetAllAliases*(this: Font_FontMgr;
                   theAliases: var TColStd_SequenceOfHAsciiString) {.noSideEffect,
    importcpp: "GetAllAliases", header: "Font_FontMgr.hxx".}
proc GetFontAliases*(this: Font_FontMgr;
                    theFontNames: var TColStd_SequenceOfHAsciiString;
                    theAliasName: TCollection_AsciiString) {.noSideEffect,
    importcpp: "GetFontAliases", header: "Font_FontMgr.hxx".}
proc AddFontAlias*(this: var Font_FontMgr; theAliasName: TCollection_AsciiString;
                  theFontName: TCollection_AsciiString): bool {.
    importcpp: "AddFontAlias", header: "Font_FontMgr.hxx".}
proc RemoveFontAlias*(this: var Font_FontMgr; theAliasName: TCollection_AsciiString;
                     theFontName: TCollection_AsciiString): bool {.
    importcpp: "RemoveFontAlias", header: "Font_FontMgr.hxx".}
proc InitFontDataBase*(this: var Font_FontMgr) {.importcpp: "InitFontDataBase",
    header: "Font_FontMgr.hxx".}
proc ClearFontDataBase*(this: var Font_FontMgr) {.importcpp: "ClearFontDataBase",
    header: "Font_FontMgr.hxx".}
proc EmbedFallbackFont*(): handle[NCollection_Buffer] {.
    importcpp: "Font_FontMgr::EmbedFallbackFont(@)", header: "Font_FontMgr.hxx".}