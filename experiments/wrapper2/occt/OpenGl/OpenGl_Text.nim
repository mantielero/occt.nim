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
    ## !< text parameters
    ## !< textures' IDs
    ## !< VBOs of vertices
    ## !< VBOs of texture coordinates
    ## !< VBOs of vertices for bounding box


proc constructOpenGlText*(theTextParams: Handle[Graphic3dText]): OpenGlText {.
    constructor, importcpp: "OpenGl_Text(@)", header: "OpenGl_Text.hxx".}
proc destroyOpenGlText*(this: var OpenGlText) {.importcpp: "#.~OpenGl_Text()",
    header: "OpenGl_Text.hxx".}
proc reset*(this: var OpenGlText; theCtx: Handle[OpenGlContext]) {.importcpp: "Reset",
    header: "OpenGl_Text.hxx".}
proc text*(this: OpenGlText): Handle[Graphic3dText] {.noSideEffect,
    importcpp: "Text", header: "OpenGl_Text.hxx".}
proc setText*(this: var OpenGlText; theText: Handle[Graphic3dText]) {.
    importcpp: "SetText", header: "OpenGl_Text.hxx".}
proc is2D*(this: OpenGlText): bool {.noSideEffect, importcpp: "Is2D",
                                 header: "OpenGl_Text.hxx".}
proc set2D*(this: var OpenGlText; theEnable: bool) {.importcpp: "Set2D",
    header: "OpenGl_Text.hxx".}
proc setFontSize*(this: var OpenGlText; theContext: Handle[OpenGlContext];
                 theFontSize: int) {.importcpp: "SetFontSize",
                                   header: "OpenGl_Text.hxx".}
proc render*(this: OpenGlText; theWorkspace: Handle[OpenGlWorkspace]) {.noSideEffect,
    importcpp: "Render", header: "OpenGl_Text.hxx".}
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
proc findFont*(theCtx: Handle[OpenGlContext]; theAspect: OpenGlAspects;
              theHeight: int; theResolution: cuint; theKey: TCollectionAsciiString): Handle[
    OpenGlFont] {.importcpp: "OpenGl_Text::FindFont(@)", header: "OpenGl_Text.hxx".}
proc stringSize*(theCtx: Handle[OpenGlContext]; theText: NCollectionString;
                theTextAspect: OpenGlAspects; theHeight: StandardShortReal;
                theResolution: cuint; theWidth: var StandardShortReal;
                theAscent: var StandardShortReal; theDescent: var StandardShortReal) {.
    importcpp: "OpenGl_Text::StringSize(@)", header: "OpenGl_Text.hxx".}
proc render*(this: OpenGlText; theCtx: Handle[OpenGlContext];
            theTextAspect: OpenGlAspects;
            theResolution: cuint = the_Default_Resolution) {.noSideEffect,
    importcpp: "Render", header: "OpenGl_Text.hxx".}
proc dumpJson*(this: OpenGlText; theOStream: var StandardOStream; theDepth: int = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "OpenGl_Text.hxx".}
## !!!Ignored construct:  ! @name obsolete methods public : ! Setup new string and position Standard_DEPRECATED ( Deprecated method Init() with obsolete arguments, use Init() and Text() instead of it ) void Init ( const opencascade :: handle < OpenGl_Context > [end of template] & theCtx , const Standard_Utf8Char * theText , const OpenGl_Vec3 & thePoint ) ;
## Error: identifier expected, but got: Deprecated method Init() with obsolete arguments, use Init() and Text() instead of it!!!

## !!!Ignored construct:  ! Setup new position Standard_DEPRECATED ( Deprecated method SetPosition(), use Graphic3d_Text for it ) void SetPosition ( const OpenGl_Vec3 & thePoint ) ;
## Error: identifier expected, but got: Deprecated method SetPosition(), use Graphic3d_Text for it!!!

