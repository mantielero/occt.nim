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

import
  ../Graphic3d/Graphic3d_NameOfMaterial, ../Graphic3d/Graphic3d_StructureManager,
  ../Graphic3d/Graphic3d_ZLayerId, ../Standard/Standard_Transient,
  PrsMgr_ListOfPresentations, ../Quantity/Quantity_Color,
  ../Quantity/Quantity_NameOfColor, ../Standard/Standard,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../Standard/Standard_Type

discard "forward decl of Graphic3d_Structure"
type
  Prs3d_Presentation* = Graphic3d_Structure

discard "forward decl of TopLoc_Datum3D"
discard "forward decl of Prs3d_Drawer"
discard "forward decl of PrsMgr_Presentation"
discard "forward decl of PrsMgr_PresentableObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of V3d_Viewer"
discard "forward decl of PrsMgr_PresentationManager"
type
  Handle_PrsMgr_PresentationManager* = handle[PrsMgr_PresentationManager]

## ! A framework to manage 3D displays, graphic entities and their updates.
## ! Used in the AIS package (Application Interactive Services), to enable the advanced user to define the
## ! default display mode of a new interactive object which extends the list of signatures and types.
## ! Definition of new display types is handled by calling the presentation algorithms provided by the StdPrs package.

type
  PrsMgr_PresentationManager* {.importcpp: "PrsMgr_PresentationManager",
                               header: "PrsMgr_PresentationManager.hxx", bycopy.} = object of Standard_Transient ##
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

  PrsMgr_PresentationManagerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "PrsMgr_PresentationManager::get_type_name(@)",
                              header: "PrsMgr_PresentationManager.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "PrsMgr_PresentationManager::get_type_descriptor(@)",
    header: "PrsMgr_PresentationManager.hxx".}
proc DynamicType*(this: PrsMgr_PresentationManager): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "PrsMgr_PresentationManager.hxx".}
proc constructPrsMgr_PresentationManager*(
    theStructureManager: handle[Graphic3d_StructureManager]): PrsMgr_PresentationManager {.
    constructor, importcpp: "PrsMgr_PresentationManager(@)",
    header: "PrsMgr_PresentationManager.hxx".}
proc Display*(this: var PrsMgr_PresentationManager;
             thePrsObject: handle[PrsMgr_PresentableObject];
             theMode: Standard_Integer = 0) {.importcpp: "Display",
    header: "PrsMgr_PresentationManager.hxx".}
proc Erase*(this: var PrsMgr_PresentationManager;
           thePrsObject: handle[PrsMgr_PresentableObject];
           theMode: Standard_Integer = 0) {.importcpp: "Erase", header: "PrsMgr_PresentationManager.hxx".}
proc Clear*(this: var PrsMgr_PresentationManager;
           thePrsObject: handle[PrsMgr_PresentableObject];
           theMode: Standard_Integer = 0) {.importcpp: "Clear", header: "PrsMgr_PresentationManager.hxx".}
proc SetVisibility*(this: var PrsMgr_PresentationManager;
                   thePrsObject: handle[PrsMgr_PresentableObject];
                   theMode: Standard_Integer; theValue: Standard_Boolean) {.
    importcpp: "SetVisibility", header: "PrsMgr_PresentationManager.hxx".}
proc Unhighlight*(this: var PrsMgr_PresentationManager;
                 thePrsObject: handle[PrsMgr_PresentableObject]) {.
    importcpp: "Unhighlight", header: "PrsMgr_PresentationManager.hxx".}
## !!!Ignored construct:  Standard_DEPRECATED ( Deprecated method Unhighlight() - argument theMode will be ignored ) void Unhighlight ( const opencascade :: handle < PrsMgr_PresentableObject > [end of template] & thePrsObject , const Standard_Integer theMode ) { Unhighlight ( thePrsObject ) ; ( void ) theMode ; } ! Sets the display priority theNewPrior of the
## ! presentable object thePrsObject in this framework with the display mode theMode. void SetDisplayPriority ( const opencascade :: handle < PrsMgr_PresentableObject > [end of template] & thePrsObject , const Standard_Integer theMode , const Standard_Integer theNewPrior ) const ;
## Error: identifier expected, but got: Deprecated method Unhighlight() - argument theMode will be ignored!!!

proc DisplayPriority*(this: PrsMgr_PresentationManager;
                     thePrsObject: handle[PrsMgr_PresentableObject];
                     theMode: Standard_Integer): Standard_Integer {.noSideEffect,
    importcpp: "DisplayPriority", header: "PrsMgr_PresentationManager.hxx".}
proc SetZLayer*(this: var PrsMgr_PresentationManager;
               thePrsObject: handle[PrsMgr_PresentableObject];
               theLayerId: Graphic3d_ZLayerId) {.importcpp: "SetZLayer",
    header: "PrsMgr_PresentationManager.hxx".}
proc GetZLayer*(this: PrsMgr_PresentationManager;
               thePrsObject: handle[PrsMgr_PresentableObject]): Graphic3d_ZLayerId {.
    noSideEffect, importcpp: "GetZLayer", header: "PrsMgr_PresentationManager.hxx".}
proc IsDisplayed*(this: PrsMgr_PresentationManager;
                 thePrsObject: handle[PrsMgr_PresentableObject];
                 theMode: Standard_Integer = 0): Standard_Boolean {.noSideEffect,
    importcpp: "IsDisplayed", header: "PrsMgr_PresentationManager.hxx".}
proc IsHighlighted*(this: PrsMgr_PresentationManager;
                   thePrsObject: handle[PrsMgr_PresentableObject];
                   theMode: Standard_Integer = 0): Standard_Boolean {.noSideEffect,
    importcpp: "IsHighlighted", header: "PrsMgr_PresentationManager.hxx".}
proc Update*(this: PrsMgr_PresentationManager;
            thePrsObject: handle[PrsMgr_PresentableObject];
            theMode: Standard_Integer = 0) {.noSideEffect, importcpp: "Update",
    header: "PrsMgr_PresentationManager.hxx".}
proc BeginImmediateDraw*(this: var PrsMgr_PresentationManager) {.
    importcpp: "BeginImmediateDraw", header: "PrsMgr_PresentationManager.hxx".}
proc ClearImmediateDraw*(this: var PrsMgr_PresentationManager) {.
    importcpp: "ClearImmediateDraw", header: "PrsMgr_PresentationManager.hxx".}
proc AddToImmediateList*(this: var PrsMgr_PresentationManager;
                        thePrs: handle[Prs3d_Presentation]) {.
    importcpp: "AddToImmediateList", header: "PrsMgr_PresentationManager.hxx".}
proc EndImmediateDraw*(this: var PrsMgr_PresentationManager;
                      theViewer: handle[V3d_Viewer]) {.
    importcpp: "EndImmediateDraw", header: "PrsMgr_PresentationManager.hxx".}
proc RedrawImmediate*(this: var PrsMgr_PresentationManager;
                     theViewer: handle[V3d_Viewer]) {.
    importcpp: "RedrawImmediate", header: "PrsMgr_PresentationManager.hxx".}
proc IsImmediateModeOn*(this: PrsMgr_PresentationManager): Standard_Boolean {.
    noSideEffect, importcpp: "IsImmediateModeOn",
    header: "PrsMgr_PresentationManager.hxx".}
proc Color*(this: var PrsMgr_PresentationManager;
           thePrsObject: handle[PrsMgr_PresentableObject];
           theStyle: handle[Prs3d_Drawer]; theMode: Standard_Integer = 0;
           theSelObj: handle[PrsMgr_PresentableObject] = nil;
    theImmediateStructLayerId: Graphic3d_ZLayerId = Graphic3d_ZLayerId_Topmost) {.
    importcpp: "Color", header: "PrsMgr_PresentationManager.hxx".}
proc Connect*(this: var PrsMgr_PresentationManager;
             thePrsObject: handle[PrsMgr_PresentableObject];
             theOtherObject: handle[PrsMgr_PresentableObject];
             theMode: Standard_Integer = 0; theOtherMode: Standard_Integer = 0) {.
    importcpp: "Connect", header: "PrsMgr_PresentationManager.hxx".}
proc Transform*(this: var PrsMgr_PresentationManager;
               thePrsObject: handle[PrsMgr_PresentableObject];
               theTransformation: handle[TopLoc_Datum3D];
               theMode: Standard_Integer = 0) {.importcpp: "Transform",
    header: "PrsMgr_PresentationManager.hxx".}
proc StructureManager*(this: PrsMgr_PresentationManager): handle[
    Graphic3d_StructureManager] {.noSideEffect, importcpp: "StructureManager",
                                 header: "PrsMgr_PresentationManager.hxx".}
proc HasPresentation*(this: PrsMgr_PresentationManager;
                     thePrsObject: handle[PrsMgr_PresentableObject];
                     theMode: Standard_Integer = 0): Standard_Boolean {.noSideEffect,
    importcpp: "HasPresentation", header: "PrsMgr_PresentationManager.hxx".}
proc Presentation*(this: PrsMgr_PresentationManager;
                  thePrsObject: handle[PrsMgr_PresentableObject];
                  theMode: Standard_Integer = 0;
                  theToCreate: Standard_Boolean = Standard_False;
                  theSelObj: handle[PrsMgr_PresentableObject] = nil): handle[
    PrsMgr_Presentation] {.noSideEffect, importcpp: "Presentation",
                          header: "PrsMgr_PresentationManager.hxx".}
proc UpdateHighlightTrsf*(this: var PrsMgr_PresentationManager;
                         theViewer: handle[V3d_Viewer];
                         theObj: handle[PrsMgr_PresentableObject];
                         theMode: Standard_Integer = 0;
                         theSelObj: handle[PrsMgr_PresentableObject] = nil) {.
    importcpp: "UpdateHighlightTrsf", header: "PrsMgr_PresentationManager.hxx".}