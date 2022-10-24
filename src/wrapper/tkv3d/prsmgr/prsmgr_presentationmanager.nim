import prsmgr_types

##  Created on: 1995-01-25
##  Created by: Jean-Louis Frenkel
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of Graphic3d_Structure"
#type
#  Prs3dPresentation* = Graphic3dStructure

discard "forward decl of TopLoc_Datum3D"
discard "forward decl of Prs3d_Drawer"
discard "forward decl of PrsMgr_Presentation"
discard "forward decl of PrsMgr_PresentableObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of V3d_Viewer"




proc newPrsMgrPresentationManager*(theStructureManager: Handle[
    Graphic3dStructureManager]): PrsMgrPresentationManager {.cdecl, constructor,
    importcpp: "PrsMgr_PresentationManager(@)", header: "PrsMgr_PresentationManager.hxx".}
proc display*(this: var PrsMgrPresentationManager;
             thePrsObject: Handle[PrsMgrPresentableObject]; theMode: cint = 0) {.
    cdecl, importcpp: "Display", header: "PrsMgr_PresentationManager.hxx".}
proc erase*(this: var PrsMgrPresentationManager;
           thePrsObject: Handle[PrsMgrPresentableObject]; theMode: cint = 0) {.cdecl,
    importcpp: "Erase", header: "PrsMgr_PresentationManager.hxx".}
proc clear*(this: var PrsMgrPresentationManager;
           thePrsObject: Handle[PrsMgrPresentableObject]; theMode: cint = 0) {.cdecl,
    importcpp: "Clear", header: "PrsMgr_PresentationManager.hxx".}
proc setVisibility*(this: var PrsMgrPresentationManager;
                   thePrsObject: Handle[PrsMgrPresentableObject]; theMode: cint;
                   theValue: bool) {.cdecl, importcpp: "SetVisibility", header: "PrsMgr_PresentationManager.hxx".}
proc unhighlight*(this: var PrsMgrPresentationManager;
                 thePrsObject: Handle[PrsMgrPresentableObject]) {.cdecl,
    importcpp: "Unhighlight", header: "PrsMgr_PresentationManager.hxx".}
proc unhighlight*(this: var PrsMgrPresentationManager;
                 thePrsObject: Handle[PrsMgrPresentableObject]; theMode: cint) {.
    cdecl, importcpp: "Unhighlight", header: "PrsMgr_PresentationManager.hxx".}
proc setDisplayPriority*(this: PrsMgrPresentationManager;
                        thePrsObject: Handle[PrsMgrPresentableObject];
                        theMode: cint; theNewPrior: cint) {.noSideEffect, cdecl,
    importcpp: "SetDisplayPriority", header: "PrsMgr_PresentationManager.hxx".}
proc displayPriority*(this: PrsMgrPresentationManager;
                     thePrsObject: Handle[PrsMgrPresentableObject]; theMode: cint): cint {.
    noSideEffect, cdecl, importcpp: "DisplayPriority", header: "PrsMgr_PresentationManager.hxx".}
proc setZLayer*(this: var PrsMgrPresentationManager;
               thePrsObject: Handle[PrsMgrPresentableObject];
               theLayerId: Graphic3dZLayerId) {.cdecl, importcpp: "SetZLayer",
    header: "PrsMgr_PresentationManager.hxx".}
proc getZLayer*(this: PrsMgrPresentationManager;
               thePrsObject: Handle[PrsMgrPresentableObject]): Graphic3dZLayerId {.
    noSideEffect, cdecl, importcpp: "GetZLayer", header: "PrsMgr_PresentationManager.hxx".}
proc isDisplayed*(this: PrsMgrPresentationManager;
                 thePrsObject: Handle[PrsMgrPresentableObject]; theMode: cint = 0): bool {.
    noSideEffect, cdecl, importcpp: "IsDisplayed", header: "PrsMgr_PresentationManager.hxx".}
proc isHighlighted*(this: PrsMgrPresentationManager;
                   thePrsObject: Handle[PrsMgrPresentableObject];
                   theMode: cint = 0): bool {.noSideEffect, cdecl,
    importcpp: "IsHighlighted", header: "PrsMgr_PresentationManager.hxx".}
proc update*(this: PrsMgrPresentationManager;
            thePrsObject: Handle[PrsMgrPresentableObject]; theMode: cint = 0) {.
    noSideEffect, cdecl, importcpp: "Update", header: "PrsMgr_PresentationManager.hxx".}
proc beginImmediateDraw*(this: var PrsMgrPresentationManager) {.cdecl,
    importcpp: "BeginImmediateDraw", header: "PrsMgr_PresentationManager.hxx".}
proc clearImmediateDraw*(this: var PrsMgrPresentationManager) {.cdecl,
    importcpp: "ClearImmediateDraw", header: "PrsMgr_PresentationManager.hxx".}
proc addToImmediateList*(this: var PrsMgrPresentationManager;
                        thePrs: Handle[Prs3dPresentation]) {.cdecl,
    importcpp: "AddToImmediateList", header: "PrsMgr_PresentationManager.hxx".}
proc endImmediateDraw*(this: var PrsMgrPresentationManager;
                      theViewer: Handle[V3dViewer]) {.cdecl,
    importcpp: "EndImmediateDraw", header: "PrsMgr_PresentationManager.hxx".}
proc redrawImmediate*(this: var PrsMgrPresentationManager;
                     theViewer: Handle[V3dViewer]) {.cdecl,
    importcpp: "RedrawImmediate", header: "PrsMgr_PresentationManager.hxx".}
proc isImmediateModeOn*(this: PrsMgrPresentationManager): bool {.noSideEffect, cdecl,
    importcpp: "IsImmediateModeOn", header: "PrsMgr_PresentationManager.hxx".}
proc color*(this: var PrsMgrPresentationManager;
           thePrsObject: Handle[PrsMgrPresentableObject];
           theStyle: Handle[Prs3dDrawer]; theMode: cint = 0;
           theSelObj: Handle[PrsMgrPresentableObject] = cast[Handle[PrsMgrPresentableObject]](nil);
    theImmediateStructLayerId: Graphic3dZLayerId = graphic3dZLayerIdTopmost) {.
    cdecl, importcpp: "Color", header: "PrsMgr_PresentationManager.hxx".}
proc connect*(this: var PrsMgrPresentationManager;
             thePrsObject: Handle[PrsMgrPresentableObject];
             theOtherObject: Handle[PrsMgrPresentableObject]; theMode: cint = 0;
             theOtherMode: cint = 0) {.cdecl, importcpp: "Connect", header: "PrsMgr_PresentationManager.hxx".}
proc transform*(this: var PrsMgrPresentationManager;
               thePrsObject: Handle[PrsMgrPresentableObject];
               theTransformation: Handle[TopLocDatum3D]; theMode: cint = 0) {.cdecl,
    importcpp: "Transform", header: "PrsMgr_PresentationManager.hxx".}
proc structureManager*(this: PrsMgrPresentationManager): Handle[
    Graphic3dStructureManager] {.noSideEffect, cdecl,
                                importcpp: "StructureManager", header: "PrsMgr_PresentationManager.hxx".}
proc hasPresentation*(this: PrsMgrPresentationManager;
                     thePrsObject: Handle[PrsMgrPresentableObject];
                     theMode: cint = 0): bool {.noSideEffect, cdecl,
    importcpp: "HasPresentation", header: "PrsMgr_PresentationManager.hxx".}
proc presentation*(this: PrsMgrPresentationManager;
                  thePrsObject: Handle[PrsMgrPresentableObject];
                  theMode: cint = 0; theToCreate: bool = false;
                  theSelObj: Handle[PrsMgrPresentableObject] = cast[Handle[PrsMgrPresentableObject]](nil)): Handle[
    PrsMgrPresentation] {.noSideEffect, cdecl, importcpp: "Presentation",
                         header: "PrsMgr_PresentationManager.hxx".}
proc updateHighlightTrsf*(this: var PrsMgrPresentationManager;
                         theViewer: Handle[V3dViewer];
                         theObj: Handle[PrsMgrPresentableObject];
                         theMode: cint = 0;
                         theSelObj: Handle[PrsMgrPresentableObject] = cast[Handle[PrsMgrPresentableObject]](nil)) {.cdecl,
    importcpp: "UpdateHighlightTrsf", header: "PrsMgr_PresentationManager.hxx".}
