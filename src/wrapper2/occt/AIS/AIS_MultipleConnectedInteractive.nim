##  Created on: 1997-04-22
##  Created by: Guest Design
##  Copyright (c) 1997-1999 Matra Datavision
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
  AIS_InteractiveObject, AIS_KindOfInteractive

## ! Defines an Interactive Object by gathering together
## ! several object presentations. This is done through a
## ! list of interactive objects. These can also be
## ! Connected objects. That way memory-costly
## ! calculations of presentation are avoided.

type
  AIS_MultipleConnectedInteractive* {.importcpp: "AIS_MultipleConnectedInteractive", header: "AIS_MultipleConnectedInteractive.hxx",
                                     bycopy.} = object of AIS_InteractiveObject ## !
                                                                           ## Initializes the
                                                                           ## Interactive
                                                                           ## Object with
                                                                           ## multiple
                                                                           ## !
                                                                           ## connections to
                                                                           ## AIS_Interactive
                                                                           ## objects.
                                                                           ##  short
                                                                           ## aliases to
                                                                           ## Connect()
                                                                           ## method
                                                                           ## !
                                                                           ## Establishes the
                                                                           ## connection
                                                                           ## between the
                                                                           ## Connected
                                                                           ## Interactive
                                                                           ## Object,
                                                                           ## theInteractive, and its
                                                                           ## reference.
                                                                           ## !
                                                                           ## Copies local
                                                                           ## transformation and
                                                                           ## transformation
                                                                           ## persistence mode from
                                                                           ## theInteractive.
                                                                           ## !
                                                                           ## @return
                                                                           ## created
                                                                           ## instance
                                                                           ## object
                                                                           ## (AIS_ConnectedInteractive or
                                                                           ## AIS_MultipleConnectedInteractive)
                                                                           ## !
                                                                           ## Computes the
                                                                           ## selection for whole
                                                                           ## subtree in scene
                                                                           ## hierarchy.

  AIS_MultipleConnectedInteractivebase_type* = AIS_InteractiveObject

proc get_type_name*(): cstring {.importcpp: "AIS_MultipleConnectedInteractive::get_type_name(@)",
                              header: "AIS_MultipleConnectedInteractive.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_MultipleConnectedInteractive::get_type_descriptor(@)",
    header: "AIS_MultipleConnectedInteractive.hxx".}
proc DynamicType*(this: AIS_MultipleConnectedInteractive): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "AIS_MultipleConnectedInteractive.hxx".}
proc constructAIS_MultipleConnectedInteractive*(): AIS_MultipleConnectedInteractive {.
    constructor, importcpp: "AIS_MultipleConnectedInteractive(@)",
    header: "AIS_MultipleConnectedInteractive.hxx".}
proc Connect*(this: var AIS_MultipleConnectedInteractive;
             theAnotherObj: handle[AIS_InteractiveObject];
             theLocation: handle[TopLoc_Datum3D];
             theTrsfPers: handle[Graphic3d_TransformPers]): handle[
    AIS_InteractiveObject] {.importcpp: "Connect",
                            header: "AIS_MultipleConnectedInteractive.hxx".}
proc Type*(this: AIS_MultipleConnectedInteractive): AIS_KindOfInteractive {.
    noSideEffect, importcpp: "Type", header: "AIS_MultipleConnectedInteractive.hxx".}
proc Signature*(this: AIS_MultipleConnectedInteractive): Standard_Integer {.
    noSideEffect, importcpp: "Signature",
    header: "AIS_MultipleConnectedInteractive.hxx".}
proc HasConnection*(this: AIS_MultipleConnectedInteractive): Standard_Boolean {.
    noSideEffect, importcpp: "HasConnection",
    header: "AIS_MultipleConnectedInteractive.hxx".}
proc Disconnect*(this: var AIS_MultipleConnectedInteractive;
                theInteractive: handle[AIS_InteractiveObject]) {.
    importcpp: "Disconnect", header: "AIS_MultipleConnectedInteractive.hxx".}
proc DisconnectAll*(this: var AIS_MultipleConnectedInteractive) {.
    importcpp: "DisconnectAll", header: "AIS_MultipleConnectedInteractive.hxx".}
proc AcceptShapeDecomposition*(this: AIS_MultipleConnectedInteractive): Standard_Boolean {.
    noSideEffect, importcpp: "AcceptShapeDecomposition",
    header: "AIS_MultipleConnectedInteractive.hxx".}
proc GetAssemblyOwner*(this: AIS_MultipleConnectedInteractive): handle[
    SelectMgr_EntityOwner] {.noSideEffect, importcpp: "GetAssemblyOwner",
                            header: "AIS_MultipleConnectedInteractive.hxx".}
proc GlobalSelOwner*(this: AIS_MultipleConnectedInteractive): handle[
    SelectMgr_EntityOwner] {.noSideEffect, importcpp: "GlobalSelOwner",
                            header: "AIS_MultipleConnectedInteractive.hxx".}
proc SetContext*(this: var AIS_MultipleConnectedInteractive;
                theCtx: handle[AIS_InteractiveContext]) {.importcpp: "SetContext",
    header: "AIS_MultipleConnectedInteractive.hxx".}
proc Connect*(this: var AIS_MultipleConnectedInteractive;
             theAnotherObj: handle[AIS_InteractiveObject]): handle[
    AIS_InteractiveObject] {.importcpp: "Connect",
                            header: "AIS_MultipleConnectedInteractive.hxx".}
proc Connect*(this: var AIS_MultipleConnectedInteractive;
             theAnotherObj: handle[AIS_InteractiveObject]; theLocation: gp_Trsf): handle[
    AIS_InteractiveObject] {.importcpp: "Connect",
                            header: "AIS_MultipleConnectedInteractive.hxx".}
proc Connect*(this: var AIS_MultipleConnectedInteractive;
             theAnotherObj: handle[AIS_InteractiveObject]; theLocation: gp_Trsf;
             theTrsfPers: handle[Graphic3d_TransformPers]): handle[
    AIS_InteractiveObject] {.importcpp: "Connect",
                            header: "AIS_MultipleConnectedInteractive.hxx".}
## !!!Ignored construct:  Standard_DEPRECATED ( This method is deprecated - Connect() taking Graphic3d_TransformPers should be called instead ) opencascade :: handle < AIS_InteractiveObject > [end of template] Connect ( const opencascade :: handle < AIS_InteractiveObject > [end of template] & theInteractive , const gp_Trsf & theLocation , const Graphic3d_TransModeFlags & theTrsfPersFlag , const gp_Pnt & theTrsfPersPoint ) { return connect ( theInteractive , new TopLoc_Datum3D ( theLocation ) , Graphic3d_TransformPers :: FromDeprecatedParams ( theTrsfPersFlag , theTrsfPersPoint ) ) ; } protected : ! this method is redefined virtual;
## ! when the instance is connected to another
## ! InteractiveObject,this method doesn't
## ! compute anything, but just uses the
## ! presentation of this last object, with
## ! a transformation if there's one stored. virtual void Compute ( const opencascade :: handle < PrsMgr_PresentationManager3d > [end of template] & aPresentationManager , const opencascade :: handle < Prs3d_Presentation > [end of template] & aPresentation , const Standard_Integer aMode = 0 ) ;
## Error: identifier expected, but got: This method is deprecated - Connect() taking Graphic3d_TransformPers should be called instead!!!

proc connect*(this: var AIS_MultipleConnectedInteractive;
             theInteractive: handle[AIS_InteractiveObject];
             theLocation: handle[TopLoc_Datum3D];
             theTrsfPers: handle[Graphic3d_TransformPers]): handle[
    AIS_InteractiveObject] {.importcpp: "connect",
                            header: "AIS_MultipleConnectedInteractive.hxx".}
discard "forward decl of AIS_MultipleConnectedInteractive"
type
  Handle_AIS_MultipleConnectedInteractive* = handle[
      AIS_MultipleConnectedInteractive]
