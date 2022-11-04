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


proc newOpenGlText*(theTextParams: Handle[Graphic3dText]): OpenGlText {.cdecl,
    constructor, importcpp: "OpenGl_Text(@)", dynlib: tkkxbase.}
proc destroyOpenGlText*(this: var OpenGlText) {.cdecl, importcpp: "#.~OpenGl_Text()",
    dynlib: tkkxbase.}
proc reset*(this: var OpenGlText; theCtx: Handle[OpenGlContext]) {.cdecl,
    importcpp: "Reset", dynlib: tkkxbase.}
proc text*(this: OpenGlText): Handle[Graphic3dText] {.noSideEffect, cdecl,
    importcpp: "Text", dynlib: tkkxbase.}
proc setText*(this: var OpenGlText; theText: Handle[Graphic3dText]) {.cdecl,
    importcpp: "SetText", dynlib: tkkxbase.}
proc is2D*(this: OpenGlText): bool {.noSideEffect, cdecl, importcpp: "Is2D",
                                 dynlib: tkkxbase.}
proc set2D*(this: var OpenGlText; theEnable: bool) {.cdecl, importcpp: "Set2D",
    dynlib: tkkxbase.}
proc setFontSize*(this: var OpenGlText; theContext: Handle[OpenGlContext];
                 theFontSize: cint) {.cdecl, importcpp: "SetFontSize",
                                    dynlib: tkkxbase.}
proc render*(this: OpenGlText; theWorkspace: Handle[OpenGlWorkspace]) {.noSideEffect,
    cdecl, importcpp: "Render", dynlib: tkkxbase.}
proc release*(this: var OpenGlText; theContext: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", dynlib: tkkxbase.}
proc estimatedDataSize*(this: OpenGlText): csize_t {.noSideEffect, cdecl,
    importcpp: "EstimatedDataSize", dynlib: tkkxbase.}
proc updateDrawStats*(this: OpenGlText; theStats: var Graphic3dFrameStatsDataTmp;
                     theIsDetailed: bool) {.noSideEffect, cdecl,
    importcpp: "UpdateDrawStats", dynlib: tkkxbase.}
proc newOpenGlText*(): OpenGlText {.cdecl, constructor, importcpp: "OpenGl_Text(@)",
                                 dynlib: tkkxbase.}
proc fontKey*(theAspect: OpenGlAspects; theHeight: cint; theResolution: cuint): TCollectionAsciiString {.
    cdecl, importcpp: "OpenGl_Text::FontKey(@)", dynlib: tkkxbase.}
proc findFont*(theCtx: Handle[OpenGlContext]; theAspect: OpenGlAspects;
              theHeight: cint; theResolution: cuint; theKey: TCollectionAsciiString): Handle[
    OpenGlFont] {.cdecl, importcpp: "OpenGl_Text::FindFont(@)", dynlib: tkkxbase.}
proc stringSize*(theCtx: Handle[OpenGlContext]; theText: NCollectionString;
                theTextAspect: OpenGlAspects; theHeight: StandardShortReal;
                theResolution: cuint; theWidth: var StandardShortReal;
                theAscent: var StandardShortReal; theDescent: var StandardShortReal) {.
    cdecl, importcpp: "OpenGl_Text::StringSize(@)", dynlib: tkkxbase.}
proc render*(this: OpenGlText; theCtx: Handle[OpenGlContext];
            theTextAspect: OpenGlAspects;
            theResolution: cuint = the_Default_Resolution) {.noSideEffect, cdecl,
    importcpp: "Render", dynlib: tkkxbase.}
proc dumpJson*(this: OpenGlText; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkkxbase.}
proc init*(this: var OpenGlText; theCtx: Handle[OpenGlContext];
          theText: ptr StandardUtf8Char; thePoint: OpenGlVec3) {.cdecl,
    importcpp: "Init", dynlib: tkkxbase.}
proc setPosition*(this: var OpenGlText; thePoint: OpenGlVec3) {.cdecl,
    importcpp: "SetPosition", dynlib: tkkxbase.}