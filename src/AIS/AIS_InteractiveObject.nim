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

## !!!Ignored construct:  # _AIS_InteractiveObject_HeaderFile [NewLine] # _AIS_InteractiveObject_HeaderFile [NewLine] # < AIS_KindOfInteractive . hxx > [NewLine] # < AIS_DragAction . hxx > [NewLine] # < SelectMgr_SelectableObject . hxx > [NewLine] class AIS_InteractiveContext ;
## Error: expected ';'!!!

discard "forward decl of Graphic3d_MaterialAspect"
discard "forward decl of Prs3d_BasicAspect"
discard "forward decl of Bnd_Box"
discard "forward decl of V3d_View"
type
  AIS_InteractiveObject* {.importcpp: "AIS_InteractiveObject",
                          header: "AIS_InteractiveObject.hxx", bycopy.} = object of SelectMgrSelectableObject ##
                                                                                                       ## !
                                                                                                       ## Returns
                                                                                                       ## the
                                                                                                       ## kind
                                                                                                       ## of
                                                                                                       ## Interactive
                                                                                                       ## Object;
                                                                                                       ## AIS_KOI_None
                                                                                                       ## by
                                                                                                       ## default.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## Returns
                                                                                                       ## the
                                                                                                       ## context
                                                                                                       ## pointer
                                                                                                       ## to
                                                                                                       ## the
                                                                                                       ## interactive
                                                                                                       ## context.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## The
                                                                                                       ## TypeOfPresention3d
                                                                                                       ## means
                                                                                                       ## that
                                                                                                       ## the
                                                                                                       ## interactive
                                                                                                       ## object
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## may
                                                                                                       ## have
                                                                                                       ## a
                                                                                                       ## presentation
                                                                                                       ## dependant
                                                                                                       ## of
                                                                                                       ## the
                                                                                                       ## view
                                                                                                       ## of
                                                                                                       ## Display.
    standardType* {.importc: "Standard_Type".}: Handle
    standardTransient* {.importc: "Standard_Transient".}: Handle
    aIS_InteractiveContext* {.importc: "AIS_InteractiveContext".}: Handle
    prs3dPresentation* {.importc: "Prs3d_Presentation".}: Handle
    ## !< pointer to Interactive Context, where object is currently displayed; @sa SetContext()

  AIS_InteractiveObjectbaseType* = SelectMgrSelectableObject

proc getTypeName*(): cstring {.importcpp: "AIS_InteractiveObject::get_type_name(@)",
                            header: "AIS_InteractiveObject.hxx".}
## !!!Ignored construct:  & get_type_descriptor ( ) ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  & DynamicType ( ) const ;
## Error: identifier expected, but got: &!!!

proc `type`*(this: AIS_InteractiveObject): AIS_KindOfInteractive {.noSideEffect,
    importcpp: "Type", header: "AIS_InteractiveObject.hxx".}
proc signature*(this: AIS_InteractiveObject): int {.noSideEffect,
    importcpp: "Signature", header: "AIS_InteractiveObject.hxx".}
proc redisplay*(this: var AIS_InteractiveObject; allModes: bool = false) {.
    importcpp: "Redisplay", header: "AIS_InteractiveObject.hxx".}
proc hasInteractiveContext*(this: AIS_InteractiveObject): bool {.noSideEffect,
    importcpp: "HasInteractiveContext", header: "AIS_InteractiveObject.hxx".}
proc interactiveContext*(this: AIS_InteractiveObject): ptr AIS_InteractiveContext {.
    noSideEffect, importcpp: "InteractiveContext",
    header: "AIS_InteractiveObject.hxx".}
## !!!Ignored construct:  ! Sets the interactive context aCtx and provides a link
## ! to the default drawing tool or "Drawer" if there is none. virtual void SetContext ( const Handle ( AIS_InteractiveContext ) & aCtx ) ;
## Error: token expected: ) but got: &!!!

proc hasOwner*(this: AIS_InteractiveObject): bool {.noSideEffect,
    importcpp: "HasOwner", header: "AIS_InteractiveObject.hxx".}
## !!!Ignored construct:  & GetOwner ( ) const { return myOwner ; } ! Allows you to attribute the owner theApplicativeEntity to
## ! an Interactive Object. This can be a shape for a set of
## ! sub-shapes or a sub-shape for sub-shapes which it
## ! is composed of. The owner takes the form of a transient. void SetOwner ( const Handle ( Standard_Transient ) & theApplicativeEntity ) { myOwner = theApplicativeEntity ; } ! Each Interactive Object has methods which allow us to attribute an Owner to it in the form of a Transient.
## ! This method removes the owner from the graphic entity. void ClearOwner ( ) { myOwner . Nullify ( ) ; } ! Drag object in the viewer.
## ! @param theCtx      [in] interactive context
## ! @param theView     [in] active View
## ! @param theOwner    [in] the owner of detected entity
## ! @param theDragFrom [in] drag start point
## ! @param theDragTo   [in] drag end point
## ! @param theAction   [in] drag action
## ! @return FALSE if object rejects dragging action (e.g. AIS_DragAction_Start) virtual Standard_Boolean ProcessDragging ( const Handle ( AIS_InteractiveContext ) & theCtx , const Handle ( V3d_View ) & theView , const Handle ( SelectMgr_EntityOwner ) & theOwner , const Graphic3d_Vec2i & theDragFrom , const Graphic3d_Vec2i & theDragTo , const AIS_DragAction theAction ) ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  GetContext ( ) const ;
## Error: identifier expected, but got: )!!!

proc hasPresentation*(this: AIS_InteractiveObject): bool {.noSideEffect,
    importcpp: "HasPresentation", header: "AIS_InteractiveObject.hxx".}
## !!!Ignored construct:  Presentation ( ) const ;
## Error: identifier expected, but got: )!!!

## !!!Ignored construct:  ! Sets the graphic basic aspect to the current presentation. Standard_DEPRECATED ( Deprecated method, results might be undefined ) void SetAspect ( const Handle ( Prs3d_BasicAspect ) & anAspect ) ;
## Error: identifier expected, but got: Deprecated method, results might be undefined!!!

proc dumpJson*(this: AIS_InteractiveObject; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "AIS_InteractiveObject.hxx".}
## !!!Ignored construct:  myOwner ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( AIS_InteractiveObject , SelectMgr_SelectableObject ) #  _AIS_InteractiveObject_HeaderFile
## Error: expected ';'!!!














































