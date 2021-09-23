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

import
  OpenGl_Texture, OpenGl_Vec, ../Font/Font_Rect,
  ../NCollection/NCollection_DataMap, ../NCollection/NCollection_Vector,
  ../TCollection/TCollection_AsciiString

discard "forward decl of Font_FTFont"
type
  OpenGl_Font* {.importcpp: "OpenGl_Font", header: "OpenGl_Font.hxx", bycopy.} = object of OpenGl_Resource ##
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

  OpenGl_FontTile* {.importcpp: "OpenGl_Font::Tile", header: "OpenGl_Font.hxx",
                    bycopy.} = object
    uv* {.importc: "uv".}: Font_Rect ## !< UV coordinates in texture
    px* {.importc: "px".}: Font_Rect ## !< pixel displacement coordinates
    texture* {.importc: "texture".}: GLuint ## !< GL texture ID

  OpenGl_FontRectI* {.importcpp: "OpenGl_Font::RectI", header: "OpenGl_Font.hxx",
                     bycopy.} = object
    Left* {.importc: "Left".}: Standard_Integer
    Right* {.importc: "Right".}: Standard_Integer
    Top* {.importc: "Top".}: Standard_Integer
    Bottom* {.importc: "Bottom".}: Standard_Integer


proc constructOpenGl_Font*(theFont: handle[Font_FTFont];
                          theKey: TCollection_AsciiString = ""): OpenGl_Font {.
    constructor, importcpp: "OpenGl_Font(@)", header: "OpenGl_Font.hxx".}
proc destroyOpenGl_Font*(this: var OpenGl_Font) {.importcpp: "#.~OpenGl_Font()",
    header: "OpenGl_Font.hxx".}
proc Release*(this: var OpenGl_Font; theCtx: ptr OpenGl_Context) {.
    importcpp: "Release", header: "OpenGl_Font.hxx".}
proc EstimatedDataSize*(this: OpenGl_Font): Standard_Size {.noSideEffect,
    importcpp: "EstimatedDataSize", header: "OpenGl_Font.hxx".}
proc ResourceKey*(this: OpenGl_Font): TCollection_AsciiString {.noSideEffect,
    importcpp: "ResourceKey", header: "OpenGl_Font.hxx".}
proc FTFont*(this: OpenGl_Font): handle[Font_FTFont] {.noSideEffect,
    importcpp: "FTFont", header: "OpenGl_Font.hxx".}
proc IsValid*(this: OpenGl_Font): bool {.noSideEffect, importcpp: "IsValid",
                                     header: "OpenGl_Font.hxx".}
proc WasInitialized*(this: OpenGl_Font): bool {.noSideEffect,
    importcpp: "WasInitialized", header: "OpenGl_Font.hxx".}
proc Init*(this: var OpenGl_Font; theCtx: handle[OpenGl_Context]): bool {.
    importcpp: "Init", header: "OpenGl_Font.hxx".}
proc Ascender*(this: OpenGl_Font): cfloat {.noSideEffect, importcpp: "Ascender",
                                        header: "OpenGl_Font.hxx".}
proc Descender*(this: OpenGl_Font): cfloat {.noSideEffect, importcpp: "Descender",
    header: "OpenGl_Font.hxx".}
proc RenderGlyph*(this: var OpenGl_Font; theCtx: handle[OpenGl_Context];
                 theUChar: Standard_Utf32Char; theGlyph: var OpenGl_FontTile): bool {.
    importcpp: "RenderGlyph", header: "OpenGl_Font.hxx".}
type
  OpenGl_Fontbase_type* = OpenGl_Resource

proc get_type_name*(): cstring {.importcpp: "OpenGl_Font::get_type_name(@)",
                              header: "OpenGl_Font.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "OpenGl_Font::get_type_descriptor(@)", header: "OpenGl_Font.hxx".}
proc DynamicType*(this: OpenGl_Font): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_Font.hxx".}
discard "forward decl of OpenGl_Font"
type
  Handle_OpenGl_Font* = handle[OpenGl_Font]
