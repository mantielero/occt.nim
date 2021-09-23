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

import
  OpenGl_Element, OpenGl_Aspects, OpenGl_TextBuilder,
  ../TCollection/TCollection_ExtendedString, ../Graphic3d/Graphic3d_Vertex,
  ../Graphic3d/Graphic3d_HorizontalTextAlignment,
  ../Graphic3d/Graphic3d_RenderingParams, ../Graphic3d/Graphic3d_Text,
  ../Graphic3d/Graphic3d_VerticalTextAlignment, ../gp/gp_Ax2

## ! Text rendering

type
  OpenGl_Text* {.importcpp: "OpenGl_Text", header: "OpenGl_Text.hxx", bycopy.} = object of OpenGl_Element ##
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


proc constructOpenGl_Text*(theTextParams: handle[Graphic3d_Text]): OpenGl_Text {.
    constructor, importcpp: "OpenGl_Text(@)", header: "OpenGl_Text.hxx".}
proc destroyOpenGl_Text*(this: var OpenGl_Text) {.importcpp: "#.~OpenGl_Text()",
    header: "OpenGl_Text.hxx".}
proc Reset*(this: var OpenGl_Text; theCtx: handle[OpenGl_Context]) {.
    importcpp: "Reset", header: "OpenGl_Text.hxx".}
proc Text*(this: OpenGl_Text): handle[Graphic3d_Text] {.noSideEffect,
    importcpp: "Text", header: "OpenGl_Text.hxx".}
proc SetText*(this: var OpenGl_Text; theText: handle[Graphic3d_Text]) {.
    importcpp: "SetText", header: "OpenGl_Text.hxx".}
proc Is2D*(this: OpenGl_Text): Standard_Boolean {.noSideEffect, importcpp: "Is2D",
    header: "OpenGl_Text.hxx".}
proc Set2D*(this: var OpenGl_Text; theEnable: Standard_Boolean) {.importcpp: "Set2D",
    header: "OpenGl_Text.hxx".}
proc SetFontSize*(this: var OpenGl_Text; theContext: handle[OpenGl_Context];
                 theFontSize: Standard_Integer) {.importcpp: "SetFontSize",
    header: "OpenGl_Text.hxx".}
proc Render*(this: OpenGl_Text; theWorkspace: handle[OpenGl_Workspace]) {.
    noSideEffect, importcpp: "Render", header: "OpenGl_Text.hxx".}
proc Release*(this: var OpenGl_Text; theContext: ptr OpenGl_Context) {.
    importcpp: "Release", header: "OpenGl_Text.hxx".}
proc EstimatedDataSize*(this: OpenGl_Text): Standard_Size {.noSideEffect,
    importcpp: "EstimatedDataSize", header: "OpenGl_Text.hxx".}
proc UpdateDrawStats*(this: OpenGl_Text; theStats: var Graphic3d_FrameStatsDataTmp;
                     theIsDetailed: bool) {.noSideEffect,
    importcpp: "UpdateDrawStats", header: "OpenGl_Text.hxx".}
proc constructOpenGl_Text*(): OpenGl_Text {.constructor,
    importcpp: "OpenGl_Text(@)", header: "OpenGl_Text.hxx".}
proc FontKey*(theAspect: OpenGl_Aspects; theHeight: Standard_Integer;
             theResolution: cuint): TCollection_AsciiString {.
    importcpp: "OpenGl_Text::FontKey(@)", header: "OpenGl_Text.hxx".}
proc FindFont*(theCtx: handle[OpenGl_Context]; theAspect: OpenGl_Aspects;
              theHeight: Standard_Integer; theResolution: cuint;
              theKey: TCollection_AsciiString): handle[OpenGl_Font] {.
    importcpp: "OpenGl_Text::FindFont(@)", header: "OpenGl_Text.hxx".}
proc StringSize*(theCtx: handle[OpenGl_Context]; theText: NCollection_String;
                theTextAspect: OpenGl_Aspects; theHeight: Standard_ShortReal;
                theResolution: cuint; theWidth: var Standard_ShortReal;
                theAscent: var Standard_ShortReal;
                theDescent: var Standard_ShortReal) {.
    importcpp: "OpenGl_Text::StringSize(@)", header: "OpenGl_Text.hxx".}
proc Render*(this: OpenGl_Text; theCtx: handle[OpenGl_Context];
            theTextAspect: OpenGl_Aspects;
            theResolution: cuint = THE_DEFAULT_RESOLUTION) {.noSideEffect,
    importcpp: "Render", header: "OpenGl_Text.hxx".}
proc DumpJson*(this: OpenGl_Text; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "OpenGl_Text.hxx".}
## !!!Ignored construct:  ! @name obsolete methods public : ! Setup new string and position Standard_DEPRECATED ( Deprecated method Init() with obsolete arguments, use Init() and Text() instead of it ) void Init ( const opencascade :: handle < OpenGl_Context > [end of template] & theCtx , const Standard_Utf8Char * theText , const OpenGl_Vec3 & thePoint ) ;
## Error: identifier expected, but got: Deprecated method Init() with obsolete arguments, use Init() and Text() instead of it!!!

## !!!Ignored construct:  ! Setup new position Standard_DEPRECATED ( Deprecated method SetPosition(), use Graphic3d_Text for it ) void SetPosition ( const OpenGl_Vec3 & thePoint ) ;
## Error: identifier expected, but got: Deprecated method SetPosition(), use Graphic3d_Text for it!!!
