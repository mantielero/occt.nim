import ../selectmgr/selectmgr_types
import ../../tkernel/standard/standard_types
import ais_types
import ../prs3d/prs3d_types
import ../v3d/v3d_types
import ../graphic3d/graphic3d_types





##  Created on: 1996-12-11
##  Created by: Robert COUBLANC
##  Copyright (c) 1996-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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



proc `type`*(this: AIS_InteractiveObject): AIS_KindOfInteractive {.noSideEffect,
    cdecl, importcpp: "Type", header: "AIS_InteractiveObject.hxx".}
proc signature*(this: AIS_InteractiveObject): cint {.noSideEffect, cdecl,
    importcpp: "Signature", header: "AIS_InteractiveObject.hxx".}
proc redisplay*(this: var AIS_InteractiveObject; allModes: bool = false) {.cdecl,
    importcpp: "Redisplay", header: "AIS_InteractiveObject.hxx".}
proc hasInteractiveContext*(this: AIS_InteractiveObject): bool {.noSideEffect, cdecl,
    importcpp: "HasInteractiveContext", header: "AIS_InteractiveObject.hxx".}
proc interactiveContext*(this: AIS_InteractiveObject): ptr AIS_InteractiveContext {.
    noSideEffect, cdecl, importcpp: "InteractiveContext", header: "AIS_InteractiveObject.hxx".}
proc setContext*(this: var AIS_InteractiveObject;
                aCtx: Handle[AIS_InteractiveContext]) {.cdecl,
    importcpp: "SetContext", header: "AIS_InteractiveObject.hxx".}
proc hasOwner*(this: AIS_InteractiveObject): bool {.noSideEffect, cdecl,
    importcpp: "HasOwner", header: "AIS_InteractiveObject.hxx".}
proc getOwner*(this: AIS_InteractiveObject): Handle[StandardTransient] {.
    noSideEffect, cdecl, importcpp: "GetOwner", header: "AIS_InteractiveObject.hxx".}
proc setOwner*(this: var AIS_InteractiveObject;
              theApplicativeEntity: Handle[StandardTransient]) {.cdecl,
    importcpp: "SetOwner", header: "AIS_InteractiveObject.hxx".}
proc clearOwner*(this: var AIS_InteractiveObject) {.cdecl, importcpp: "ClearOwner",
    header: "AIS_InteractiveObject.hxx".}
proc processDragging*(this: var AIS_InteractiveObject;
                     theCtx: Handle[AIS_InteractiveContext];
                     theView: Handle[V3dView];
                     theOwner: Handle[SelectMgrEntityOwner];
                     theDragFrom: Graphic3dVec2i; theDragTo: Graphic3dVec2i;
                     theAction: AIS_DragAction): bool {.cdecl,
    importcpp: "ProcessDragging", header: "AIS_InteractiveObject.hxx".}
proc getContext*(this: AIS_InteractiveObject): Handle[AIS_InteractiveContext] {.
    noSideEffect, cdecl, importcpp: "GetContext", header: "AIS_InteractiveObject.hxx".}
proc hasPresentation*(this: AIS_InteractiveObject): bool {.noSideEffect, cdecl,
    importcpp: "HasPresentation", header: "AIS_InteractiveObject.hxx".}
proc presentation*(this: AIS_InteractiveObject): Handle[Prs3dPresentation] {.
    noSideEffect, cdecl, importcpp: "Presentation", header: "AIS_InteractiveObject.hxx".}
proc setAspect*(this: var AIS_InteractiveObject; anAspect: Handle[Prs3dBasicAspect]) {.
    cdecl, importcpp: "SetAspect", header: "AIS_InteractiveObject.hxx".}
proc dumpJson*(this: AIS_InteractiveObject; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "AIS_InteractiveObject.hxx".}



