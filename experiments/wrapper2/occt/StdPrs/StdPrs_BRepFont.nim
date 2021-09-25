##  Created on: 2013-09-16
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

discard "forward decl of StdPrs_BRepFont"
type
  HandleStdPrsBRepFont* = Handle[StdPrsBRepFont]

## ! This tool provides basic services for rendering of vectorized text glyphs as BRep shapes.
## ! Single instance initialize single font for sequential glyphs rendering with implicit caching of already rendered glyphs.
## ! Thus position of each glyph in the text is specified by shape location.
## !
## ! Please notice that this implementation uses mutex for thread-safety access,
## ! thus may lead to performance penalties in case of concurrent access.
## ! Although caching should eliminate this issue after rendering of sufficient number of glyphs.

type
  StdPrsBRepFont* {.importcpp: "StdPrs_BRepFont", header: "StdPrs_BRepFont.hxx",
                   bycopy.} = object of StandardTransient ## ! Find the font Initialize the font.
                                                     ## ! @param theFontName    the font name
                                                     ## ! @param theFontAspect  the font style
                                                     ## ! @param theSize        the face size in model units
                                                     ## ! @param theStrictLevel search strict level for using aliases and fallback
                                                     ## ! @return true on success
                                                     ## ! @return vertical distance from the horizontal baseline to the highest character coordinate.
                                                     ## ! Find (using Font_FontMgr) and initialize the font from the given name.
                                                     ## ! Alias for FindAndInit() for backward compatibility.
                                                     ## ! Render single glyph as TopoDS_Shape. This method does not lock the mutex.
                                                     ## ! @param theChar  glyph identifier
                                                     ## ! @param theShape rendered glyph within cache, might be NULL shape
                                                     ## ! @return true if glyph's geometry is available
                                                     ## ! Initialize class fields
                                                     ## ! @name Protected fields
                                                     ## ! @name Shared temporary variables for glyph construction
    ## !< wrapper over FreeType font
    ## !< glyphs cache
    ## !< lock for thread-safety
    ## !< surface to place glyphs on to
    ## !< algorithm precision
    ## !< scale font rendering units into model units
    ## !< flag to merge C1 curves of each contour into single C0 curve, OFF by default

  StdPrsBRepFontbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StdPrs_BRepFont::get_type_name(@)",
                            header: "StdPrs_BRepFont.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StdPrs_BRepFont::get_type_descriptor(@)",
    header: "StdPrs_BRepFont.hxx".}
proc dynamicType*(this: StdPrsBRepFont): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StdPrs_BRepFont.hxx".}
proc findAndCreate*(theFontName: TCollectionAsciiString;
                   theFontAspect: FontFontAspect; theSize: float;
                   theStrictLevel: FontStrictLevel = fontStrictLevelAny): Handle[
    StdPrsBRepFont] {.importcpp: "StdPrs_BRepFont::FindAndCreate(@)",
                     header: "StdPrs_BRepFont.hxx".}
proc constructStdPrsBRepFont*(): StdPrsBRepFont {.constructor,
    importcpp: "StdPrs_BRepFont(@)", header: "StdPrs_BRepFont.hxx".}
proc constructStdPrsBRepFont*(theFontPath: NCollectionString; theSize: float;
                             theFaceId: int = 0): StdPrsBRepFont {.constructor,
    importcpp: "StdPrs_BRepFont(@)", header: "StdPrs_BRepFont.hxx".}
proc constructStdPrsBRepFont*(theFontName: NCollectionString;
                             theFontAspect: FontFontAspect; theSize: float;
    theStrictLevel: FontStrictLevel = fontStrictLevelAny): StdPrsBRepFont {.
    constructor, importcpp: "StdPrs_BRepFont(@)", header: "StdPrs_BRepFont.hxx".}
proc release*(this: var StdPrsBRepFont) {.importcpp: "Release",
                                      header: "StdPrs_BRepFont.hxx".}
proc init*(this: var StdPrsBRepFont; theFontPath: NCollectionString; theSize: float;
          theFaceId: int): bool {.importcpp: "Init", header: "StdPrs_BRepFont.hxx".}
proc findAndInit*(this: var StdPrsBRepFont; theFontName: TCollectionAsciiString;
                 theFontAspect: FontFontAspect; theSize: float;
                 theStrictLevel: FontStrictLevel = fontStrictLevelAny): bool {.
    importcpp: "FindAndInit", header: "StdPrs_BRepFont.hxx".}
proc fTFont*(this: StdPrsBRepFont): Handle[FontFTFont] {.noSideEffect,
    importcpp: "FTFont", header: "StdPrs_BRepFont.hxx".}
proc renderGlyph*(this: var StdPrsBRepFont; theChar: StandardUtf32Char): TopoDS_Shape {.
    importcpp: "RenderGlyph", header: "StdPrs_BRepFont.hxx".}
proc setCompositeCurveMode*(this: var StdPrsBRepFont; theToConcatenate: bool) {.
    importcpp: "SetCompositeCurveMode", header: "StdPrs_BRepFont.hxx".}
proc setWidthScaling*(this: var StdPrsBRepFont; theScaleFactor: cfloat) {.
    importcpp: "SetWidthScaling", header: "StdPrs_BRepFont.hxx".}
proc ascender*(this: StdPrsBRepFont): float {.noSideEffect, importcpp: "Ascender",
    header: "StdPrs_BRepFont.hxx".}
proc descender*(this: StdPrsBRepFont): float {.noSideEffect, importcpp: "Descender",
    header: "StdPrs_BRepFont.hxx".}
proc lineSpacing*(this: StdPrsBRepFont): float {.noSideEffect,
    importcpp: "LineSpacing", header: "StdPrs_BRepFont.hxx".}
proc pointSize*(this: StdPrsBRepFont): float {.noSideEffect, importcpp: "PointSize",
    header: "StdPrs_BRepFont.hxx".}
proc advanceX*(this: var StdPrsBRepFont; theUCharNext: StandardUtf32Char): float {.
    importcpp: "AdvanceX", header: "StdPrs_BRepFont.hxx".}
proc advanceX*(this: var StdPrsBRepFont; theUChar: StandardUtf32Char;
              theUCharNext: StandardUtf32Char): float {.importcpp: "AdvanceX",
    header: "StdPrs_BRepFont.hxx".}
proc advanceY*(this: var StdPrsBRepFont; theUCharNext: StandardUtf32Char): float {.
    importcpp: "AdvanceY", header: "StdPrs_BRepFont.hxx".}
proc advanceY*(this: var StdPrsBRepFont; theUChar: StandardUtf32Char;
              theUCharNext: StandardUtf32Char): float {.importcpp: "AdvanceY",
    header: "StdPrs_BRepFont.hxx".}
proc scale*(this: StdPrsBRepFont): float {.noSideEffect, importcpp: "Scale",
                                       header: "StdPrs_BRepFont.hxx".}
proc mutex*(this: var StdPrsBRepFont): var StandardMutex {.importcpp: "Mutex",
    header: "StdPrs_BRepFont.hxx".}
proc init*(this: var StdPrsBRepFont; theFontName: NCollectionString;
          theFontAspect: FontFontAspect; theSize: float): bool {.importcpp: "Init",
    header: "StdPrs_BRepFont.hxx".}
