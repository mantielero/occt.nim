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

discard "forward decl of Font_FTFont"
type
  OpenGlFont* {.importcpp: "OpenGl_Font", header: "OpenGl_Font.hxx", bycopy.} = object of OpenGlResource ##
                                                                                               ## !
                                                                                               ## Simple
                                                                                               ## structure
                                                                                               ## stores
                                                                                               ## tile
                                                                                               ## rectangle.
                                                                                               ##
                                                                                               ## !
                                                                                               ## Main
                                                                                               ## constructor.
                                                                                               ##
                                                                                               ## !
                                                                                               ## Render
                                                                                               ## new
                                                                                               ## glyph
                                                                                               ## to
                                                                                               ## the
                                                                                               ## texture.
                                                                                               ##
                                                                                               ## Type
                                                                                               ## definition
    ## !< key of shared resource
    ## !< FreeType font instance
    ## !< ascender     provided my FT font
    ## !< descender    provided my FT font
    ## !< tile height
    ## !< id of last tile
    ## !< texture format
    ## !< array of textures
    ## !< array of loaded tiles

  OpenGlFontTile* {.importcpp: "OpenGl_Font::Tile", header: "OpenGl_Font.hxx", bycopy.} = object
    uv* {.importc: "uv".}: FontRect ## !< UV coordinates in texture
    px* {.importc: "px".}: FontRect ## !< pixel displacement coordinates
    texture* {.importc: "texture".}: GLuint ## !< GL texture ID

  OpenGlFontRectI* {.importcpp: "OpenGl_Font::RectI", header: "OpenGl_Font.hxx",
                    bycopy.} = object
    left* {.importc: "Left".}: cint
    right* {.importc: "Right".}: cint
    top* {.importc: "Top".}: cint
    bottom* {.importc: "Bottom".}: cint


proc newOpenGlFont*(theFont: Handle[FontFTFont];
                   theKey: TCollectionAsciiString = ""): OpenGlFont {.cdecl,
    constructor, importcpp: "OpenGl_Font(@)", dynlib: tkkxbase.}
proc destroyOpenGlFont*(this: var OpenGlFont) {.cdecl, importcpp: "#.~OpenGl_Font()",
    dynlib: tkkxbase.}
proc release*(this: var OpenGlFont; theCtx: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", dynlib: tkkxbase.}
proc estimatedDataSize*(this: OpenGlFont): csize_t {.noSideEffect, cdecl,
    importcpp: "EstimatedDataSize", dynlib: tkkxbase.}
proc resourceKey*(this: OpenGlFont): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "ResourceKey", dynlib: tkkxbase.}
proc fTFont*(this: OpenGlFont): Handle[FontFTFont] {.noSideEffect, cdecl,
    importcpp: "FTFont", dynlib: tkkxbase.}
proc isValid*(this: OpenGlFont): bool {.noSideEffect, cdecl, importcpp: "IsValid",
                                    dynlib: tkkxbase.}
proc wasInitialized*(this: OpenGlFont): bool {.noSideEffect, cdecl,
    importcpp: "WasInitialized", dynlib: tkkxbase.}
proc init*(this: var OpenGlFont; theCtx: Handle[OpenGlContext]): bool {.cdecl,
    importcpp: "Init", dynlib: tkkxbase.}
proc ascender*(this: OpenGlFont): cfloat {.noSideEffect, cdecl, importcpp: "Ascender",
                                       dynlib: tkkxbase.}
proc descender*(this: OpenGlFont): cfloat {.noSideEffect, cdecl,
                                        importcpp: "Descender", dynlib: tkkxbase.}
proc renderGlyph*(this: var OpenGlFont; theCtx: Handle[OpenGlContext];
                 theUChar: StandardUtf32Char; theGlyph: var OpenGlFontTile): bool {.
    cdecl, importcpp: "RenderGlyph", dynlib: tkkxbase.}
type
  HandleOpenGlFont* = Handle[OpenGlFont]
