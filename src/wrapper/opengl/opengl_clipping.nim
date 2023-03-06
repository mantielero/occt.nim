import ../../tkernel/standard/standard_types
import ../../tkv3d/graphic3d/graphic3d_types
import opengl_types



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



proc newOpenGlClipping*(): OpenGlClipping {.cdecl, constructor,
    importcpp: "OpenGl_Clipping(@)", header: "OpenGl_Clipping.hxx".}
proc init*(this: var OpenGlClipping) {.cdecl, importcpp: "Init", header: "OpenGl_Clipping.hxx".}
proc reset*(this: var OpenGlClipping;
           thePlanes: Handle[Graphic3dSequenceOfHClipPlane]) {.cdecl,
    importcpp: "Reset", header: "OpenGl_Clipping.hxx".}
proc setLocalPlanes*(this: var OpenGlClipping;
                    thePlanes: Handle[Graphic3dSequenceOfHClipPlane]) {.cdecl,
    importcpp: "SetLocalPlanes", header: "OpenGl_Clipping.hxx".}
proc isCappingOn*(this: OpenGlClipping): bool {.noSideEffect, cdecl,
    importcpp: "IsCappingOn", header: "OpenGl_Clipping.hxx".}
proc isClippingOrCappingOn*(this: OpenGlClipping): bool {.noSideEffect, cdecl,
    importcpp: "IsClippingOrCappingOn", header: "OpenGl_Clipping.hxx".}
proc nbClippingOrCappingOn*(this: OpenGlClipping): cint {.noSideEffect, cdecl,
    importcpp: "NbClippingOrCappingOn", header: "OpenGl_Clipping.hxx".}
proc hasClippingChains*(this: OpenGlClipping): bool {.noSideEffect, cdecl,
    importcpp: "HasClippingChains", header: "OpenGl_Clipping.hxx".}
proc hasDisabled*(this: OpenGlClipping): bool {.noSideEffect, cdecl,
    importcpp: "HasDisabled", header: "OpenGl_Clipping.hxx".}
proc setEnabled*(this: var OpenGlClipping; thePlane: OpenGlClippingIterator;
                theIsEnabled: bool): bool {.cdecl, importcpp: "SetEnabled",
    header: "OpenGl_Clipping.hxx".}
proc disableGlobal*(this: var OpenGlClipping) {.cdecl, importcpp: "DisableGlobal",
    header: "OpenGl_Clipping.hxx".}
proc restoreDisabled*(this: var OpenGlClipping) {.cdecl,
    importcpp: "RestoreDisabled", header: "OpenGl_Clipping.hxx".}
proc cappedChain*(this: OpenGlClipping): Handle[Graphic3dClipPlane] {.noSideEffect,
    cdecl, importcpp: "CappedChain", header: "OpenGl_Clipping.hxx".}
proc cappedSubPlane*(this: OpenGlClipping): cint {.noSideEffect, cdecl,
    importcpp: "CappedSubPlane", header: "OpenGl_Clipping.hxx".}
proc isCappingFilterOn*(this: OpenGlClipping): bool {.noSideEffect, cdecl,
    importcpp: "IsCappingFilterOn", header: "OpenGl_Clipping.hxx".}
proc isCappingDisableAllExcept*(this: OpenGlClipping): bool {.noSideEffect, cdecl,
    importcpp: "IsCappingDisableAllExcept", header: "OpenGl_Clipping.hxx".}
proc isCappingEnableAllExcept*(this: OpenGlClipping): bool {.noSideEffect, cdecl,
    importcpp: "IsCappingEnableAllExcept", header: "OpenGl_Clipping.hxx".}
proc disableAllExcept*(this: var OpenGlClipping;
                      theChain: Handle[Graphic3dClipPlane]; theSubPlaneIndex: cint) {.
    cdecl, importcpp: "DisableAllExcept", header: "OpenGl_Clipping.hxx".}
proc enableAllExcept*(this: var OpenGlClipping;
                     theChain: Handle[Graphic3dClipPlane]; theSubPlaneIndex: cint) {.
    cdecl, importcpp: "EnableAllExcept", header: "OpenGl_Clipping.hxx".}
proc resetCappingFilter*(this: var OpenGlClipping) {.cdecl,
    importcpp: "ResetCappingFilter", header: "OpenGl_Clipping.hxx".}

