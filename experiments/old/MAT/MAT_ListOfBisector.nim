##  Created on: 1992-09-22
##  Created by: Gilles DEBARBOUILLE
##  Copyright (c) 1992-1999 Matra Datavision
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

## !!!Ignored construct:  # _MAT_ListOfBisector_HeaderFile [NewLine] # _MAT_ListOfBisector_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < Standard_Transient . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] class MAT_TListNodeOfListOfBisector ;
## Error: expected ';'!!!

discard "forward decl of MAT_Bisector"
discard "forward decl of MAT_ListOfBisector"
## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( MAT_ListOfBisector , Standard_Transient ) class MAT_ListOfBisector : public Standard_Transient { public : MAT_ListOfBisector ( ) ; ~ MAT_ListOfBisector ( ) ; void First ( ) ; void Last ( ) ; void Init ( const Handle ( MAT_Bisector ) & aniten ) ; void Next ( ) ; void Previous ( ) ; Standard_Boolean More ( ) const ; Handle ( MAT_Bisector ) Current ( ) const ; void Current ( const Handle ( MAT_Bisector ) & anitem ) const ; Handle ( MAT_Bisector ) FirstItem ( ) const ; Handle ( MAT_Bisector ) LastItem ( ) const ; Handle ( MAT_Bisector ) PreviousItem ( ) const ; Handle ( MAT_Bisector ) NextItem ( ) const ; Standard_Integer Number ( ) const ; Standard_Integer Index ( ) const ; Handle ( MAT_Bisector ) Brackets ( const Standard_Integer anindex ) ; Handle ( MAT_Bisector ) operator ( ) ( const Standard_Integer anindex ) { return Brackets ( anindex ) ; } void Unlink ( ) ; void LinkBefore ( const Handle ( MAT_Bisector ) & anitem ) ; void LinkAfter ( const Handle ( MAT_Bisector ) & anitem ) ; void FrontAdd ( const Handle ( MAT_Bisector ) & anitem ) ; void BackAdd ( const Handle ( MAT_Bisector ) & anitem ) ; void Permute ( ) ; void Loop ( ) const ; Standard_Boolean IsEmpty ( ) const ; void Dump ( const Standard_Integer ashift , const Standard_Integer alevel ) ; public : typedef Standard_Transient base_type ; static const char * get_type_name ( ) { return MAT_ListOfBisector ; ( MAT_ListOfBisector , Standard_Transient ) } static const Handle ( Standard_Type ) & get_type_descriptor ( ) { return Standard_Type :: Instance < MAT_ListOfBisector > ( ) ; } virtual const Handle ( Standard_Type ) & DynamicType ( ) const { return get_type_descriptor ( ) ; } protected : private : Handle ( MAT_TListNodeOfListOfBisector ) thefirstnode ; Handle ( MAT_TListNodeOfListOfBisector ) thelastnode ; Handle ( MAT_TListNodeOfListOfBisector ) thecurrentnode ; Standard_Integer thecurrentindex ; Standard_Integer thenumberofitems ; } ;
## Error: expected ';'!!!

## !!!Ignored construct:  # Item Handle ( MAT_Bisector ) [NewLine] # Item_hxx < MAT_Bisector . hxx > [NewLine] # MAT_TListNode MAT_TListNodeOfListOfBisector [NewLine] # MAT_TListNode_hxx < MAT_TListNodeOfListOfBisector . hxx > [NewLine] # Handle_MAT_TListNode Handle ( MAT_TListNodeOfListOfBisector ) [NewLine] # MAT_TList MAT_ListOfBisector [NewLine] # MAT_TList_hxx < MAT_ListOfBisector . hxx > [NewLine] # Handle_MAT_TList Handle ( MAT_ListOfBisector ) [NewLine] # < MAT_TList . lxx > [NewLine] # Item [NewLine] # Item_hxx [NewLine] # MAT_TListNode [NewLine] # MAT_TListNode_hxx [NewLine] # Handle_MAT_TListNode [NewLine] # MAT_TList [NewLine] # MAT_TList_hxx [NewLine] # Handle_MAT_TList [NewLine] #  _MAT_ListOfBisector_HeaderFile
## Error: did not expect <!!!














































