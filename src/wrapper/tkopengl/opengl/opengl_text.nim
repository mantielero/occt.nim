import opengl_types
import ../../tkernel/standard/standard_types
import ../../tkv3d/graphic3d/graphic3d_types
import ../../tkernel/tcollection/[tcollection_types, tcollection_asciistring]
import ../../tkernel/ncollection/ncollection_types

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



proc newOpenGlText*(theTextParams: Handle[Graphic3dText]): OpenGlText {.cdecl,
    constructor, importcpp: "OpenGl_Text(@)", header: "OpenGl_Text.hxx".}
proc destroyOpenGlText*(this: var OpenGlText) {.cdecl, importcpp: "#.~OpenGl_Text()",
    header: "OpenGl_Text.hxx".}
proc reset*(this: var OpenGlText; theCtx: Handle[OpenGlContext]) {.cdecl,
    importcpp: "Reset", header: "OpenGl_Text.hxx".}
proc text*(this: OpenGlText): Handle[Graphic3dText] {.noSideEffect, cdecl,
    importcpp: "Text", header: "OpenGl_Text.hxx".}
proc setText*(this: var OpenGlText; theText: Handle[Graphic3dText]) {.cdecl,
    importcpp: "SetText", header: "OpenGl_Text.hxx".}
proc is2D*(this: OpenGlText): bool {.noSideEffect, cdecl, importcpp: "Is2D",
                                 header: "OpenGl_Text.hxx".}
proc set2D*(this: var OpenGlText; theEnable: bool) {.cdecl, importcpp: "Set2D",
    header: "OpenGl_Text.hxx".}
proc setFontSize*(this: var OpenGlText; theContext: Handle[OpenGlContext];
                 theFontSize: cint) {.cdecl, importcpp: "SetFontSize",
                                    header: "OpenGl_Text.hxx".}
proc render*(this: OpenGlText; theWorkspace: Handle[OpenGlWorkspace]) {.noSideEffect,
    cdecl, importcpp: "Render", header: "OpenGl_Text.hxx".}
proc release*(this: var OpenGlText; theContext: ptr OpenGlContext) {.cdecl,
    importcpp: "Release", header: "OpenGl_Text.hxx".}
proc estimatedDataSize*(this: OpenGlText): csize_t {.noSideEffect, cdecl,
    importcpp: "EstimatedDataSize", header: "OpenGl_Text.hxx".}
proc updateDrawStats*(this: OpenGlText; theStats: var Graphic3dFrameStatsDataTmp;
                     theIsDetailed: bool) {.noSideEffect, cdecl,
    importcpp: "UpdateDrawStats", header: "OpenGl_Text.hxx".}
proc newOpenGlText*(): OpenGlText {.cdecl, constructor, importcpp: "OpenGl_Text(@)",
                                 header: "OpenGl_Text.hxx".}
proc fontKey*(theAspect: OpenGlAspects; theHeight: cint; theResolution: cuint): TCollectionAsciiString {.
    cdecl, importcpp: "OpenGl_Text::FontKey(@)", header: "OpenGl_Text.hxx".}
proc findFont*(theCtx: Handle[OpenGlContext]; theAspect: OpenGlAspects;
              theHeight: cint; theResolution: cuint; theKey: TCollectionAsciiString): Handle[
    OpenGlFont] {.cdecl, importcpp: "OpenGl_Text::FindFont(@)", header: "OpenGl_Text.hxx".}
proc stringSize*(theCtx: Handle[OpenGlContext]; theText: NCollectionString;
                theTextAspect: OpenGlAspects; theHeight: StandardShortReal;
                theResolution: cuint; theWidth: var StandardShortReal;
                theAscent: var StandardShortReal; theDescent: var StandardShortReal) {.
    cdecl, importcpp: "OpenGl_Text::StringSize(@)", header: "OpenGl_Text.hxx".}
# proc render*(this: OpenGlText; theCtx: Handle[OpenGlContext];
#             theTextAspect: OpenGlAspects;
#             theResolution: cuint = the_Default_Resolution) {.noSideEffect, cdecl,
#     importcpp: "Render", header: "OpenGl_Text.hxx".}
proc dumpJson*(this: OpenGlText; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "OpenGl_Text.hxx".}
proc init*(this: var OpenGlText; theCtx: Handle[OpenGlContext];
          theText: ptr StandardUtf8Char; thePoint: OpenGlVec3) {.cdecl,
    importcpp: "Init", header: "OpenGl_Text.hxx".}
proc setPosition*(this: var OpenGlText; thePoint: OpenGlVec3) {.cdecl,
    importcpp: "SetPosition", header: "OpenGl_Text.hxx".}
