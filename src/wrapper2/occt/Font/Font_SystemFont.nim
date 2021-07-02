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

## ! This class stores information about the font, which is merely a file path and cached metadata about the font.

type
  FontSystemFont* {.importcpp: "Font_SystemFont", header: "Font_SystemFont.hxx",
                   bycopy.} = object of StandardTransient ## ! Creates a new font object.
                                                     ## ! Computes a hash code for the system font, in the range [1, theUpperBound]. Based on Font Family, so that the whole
                                                     ## ! family with different aspects can be found within the same bucket of some map
                                                     ## ! @param theSystemFont the system font which hash code is to be computed
                                                     ## ! @param theUpperBound the upper bound of the range a computing hash code must be within
                                                     ## ! @return a computed hash code, in the range [1, theUpperBound]
    ## !< paths to the font file
    ## !< face ids per font file
    ## !< font family name, lower cased
    ## !< font family name
    ## !< single stroke font flag, FALSE by default

  FontSystemFontbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Font_SystemFont::get_type_name(@)",
                            header: "Font_SystemFont.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Font_SystemFont::get_type_descriptor(@)",
    header: "Font_SystemFont.hxx".}
proc dynamicType*(this: FontSystemFont): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Font_SystemFont.hxx".}
proc constructFontSystemFont*(theFontName: TCollectionAsciiString): FontSystemFont {.
    constructor, importcpp: "Font_SystemFont(@)", header: "Font_SystemFont.hxx".}
proc fontKey*(this: FontSystemFont): TCollectionAsciiString {.noSideEffect,
    importcpp: "FontKey", header: "Font_SystemFont.hxx".}
proc fontName*(this: FontSystemFont): TCollectionAsciiString {.noSideEffect,
    importcpp: "FontName", header: "Font_SystemFont.hxx".}
proc fontPath*(this: FontSystemFont; theAspect: FontFontAspect): TCollectionAsciiString {.
    noSideEffect, importcpp: "FontPath", header: "Font_SystemFont.hxx".}
proc fontFaceId*(this: FontSystemFont; theAspect: FontFontAspect): StandardInteger {.
    noSideEffect, importcpp: "FontFaceId", header: "Font_SystemFont.hxx".}
proc setFontPath*(this: var FontSystemFont; theAspect: FontFontAspect;
                 thePath: TCollectionAsciiString; theFaceId: StandardInteger = 0) {.
    importcpp: "SetFontPath", header: "Font_SystemFont.hxx".}
proc hasFontAspect*(this: FontSystemFont; theAspect: FontFontAspect): bool {.
    noSideEffect, importcpp: "HasFontAspect", header: "Font_SystemFont.hxx".}
proc fontPathAny*(this: FontSystemFont; theAspect: FontFontAspect;
                 theToSynthesizeItalic: var bool; theFaceId: var StandardInteger): TCollectionAsciiString {.
    noSideEffect, importcpp: "FontPathAny", header: "Font_SystemFont.hxx".}
proc isEqual*(this: FontSystemFont; theOtherFont: Handle[FontSystemFont]): StandardBoolean {.
    noSideEffect, importcpp: "IsEqual", header: "Font_SystemFont.hxx".}
proc isSingleStrokeFont*(this: FontSystemFont): StandardBoolean {.noSideEffect,
    importcpp: "IsSingleStrokeFont", header: "Font_SystemFont.hxx".}
proc setSingleStrokeFont*(this: var FontSystemFont; theIsSingleLine: StandardBoolean) {.
    importcpp: "SetSingleStrokeFont", header: "Font_SystemFont.hxx".}
proc toString*(this: FontSystemFont): TCollectionAsciiString {.noSideEffect,
    importcpp: "ToString", header: "Font_SystemFont.hxx".}
proc hashCode*(theSystemFont: Handle[FontSystemFont];
              theUpperBound: StandardInteger): StandardInteger {.
    importcpp: "Font_SystemFont::HashCode(@)", header: "Font_SystemFont.hxx".}
proc isEqual*(theFont1: Handle[FontSystemFont]; theFont2: Handle[FontSystemFont]): bool {.
    importcpp: "Font_SystemFont::IsEqual(@)", header: "Font_SystemFont.hxx".}
discard "forward decl of Font_SystemFont"
type
  HandleFontSystemFont* = Handle[FontSystemFont]


