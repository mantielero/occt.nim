##  Copyright (c) 2015 OPEN CASCADE SAS
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

## !!!Ignored construct:  # _ShapePersistent_HSequence_HeaderFile [NewLine] # _ShapePersistent_HSequence_HeaderFile [NewLine] # < Standard_NotImplemented . hxx > [NewLine] # < StdObjMgt_Persistent . hxx > [NewLine] # < StdObject_gp_Vectors . hxx > [NewLine] # < TColgp_HSequenceOfXYZ . hxx > [NewLine] # < TColgp_HSequenceOfPnt . hxx > [NewLine] # < TColgp_HSequenceOfDir . hxx > [NewLine] # < TColgp_HSequenceOfVec . hxx > [NewLine] class ShapePersistent_HSequence { template < class SequenceClass > [end of template] class node : public StdObjMgt_Persistent { public : typedef typename SequenceClass :: value_type ItemType ; public : ! Read persistent data from a file. virtual void Read ( StdObjMgt_ReadData & theReadData ) ; ! Write persistent data to a file. virtual void Write ( StdObjMgt_WriteData & theWriteData ) const ; ! Gets persistent objects virtual void PChildren ( SequenceOfPersistent & theChildren ) const { theChildren . Append ( this -> myPreviuos ) ; theChildren . Append ( this -> myNext ) ; } ! Returns persistent type name virtual Standard_CString PName ( ) const { Standard_NotImplemented :: Raise ( ShapePersistent_HSequence::node::PName - not implemented ) ; return  ; } const opencascade :: handle < node > [end of template] & Previuos ( ) const { return myPreviuos ; } const opencascade :: handle < node > [end of template] & Next ( ) const { return myNext ; } const ItemType & Item ( ) const { return myItem ; } private : opencascade :: handle < node > [end of template] myPreviuos ; opencascade :: handle < node > [end of template] myNext ; ItemType myItem ; } ; template < class SequenceClass > [end of template] class instance : public StdObjMgt_Persistent { public : typedef node < SequenceClass > [end of template] Node ; public : ! Empty constructor. instance ( ) : mySize ( 0 ) { } ! Read persistent data from a file. virtual void Read ( StdObjMgt_ReadData & theReadData ) ; ! Write persistent data to a file. virtual void Write ( StdObjMgt_WriteData & theWriteData ) const ; ! Gets persistent objects virtual void PChildren ( SequenceOfPersistent & theChildren ) const { theChildren . Append ( this -> myFirst ) ; theChildren . Append ( this -> myLast ) ; } ! Returns persistent type name virtual Standard_CString PName ( ) const { Standard_NotImplemented :: Raise ( ShapePersistent_HSequence::instance::PName - not implemented ) ; return  ; } ! Import transient object from the persistent data. opencascade :: handle < SequenceClass > [end of template] Import ( ) const ; private : opencascade :: handle < Node > [end of template] myFirst ; opencascade :: handle < Node > [end of template] myLast ; Standard_Integer mySize ; } ; public : typedef instance < TColgp_HSequenceOfXYZ > [end of template] XYZ ; typedef instance < TColgp_HSequenceOfPnt > [end of template] Pnt ; typedef instance < TColgp_HSequenceOfDir > [end of template] Dir ; typedef instance < TColgp_HSequenceOfVec > [end of template] Vec ; } ;
## Error: token expected: ( but got: <!!!

## =======================================================================
##  XYZ
## =======================================================================

## !!!Ignored construct:  template < > [end of template] Standard_CString ShapePersistent_HSequence :: instance < TColgp_HSequenceOfXYZ > :: PName ( ) const ;
## Error: token expected: ( but got: <!!!

## !!!Ignored construct:  template < > [end of template] Standard_CString ShapePersistent_HSequence :: node < TColgp_HSequenceOfXYZ > :: PName ( ) const ;
## Error: token expected: ( but got: <!!!

## =======================================================================
##  Pnt
## =======================================================================

## !!!Ignored construct:  template < > [end of template] Standard_CString ShapePersistent_HSequence :: instance < TColgp_HSequenceOfPnt > :: PName ( ) const ;
## Error: token expected: ( but got: <!!!

## !!!Ignored construct:  template < > [end of template] Standard_CString ShapePersistent_HSequence :: node < TColgp_HSequenceOfPnt > :: PName ( ) const ;
## Error: token expected: ( but got: <!!!

## =======================================================================
##  Dir
## =======================================================================

## !!!Ignored construct:  template < > [end of template] Standard_CString ShapePersistent_HSequence :: instance < TColgp_HSequenceOfDir > :: PName ( ) const ;
## Error: token expected: ( but got: <!!!

## !!!Ignored construct:  template < > [end of template] Standard_CString ShapePersistent_HSequence :: node < TColgp_HSequenceOfDir > :: PName ( ) const ;
## Error: token expected: ( but got: <!!!

## =======================================================================
##  Vec
## =======================================================================

## !!!Ignored construct:  template < > [end of template] Standard_CString ShapePersistent_HSequence :: instance < TColgp_HSequenceOfVec > :: PName ( ) const ;
## Error: token expected: ( but got: <!!!

## !!!Ignored construct:  template < > [end of template] Standard_CString ShapePersistent_HSequence :: node < TColgp_HSequenceOfVec > :: PName ( ) const ;
## Error: token expected: ( but got: <!!!


