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

## !!!Ignored construct:  # _MAT_TListNodeOfListOfBisector_HeaderFile [NewLine] # _MAT_TListNodeOfListOfBisector_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < Standard_Transient . hxx > [NewLine] class MAT_Bisector ;
## Error: expected ';'!!!

discard "forward decl of MAT_ListOfBisector"
discard "forward decl of MAT_TListNodeOfListOfBisector"
## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( MAT_TListNodeOfListOfBisector , Standard_Transient ) class MAT_TListNodeOfListOfBisector : public Standard_Transient { public : MAT_TListNodeOfListOfBisector ( ) ; MAT_TListNodeOfListOfBisector ( const Handle ( MAT_Bisector ) & anitem ) ; Handle ( MAT_Bisector ) GetItem ( ) const ; Handle ( MAT_TListNodeOfListOfBisector ) Next ( ) const ; Handle ( MAT_TListNodeOfListOfBisector ) Previous ( ) const ; void SetItem ( const Handle ( MAT_Bisector ) & anitem ) ; void Next ( const Handle ( MAT_TListNodeOfListOfBisector ) & atlistnode ) ; void Previous ( const Handle ( MAT_TListNodeOfListOfBisector ) & atlistnode ) ; void Dummy ( ) const ; public : typedef Standard_Transient base_type ; static const char * get_type_name ( ) { return MAT_TListNodeOfListOfBisector ; ( MAT_TListNodeOfListOfBisector , Standard_Transient ) } static const Handle ( Standard_Type ) & get_type_descriptor ( ) { return Standard_Type :: Instance < MAT_TListNodeOfListOfBisector > ( ) ; } virtual const Handle ( Standard_Type ) & DynamicType ( ) const { return get_type_descriptor ( ) ; } protected : private : Handle ( MAT_TListNodeOfListOfBisector ) thenext ; Handle ( MAT_TListNodeOfListOfBisector ) theprevious ; Handle ( MAT_Bisector ) theitem ; } ;
## Error: expected ';'!!!

## !!!Ignored construct:  # Item Handle ( MAT_Bisector ) [NewLine] # Item_hxx < MAT_Bisector . hxx > [NewLine] # MAT_TListNode MAT_TListNodeOfListOfBisector [NewLine] # MAT_TListNode_hxx < MAT_TListNodeOfListOfBisector . hxx > [NewLine] # Handle_MAT_TListNode Handle ( MAT_TListNodeOfListOfBisector ) [NewLine] # MAT_TList MAT_ListOfBisector [NewLine] # MAT_TList_hxx < MAT_ListOfBisector . hxx > [NewLine] # Handle_MAT_TList Handle ( MAT_ListOfBisector ) [NewLine] # < MAT_TListNode . lxx > [NewLine] # Item [NewLine] # Item_hxx [NewLine] # MAT_TListNode [NewLine] # MAT_TListNode_hxx [NewLine] # Handle_MAT_TListNode [NewLine] # MAT_TList [NewLine] # MAT_TList_hxx [NewLine] # Handle_MAT_TList [NewLine] #  _MAT_TListNodeOfListOfBisector_HeaderFile
## Error: did not expect <!!!














































