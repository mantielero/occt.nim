import ../tcollection/[tcollection_types, tcollection_asciistring]
import ../standard/standard_types
import ../ncollection/ncollection_types
import opengl_types



##  Created on: 2013-01-29
##  Created by: Kirill GAVRILOV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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





proc newOpenGlFont*(theFont: Handle[FontFTFont];
                   theKey: TCollectionAsciiString = newTCollectionAsciiString("")): OpenGlFont {.cdecl,
    constructor, importcpp: "OpenGl_Font(@)", header: "OpenGl_Font.hxx".}
proc destroyOpenGlFont*(this: var OpenGlFont) {.cdecl, importcpp: "#.~OpenGl_Font()",
    header: "OpenGl_Font.hxx".}
proc release*(this: var OpenGlFont; theCtx: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", header: "OpenGl_Font.hxx".}
proc estimatedDataSize*(this: OpenGlFont): csize_t {.noSideEffect, cdecl,
    importcpp: "EstimatedDataSize", header: "OpenGl_Font.hxx".}
proc resourceKey*(this: OpenGlFont): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "ResourceKey", header: "OpenGl_Font.hxx".}
proc fTFont*(this: OpenGlFont): Handle[FontFTFont] {.noSideEffect, cdecl,
    importcpp: "FTFont", header: "OpenGl_Font.hxx".}
proc isValid*(this: OpenGlFont): bool {.noSideEffect, cdecl, importcpp: "IsValid",
                                    header: "OpenGl_Font.hxx".}
proc wasInitialized*(this: OpenGlFont): bool {.noSideEffect, cdecl,
    importcpp: "WasInitialized", header: "OpenGl_Font.hxx".}
proc init*(this: var OpenGlFont; theCtx: Handle[OpenGlContext]): bool {.cdecl,
    importcpp: "Init", header: "OpenGl_Font.hxx".}
proc ascender*(this: OpenGlFont): cfloat {.noSideEffect, cdecl, importcpp: "Ascender",
                                       header: "OpenGl_Font.hxx".}
proc descender*(this: OpenGlFont): cfloat {.noSideEffect, cdecl,
                                        importcpp: "Descender", header: "OpenGl_Font.hxx".}
proc renderGlyph*(this: var OpenGlFont; theCtx: Handle[OpenGlContext];
                 theUChar: StandardUtf32Char; theGlyph: var OpenGlFontTile): bool {.
    cdecl, importcpp: "RenderGlyph", header: "OpenGl_Font.hxx".}


