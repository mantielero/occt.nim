##  Created on: 1995-05-23
##  Created by: Robert COUBLANC
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
  ../Aspect/Aspect_VKey, ../PrsMgr/PrsMgr_PresentationManager,
  SelectMgr_SelectableObject, ../TopLoc/TopLoc_Location

discard "forward decl of V3d_Viewer"
type
  SelectMgr_EntityOwner* {.importcpp: "SelectMgr_EntityOwner",
                          header: "SelectMgr_EntityOwner.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                ## !
                                                                                                ## Initializes
                                                                                                ## the
                                                                                                ## selection
                                                                                                ## priority
                                                                                                ## aPriority.
                                                                                                ##
                                                                                                ## !
                                                                                                ## Sets
                                                                                                ## the
                                                                                                ## selectable
                                                                                                ## object.
    mypriority* {.importc: "mypriority".}: Standard_Integer ## !< selection priority (for result with the same depth)
    myIsSelected* {.importc: "myIsSelected".}: Standard_Boolean ## !< flag indicating selected state
    myFromDecomposition* {.importc: "myFromDecomposition".}: Standard_Boolean ## !< flag indicating this owner points to a part of object (TRUE) or to entire object (FALSE)

  SelectMgr_EntityOwnerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "SelectMgr_EntityOwner::get_type_name(@)",
                              header: "SelectMgr_EntityOwner.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "SelectMgr_EntityOwner::get_type_descriptor(@)",
    header: "SelectMgr_EntityOwner.hxx".}
proc DynamicType*(this: SelectMgr_EntityOwner): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "SelectMgr_EntityOwner.hxx".}
proc constructSelectMgr_EntityOwner*(aPriority: Standard_Integer = 0): SelectMgr_EntityOwner {.
    constructor, importcpp: "SelectMgr_EntityOwner(@)",
    header: "SelectMgr_EntityOwner.hxx".}
proc constructSelectMgr_EntityOwner*(aSO: handle[SelectMgr_SelectableObject];
                                    aPriority: Standard_Integer = 0): SelectMgr_EntityOwner {.
    constructor, importcpp: "SelectMgr_EntityOwner(@)",
    header: "SelectMgr_EntityOwner.hxx".}
proc constructSelectMgr_EntityOwner*(theOwner: handle[SelectMgr_EntityOwner];
                                    aPriority: Standard_Integer = 0): SelectMgr_EntityOwner {.
    constructor, importcpp: "SelectMgr_EntityOwner(@)",
    header: "SelectMgr_EntityOwner.hxx".}
proc Priority*(this: SelectMgr_EntityOwner): Standard_Integer {.noSideEffect,
    importcpp: "Priority", header: "SelectMgr_EntityOwner.hxx".}
proc SetPriority*(this: var SelectMgr_EntityOwner; thePriority: Standard_Integer) {.
    importcpp: "SetPriority", header: "SelectMgr_EntityOwner.hxx".}
proc HasSelectable*(this: SelectMgr_EntityOwner): Standard_Boolean {.noSideEffect,
    importcpp: "HasSelectable", header: "SelectMgr_EntityOwner.hxx".}
proc Selectable*(this: SelectMgr_EntityOwner): handle[SelectMgr_SelectableObject] {.
    noSideEffect, importcpp: "Selectable", header: "SelectMgr_EntityOwner.hxx".}
proc SetSelectable*(this: var SelectMgr_EntityOwner;
                   theSelObj: handle[SelectMgr_SelectableObject]) {.
    importcpp: "SetSelectable", header: "SelectMgr_EntityOwner.hxx".}
proc HandleMouseClick*(this: var SelectMgr_EntityOwner; thePoint: Graphic3d_Vec2i;
                      theButton: Aspect_VKeyMouse; theModifiers: Aspect_VKeyFlags;
                      theIsDoubleClick: bool): Standard_Boolean {.
    importcpp: "HandleMouseClick", header: "SelectMgr_EntityOwner.hxx".}
proc IsHilighted*(this: SelectMgr_EntityOwner;
                 thePrsMgr: handle[PrsMgr_PresentationManager];
                 theMode: Standard_Integer = 0): Standard_Boolean {.noSideEffect,
    importcpp: "IsHilighted", header: "SelectMgr_EntityOwner.hxx".}
proc HilightWithColor*(this: var SelectMgr_EntityOwner;
                      thePrsMgr: handle[PrsMgr_PresentationManager];
                      theStyle: handle[Prs3d_Drawer];
                      theMode: Standard_Integer = 0) {.
    importcpp: "HilightWithColor", header: "SelectMgr_EntityOwner.hxx".}
proc Unhilight*(this: var SelectMgr_EntityOwner;
               thePrsMgr: handle[PrsMgr_PresentationManager];
               theMode: Standard_Integer = 0) {.importcpp: "Unhilight",
    header: "SelectMgr_EntityOwner.hxx".}
proc Clear*(this: var SelectMgr_EntityOwner;
           thePrsMgr: handle[PrsMgr_PresentationManager];
           theMode: Standard_Integer = 0) {.importcpp: "Clear",
                                        header: "SelectMgr_EntityOwner.hxx".}
  ## / TODO
proc HasLocation*(this: SelectMgr_EntityOwner): Standard_Boolean {.noSideEffect,
    importcpp: "HasLocation", header: "SelectMgr_EntityOwner.hxx".}
proc Location*(this: SelectMgr_EntityOwner): TopLoc_Location {.noSideEffect,
    importcpp: "Location", header: "SelectMgr_EntityOwner.hxx".}
proc SetLocation*(this: var SelectMgr_EntityOwner; theLocation: TopLoc_Location) {.
    importcpp: "SetLocation", header: "SelectMgr_EntityOwner.hxx".}
proc IsSelected*(this: SelectMgr_EntityOwner): Standard_Boolean {.noSideEffect,
    importcpp: "IsSelected", header: "SelectMgr_EntityOwner.hxx".}
proc SetSelected*(this: var SelectMgr_EntityOwner; theIsSelected: Standard_Boolean) {.
    importcpp: "SetSelected", header: "SelectMgr_EntityOwner.hxx".}
## !!!Ignored construct:  ! Returns selection state. Standard_DEPRECATED ( Deprecated method - IsSelected() should be used instead ) Standard_Integer State ( ) const { return myIsSelected ? 1 : 0 ; } ! Set the state of the owner.
## ! The method is deprecated. Use SetSelected() instead. void State ( const Standard_Integer theStatus ) { myIsSelected = ( theStatus == 1 ) ; } ! if owner is not auto hilighted, for group contains many such owners will be called one method HilightSelected of SelectableObject virtual Standard_Boolean IsAutoHilight ( ) const { return mySelectable == NULL || mySelectable -> IsAutoHilight ( ) ; } ! if this method returns TRUE the owner will always call method Hilight for SelectableObject when the owner is detected.
## ! By default it always return FALSE. virtual Standard_Boolean IsForcedHilight ( ) const { return Standard_False ; } ! Set Z layer ID and update all presentations. virtual void SetZLayer ( const Graphic3d_ZLayerId theLayerId ) { ( void ) theLayerId ; } ! Implements immediate application of location transformation of parent object to dynamic highlight structure virtual void UpdateHighlightTrsf ( const opencascade :: handle < V3d_Viewer > [end of template] & theViewer , const opencascade :: handle < PrsMgr_PresentationManager > [end of template] & theManager , const Standard_Integer theDispMode ) { if ( mySelectable != NULL ) { theManager -> UpdateHighlightTrsf ( theViewer , mySelectable , theDispMode ) ; } } ! Returns true if pointer to selectable object of this owner is equal to the given one Standard_Boolean IsSameSelectable ( const opencascade :: handle < SelectMgr_SelectableObject > [end of template] & theOther ) const { return mySelectable == theOther . get ( ) ; } ! Returns TRUE if this owner points to a part of object and FALSE for entire object. Standard_Boolean ComesFromDecomposition ( ) const { return myFromDecomposition ; } ! Sets flag indicating this owner points to a part of object (TRUE) or to entire object (FALSE). void SetComesFromDecomposition ( const Standard_Boolean theIsFromDecomposition ) { myFromDecomposition = theIsFromDecomposition ; } ! Dumps the content of me into the stream virtual void DumpJson ( Standard_OStream & theOStream , Standard_Integer theDepth = - 1 ) const ;
## Error: identifier expected, but got: Deprecated method - IsSelected() should be used instead!!!

## !!!Ignored construct:  public : ! Sets the selectable object. Standard_DEPRECATED ( Deprecated method - SetSelectable() should be used instead ) void Set ( const opencascade :: handle < SelectMgr_SelectableObject > [end of template] & theSelObj ) { SetSelectable ( theSelObj ) ; } ! sets the selectable priority of the owner Standard_DEPRECATED ( Deprecated method - SetPriority() should be used instead ) void Set ( const Standard_Integer thePriority ) { SetPriority ( thePriority ) ; } protected : SelectMgr_SelectableObject * mySelectable ;
## Error: identifier expected, but got: Deprecated method - SetSelectable() should be used instead!!!

discard "forward decl of SelectMgr_EntityOwner"
type
  Handle_SelectMgr_EntityOwner* = handle[SelectMgr_EntityOwner]

##  for porting old code

type
  SelectBasics_EntityOwner* = SelectMgr_EntityOwner
