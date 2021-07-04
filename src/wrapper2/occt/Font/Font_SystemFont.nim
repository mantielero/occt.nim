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
  Font_FontAspect, ../Standard/Standard, ../Standard/Standard_Type,
  ../Standard/Standard_Transient, ../TCollection/TCollection_AsciiString

## ! This class stores information about the font, which is merely a file path and cached metadata about the font.

type
  Font_SystemFont* {.importcpp: "Font_SystemFont", header: "Font_SystemFont.hxx",
                    bycopy.} = object of Standard_Transient ## ! Creates a new font object.
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

  Font_SystemFontbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Font_SystemFont::get_type_name(@)",
                              header: "Font_SystemFont.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Font_SystemFont::get_type_descriptor(@)",
    header: "Font_SystemFont.hxx".}
proc DynamicType*(this: Font_SystemFont): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Font_SystemFont.hxx".}
proc constructFont_SystemFont*(theFontName: TCollection_AsciiString): Font_SystemFont {.
    constructor, importcpp: "Font_SystemFont(@)", header: "Font_SystemFont.hxx".}
proc FontKey*(this: Font_SystemFont): TCollection_AsciiString {.noSideEffect,
    importcpp: "FontKey", header: "Font_SystemFont.hxx".}
proc FontName*(this: Font_SystemFont): TCollection_AsciiString {.noSideEffect,
    importcpp: "FontName", header: "Font_SystemFont.hxx".}
proc FontPath*(this: Font_SystemFont; theAspect: Font_FontAspect): TCollection_AsciiString {.
    noSideEffect, importcpp: "FontPath", header: "Font_SystemFont.hxx".}
proc FontFaceId*(this: Font_SystemFont; theAspect: Font_FontAspect): Standard_Integer {.
    noSideEffect, importcpp: "FontFaceId", header: "Font_SystemFont.hxx".}
proc SetFontPath*(this: var Font_SystemFont; theAspect: Font_FontAspect;
                 thePath: TCollection_AsciiString; theFaceId: Standard_Integer = 0) {.
    importcpp: "SetFontPath", header: "Font_SystemFont.hxx".}
proc HasFontAspect*(this: Font_SystemFont; theAspect: Font_FontAspect): bool {.
    noSideEffect, importcpp: "HasFontAspect", header: "Font_SystemFont.hxx".}
proc FontPathAny*(this: Font_SystemFont; theAspect: Font_FontAspect;
                 theToSynthesizeItalic: var bool; theFaceId: var Standard_Integer): TCollection_AsciiString {.
    noSideEffect, importcpp: "FontPathAny", header: "Font_SystemFont.hxx".}
proc IsEqual*(this: Font_SystemFont; theOtherFont: handle[Font_SystemFont]): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "Font_SystemFont.hxx".}
proc IsSingleStrokeFont*(this: Font_SystemFont): Standard_Boolean {.noSideEffect,
    importcpp: "IsSingleStrokeFont", header: "Font_SystemFont.hxx".}
proc SetSingleStrokeFont*(this: var Font_SystemFont;
                         theIsSingleLine: Standard_Boolean) {.
    importcpp: "SetSingleStrokeFont", header: "Font_SystemFont.hxx".}
proc ToString*(this: Font_SystemFont): TCollection_AsciiString {.noSideEffect,
    importcpp: "ToString", header: "Font_SystemFont.hxx".}
proc HashCode*(theSystemFont: handle[Font_SystemFont];
              theUpperBound: Standard_Integer): Standard_Integer {.
    importcpp: "Font_SystemFont::HashCode(@)", header: "Font_SystemFont.hxx".}
proc IsEqual*(theFont1: handle[Font_SystemFont]; theFont2: handle[Font_SystemFont]): bool {.
    importcpp: "Font_SystemFont::IsEqual(@)", header: "Font_SystemFont.hxx".}
discard "forward decl of Font_SystemFont"
type
  Handle_Font_SystemFont* = handle[Font_SystemFont]
