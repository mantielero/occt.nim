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

import
  ../Adaptor3d/Adaptor3d_CurveOnSurface, ../BRep/BRep_Builder,
  ../Font/Font_FTFont, ../Font/Font_TextFormatter,
  ../Geom2dAdaptor/Geom2dAdaptor_HCurve,
  ../Geom2dConvert/Geom2dConvert_CompCurveToBSplineCurve, ../gp/gp_Ax3,
  ../gp/gp_XY, ../gp/gp_XYZ, ../NCollection/NCollection_DataMap,
  ../NCollection/NCollection_String, ../Standard/Standard_Mutex,
  ../TColgp/TColgp_Array1OfPnt2d, ../TopoDS/TopoDS_Shape, ../TopoDS/TopoDS_Face,
  ../TopTools/TopTools_SequenceOfShape

discard "forward decl of StdPrs_BRepFont"
type
  Handle_StdPrs_BRepFont* = handle[StdPrs_BRepFont]

## ! This tool provides basic services for rendering of vectorized text glyphs as BRep shapes.
## ! Single instance initialize single font for sequential glyphs rendering with implicit caching of already rendered glyphs.
## ! Thus position of each glyph in the text is specified by shape location.
## !
## ! Please notice that this implementation uses mutex for thread-safety access,
## ! thus may lead to performance penalties in case of concurrent access.
## ! Although caching should eliminate this issue after rendering of sufficient number of glyphs.

type
  StdPrs_BRepFont* {.importcpp: "StdPrs_BRepFont", header: "StdPrs_BRepFont.hxx",
                    bycopy.} = object of Standard_Transient ## ! Find the font Initialize the font.
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

  StdPrs_BRepFontbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StdPrs_BRepFont::get_type_name(@)",
                              header: "StdPrs_BRepFont.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StdPrs_BRepFont::get_type_descriptor(@)",
    header: "StdPrs_BRepFont.hxx".}
proc DynamicType*(this: StdPrs_BRepFont): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StdPrs_BRepFont.hxx".}
proc FindAndCreate*(theFontName: TCollection_AsciiString;
                   theFontAspect: Font_FontAspect; theSize: Standard_Real;
                   theStrictLevel: Font_StrictLevel = Font_StrictLevel_Any): handle[
    StdPrs_BRepFont] {.importcpp: "StdPrs_BRepFont::FindAndCreate(@)",
                      header: "StdPrs_BRepFont.hxx".}
proc constructStdPrs_BRepFont*(): StdPrs_BRepFont {.constructor,
    importcpp: "StdPrs_BRepFont(@)", header: "StdPrs_BRepFont.hxx".}
proc constructStdPrs_BRepFont*(theFontPath: NCollection_String;
                              theSize: Standard_Real;
                              theFaceId: Standard_Integer = 0): StdPrs_BRepFont {.
    constructor, importcpp: "StdPrs_BRepFont(@)", header: "StdPrs_BRepFont.hxx".}
proc constructStdPrs_BRepFont*(theFontName: NCollection_String;
                              theFontAspect: Font_FontAspect;
                              theSize: Standard_Real; theStrictLevel: Font_StrictLevel = Font_StrictLevel_Any): StdPrs_BRepFont {.
    constructor, importcpp: "StdPrs_BRepFont(@)", header: "StdPrs_BRepFont.hxx".}
proc Release*(this: var StdPrs_BRepFont) {.importcpp: "Release",
                                       header: "StdPrs_BRepFont.hxx".}
proc Init*(this: var StdPrs_BRepFont; theFontPath: NCollection_String;
          theSize: Standard_Real; theFaceId: Standard_Integer): bool {.
    importcpp: "Init", header: "StdPrs_BRepFont.hxx".}
proc FindAndInit*(this: var StdPrs_BRepFont; theFontName: TCollection_AsciiString;
                 theFontAspect: Font_FontAspect; theSize: Standard_Real;
                 theStrictLevel: Font_StrictLevel = Font_StrictLevel_Any): bool {.
    importcpp: "FindAndInit", header: "StdPrs_BRepFont.hxx".}
proc FTFont*(this: StdPrs_BRepFont): handle[Font_FTFont] {.noSideEffect,
    importcpp: "FTFont", header: "StdPrs_BRepFont.hxx".}
proc RenderGlyph*(this: var StdPrs_BRepFont; theChar: Standard_Utf32Char): TopoDS_Shape {.
    importcpp: "RenderGlyph", header: "StdPrs_BRepFont.hxx".}
proc SetCompositeCurveMode*(this: var StdPrs_BRepFont;
                           theToConcatenate: Standard_Boolean) {.
    importcpp: "SetCompositeCurveMode", header: "StdPrs_BRepFont.hxx".}
proc SetWidthScaling*(this: var StdPrs_BRepFont; theScaleFactor: cfloat) {.
    importcpp: "SetWidthScaling", header: "StdPrs_BRepFont.hxx".}
proc Ascender*(this: StdPrs_BRepFont): Standard_Real {.noSideEffect,
    importcpp: "Ascender", header: "StdPrs_BRepFont.hxx".}
proc Descender*(this: StdPrs_BRepFont): Standard_Real {.noSideEffect,
    importcpp: "Descender", header: "StdPrs_BRepFont.hxx".}
proc LineSpacing*(this: StdPrs_BRepFont): Standard_Real {.noSideEffect,
    importcpp: "LineSpacing", header: "StdPrs_BRepFont.hxx".}
proc PointSize*(this: StdPrs_BRepFont): Standard_Real {.noSideEffect,
    importcpp: "PointSize", header: "StdPrs_BRepFont.hxx".}
proc AdvanceX*(this: var StdPrs_BRepFont; theUCharNext: Standard_Utf32Char): Standard_Real {.
    importcpp: "AdvanceX", header: "StdPrs_BRepFont.hxx".}
proc AdvanceX*(this: var StdPrs_BRepFont; theUChar: Standard_Utf32Char;
              theUCharNext: Standard_Utf32Char): Standard_Real {.
    importcpp: "AdvanceX", header: "StdPrs_BRepFont.hxx".}
proc AdvanceY*(this: var StdPrs_BRepFont; theUCharNext: Standard_Utf32Char): Standard_Real {.
    importcpp: "AdvanceY", header: "StdPrs_BRepFont.hxx".}
proc AdvanceY*(this: var StdPrs_BRepFont; theUChar: Standard_Utf32Char;
              theUCharNext: Standard_Utf32Char): Standard_Real {.
    importcpp: "AdvanceY", header: "StdPrs_BRepFont.hxx".}
proc Scale*(this: StdPrs_BRepFont): Standard_Real {.noSideEffect, importcpp: "Scale",
    header: "StdPrs_BRepFont.hxx".}
proc Mutex*(this: var StdPrs_BRepFont): var Standard_Mutex {.importcpp: "Mutex",
    header: "StdPrs_BRepFont.hxx".}
proc Init*(this: var StdPrs_BRepFont; theFontName: NCollection_String;
          theFontAspect: Font_FontAspect; theSize: Standard_Real): bool {.
    importcpp: "Init", header: "StdPrs_BRepFont.hxx".}