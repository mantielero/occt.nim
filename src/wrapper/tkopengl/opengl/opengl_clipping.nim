##  Created on: 2013-09-05
##  Created by: Anton POLETAEV
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

discard "forward decl of OpenGl_ClippingIterator"
type
  OpenGlClipping* {.importcpp: "OpenGl_Clipping", header: "OpenGl_Clipping.hxx",
                   bycopy.} = object ## ! @name general methods
                                  ## ! Default constructor.
                                  ## ! @name advanced method for disabling defined planes
                                  ## ! Return true if some clipping planes have been temporarily disabled.
                                  ## ! Chain which is either temporary disabled or the only one enabled for Capping algorithm.
                                  ## ! @name clipping state modification commands
                                  ## ! Add planes to the context clipping at the specified system of coordinates.
                                  ## ! This methods loads appropriate transformation matrix from workspace to
                                  ## ! to transform equation coordinates. The planes become enabled in the context.
                                  ## ! If the number of the passed planes exceeds capabilities of OpenGl, the last planes
                                  ## ! are simply ignored.
                                  ## !
                                  ## ! Within FFP, method also temporarily resets ModelView matrix before calling glClipPlane().
                                  ## ! Otherwise the method just redirects to addLazy().
                                  ## !
                                  ## ! @param thePlanes [in/out] the list of planes to be added
                                  ## ! The list then provides information on which planes were really added to clipping state.
                                  ## ! This list then can be used to fall back to previous state.
                                  ## ! Copying allowed only within Handles
    ## !< global clipping planes
    ## !< object clipping planes
    ## !< ids of disabled planes
    ## !< chain which is either temporary disabled or the only one enabled for Capping algorithm
    ## !< sub-plane index within filtered chain; positive number for DisableAllExcept and negative for EnableAllExcept
    ## !< number of enabled clipping-only planes (NOT capping)
    ## !< number of enabled capping  planes
    ## !< number of enabled chains
    ## !< number of defined but disabled planes


proc newOpenGlClipping*(): OpenGlClipping {.cdecl, constructor,
    importcpp: "OpenGl_Clipping(@)", dynlib: tkkxbase.}
proc init*(this: var OpenGlClipping) {.cdecl, importcpp: "Init", dynlib: tkkxbase.}
proc reset*(this: var OpenGlClipping;
           thePlanes: Handle[Graphic3dSequenceOfHClipPlane]) {.cdecl,
    importcpp: "Reset", dynlib: tkkxbase.}
proc setLocalPlanes*(this: var OpenGlClipping;
                    thePlanes: Handle[Graphic3dSequenceOfHClipPlane]) {.cdecl,
    importcpp: "SetLocalPlanes", dynlib: tkkxbase.}
proc isCappingOn*(this: OpenGlClipping): bool {.noSideEffect, cdecl,
    importcpp: "IsCappingOn", dynlib: tkkxbase.}
proc isClippingOrCappingOn*(this: OpenGlClipping): bool {.noSideEffect, cdecl,
    importcpp: "IsClippingOrCappingOn", dynlib: tkkxbase.}
proc nbClippingOrCappingOn*(this: OpenGlClipping): cint {.noSideEffect, cdecl,
    importcpp: "NbClippingOrCappingOn", dynlib: tkkxbase.}
proc hasClippingChains*(this: OpenGlClipping): bool {.noSideEffect, cdecl,
    importcpp: "HasClippingChains", dynlib: tkkxbase.}
proc hasDisabled*(this: OpenGlClipping): bool {.noSideEffect, cdecl,
    importcpp: "HasDisabled", dynlib: tkkxbase.}
proc setEnabled*(this: var OpenGlClipping; thePlane: OpenGlClippingIterator;
                theIsEnabled: bool): bool {.cdecl, importcpp: "SetEnabled",
    dynlib: tkkxbase.}
proc disableGlobal*(this: var OpenGlClipping) {.cdecl, importcpp: "DisableGlobal",
    dynlib: tkkxbase.}
proc restoreDisabled*(this: var OpenGlClipping) {.cdecl,
    importcpp: "RestoreDisabled", dynlib: tkkxbase.}
proc cappedChain*(this: OpenGlClipping): Handle[Graphic3dClipPlane] {.noSideEffect,
    cdecl, importcpp: "CappedChain", dynlib: tkkxbase.}
proc cappedSubPlane*(this: OpenGlClipping): cint {.noSideEffect, cdecl,
    importcpp: "CappedSubPlane", dynlib: tkkxbase.}
proc isCappingFilterOn*(this: OpenGlClipping): bool {.noSideEffect, cdecl,
    importcpp: "IsCappingFilterOn", dynlib: tkkxbase.}
proc isCappingDisableAllExcept*(this: OpenGlClipping): bool {.noSideEffect, cdecl,
    importcpp: "IsCappingDisableAllExcept", dynlib: tkkxbase.}
proc isCappingEnableAllExcept*(this: OpenGlClipping): bool {.noSideEffect, cdecl,
    importcpp: "IsCappingEnableAllExcept", dynlib: tkkxbase.}
proc disableAllExcept*(this: var OpenGlClipping;
                      theChain: Handle[Graphic3dClipPlane]; theSubPlaneIndex: cint) {.
    cdecl, importcpp: "DisableAllExcept", dynlib: tkkxbase.}
proc enableAllExcept*(this: var OpenGlClipping;
                     theChain: Handle[Graphic3dClipPlane]; theSubPlaneIndex: cint) {.
    cdecl, importcpp: "EnableAllExcept", dynlib: tkkxbase.}
proc resetCappingFilter*(this: var OpenGlClipping) {.cdecl,
    importcpp: "ResetCappingFilter", dynlib: tkkxbase.}