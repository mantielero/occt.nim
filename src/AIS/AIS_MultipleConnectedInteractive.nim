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

## !!!Ignored construct:  # _AIS_MultipleConnectedInteractive_HeaderFile [NewLine] # _AIS_MultipleConnectedInteractive_HeaderFile [NewLine] # < AIS_InteractiveObject . hxx > [NewLine] # < AIS_KindOfInteractive . hxx > [NewLine] ! Defines an Interactive Object by gathering together
## ! several object presentations. This is done through a
## ! list of interactive objects. These can also be
## ! Connected objects. That way memory-costly
## ! calculations of presentation are avoided. class AIS_MultipleConnectedInteractive : public AIS_InteractiveObject { public : typedef AIS_InteractiveObject base_type ; static const char * get_type_name ( ) { return AIS_MultipleConnectedInteractive ; } static const Handle ( Standard_Type ) & get_type_descriptor ( ) ; virtual const Handle ( Standard_Type ) & DynamicType ( ) const ; public : ! Initializes the Interactive Object with multiple
## ! connections to AIS_Interactive objects. AIS_MultipleConnectedInteractive ( ) ; ! Establishes the connection between the Connected Interactive Object, theInteractive, and its reference.
## ! Locates instance in theLocation and applies specified transformation persistence mode.
## ! @return created instance object (AIS_ConnectedInteractive or AIS_MultipleConnectedInteractive) Handle ( AIS_InteractiveObject ) Connect ( const Handle ( AIS_InteractiveObject ) & theAnotherObj , const Handle ( TopLoc_Datum3D ) & theLocation , const Handle ( Graphic3d_TransformPers ) & theTrsfPers ) { return connect ( theAnotherObj , theLocation , theTrsfPers ) ; } virtual AIS_KindOfInteractive Type ( ) const ; virtual Standard_Integer Signature ( ) const ; ! Returns true if the object is connected to others. Standard_Boolean HasConnection ( ) const ; ! Removes the connection with theInteractive. void Disconnect ( const Handle ( AIS_InteractiveObject ) & theInteractive ) ; ! Clears all the connections to objects. void DisconnectAll ( ) ; ! Informs the graphic context that the interactive Object
## ! may be decomposed into sub-shapes for dynamic selection. virtual Standard_Boolean AcceptShapeDecomposition ( ) const ; ! Returns common entity owner if the object is an assembly virtual const Handle ( SelectMgr_EntityOwner ) & GetAssemblyOwner ( ) const { return myAssemblyOwner ; } ! Returns the owner of mode for selection of object as a whole virtual Handle ( SelectMgr_EntityOwner ) GlobalSelOwner ( ) const { return myAssemblyOwner ; } ! Assigns interactive context. virtual void SetContext ( const Handle ( AIS_InteractiveContext ) & theCtx ) ; public :  short aliases to Connect() method ! Establishes the connection between the Connected Interactive Object, theInteractive, and its reference.
## ! Copies local transformation and transformation persistence mode from theInteractive.
## ! @return created instance object (AIS_ConnectedInteractive or AIS_MultipleConnectedInteractive) Handle ( AIS_InteractiveObject ) Connect ( const Handle ( AIS_InteractiveObject ) & theAnotherObj ) { return connect ( theAnotherObj , theAnotherObj -> LocalTransformationGeom ( ) , theAnotherObj -> TransformPersistence ( ) ) ; } ! Establishes the connection between the Connected Interactive Object, theInteractive, and its reference.
## ! Locates instance in theLocation and copies transformation persistence mode from theInteractive.
## ! @return created instance object (AIS_ConnectedInteractive or AIS_MultipleConnectedInteractive) Handle ( AIS_InteractiveObject ) Connect ( const Handle ( AIS_InteractiveObject ) & theAnotherObj , const gp_Trsf & theLocation ) { return connect ( theAnotherObj , new TopLoc_Datum3D ( theLocation ) , theAnotherObj -> TransformPersistence ( ) ) ; } ! Establishes the connection between the Connected Interactive Object, theInteractive, and its reference.
## ! Locates instance in theLocation and applies specified transformation persistence mode.
## ! @return created instance object (AIS_ConnectedInteractive or AIS_MultipleConnectedInteractive) Handle ( AIS_InteractiveObject ) Connect ( const Handle ( AIS_InteractiveObject ) & theAnotherObj , const gp_Trsf & theLocation , const Handle ( Graphic3d_TransformPers ) & theTrsfPers ) { return connect ( theAnotherObj , new TopLoc_Datum3D ( theLocation ) , theTrsfPers ) ; } Standard_DEPRECATED ( This method is deprecated - Connect() taking Graphic3d_TransformPers should be called instead ) Handle ( AIS_InteractiveObject ) Connect ( const Handle ( AIS_InteractiveObject ) & theInteractive , const gp_Trsf & theLocation , const Graphic3d_TransModeFlags & theTrsfPersFlag , const gp_Pnt & theTrsfPersPoint ) { return connect ( theInteractive , new TopLoc_Datum3D ( theLocation ) , Graphic3d_TransformPers :: FromDeprecatedParams ( theTrsfPersFlag , theTrsfPersPoint ) ) ; } protected : ! this method is redefined virtual;
## ! when the instance is connected to another
## ! InteractiveObject,this method doesn't
## ! compute anything, but just uses the
## ! presentation of this last object, with
## ! a transformation if there's one stored. virtual void Compute ( const Handle ( PrsMgr_PresentationManager3d ) & aPresentationManager , const Handle ( Prs3d_Presentation ) & aPresentation , const Standard_Integer aMode = 0 ) ; ! Establishes the connection between the Connected Interactive Object, theInteractive, and its reference.
## ! Locates instance in theLocation and applies specified transformation persistence mode.
## ! @return created instance object (AIS_ConnectedInteractive or AIS_MultipleConnectedInteractive) virtual Handle ( AIS_InteractiveObject ) connect ( const Handle ( AIS_InteractiveObject ) & theInteractive , const Handle ( TopLoc_Datum3D ) & theLocation , const Handle ( Graphic3d_TransformPers ) & theTrsfPers ) ; private : ! Computes the selection for whole subtree in scene hierarchy. virtual void ComputeSelection ( const Handle ( SelectMgr_Selection ) & aSelection , const Standard_Integer aMode ) ; protected : Handle ( SelectMgr_EntityOwner ) myAssemblyOwner ; } ;
## Error: expected ';'!!!

## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( AIS_MultipleConnectedInteractive , AIS_InteractiveObject ) #  _AIS_MultipleConnectedInteractive_HeaderFile
## Error: expected ';'!!!














































