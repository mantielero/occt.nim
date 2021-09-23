##  Created on: 2015-12-15
##  Created by: Varvara POSKONINA
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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
  ../Bnd/Bnd_Range, ../Standard/Standard_TypeDef, ../Standard/Standard_OStream,
  ../Standard/Standard_Dump

discard "forward decl of gp_Ax1"
discard "forward decl of Graphic3d_SequenceOfHClipPlane"
type
  SelectMgr_ViewClipRange* {.importcpp: "SelectMgr_ViewClipRange",
                            header: "SelectMgr_ViewClipRange.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Creates
                                                                                ## an
                                                                                ## empty
                                                                                ## clip
                                                                                ## range.
                                                                                ##
                                                                                ## !
                                                                                ## Clears
                                                                                ## clipping
                                                                                ## range.


proc constructSelectMgr_ViewClipRange*(): SelectMgr_ViewClipRange {.constructor,
    importcpp: "SelectMgr_ViewClipRange(@)", header: "SelectMgr_ViewClipRange.hxx".}
proc IsClipped*(this: SelectMgr_ViewClipRange; theDepth: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "IsClipped", header: "SelectMgr_ViewClipRange.hxx".}
proc GetNearestDepth*(this: SelectMgr_ViewClipRange; theRange: Bnd_Range;
                     theDepth: var Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "GetNearestDepth", header: "SelectMgr_ViewClipRange.hxx".}
proc SetVoid*(this: var SelectMgr_ViewClipRange) {.importcpp: "SetVoid",
    header: "SelectMgr_ViewClipRange.hxx".}
proc AddClippingPlanes*(this: var SelectMgr_ViewClipRange;
                       thePlanes: Graphic3d_SequenceOfHClipPlane;
                       thePickRay: gp_Ax1) {.importcpp: "AddClippingPlanes",
    header: "SelectMgr_ViewClipRange.hxx".}
proc ChangeUnclipRange*(this: var SelectMgr_ViewClipRange): var Bnd_Range {.
    importcpp: "ChangeUnclipRange", header: "SelectMgr_ViewClipRange.hxx".}
proc AddClipSubRange*(this: var SelectMgr_ViewClipRange; theRange: Bnd_Range) {.
    importcpp: "AddClipSubRange", header: "SelectMgr_ViewClipRange.hxx".}
proc DumpJson*(this: SelectMgr_ViewClipRange; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "SelectMgr_ViewClipRange.hxx".}