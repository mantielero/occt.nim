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

##  forward declarations to avoid including of FreeType headers

type
  FT_Face* = ptr fT_FaceRec
  FT_Vector* = fT_Vector
  FT_Outline* = fT_Outline

discard "forward decl of Font_FTLibrary"
type
  FontFTFontParams* {.importcpp: "Font_FTFontParams", header: "Font_FTFont.hxx",
                     bycopy.} = object
    pointSize* {.importc: "PointSize".}: cuint ## !< face size in points (1/72 inch)
    resolution* {.importc: "Resolution".}: cuint ## !< resolution of the target device in dpi for FT_Set_Char_Size()
    toSynthesizeItalic* {.importc: "ToSynthesizeItalic".}: bool ## !< generate italic style (e.g. for font family having no italic style); FALSE by default
    isSingleStrokeFont* {.importc: "IsSingleStrokeFont".}: bool ## !< single-stroke (one-line) font, FALSE by default
                                                            ## ! Empty constructor.


proc constructFontFTFontParams*(): FontFTFontParams {.constructor,
    importcpp: "Font_FTFontParams(@)", header: "Font_FTFont.hxx".}
proc constructFontFTFontParams*(thePointSize: cuint; theResolution: cuint): FontFTFontParams {.
    constructor, importcpp: "Font_FTFontParams(@)", header: "Font_FTFont.hxx".}
discard "forward decl of Font_FTFont"
type
  HandleFontFTFont* = Handle[FontFTFont]

## ! Wrapper over FreeType font.
## ! Notice that this class uses internal buffers for loaded glyphs
## ! and it is absolutely UNSAFE to load/read glyph from concurrent threads!

type
  FontFTFont* {.importcpp: "Font_FTFont", header: "Font_FTFont.hxx", bycopy.} = object of StandardTransient ##
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

  FontFTFontbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Font_FTFont::get_type_name(@)",
                            header: "Font_FTFont.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Font_FTFont::get_type_descriptor(@)", header: "Font_FTFont.hxx".}
proc dynamicType*(this: FontFTFont): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Font_FTFont.hxx".}
proc findAndCreate*(theFontName: TCollectionAsciiString;
                   theFontAspect: FontFontAspect; theParams: FontFTFontParams;
                   theStrictLevel: FontStrictLevel = fontStrictLevelAny): Handle[
    FontFTFont] {.importcpp: "Font_FTFont::FindAndCreate(@)",
                 header: "Font_FTFont.hxx".}
proc isCharFromCJK*(theUChar: StandardUtf32Char): bool {.
    importcpp: "Font_FTFont::IsCharFromCJK(@)", header: "Font_FTFont.hxx".}
proc isCharFromHiragana*(theUChar: StandardUtf32Char): bool {.
    importcpp: "Font_FTFont::IsCharFromHiragana(@)", header: "Font_FTFont.hxx".}
proc isCharFromKatakana*(theUChar: StandardUtf32Char): bool {.
    importcpp: "Font_FTFont::IsCharFromKatakana(@)", header: "Font_FTFont.hxx".}
proc isCharFromKorean*(theUChar: StandardUtf32Char): bool {.
    importcpp: "Font_FTFont::IsCharFromKorean(@)", header: "Font_FTFont.hxx".}
proc isCharFromArabic*(theUChar: StandardUtf32Char): bool {.
    importcpp: "Font_FTFont::IsCharFromArabic(@)", header: "Font_FTFont.hxx".}
proc isCharRightToLeft*(theUChar: StandardUtf32Char): bool {.
    importcpp: "Font_FTFont::IsCharRightToLeft(@)", header: "Font_FTFont.hxx".}
proc charSubset*(theUChar: StandardUtf32Char): FontUnicodeSubset {.
    importcpp: "Font_FTFont::CharSubset(@)", header: "Font_FTFont.hxx".}
proc constructFontFTFont*(theFTLib: Handle[FontFTLibrary] = handle[FontFTLibrary]()): FontFTFont {.
    constructor, importcpp: "Font_FTFont(@)", header: "Font_FTFont.hxx".}
proc destroyFontFTFont*(this: var FontFTFont) {.importcpp: "#.~Font_FTFont()",
    header: "Font_FTFont.hxx".}
proc isValid*(this: FontFTFont): bool {.noSideEffect, importcpp: "IsValid",
                                    header: "Font_FTFont.hxx".}
proc glyphImage*(this: FontFTFont): ImagePixMap {.noSideEffect,
    importcpp: "GlyphImage", header: "Font_FTFont.hxx".}
proc init*(this: var FontFTFont; theFontPath: TCollectionAsciiString;
          theParams: FontFTFontParams; theFaceId: int = 0): bool {.importcpp: "Init",
    header: "Font_FTFont.hxx".}
proc init*(this: var FontFTFont; theData: Handle[NCollectionBuffer];
          theFileName: TCollectionAsciiString; theParams: FontFTFontParams;
          theFaceId: int = 0): bool {.importcpp: "Init", header: "Font_FTFont.hxx".}
proc findAndInit*(this: var FontFTFont; theFontName: TCollectionAsciiString;
                 theFontAspect: FontFontAspect; theParams: FontFTFontParams;
                 theStrictLevel: FontStrictLevel = fontStrictLevelAny): bool {.
    importcpp: "FindAndInit", header: "Font_FTFont.hxx".}
proc toUseUnicodeSubsetFallback*(this: FontFTFont): bool {.noSideEffect,
    importcpp: "ToUseUnicodeSubsetFallback", header: "Font_FTFont.hxx".}
proc setUseUnicodeSubsetFallback*(this: var FontFTFont; theToFallback: bool) {.
    importcpp: "SetUseUnicodeSubsetFallback", header: "Font_FTFont.hxx".}
proc isSingleStrokeFont*(this: FontFTFont): bool {.noSideEffect,
    importcpp: "IsSingleStrokeFont", header: "Font_FTFont.hxx".}
proc setSingleStrokeFont*(this: var FontFTFont; theIsSingleLine: bool) {.
    importcpp: "SetSingleStrokeFont", header: "Font_FTFont.hxx".}
proc toSynthesizeItalic*(this: FontFTFont): bool {.noSideEffect,
    importcpp: "ToSynthesizeItalic", header: "Font_FTFont.hxx".}
proc release*(this: var FontFTFont) {.importcpp: "Release", header: "Font_FTFont.hxx".}
proc renderGlyph*(this: var FontFTFont; theChar: StandardUtf32Char): bool {.
    importcpp: "RenderGlyph", header: "Font_FTFont.hxx".}
proc glyphMaxSizeX*(this: FontFTFont; theToIncludeFallback: bool = false): cuint {.
    noSideEffect, importcpp: "GlyphMaxSizeX", header: "Font_FTFont.hxx".}
proc glyphMaxSizeY*(this: FontFTFont; theToIncludeFallback: bool = false): cuint {.
    noSideEffect, importcpp: "GlyphMaxSizeY", header: "Font_FTFont.hxx".}
proc ascender*(this: FontFTFont): cfloat {.noSideEffect, importcpp: "Ascender",
                                       header: "Font_FTFont.hxx".}
proc descender*(this: FontFTFont): cfloat {.noSideEffect, importcpp: "Descender",
                                        header: "Font_FTFont.hxx".}
proc lineSpacing*(this: FontFTFont): cfloat {.noSideEffect, importcpp: "LineSpacing",
    header: "Font_FTFont.hxx".}
proc pointSize*(this: FontFTFont): cuint {.noSideEffect, importcpp: "PointSize",
                                       header: "Font_FTFont.hxx".}
proc widthScaling*(this: FontFTFont): cfloat {.noSideEffect,
    importcpp: "WidthScaling", header: "Font_FTFont.hxx".}
proc setWidthScaling*(this: var FontFTFont; theScaleFactor: cfloat) {.
    importcpp: "SetWidthScaling", header: "Font_FTFont.hxx".}
proc hasSymbol*(this: FontFTFont; theUChar: StandardUtf32Char): bool {.noSideEffect,
    importcpp: "HasSymbol", header: "Font_FTFont.hxx".}
proc advanceX*(this: FontFTFont; theUCharNext: StandardUtf32Char): cfloat {.
    noSideEffect, importcpp: "AdvanceX", header: "Font_FTFont.hxx".}
proc advanceX*(this: var FontFTFont; theUChar: StandardUtf32Char;
              theUCharNext: StandardUtf32Char): cfloat {.importcpp: "AdvanceX",
    header: "Font_FTFont.hxx".}
proc advanceY*(this: FontFTFont; theUCharNext: StandardUtf32Char): cfloat {.
    noSideEffect, importcpp: "AdvanceY", header: "Font_FTFont.hxx".}
proc advanceY*(this: var FontFTFont; theUChar: StandardUtf32Char;
              theUCharNext: StandardUtf32Char): cfloat {.importcpp: "AdvanceY",
    header: "Font_FTFont.hxx".}
proc glyphsNumber*(this: FontFTFont; theToIncludeFallback: bool = false): int {.
    noSideEffect, importcpp: "GlyphsNumber", header: "Font_FTFont.hxx".}
proc glyphRect*(this: FontFTFont; theRect: var FontRect) {.noSideEffect,
    importcpp: "GlyphRect", header: "Font_FTFont.hxx".}
proc boundingBox*(this: var FontFTFont; theString: NCollectionString;
                 theAlignX: Graphic3dHorizontalTextAlignment;
                 theAlignY: Graphic3dVerticalTextAlignment): FontRect {.
    importcpp: "BoundingBox", header: "Font_FTFont.hxx".}
proc renderGlyphOutline*(this: var FontFTFont; theChar: StandardUtf32Char): ptr FT_Outline {.
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

proc getKerning*(this: FontFTFont; theKern: var FT_Vector;
                theUCharCurr: StandardUtf32Char; theUCharNext: StandardUtf32Char): bool {.
    noSideEffect, importcpp: "getKerning", header: "Font_FTFont.hxx".}
proc findAndInitFallback*(this: var FontFTFont; theSubset: FontUnicodeSubset): bool {.
    importcpp: "findAndInitFallback", header: "Font_FTFont.hxx".}
