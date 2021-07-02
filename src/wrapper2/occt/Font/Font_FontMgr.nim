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

discard "forward decl of Font_SystemFont"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of NCollection_Buffer"
discard "forward decl of Font_FontMgr"
type
  HandleFontFontMgr* = Handle[FontFontMgr]

## ! Collects and provides information about available fonts in system.

type
  FontFontMgr* {.importcpp: "Font_FontMgr", header: "Font_FontMgr.hxx", bycopy.} = object of StandardTransient ##
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

  FontFontMgrbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Font_FontMgr::get_type_name(@)",
                            header: "Font_FontMgr.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Font_FontMgr::get_type_descriptor(@)", header: "Font_FontMgr.hxx".}
proc dynamicType*(this: FontFontMgr): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Font_FontMgr.hxx".}
proc getInstance*(): Handle[FontFontMgr] {.importcpp: "Font_FontMgr::GetInstance(@)",
                                        header: "Font_FontMgr.hxx".}
proc fontAspectToString*(theAspect: FontFontAspect): cstring {.
    importcpp: "Font_FontMgr::FontAspectToString(@)", header: "Font_FontMgr.hxx".}
proc toUseUnicodeSubsetFallback*(): var StandardBoolean {.
    importcpp: "Font_FontMgr::ToUseUnicodeSubsetFallback(@)",
    header: "Font_FontMgr.hxx".}
proc availableFonts*(this: FontFontMgr; theList: var FontNListOfSystemFont) {.
    noSideEffect, importcpp: "AvailableFonts", header: "Font_FontMgr.hxx".}
proc getAvailableFonts*(this: FontFontMgr): FontNListOfSystemFont {.noSideEffect,
    importcpp: "GetAvailableFonts", header: "Font_FontMgr.hxx".}
proc getAvailableFontsNames*(this: FontFontMgr;
                            theFontsNames: var TColStdSequenceOfHAsciiString) {.
    noSideEffect, importcpp: "GetAvailableFontsNames", header: "Font_FontMgr.hxx".}
proc getFont*(this: FontFontMgr; theFontName: Handle[TCollectionHAsciiString];
             theFontAspect: FontFontAspect; theFontSize: StandardInteger): Handle[
    FontSystemFont] {.noSideEffect, importcpp: "GetFont", header: "Font_FontMgr.hxx".}
proc getFont*(this: FontFontMgr; theFontName: TCollectionAsciiString): Handle[
    FontSystemFont] {.noSideEffect, importcpp: "GetFont", header: "Font_FontMgr.hxx".}
proc findFont*(this: FontFontMgr; theFontName: TCollectionAsciiString;
              theStrictLevel: FontStrictLevel; theFontAspect: var FontFontAspect;
              theDoFailMsg: StandardBoolean = standardTrue): Handle[FontSystemFont] {.
    noSideEffect, importcpp: "FindFont", header: "Font_FontMgr.hxx".}
proc findFont*(this: FontFontMgr; theFontName: TCollectionAsciiString;
              theFontAspect: var FontFontAspect): Handle[FontSystemFont] {.
    noSideEffect, importcpp: "FindFont", header: "Font_FontMgr.hxx".}
proc findFallbackFont*(this: FontFontMgr; theSubset: FontUnicodeSubset;
                      theFontAspect: FontFontAspect): Handle[FontSystemFont] {.
    noSideEffect, importcpp: "FindFallbackFont", header: "Font_FontMgr.hxx".}
proc checkFont*(this: FontFontMgr;
               theFonts: var NCollectionSequence[Handle[FontSystemFont]];
               theFontPath: TCollectionAsciiString): StandardBoolean {.
    noSideEffect, importcpp: "CheckFont", header: "Font_FontMgr.hxx".}
proc checkFont*(this: FontFontMgr; theFontPath: StandardCString): Handle[
    FontSystemFont] {.noSideEffect, importcpp: "CheckFont",
                     header: "Font_FontMgr.hxx".}
proc registerFont*(this: var FontFontMgr; theFont: Handle[FontSystemFont];
                  theToOverride: StandardBoolean): StandardBoolean {.
    importcpp: "RegisterFont", header: "Font_FontMgr.hxx".}
proc registerFonts*(this: var FontFontMgr;
                   theFonts: NCollectionSequence[Handle[FontSystemFont]];
                   theToOverride: StandardBoolean): StandardBoolean {.
    importcpp: "RegisterFonts", header: "Font_FontMgr.hxx".}
proc toTraceAliases*(this: FontFontMgr): StandardBoolean {.noSideEffect,
    importcpp: "ToTraceAliases", header: "Font_FontMgr.hxx".}
proc setTraceAliases*(this: var FontFontMgr; theToTrace: StandardBoolean) {.
    importcpp: "SetTraceAliases", header: "Font_FontMgr.hxx".}
proc getAllAliases*(this: FontFontMgr;
                   theAliases: var TColStdSequenceOfHAsciiString) {.noSideEffect,
    importcpp: "GetAllAliases", header: "Font_FontMgr.hxx".}
proc getFontAliases*(this: FontFontMgr;
                    theFontNames: var TColStdSequenceOfHAsciiString;
                    theAliasName: TCollectionAsciiString) {.noSideEffect,
    importcpp: "GetFontAliases", header: "Font_FontMgr.hxx".}
proc addFontAlias*(this: var FontFontMgr; theAliasName: TCollectionAsciiString;
                  theFontName: TCollectionAsciiString): bool {.
    importcpp: "AddFontAlias", header: "Font_FontMgr.hxx".}
proc removeFontAlias*(this: var FontFontMgr; theAliasName: TCollectionAsciiString;
                     theFontName: TCollectionAsciiString): bool {.
    importcpp: "RemoveFontAlias", header: "Font_FontMgr.hxx".}
proc initFontDataBase*(this: var FontFontMgr) {.importcpp: "InitFontDataBase",
    header: "Font_FontMgr.hxx".}
proc clearFontDataBase*(this: var FontFontMgr) {.importcpp: "ClearFontDataBase",
    header: "Font_FontMgr.hxx".}
proc embedFallbackFont*(): Handle[NCollectionBuffer] {.
    importcpp: "Font_FontMgr::EmbedFallbackFont(@)", header: "Font_FontMgr.hxx".}

