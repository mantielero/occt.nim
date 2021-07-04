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

import
  ../Graphic3d/Graphic3d_SequenceOfHClipPlane, ../NCollection/NCollection_Vector,
  ../Standard/Standard_TypeDef

discard "forward decl of OpenGl_ClippingIterator"
type
  OpenGl_Clipping* {.importcpp: "OpenGl_Clipping", header: "OpenGl_Clipping.hxx",
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


proc constructOpenGl_Clipping*(): OpenGl_Clipping {.constructor,
    importcpp: "OpenGl_Clipping(@)", header: "OpenGl_Clipping.hxx".}
proc Init*(this: var OpenGl_Clipping) {.importcpp: "Init",
                                    header: "OpenGl_Clipping.hxx".}
proc Reset*(this: var OpenGl_Clipping;
           thePlanes: handle[Graphic3d_SequenceOfHClipPlane]) {.
    importcpp: "Reset", header: "OpenGl_Clipping.hxx".}
proc SetLocalPlanes*(this: var OpenGl_Clipping;
                    thePlanes: handle[Graphic3d_SequenceOfHClipPlane]) {.
    importcpp: "SetLocalPlanes", header: "OpenGl_Clipping.hxx".}
proc IsCappingOn*(this: OpenGl_Clipping): Standard_Boolean {.noSideEffect,
    importcpp: "IsCappingOn", header: "OpenGl_Clipping.hxx".}
proc IsClippingOrCappingOn*(this: OpenGl_Clipping): Standard_Boolean {.noSideEffect,
    importcpp: "IsClippingOrCappingOn", header: "OpenGl_Clipping.hxx".}
proc NbClippingOrCappingOn*(this: OpenGl_Clipping): Standard_Integer {.noSideEffect,
    importcpp: "NbClippingOrCappingOn", header: "OpenGl_Clipping.hxx".}
proc HasClippingChains*(this: OpenGl_Clipping): Standard_Boolean {.noSideEffect,
    importcpp: "HasClippingChains", header: "OpenGl_Clipping.hxx".}
proc HasDisabled*(this: OpenGl_Clipping): Standard_Boolean {.noSideEffect,
    importcpp: "HasDisabled", header: "OpenGl_Clipping.hxx".}
proc SetEnabled*(this: var OpenGl_Clipping; thePlane: OpenGl_ClippingIterator;
                theIsEnabled: Standard_Boolean): Standard_Boolean {.
    importcpp: "SetEnabled", header: "OpenGl_Clipping.hxx".}
proc DisableGlobal*(this: var OpenGl_Clipping) {.importcpp: "DisableGlobal",
    header: "OpenGl_Clipping.hxx".}
proc RestoreDisabled*(this: var OpenGl_Clipping) {.importcpp: "RestoreDisabled",
    header: "OpenGl_Clipping.hxx".}
proc CappedChain*(this: OpenGl_Clipping): handle[Graphic3d_ClipPlane] {.
    noSideEffect, importcpp: "CappedChain", header: "OpenGl_Clipping.hxx".}
proc CappedSubPlane*(this: OpenGl_Clipping): Standard_Integer {.noSideEffect,
    importcpp: "CappedSubPlane", header: "OpenGl_Clipping.hxx".}
proc IsCappingFilterOn*(this: OpenGl_Clipping): bool {.noSideEffect,
    importcpp: "IsCappingFilterOn", header: "OpenGl_Clipping.hxx".}
proc IsCappingDisableAllExcept*(this: OpenGl_Clipping): bool {.noSideEffect,
    importcpp: "IsCappingDisableAllExcept", header: "OpenGl_Clipping.hxx".}
proc IsCappingEnableAllExcept*(this: OpenGl_Clipping): bool {.noSideEffect,
    importcpp: "IsCappingEnableAllExcept", header: "OpenGl_Clipping.hxx".}
proc DisableAllExcept*(this: var OpenGl_Clipping;
                      theChain: handle[Graphic3d_ClipPlane];
                      theSubPlaneIndex: Standard_Integer) {.
    importcpp: "DisableAllExcept", header: "OpenGl_Clipping.hxx".}
proc EnableAllExcept*(this: var OpenGl_Clipping;
                     theChain: handle[Graphic3d_ClipPlane];
                     theSubPlaneIndex: Standard_Integer) {.
    importcpp: "EnableAllExcept", header: "OpenGl_Clipping.hxx".}
proc ResetCappingFilter*(this: var OpenGl_Clipping) {.
    importcpp: "ResetCappingFilter", header: "OpenGl_Clipping.hxx".}