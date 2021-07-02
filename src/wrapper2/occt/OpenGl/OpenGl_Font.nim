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
    left* {.importc: "Left".}: StandardInteger
    right* {.importc: "Right".}: StandardInteger
    top* {.importc: "Top".}: StandardInteger
    bottom* {.importc: "Bottom".}: StandardInteger


proc constructOpenGlFont*(theFont: Handle[FontFTFont];
                         theKey: TCollectionAsciiString = ""): OpenGlFont {.
    constructor, importcpp: "OpenGl_Font(@)", header: "OpenGl_Font.hxx".}
proc destroyOpenGlFont*(this: var OpenGlFont) {.importcpp: "#.~OpenGl_Font()",
    header: "OpenGl_Font.hxx".}
proc release*(this: var OpenGlFont; theCtx: ptr OpenGlContext) {.importcpp: "Release",
    header: "OpenGl_Font.hxx".}
proc estimatedDataSize*(this: OpenGlFont): StandardSize {.noSideEffect,
    importcpp: "EstimatedDataSize", header: "OpenGl_Font.hxx".}
proc resourceKey*(this: OpenGlFont): TCollectionAsciiString {.noSideEffect,
    importcpp: "ResourceKey", header: "OpenGl_Font.hxx".}
proc fTFont*(this: OpenGlFont): Handle[FontFTFont] {.noSideEffect,
    importcpp: "FTFont", header: "OpenGl_Font.hxx".}
proc isValid*(this: OpenGlFont): bool {.noSideEffect, importcpp: "IsValid",
                                    header: "OpenGl_Font.hxx".}
proc wasInitialized*(this: OpenGlFont): bool {.noSideEffect,
    importcpp: "WasInitialized", header: "OpenGl_Font.hxx".}
proc init*(this: var OpenGlFont; theCtx: Handle[OpenGlContext]): bool {.
    importcpp: "Init", header: "OpenGl_Font.hxx".}
proc ascender*(this: OpenGlFont): cfloat {.noSideEffect, importcpp: "Ascender",
                                       header: "OpenGl_Font.hxx".}
proc descender*(this: OpenGlFont): cfloat {.noSideEffect, importcpp: "Descender",
                                        header: "OpenGl_Font.hxx".}
proc renderGlyph*(this: var OpenGlFont; theCtx: Handle[OpenGlContext];
                 theUChar: StandardUtf32Char; theGlyph: var OpenGlFontTile): bool {.
    importcpp: "RenderGlyph", header: "OpenGl_Font.hxx".}
type
  OpenGlFontbaseType* = OpenGlResource

proc getTypeName*(): cstring {.importcpp: "OpenGl_Font::get_type_name(@)",
                            header: "OpenGl_Font.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "OpenGl_Font::get_type_descriptor(@)", header: "OpenGl_Font.hxx".}
proc dynamicType*(this: OpenGlFont): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_Font.hxx".}
discard "forward decl of OpenGl_Font"
type
  HandleOpenGlFont* = Handle[OpenGlFont]


