##  Created on: 2013-08-25
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

## ! Class to define graphic driver capabilities.
## ! Notice that these options will be ignored if particular functionality does not provided by GL driver

type
  OpenGlCaps* {.importcpp: "OpenGl_Caps", header: "OpenGl_Caps.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## flags
                                                                                                  ## to
                                                                                                  ## disable
                                                                                                  ## particular
                                                                                                  ## functionality,
                                                                                                  ## should
                                                                                                  ## be
                                                                                                  ## used
                                                                                                  ## only
                                                                                                  ## for
                                                                                                  ## testing
                                                                                                  ## purposes!
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## context
                                                                                                  ## creation
                                                                                                  ## parameters
                                                                                                  ##
                                                                                                  ## *
                                                                                                  ##
                                                                                                  ## Specify
                                                                                                  ## that
                                                                                                  ## driver
                                                                                                  ## should
                                                                                                  ## not
                                                                                                  ## swap
                                                                                                  ## back/front
                                                                                                  ## buffers
                                                                                                  ## at
                                                                                                  ## the
                                                                                                  ## end
                                                                                                  ## of
                                                                                                  ## frame.
                                                                                                  ##
                                                                                                  ## Useful
                                                                                                  ## when
                                                                                                  ## OCCT
                                                                                                  ## Viewer
                                                                                                  ## is
                                                                                                  ## integrated
                                                                                                  ## into
                                                                                                  ## existing
                                                                                                  ## OpenGL
                                                                                                  ## rendering
                                                                                                  ## pipeline
                                                                                                  ## as
                                                                                                  ## part,
                                                                                                  ##
                                                                                                  ## thus
                                                                                                  ## swapping
                                                                                                  ## part
                                                                                                  ## is
                                                                                                  ## performed
                                                                                                  ## outside.
                                                                                                  ##
                                                                                                  ##
                                                                                                  ## OFF
                                                                                                  ## by
                                                                                                  ## default.
                                                                                                  ##
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## flags
                                                                                                  ## to
                                                                                                  ## activate
                                                                                                  ## verbose
                                                                                                  ## output
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Print
                                                                                                  ## GLSL
                                                                                                  ## program
                                                                                                  ## compilation/linkage
                                                                                                  ## warnings,
                                                                                                  ## if
                                                                                                  ## any.
                                                                                                  ## OFF
                                                                                                  ## by
                                                                                                  ## default.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## class
                                                                                                  ## methods
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Default
                                                                                                  ## constructor
                                                                                                  ## -
                                                                                                  ## initialize
                                                                                                  ## with
                                                                                                  ## most
                                                                                                  ## optimal
                                                                                                  ## values.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Not
                                                                                                  ## implemented
    sRGBDisable* {.importc: "sRGBDisable".}: bool ## !< Disables sRGB rendering (OFF by default)
    compressedTexturesDisable* {.importc: "compressedTexturesDisable".}: bool ## !< Disables uploading of compressed texture formats native to GPU (OFF by default)
    vboDisable* {.importc: "vboDisable".}: bool ## !< disallow VBO usage for debugging purposes (OFF by default)
    pntSpritesDisable* {.importc: "pntSpritesDisable".}: bool ## !< flag permits Point Sprites usage, will significantly affect performance (OFF by default)
    keepArrayData* {.importc: "keepArrayData".}: bool ## !< Disables freeing CPU memory after building VBOs (OFF by default)
    ffpEnable* {.importc: "ffpEnable".}: bool ## !< Enables FFP (fixed-function pipeline), do not use built-in GLSL programs (OFF by default)
    usePolygonMode* {.importc: "usePolygonMode".}: bool ## !< Enables Polygon Mode instead of built-in GLSL programs (OFF by default; unsupported on OpenGL ES)
    useSystemBuffer* {.importc: "useSystemBuffer".}: bool ## !< Enables usage of system backbuffer for blitting (OFF by default on desktop OpenGL and ON on OpenGL ES for testing)
    swapInterval* {.importc: "swapInterval".}: int ## !< controls swap interval - 0 for VSync off and 1 for VSync on, 1 by default
    buffersNoSwap* {.importc: "buffersNoSwap".}: bool ## *
                                                  ##  Request stereoscopic context (with Quad Buffer). This flag requires support in OpenGL driver.
                                                  ##
                                                  ##  OFF by default.
                                                  ##
    contextStereo* {.importc: "contextStereo".}: bool ## *
                                                  ##  Request debug GL context. This flag requires support in OpenGL driver.
                                                  ##
                                                  ##  When turned on OpenGL driver emits error and warning messages to provided callback
                                                  ##  (see OpenGl_Context - messages will be printed to standard output).
                                                  ##  Affects performance - thus should not be turned on by products in released state.
                                                  ##
                                                  ##  OFF by default.
                                                  ##
    contextDebug* {.importc: "contextDebug".}: bool ## *
                                                ##  Request debug GL context to emit messages within main thread (when contextDebug is specified!).
                                                ##
                                                ##  Some implementations performs GL rendering within dedicated thread(s),
                                                ##  in this case debug messages will be pushed from unknown thread making call stack useless,
                                                ##  since it does not interconnected to application calls.
                                                ##  This option asks GL driver to switch into synchronized implementation.
                                                ##  Affects performance - thus should not be turned on by products in released state.
                                                ##
                                                ##  OFF by default.
                                                ##
    contextSyncDebug* {.importc: "contextSyncDebug".}: bool ## *
                                                        ##  Disable hardware acceleration.
                                                        ##
                                                        ##  This flag overrides default behavior, when accelerated context always preferred over software ones:
                                                        ##  - on Windows will force Microsoft software implementation;
                                                        ##  - on Mac OS X, forces Apple software implementation.
                                                        ##
                                                        ##  Software implementations are dramatically slower - should never be used.
                                                        ##
                                                        ##  OFF by default. Currently implemented only for Windows (WGL) and Mac OS X (Cocoa).
                                                        ##
    contextNoAccel* {.importc: "contextNoAccel".}: bool ## *
                                                    ##  Request backward-compatible GL context. This flag requires support in OpenGL driver.
                                                    ##
                                                    ##  Backward-compatible profile includes deprecated functionality like FFP (fixed-function pipeline),
                                                    ##  and might be useful for compatibility with application OpenGL code.
                                                    ##
                                                    ##  Most drivers support all features within backward-compatibility profile,
                                                    ##  but some limit functionality to OpenGL 2.1 (e.g. OS X) when core profile is not explicitly requested.
                                                    ##
                                                    ##  Requires OpenGL 3.2+ drivers.
                                                    ##  Has no effect on OpenGL ES 2.0+ drivers (which do not provie FFP compatibility).
                                                    ##  Interacts with ffpEnable option, which should be disabled within core profile.
                                                    ##
                                                    ##  ON by default.
                                                    ##
    contextCompatible* {.importc: "contextCompatible".}: bool ## *
                                                          ##  Disallow using OpenGL extensions.
                                                          ##  Should be used for debugging purposes only!
                                                          ##
                                                          ##  OFF by default.
                                                          ##
    contextNoExtensions* {.importc: "contextNoExtensions".}: bool ## *
                                                              ##  Synthetically restrict upper version of OpenGL functionality to be used.
                                                              ##  Should be used for debugging purposes only!
                                                              ##
                                                              ##  (-1, -1) by default, which means no restriction.
                                                              ##
    contextMajorVersionUpper* {.importc: "contextMajorVersionUpper".}: int
    contextMinorVersionUpper* {.importc: "contextMinorVersionUpper".}: int ## *
                                                                       ##  Define if 2D texture UV coordinates are defined top-down or bottom-up. FALSE by default.
                                                                       ##
                                                                       ##  Proper rendering requires image texture uploading and UV texture coordinates being consistent,
                                                                       ##  otherwise texture mapping might appear vertically flipped.
                                                                       ##  Historically, OCCT used image library loading images bottom-up,
                                                                       ##  so that applications have to generate UV accordingly (flip V when necessary, V' = 1.0 - V).
                                                                       ##
                                                                       ##  Graphic driver now compares this flag with image layout reported by Image_PixMap::IsTopDown(),
                                                                       ##  and in case of mismatch applies implicit texture coordinates conversion in GLSL program.
                                                                       ##
    isTopDownTextureUV* {.importc: "isTopDownTextureUV".}: bool
    glslWarnings* {.importc: "glslWarnings".}: bool ## ! Suppress redundant messages from debug GL context. ON by default.
    suppressExtraMsg* {.importc: "suppressExtraMsg".}: bool ## ! Print GLSL program source code. OFF by default.
    glslDumpLevel* {.importc: "glslDumpLevel".}: OpenGlShaderProgramDumpLevel


proc constructOpenGlCaps*(): OpenGlCaps {.constructor, importcpp: "OpenGl_Caps(@)",
                                       header: "OpenGl_Caps.hxx".}
proc destroyOpenGlCaps*(this: var OpenGlCaps) {.importcpp: "#.~OpenGl_Caps()",
    header: "OpenGl_Caps.hxx".}
type
  OpenGlCapsbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "OpenGl_Caps::get_type_name(@)",
                            header: "OpenGl_Caps.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "OpenGl_Caps::get_type_descriptor(@)", header: "OpenGl_Caps.hxx".}
proc dynamicType*(this: OpenGlCaps): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_Caps.hxx".}
discard "forward decl of OpenGl_Caps"
type
  HandleOpenGlCaps* = Handle[OpenGlCaps]

