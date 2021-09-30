##  Created on: 2011-07-13
##  Created by: Sergey ZERCHANINOV
##  Copyright (c) 2011-2013 OPEN CASCADE SAS
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

## ! Text rendering

type
  OpenGlText* {.importcpp: "OpenGl_Text", header: "OpenGl_Text.hxx", bycopy.} = object of OpenGlElement ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## new
                                                                                              ## text
                                                                                              ## in
                                                                                              ## 3D
                                                                                              ## space.
                                                                                              ##
                                                                                              ## !
                                                                                              ## @name
                                                                                              ## methods
                                                                                              ## for
                                                                                              ## compatibility
                                                                                              ## with
                                                                                              ## layers
                                                                                              ##
                                                                                              ## !
                                                                                              ## Empty
                                                                                              ## constructor
                                                                                              ##
                                                                                              ## !
                                                                                              ## Setup
                                                                                              ## new
                                                                                              ## string
                                                                                              ## and
                                                                                              ## position
                                                                                              ##
                                                                                              ## !
                                                                                              ## Setup
                                                                                              ## matrix.
    graphic3dText* {.importc: "Graphic3d_Text".}: Handle
    ## !< textures' IDs
    ## !< VBOs of vertices
    ## !< VBOs of texture coordinates


## !!!Ignored construct:  public : ! Creates new text in 3D space. OpenGl_Text ( const Handle ( Graphic3d_Text ) & theTextParams ) ;
## Error: token expected: ) but got: &!!!

proc destroyOpenGlText*(this: var OpenGlText) {.importcpp: "#.~OpenGl_Text()",
    header: "OpenGl_Text.hxx".}
## !!!Ignored construct:  ! Release cached VBO resources and the previous font if height changed.
## ! Cached structures will be refilled by the next render.
## ! Call Reset after modifying text parameters. void Reset ( const Handle ( OpenGl_Context ) & theCtx ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  & Text ( ) const { return myText ; } ! Sets text parameters
## ! @sa Reset() void SetText ( const Handle ( Graphic3d_Text ) & theText ) { myText = theText ; } ! Return true if text is 2D Standard_Boolean Is2D ( ) const { return myIs2d ; } ! Set true if text is 2D void Set2D ( const Standard_Boolean theEnable ) { myIs2d = theEnable ; } ! Setup new font size void SetFontSize ( const Handle ( OpenGl_Context ) & theContext , const Standard_Integer theFontSize ) ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  virtual void Render ( const Handle ( OpenGl_Workspace ) & theWorkspace ) const ;
## Error: token expected: ) but got: &!!!

proc release*(this: var OpenGlText; theContext: ptr OpenGlContext) {.
    importcpp: "Release", header: "OpenGl_Text.hxx".}
proc estimatedDataSize*(this: OpenGlText): StandardSize {.noSideEffect,
    importcpp: "EstimatedDataSize", header: "OpenGl_Text.hxx".}
proc updateDrawStats*(this: OpenGlText; theStats: var Graphic3dFrameStatsDataTmp;
                     theIsDetailed: bool) {.noSideEffect,
    importcpp: "UpdateDrawStats", header: "OpenGl_Text.hxx".}
proc constructOpenGlText*(): OpenGlText {.constructor, importcpp: "OpenGl_Text(@)",
                                       header: "OpenGl_Text.hxx".}
proc fontKey*(theAspect: OpenGlAspects; theHeight: int; theResolution: cuint): TCollectionAsciiString {.
    importcpp: "OpenGl_Text::FontKey(@)", header: "OpenGl_Text.hxx".}
## !!!Ignored construct:  FindFont ( const Handle ( OpenGl_Context ) & theCtx , const OpenGl_Aspects & theAspect , Standard_Integer theHeight , unsigned int theResolution , const TCollection_AsciiString & theKey ) ;
## Error: token expected: ) but got: [identifier]!!!

## !!!Ignored construct:  ! Compute text width static void StringSize ( const Handle ( OpenGl_Context ) & theCtx , const NCollection_String & theText , const OpenGl_Aspects & theTextAspect , const Standard_ShortReal theHeight , const unsigned int theResolution , Standard_ShortReal & theWidth , Standard_ShortReal & theAscent , Standard_ShortReal & theDescent ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Perform rendering void Render ( const Handle ( OpenGl_Context ) & theCtx , const OpenGl_Aspects & theTextAspect , unsigned int theResolution = Graphic3d_RenderingParams :: THE_DEFAULT_RESOLUTION ) const ;
## Error: token expected: ) but got: &!!!

proc dumpJson*(this: OpenGlText; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "OpenGl_Text.hxx".}
## !!!Ignored construct:  ! @name obsolete methods public : ! Setup new string and position Standard_DEPRECATED ( Deprecated method Init() with obsolete arguments, use Init() and Text() instead of it ) void Init ( const Handle ( OpenGl_Context ) & theCtx , const Standard_Utf8Char * theText , const OpenGl_Vec3 & thePoint ) ;
## Error: identifier expected, but got: Deprecated method Init() with obsolete arguments, use Init() and Text() instead of it!!!

## !!!Ignored construct:  ! Setup new position Standard_DEPRECATED ( Deprecated method SetPosition(), use Graphic3d_Text for it ) void SetPosition ( const OpenGl_Vec3 & thePoint ) ;
## Error: identifier expected, but got: Deprecated method SetPosition(), use Graphic3d_Text for it!!!

## !!!Ignored construct:  private : ! Setup matrix. void setupMatrix ( const Handle ( OpenGl_Context ) & theCtx , const OpenGl_Aspects & theTextAspect , const OpenGl_Vec3 & theDVec ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Draw arrays of vertices. void drawText ( const Handle ( OpenGl_Context ) & theCtx , const OpenGl_Aspects & theTextAspect ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Draw rectangle from bounding text box. void drawRect ( const Handle ( OpenGl_Context ) & theCtx , const OpenGl_Aspects & theTextAspect , const OpenGl_Vec4 & theColorSubs ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Main rendering code void render ( const Handle ( OpenGl_Context ) & theCtx , const OpenGl_Aspects & theTextAspect , const OpenGl_Vec4 & theColorText , const OpenGl_Vec4 & theColorSubs , unsigned int theResolution ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  myText ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  myFont ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  myBndVertsVbo ;
## Error: identifier expected, but got: ;!!!














































