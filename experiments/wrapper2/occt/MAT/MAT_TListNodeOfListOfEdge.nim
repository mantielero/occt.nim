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

## !!!Ignored construct:  # _MAT_TListNodeOfListOfEdge_HeaderFile [NewLine] # _MAT_TListNodeOfListOfEdge_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < Standard_Transient . hxx > [NewLine] class MAT_Edge ;
## Error: expected ';'!!!

discard "forward decl of MAT_ListOfEdge"
discard "forward decl of MAT_TListNodeOfListOfEdge"
## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( MAT_TListNodeOfListOfEdge , Standard_Transient ) class MAT_TListNodeOfListOfEdge : public Standard_Transient { public : MAT_TListNodeOfListOfEdge ( ) ; MAT_TListNodeOfListOfEdge ( const Handle ( MAT_Edge ) & anitem ) ; Handle ( MAT_Edge ) GetItem ( ) const ; Handle ( MAT_TListNodeOfListOfEdge ) Next ( ) const ; Handle ( MAT_TListNodeOfListOfEdge ) Previous ( ) const ; void SetItem ( const Handle ( MAT_Edge ) & anitem ) ; void Next ( const Handle ( MAT_TListNodeOfListOfEdge ) & atlistnode ) ; void Previous ( const Handle ( MAT_TListNodeOfListOfEdge ) & atlistnode ) ; void Dummy ( ) const ; public : typedef Standard_Transient base_type ; static const char * get_type_name ( ) { return MAT_TListNodeOfListOfEdge ; ( MAT_TListNodeOfListOfEdge , Standard_Transient ) } static const Handle ( Standard_Type ) & get_type_descriptor ( ) { return Standard_Type :: Instance < MAT_TListNodeOfListOfEdge > ( ) ; } virtual const Handle ( Standard_Type ) & DynamicType ( ) const { return get_type_descriptor ( ) ; } protected : private : Handle ( MAT_TListNodeOfListOfEdge ) thenext ; Handle ( MAT_TListNodeOfListOfEdge ) theprevious ; Handle ( MAT_Edge ) theitem ; } ;
## Error: expected ';'!!!

## !!!Ignored construct:  # Item Handle ( MAT_Edge ) [NewLine] # Item_hxx < MAT_Edge . hxx > [NewLine] # MAT_TListNode MAT_TListNodeOfListOfEdge [NewLine] # MAT_TListNode_hxx < MAT_TListNodeOfListOfEdge . hxx > [NewLine] # Handle_MAT_TListNode Handle ( MAT_TListNodeOfListOfEdge ) [NewLine] # MAT_TList MAT_ListOfEdge [NewLine] # MAT_TList_hxx < MAT_ListOfEdge . hxx > [NewLine] # Handle_MAT_TList Handle ( MAT_ListOfEdge ) [NewLine] # < MAT_TListNode . lxx > [NewLine] # Item [NewLine] # Item_hxx [NewLine] # MAT_TListNode [NewLine] # MAT_TListNode_hxx [NewLine] # Handle_MAT_TListNode [NewLine] # MAT_TList [NewLine] # MAT_TList_hxx [NewLine] # Handle_MAT_TList [NewLine] #  _MAT_TListNodeOfListOfEdge_HeaderFile
## Error: did not expect <!!!














































