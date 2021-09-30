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

## !!!Ignored construct:  # _SelectMgr_EntityOwner_HeaderFile [NewLine] # _SelectMgr_EntityOwner_HeaderFile [NewLine] # < Aspect_VKey . hxx > [NewLine] # < PrsMgr_PresentationManager . hxx > [NewLine] # < SelectMgr_SelectableObject . hxx > [NewLine] # < TopLoc_Location . hxx > [NewLine] class V3d_Viewer ;
## Error: expected ';'!!!

## ! A framework to define classes of owners of sensitive primitives.
## ! The owner is the link between application and selection data structures.
## ! For the application to make its own objects selectable, it must define owner classes inheriting this framework.

type
  SelectMgrEntityOwner* {.importcpp: "SelectMgr_EntityOwner",
                         header: "SelectMgr_EntityOwner.hxx", bycopy.} = object of StandardTransient ##
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
    standardType* {.importc: "Standard_Type".}: Handle
    selectMgrSelectableObject* {.importc: "SelectMgr_SelectableObject".}: Handle
    mypriority* {.importc: "mypriority".}: int ## !< selection priority (for result with the same depth)
    myIsSelected* {.importc: "myIsSelected".}: bool ## !< flag indicating selected state
    myFromDecomposition* {.importc: "myFromDecomposition".}: bool ## !< flag indicating this owner points to a part of object (TRUE) or to entire object (FALSE)

  SelectMgrEntityOwnerbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "SelectMgr_EntityOwner::get_type_name(@)",
                            header: "SelectMgr_EntityOwner.hxx".}
## !!!Ignored construct:  & get_type_descriptor ( ) ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  & DynamicType ( ) const ;
## Error: identifier expected, but got: &!!!

proc constructSelectMgrEntityOwner*(aPriority: int = 0): SelectMgrEntityOwner {.
    constructor, importcpp: "SelectMgr_EntityOwner(@)",
    header: "SelectMgr_EntityOwner.hxx".}
## !!!Ignored construct:  ! Constructs a framework with the selectable object
## ! anSO being attributed the selection priority aPriority. SelectMgr_EntityOwner ( const Handle ( SelectMgr_SelectableObject ) & aSO , const Standard_Integer aPriority = 0 ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Constructs a framework from existing one
## ! anSO being attributed the selection priority aPriority. SelectMgr_EntityOwner ( const Handle ( SelectMgr_EntityOwner ) & theOwner , const Standard_Integer aPriority = 0 ) ;
## Error: token expected: ) but got: &!!!

proc priority*(this: SelectMgrEntityOwner): int {.noSideEffect,
    importcpp: "Priority", header: "SelectMgr_EntityOwner.hxx".}
proc setPriority*(this: var SelectMgrEntityOwner; thePriority: int) {.
    importcpp: "SetPriority", header: "SelectMgr_EntityOwner.hxx".}
proc hasSelectable*(this: SelectMgrEntityOwner): bool {.noSideEffect,
    importcpp: "HasSelectable", header: "SelectMgr_EntityOwner.hxx".}
## !!!Ignored construct:  Selectable ( ) const { return mySelectable ; } ! Sets the selectable object. virtual void SetSelectable ( const Handle ( SelectMgr_SelectableObject ) & theSelObj ) { mySelectable = theSelObj . get ( ) ; } ! Handle mouse button click event.
## ! Does nothing by default and returns FALSE.
## ! @param thePoint      mouse cursor position
## ! @param theButton     clicked button
## ! @param theModifiers  key modifiers
## ! @param theIsDoubleClick flag indicating double mouse click
## ! @return TRUE if object handled click virtual Standard_Boolean HandleMouseClick ( const Graphic3d_Vec2i & thePoint , Aspect_VKeyMouse theButton , Aspect_VKeyFlags theModifiers , bool theIsDoubleClick ) { ( void ) thePoint ; ( void ) theButton ; ( void ) theModifiers ; ( void ) theIsDoubleClick ; return Standard_False ; } ! Returns true if the presentation manager highlights selections corresponding to the selection mode. virtual Standard_Boolean IsHilighted ( const Handle ( PrsMgr_PresentationManager ) & thePrsMgr , const Standard_Integer theMode = 0 ) const { return mySelectable != NULL && thePrsMgr -> IsHighlighted ( mySelectable , theMode ) ; } ! Highlights selectable object's presentation with display mode in presentation manager with given highlight style.
## ! Also a check for auto-highlight is performed - if selectable object manages highlighting on its own,
## ! execution will be passed to SelectMgr_SelectableObject::HilightOwnerWithColor method. virtual void HilightWithColor ( const Handle ( PrsMgr_PresentationManager ) & thePrsMgr , const Handle ( Prs3d_Drawer ) & theStyle , const Standard_Integer theMode = 0 ) ;
## Error: identifier expected, but got: )!!!

## !!!Ignored construct:  ! Removes highlighting from the owner of a detected selectable object in the presentation manager.
## ! This object could be the owner of a sensitive primitive.
## ! @param thePrsMgr presentation manager
## ! @param theMode   obsolete argument for compatibility, should be ignored by implementations virtual void Unhilight ( const Handle ( PrsMgr_PresentationManager ) & thePrsMgr , const Standard_Integer theMode = 0 ) { ( void ) theMode ; if ( mySelectable != NULL ) { thePrsMgr -> Unhighlight ( mySelectable ) ; } } ! Clears the owners matching the value of the selection
## ! mode aMode from the presentation manager object aPM. virtual void Clear ( const Handle ( PrsMgr_PresentationManager ) & thePrsMgr , const Standard_Integer theMode = 0 ) / TODO { ( void ) thePrsMgr ; ( void ) theMode ; } ! Returns TRUE if selectable has transformation. virtual Standard_Boolean HasLocation ( ) const { return mySelectable != NULL && mySelectable -> HasTransformation ( ) ; } ! Returns transformation of selectable. virtual TopLoc_Location Location ( ) const { return mySelectable != NULL && mySelectable -> HasTransformation ( ) ? TopLoc_Location ( mySelectable -> Transformation ( ) ) : TopLoc_Location ( ) ; } ! Change owner location (callback for handling change of location of selectable object). virtual void SetLocation ( const TopLoc_Location & theLocation ) { ( void ) theLocation ; } ! @return Standard_True if the owner is selected. Standard_Boolean IsSelected ( ) const { return myIsSelected ; } ! Set the state of the owner.
## ! @param theIsSelected [in] shows if owner is selected. void SetSelected ( const Standard_Boolean theIsSelected ) { myIsSelected = theIsSelected ; } ! Returns selection state. Standard_DEPRECATED ( Deprecated method - IsSelected() should be used instead ) Standard_Integer State ( ) const { return myIsSelected ? 1 : 0 ; } ! Set the state of the owner.
## ! The method is deprecated. Use SetSelected() instead. void State ( const Standard_Integer theStatus ) { myIsSelected = ( theStatus == 1 ) ; } ! if owner is not auto hilighted, for group contains many such owners will be called one method HilightSelected of SelectableObject virtual Standard_Boolean IsAutoHilight ( ) const { return mySelectable == NULL || mySelectable -> IsAutoHilight ( ) ; } ! if this method returns TRUE the owner will always call method Hilight for SelectableObject when the owner is detected.
## ! By default it always return FALSE. virtual Standard_Boolean IsForcedHilight ( ) const { return Standard_False ; } ! Set Z layer ID and update all presentations. virtual void SetZLayer ( const Graphic3d_ZLayerId theLayerId ) { ( void ) theLayerId ; } ! Implements immediate application of location transformation of parent object to dynamic highlight structure virtual void UpdateHighlightTrsf ( const Handle ( V3d_Viewer ) & theViewer , const Handle ( PrsMgr_PresentationManager ) & theManager , const Standard_Integer theDispMode ) { if ( mySelectable != NULL ) { theManager -> UpdateHighlightTrsf ( theViewer , mySelectable , theDispMode ) ; } } ! Returns true if pointer to selectable object of this owner is equal to the given one Standard_Boolean IsSameSelectable ( const Handle ( SelectMgr_SelectableObject ) & theOther ) const { return mySelectable == theOther . get ( ) ; } ! Returns TRUE if this owner points to a part of object and FALSE for entire object. Standard_Boolean ComesFromDecomposition ( ) const { return myFromDecomposition ; } ! Sets flag indicating this owner points to a part of object (TRUE) or to entire object (FALSE). void SetComesFromDecomposition ( const Standard_Boolean theIsFromDecomposition ) { myFromDecomposition = theIsFromDecomposition ; } ! Dumps the content of me into the stream virtual void DumpJson ( Standard_OStream & theOStream , Standard_Integer theDepth = - 1 ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  public : ! Sets the selectable object. Standard_DEPRECATED ( Deprecated method - SetSelectable() should be used instead ) void Set ( const Handle ( SelectMgr_SelectableObject ) & theSelObj ) { SetSelectable ( theSelObj ) ; } ! sets the selectable priority of the owner Standard_DEPRECATED ( Deprecated method - SetPriority() should be used instead ) void Set ( const Standard_Integer thePriority ) { SetPriority ( thePriority ) ; } protected : SelectMgr_SelectableObject * mySelectable ;
## Error: identifier expected, but got: Deprecated method - SetSelectable() should be used instead!!!

## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( SelectMgr_EntityOwner , Standard_Transient )  for porting old code typedef SelectMgr_EntityOwner SelectBasics_EntityOwner ;
## Error: expected ';'!!!














































