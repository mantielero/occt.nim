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
type
  Prs3dPresentation* = Graphic3dStructure

discard "forward decl of TopLoc_Datum3D"
discard "forward decl of Prs3d_Drawer"
discard "forward decl of PrsMgr_Presentation"
discard "forward decl of PrsMgr_PresentableObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of V3d_Viewer"
discard "forward decl of PrsMgr_PresentationManager"
type
  HandlePrsMgrPresentationManager* = Handle[PrsMgrPresentationManager]

## ! A framework to manage 3D displays, graphic entities and their updates.
## ! Used in the AIS package (Application Interactive Services), to enable the advanced user to define the
## ! default display mode of a new interactive object which extends the list of signatures and types.
## ! Definition of new display types is handled by calling the presentation algorithms provided by the StdPrs package.

type
  PrsMgrPresentationManager* {.importcpp: "PrsMgr_PresentationManager",
                              header: "PrsMgr_PresentationManager.hxx", bycopy.} = object of StandardTransient ##
                                                                                                        ## !
                                                                                                        ## Creates
                                                                                                        ## a
                                                                                                        ## framework
                                                                                                        ## to
                                                                                                        ## manage
                                                                                                        ## displays
                                                                                                        ## and
                                                                                                        ## graphic
                                                                                                        ## entities
                                                                                                        ## with
                                                                                                        ## the
                                                                                                        ## 3D
                                                                                                        ## view
                                                                                                        ## theStructureManager.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Removes
                                                                                                        ## a
                                                                                                        ## presentation
                                                                                                        ## of
                                                                                                        ## the
                                                                                                        ## presentable
                                                                                                        ## object
                                                                                                        ## thePrsObject
                                                                                                        ## to
                                                                                                        ## this
                                                                                                        ## framework.
                                                                                                        ## thePrsObject
                                                                                                        ## has
                                                                                                        ## the
                                                                                                        ## display
                                                                                                        ## mode
                                                                                                        ## theMode.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Handles
                                                                                                        ## the
                                                                                                        ## structures
                                                                                                        ## from
                                                                                                        ## <myImmediateList>
                                                                                                        ## and
                                                                                                        ## displays
                                                                                                        ## it
                                                                                                        ## separating
                                                                                                        ## view-dependent
                                                                                                        ## structures
                                                                                                        ## and
                                                                                                        ## taking
                                                                                                        ## into
                                                                                                        ## account
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## structure
                                                                                                        ## visibility
                                                                                                        ## by
                                                                                                        ## setting
                                                                                                        ## proper
                                                                                                        ## affinity.

  PrsMgrPresentationManagerbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "PrsMgr_PresentationManager::get_type_name(@)",
                            header: "PrsMgr_PresentationManager.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "PrsMgr_PresentationManager::get_type_descriptor(@)",
    header: "PrsMgr_PresentationManager.hxx".}
proc dynamicType*(this: PrsMgrPresentationManager): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "PrsMgr_PresentationManager.hxx".}
proc constructPrsMgrPresentationManager*(theStructureManager: Handle[
    Graphic3dStructureManager]): PrsMgrPresentationManager {.constructor,
    importcpp: "PrsMgr_PresentationManager(@)",
    header: "PrsMgr_PresentationManager.hxx".}
proc display*(this: var PrsMgrPresentationManager;
             thePrsObject: Handle[PrsMgrPresentableObject]; theMode: int = 0) {.
    importcpp: "Display", header: "PrsMgr_PresentationManager.hxx".}
proc erase*(this: var PrsMgrPresentationManager;
           thePrsObject: Handle[PrsMgrPresentableObject]; theMode: int = 0) {.
    importcpp: "Erase", header: "PrsMgr_PresentationManager.hxx".}
proc clear*(this: var PrsMgrPresentationManager;
           thePrsObject: Handle[PrsMgrPresentableObject]; theMode: int = 0) {.
    importcpp: "Clear", header: "PrsMgr_PresentationManager.hxx".}
proc setVisibility*(this: var PrsMgrPresentationManager;
                   thePrsObject: Handle[PrsMgrPresentableObject]; theMode: int;
                   theValue: bool) {.importcpp: "SetVisibility",
                                   header: "PrsMgr_PresentationManager.hxx".}
proc unhighlight*(this: var PrsMgrPresentationManager;
                 thePrsObject: Handle[PrsMgrPresentableObject]) {.
    importcpp: "Unhighlight", header: "PrsMgr_PresentationManager.hxx".}
## !!!Ignored construct:  Standard_DEPRECATED ( Deprecated method Unhighlight() - argument theMode will be ignored ) void Unhighlight ( const opencascade :: handle < PrsMgr_PresentableObject > [end of template] & thePrsObject , const Standard_Integer theMode ) { Unhighlight ( thePrsObject ) ; ( void ) theMode ; } ! Sets the display priority theNewPrior of the
## ! presentable object thePrsObject in this framework with the display mode theMode. void SetDisplayPriority ( const opencascade :: handle < PrsMgr_PresentableObject > [end of template] & thePrsObject , const Standard_Integer theMode , const Standard_Integer theNewPrior ) const ;
## Error: identifier expected, but got: Deprecated method Unhighlight() - argument theMode will be ignored!!!

proc displayPriority*(this: PrsMgrPresentationManager;
                     thePrsObject: Handle[PrsMgrPresentableObject]; theMode: int): int {.
    noSideEffect, importcpp: "DisplayPriority",
    header: "PrsMgr_PresentationManager.hxx".}
proc setZLayer*(this: var PrsMgrPresentationManager;
               thePrsObject: Handle[PrsMgrPresentableObject];
               theLayerId: Graphic3dZLayerId) {.importcpp: "SetZLayer",
    header: "PrsMgr_PresentationManager.hxx".}
proc getZLayer*(this: PrsMgrPresentationManager;
               thePrsObject: Handle[PrsMgrPresentableObject]): Graphic3dZLayerId {.
    noSideEffect, importcpp: "GetZLayer", header: "PrsMgr_PresentationManager.hxx".}
proc isDisplayed*(this: PrsMgrPresentationManager;
                 thePrsObject: Handle[PrsMgrPresentableObject]; theMode: int = 0): bool {.
    noSideEffect, importcpp: "IsDisplayed",
    header: "PrsMgr_PresentationManager.hxx".}
proc isHighlighted*(this: PrsMgrPresentationManager;
                   thePrsObject: Handle[PrsMgrPresentableObject]; theMode: int = 0): bool {.
    noSideEffect, importcpp: "IsHighlighted",
    header: "PrsMgr_PresentationManager.hxx".}
proc update*(this: PrsMgrPresentationManager;
            thePrsObject: Handle[PrsMgrPresentableObject]; theMode: int = 0) {.
    noSideEffect, importcpp: "Update", header: "PrsMgr_PresentationManager.hxx".}
proc beginImmediateDraw*(this: var PrsMgrPresentationManager) {.
    importcpp: "BeginImmediateDraw", header: "PrsMgr_PresentationManager.hxx".}
proc clearImmediateDraw*(this: var PrsMgrPresentationManager) {.
    importcpp: "ClearImmediateDraw", header: "PrsMgr_PresentationManager.hxx".}
proc addToImmediateList*(this: var PrsMgrPresentationManager;
                        thePrs: Handle[Prs3dPresentation]) {.
    importcpp: "AddToImmediateList", header: "PrsMgr_PresentationManager.hxx".}
proc endImmediateDraw*(this: var PrsMgrPresentationManager;
                      theViewer: Handle[V3dViewer]) {.
    importcpp: "EndImmediateDraw", header: "PrsMgr_PresentationManager.hxx".}
proc redrawImmediate*(this: var PrsMgrPresentationManager;
                     theViewer: Handle[V3dViewer]) {.importcpp: "RedrawImmediate",
    header: "PrsMgr_PresentationManager.hxx".}
proc isImmediateModeOn*(this: PrsMgrPresentationManager): bool {.noSideEffect,
    importcpp: "IsImmediateModeOn", header: "PrsMgr_PresentationManager.hxx".}
proc color*(this: var PrsMgrPresentationManager;
           thePrsObject: Handle[PrsMgrPresentableObject];
           theStyle: Handle[Prs3dDrawer]; theMode: int = 0;
           theSelObj: Handle[PrsMgrPresentableObject] = nil;
    theImmediateStructLayerId: Graphic3dZLayerId = graphic3dZLayerIdTopmost) {.
    importcpp: "Color", header: "PrsMgr_PresentationManager.hxx".}
proc connect*(this: var PrsMgrPresentationManager;
             thePrsObject: Handle[PrsMgrPresentableObject];
             theOtherObject: Handle[PrsMgrPresentableObject]; theMode: int = 0;
             theOtherMode: int = 0) {.importcpp: "Connect",
                                  header: "PrsMgr_PresentationManager.hxx".}
proc transform*(this: var PrsMgrPresentationManager;
               thePrsObject: Handle[PrsMgrPresentableObject];
               theTransformation: Handle[TopLocDatum3D]; theMode: int = 0) {.
    importcpp: "Transform", header: "PrsMgr_PresentationManager.hxx".}
proc structureManager*(this: PrsMgrPresentationManager): Handle[
    Graphic3dStructureManager] {.noSideEffect, importcpp: "StructureManager",
                                header: "PrsMgr_PresentationManager.hxx".}
proc hasPresentation*(this: PrsMgrPresentationManager;
                     thePrsObject: Handle[PrsMgrPresentableObject];
                     theMode: int = 0): bool {.noSideEffect,
    importcpp: "HasPresentation", header: "PrsMgr_PresentationManager.hxx".}
proc presentation*(this: PrsMgrPresentationManager;
                  thePrsObject: Handle[PrsMgrPresentableObject]; theMode: int = 0;
                  theToCreate: bool = false;
                  theSelObj: Handle[PrsMgrPresentableObject] = nil): Handle[
    PrsMgrPresentation] {.noSideEffect, importcpp: "Presentation",
                         header: "PrsMgr_PresentationManager.hxx".}
proc updateHighlightTrsf*(this: var PrsMgrPresentationManager;
                         theViewer: Handle[V3dViewer];
                         theObj: Handle[PrsMgrPresentableObject];
                         theMode: int = 0;
                         theSelObj: Handle[PrsMgrPresentableObject] = nil) {.
    importcpp: "UpdateHighlightTrsf", header: "PrsMgr_PresentationManager.hxx".}
