##  Created on: 2013-01-28
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
  Font_FontAspect, Font_Rect, Font_StrictLevel, Font_UnicodeSubset,
  ../Graphic3d/Graphic3d_HorizontalTextAlignment,
  ../Graphic3d/Graphic3d_VerticalTextAlignment, ../Image/Image_PixMap,
  ../NCollection/NCollection_String, ../TCollection/TCollection_AsciiString

##  forward declarations to avoid including of FreeType headers

type
  FT_Face* = ptr FT_FaceRec_
  FT_Vector* = FT_Vector_
  FT_Outline* = FT_Outline_

discard "forward decl of Font_FTLibrary"
type
  Font_FTFontParams* {.importcpp: "Font_FTFontParams", header: "Font_FTFont.hxx",
                      bycopy.} = object
    PointSize* {.importc: "PointSize".}: cuint ## !< face size in points (1/72 inch)
    Resolution* {.importc: "Resolution".}: cuint ## !< resolution of the target device in dpi for FT_Set_Char_Size()
    ToSynthesizeItalic* {.importc: "ToSynthesizeItalic".}: bool ## !< generate italic style (e.g. for font family having no italic style); FALSE by default
    IsSingleStrokeFont* {.importc: "IsSingleStrokeFont".}: bool ## !< single-stroke (one-line) font, FALSE by default
                                                            ## ! Empty constructor.


proc constructFont_FTFontParams*(): Font_FTFontParams {.constructor,
    importcpp: "Font_FTFontParams(@)", header: "Font_FTFont.hxx".}
proc constructFont_FTFontParams*(thePointSize: cuint; theResolution: cuint): Font_FTFontParams {.
    constructor, importcpp: "Font_FTFontParams(@)", header: "Font_FTFont.hxx".}
discard "forward decl of Font_FTFont"
type
  Handle_Font_FTFont* = handle[Font_FTFont]

## ! Wrapper over FreeType font.
## ! Notice that this class uses internal buffers for loaded glyphs
## ! and it is absolutely UNSAFE to load/read glyph from concurrent threads!

type
  Font_FTFont* {.importcpp: "Font_FTFont", header: "Font_FTFont.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                    ## !
                                                                                                    ## Find
                                                                                                    ## the
                                                                                                    ## font
                                                                                                    ## Initialize
                                                                                                    ## the
                                                                                                    ## font.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @param
                                                                                                    ## theFontName
                                                                                                    ## the
                                                                                                    ## font
                                                                                                    ## name
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @param
                                                                                                    ## theFontAspect
                                                                                                    ## the
                                                                                                    ## font
                                                                                                    ## style
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @param
                                                                                                    ## theParams
                                                                                                    ## initialization
                                                                                                    ## parameters
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @param
                                                                                                    ## theStrictLevel
                                                                                                    ## search
                                                                                                    ## strict
                                                                                                    ## level
                                                                                                    ## for
                                                                                                    ## using
                                                                                                    ## aliases
                                                                                                    ## and
                                                                                                    ## fallback
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @return
                                                                                                    ## true
                                                                                                    ## on
                                                                                                    ## success
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Create
                                                                                                    ## uninitialized
                                                                                                    ## instance.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Computes
                                                                                                    ## outline
                                                                                                    ## contour
                                                                                                    ## for
                                                                                                    ## the
                                                                                                    ## symbol.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @param
                                                                                                    ## theUChar
                                                                                                    ## [in]
                                                                                                    ## the
                                                                                                    ## character
                                                                                                    ## to
                                                                                                    ## be
                                                                                                    ## loaded
                                                                                                    ## as
                                                                                                    ## current
                                                                                                    ## one
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @param
                                                                                                    ## theOutline
                                                                                                    ## [out]
                                                                                                    ## outline
                                                                                                    ## contour
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @return
                                                                                                    ## true
                                                                                                    ## on
                                                                                                    ## success
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Initialize
                                                                                                    ## the
                                                                                                    ## font.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @param
                                                                                                    ## theFontPath
                                                                                                    ## path
                                                                                                    ## to
                                                                                                    ## the
                                                                                                    ## font
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @param
                                                                                                    ## thePointSize
                                                                                                    ## the
                                                                                                    ## face
                                                                                                    ## size
                                                                                                    ## in
                                                                                                    ## points
                                                                                                    ## (1/72
                                                                                                    ## inch)
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @param
                                                                                                    ## theResolution
                                                                                                    ## the
                                                                                                    ## resolution
                                                                                                    ## of
                                                                                                    ## the
                                                                                                    ## target
                                                                                                    ## device
                                                                                                    ## in
                                                                                                    ## dpi
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @return
                                                                                                    ## true
                                                                                                    ## on
                                                                                                    ## success
    ## !< handle to the FT library object
    ## !< memory buffer
    ## !< fallback fonts
    ## !< FT face object
    ## !< active FT face object (the main of fallback)
    ## !< font path
    ## !< font initialization parameters
    ## !< font initialization aspect
    ## !< scale glyphs along X-axis
    ## !< default load flags
    ## !< cached glyph plane
    ## !< currently loaded unicode character
    ## !< use default fallback fonts for extended Unicode sub-sets (Korean, CJK, etc.)

  Font_FTFontbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Font_FTFont::get_type_name(@)",
                              header: "Font_FTFont.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Font_FTFont::get_type_descriptor(@)", header: "Font_FTFont.hxx".}
proc DynamicType*(this: Font_FTFont): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Font_FTFont.hxx".}
proc FindAndCreate*(theFontName: TCollection_AsciiString;
                   theFontAspect: Font_FontAspect; theParams: Font_FTFontParams;
                   theStrictLevel: Font_StrictLevel = Font_StrictLevel_Any): handle[
    Font_FTFont] {.importcpp: "Font_FTFont::FindAndCreate(@)",
                  header: "Font_FTFont.hxx".}
proc IsCharFromCJK*(theUChar: Standard_Utf32Char): bool {.
    importcpp: "Font_FTFont::IsCharFromCJK(@)", header: "Font_FTFont.hxx".}
proc IsCharFromHiragana*(theUChar: Standard_Utf32Char): bool {.
    importcpp: "Font_FTFont::IsCharFromHiragana(@)", header: "Font_FTFont.hxx".}
proc IsCharFromKatakana*(theUChar: Standard_Utf32Char): bool {.
    importcpp: "Font_FTFont::IsCharFromKatakana(@)", header: "Font_FTFont.hxx".}
proc IsCharFromKorean*(theUChar: Standard_Utf32Char): bool {.
    importcpp: "Font_FTFont::IsCharFromKorean(@)", header: "Font_FTFont.hxx".}
proc IsCharFromArabic*(theUChar: Standard_Utf32Char): bool {.
    importcpp: "Font_FTFont::IsCharFromArabic(@)", header: "Font_FTFont.hxx".}
proc IsCharRightToLeft*(theUChar: Standard_Utf32Char): bool {.
    importcpp: "Font_FTFont::IsCharRightToLeft(@)", header: "Font_FTFont.hxx".}
proc CharSubset*(theUChar: Standard_Utf32Char): Font_UnicodeSubset {.
    importcpp: "Font_FTFont::CharSubset(@)", header: "Font_FTFont.hxx".}
proc constructFont_FTFont*(theFTLib: handle[Font_FTLibrary] = handle[Font_FTLibrary]()): Font_FTFont {.
    constructor, importcpp: "Font_FTFont(@)", header: "Font_FTFont.hxx".}
proc destroyFont_FTFont*(this: var Font_FTFont) {.importcpp: "#.~Font_FTFont()",
    header: "Font_FTFont.hxx".}
proc IsValid*(this: Font_FTFont): bool {.noSideEffect, importcpp: "IsValid",
                                     header: "Font_FTFont.hxx".}
proc GlyphImage*(this: Font_FTFont): Image_PixMap {.noSideEffect,
    importcpp: "GlyphImage", header: "Font_FTFont.hxx".}
proc Init*(this: var Font_FTFont; theFontPath: TCollection_AsciiString;
          theParams: Font_FTFontParams; theFaceId: Standard_Integer = 0): bool {.
    importcpp: "Init", header: "Font_FTFont.hxx".}
proc Init*(this: var Font_FTFont; theData: handle[NCollection_Buffer];
          theFileName: TCollection_AsciiString; theParams: Font_FTFontParams;
          theFaceId: Standard_Integer = 0): bool {.importcpp: "Init",
    header: "Font_FTFont.hxx".}
proc FindAndInit*(this: var Font_FTFont; theFontName: TCollection_AsciiString;
                 theFontAspect: Font_FontAspect; theParams: Font_FTFontParams;
                 theStrictLevel: Font_StrictLevel = Font_StrictLevel_Any): bool {.
    importcpp: "FindAndInit", header: "Font_FTFont.hxx".}
proc ToUseUnicodeSubsetFallback*(this: Font_FTFont): Standard_Boolean {.
    noSideEffect, importcpp: "ToUseUnicodeSubsetFallback",
    header: "Font_FTFont.hxx".}
proc SetUseUnicodeSubsetFallback*(this: var Font_FTFont;
                                 theToFallback: Standard_Boolean) {.
    importcpp: "SetUseUnicodeSubsetFallback", header: "Font_FTFont.hxx".}
proc IsSingleStrokeFont*(this: Font_FTFont): bool {.noSideEffect,
    importcpp: "IsSingleStrokeFont", header: "Font_FTFont.hxx".}
proc SetSingleStrokeFont*(this: var Font_FTFont; theIsSingleLine: bool) {.
    importcpp: "SetSingleStrokeFont", header: "Font_FTFont.hxx".}
proc ToSynthesizeItalic*(this: Font_FTFont): bool {.noSideEffect,
    importcpp: "ToSynthesizeItalic", header: "Font_FTFont.hxx".}
proc Release*(this: var Font_FTFont) {.importcpp: "Release", header: "Font_FTFont.hxx".}
proc RenderGlyph*(this: var Font_FTFont; theChar: Standard_Utf32Char): bool {.
    importcpp: "RenderGlyph", header: "Font_FTFont.hxx".}
proc GlyphMaxSizeX*(this: Font_FTFont; theToIncludeFallback: bool = false): cuint {.
    noSideEffect, importcpp: "GlyphMaxSizeX", header: "Font_FTFont.hxx".}
proc GlyphMaxSizeY*(this: Font_FTFont; theToIncludeFallback: bool = false): cuint {.
    noSideEffect, importcpp: "GlyphMaxSizeY", header: "Font_FTFont.hxx".}
proc Ascender*(this: Font_FTFont): cfloat {.noSideEffect, importcpp: "Ascender",
                                        header: "Font_FTFont.hxx".}
proc Descender*(this: Font_FTFont): cfloat {.noSideEffect, importcpp: "Descender",
    header: "Font_FTFont.hxx".}
proc LineSpacing*(this: Font_FTFont): cfloat {.noSideEffect,
    importcpp: "LineSpacing", header: "Font_FTFont.hxx".}
proc PointSize*(this: Font_FTFont): cuint {.noSideEffect, importcpp: "PointSize",
                                        header: "Font_FTFont.hxx".}
proc WidthScaling*(this: Font_FTFont): cfloat {.noSideEffect,
    importcpp: "WidthScaling", header: "Font_FTFont.hxx".}
proc SetWidthScaling*(this: var Font_FTFont; theScaleFactor: cfloat) {.
    importcpp: "SetWidthScaling", header: "Font_FTFont.hxx".}
proc HasSymbol*(this: Font_FTFont; theUChar: Standard_Utf32Char): bool {.noSideEffect,
    importcpp: "HasSymbol", header: "Font_FTFont.hxx".}
proc AdvanceX*(this: Font_FTFont; theUCharNext: Standard_Utf32Char): cfloat {.
    noSideEffect, importcpp: "AdvanceX", header: "Font_FTFont.hxx".}
proc AdvanceX*(this: var Font_FTFont; theUChar: Standard_Utf32Char;
              theUCharNext: Standard_Utf32Char): cfloat {.importcpp: "AdvanceX",
    header: "Font_FTFont.hxx".}
proc AdvanceY*(this: Font_FTFont; theUCharNext: Standard_Utf32Char): cfloat {.
    noSideEffect, importcpp: "AdvanceY", header: "Font_FTFont.hxx".}
proc AdvanceY*(this: var Font_FTFont; theUChar: Standard_Utf32Char;
              theUCharNext: Standard_Utf32Char): cfloat {.importcpp: "AdvanceY",
    header: "Font_FTFont.hxx".}
proc GlyphsNumber*(this: Font_FTFont; theToIncludeFallback: bool = false): Standard_Integer {.
    noSideEffect, importcpp: "GlyphsNumber", header: "Font_FTFont.hxx".}
proc GlyphRect*(this: Font_FTFont; theRect: var Font_Rect) {.noSideEffect,
    importcpp: "GlyphRect", header: "Font_FTFont.hxx".}
proc BoundingBox*(this: var Font_FTFont; theString: NCollection_String;
                 theAlignX: Graphic3d_HorizontalTextAlignment;
                 theAlignY: Graphic3d_VerticalTextAlignment): Font_Rect {.
    importcpp: "BoundingBox", header: "Font_FTFont.hxx".}
proc renderGlyphOutline*(this: var Font_FTFont; theChar: Standard_Utf32Char): ptr FT_Outline {.
    importcpp: "renderGlyphOutline", header: "Font_FTFont.hxx".}
## !!!Ignored construct:  public : ! Initialize the font.
## ! @param theFontPath   path to the font
## ! @param thePointSize  the face size in points (1/72 inch)
## ! @param theResolution the resolution of the target device in dpi
## ! @return true on success Standard_DEPRECATED ( Deprecated method, Font_FTFontParams should be used for passing parameters ) bool Init ( const NCollection_String & theFontPath , unsigned int thePointSize , unsigned int theResolution ) { Font_FTFontParams aParams ; aParams . PointSize = thePointSize ; aParams . Resolution = theResolution ; return Init ( theFontPath . ToCString ( ) , aParams , 0 ) ; } ! Initialize the font.
## ! @param theFontName   the font name
## ! @param theFontAspect the font style
## ! @param thePointSize  the face size in points (1/72 inch)
## ! @param theResolution the resolution of the target device in dpi
## ! @return true on success Standard_DEPRECATED ( Deprecated method, Font_FTFontParams should be used for passing parameters ) bool Init ( const NCollection_String & theFontName , Font_FontAspect theFontAspect , unsigned int thePointSize , unsigned int theResolution ) { Font_FTFontParams aParams ; aParams . PointSize = thePointSize ; aParams . Resolution = theResolution ; return FindAndInit ( theFontName . ToCString ( ) , theFontAspect , aParams ) ; } protected : ! Convert value to 26.6 fixed-point format for FT library API. template < typename theInput_t > int32_t toFTPoints ( const theInput_t thePointSize ) const { return ( int32_t ) thePointSize * 64 ; } ! Convert value from 26.6 fixed-point format for FT library API. template < typename theReturn_t , typename theFTUnits_t > inline theReturn_t fromFTPoints ( const theFTUnits_t theFTUnits ) const { return ( theReturn_t ) theFTUnits / 64.0f ; } protected : ! Load glyph without rendering it. bool loadGlyph ( const Standard_Utf32Char theUChar ) ;
## Error: identifier expected, but got: Deprecated method, Font_FTFontParams should be used for passing parameters!!!

proc getKerning*(this: Font_FTFont; theKern: var FT_Vector;
                theUCharCurr: Standard_Utf32Char; theUCharNext: Standard_Utf32Char): bool {.
    noSideEffect, importcpp: "getKerning", header: "Font_FTFont.hxx".}
proc findAndInitFallback*(this: var Font_FTFont; theSubset: Font_UnicodeSubset): bool {.
    importcpp: "findAndInitFallback", header: "Font_FTFont.hxx".}