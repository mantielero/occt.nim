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

## !!!Ignored construct:  # _MAT_ListOfEdge_HeaderFile [NewLine] # _MAT_ListOfEdge_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < Standard_Transient . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] class MAT_TListNodeOfListOfEdge ;
## Error: expected ';'!!!

discard "forward decl of MAT_Edge"
discard "forward decl of MAT_ListOfEdge"
## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( MAT_ListOfEdge , Standard_Transient ) class MAT_ListOfEdge : public Standard_Transient { public : MAT_ListOfEdge ( ) ; ~ MAT_ListOfEdge ( ) ; void First ( ) ; void Last ( ) ; void Init ( const Handle ( MAT_Edge ) & aniten ) ; void Next ( ) ; void Previous ( ) ; Standard_Boolean More ( ) const ; Handle ( MAT_Edge ) Current ( ) const ; void Current ( const Handle ( MAT_Edge ) & anitem ) const ; Handle ( MAT_Edge ) FirstItem ( ) const ; Handle ( MAT_Edge ) LastItem ( ) const ; Handle ( MAT_Edge ) PreviousItem ( ) const ; Handle ( MAT_Edge ) NextItem ( ) const ; Standard_Integer Number ( ) const ; Standard_Integer Index ( ) const ; Handle ( MAT_Edge ) Brackets ( const Standard_Integer anindex ) ; Handle ( MAT_Edge ) operator ( ) ( const Standard_Integer anindex ) { return Brackets ( anindex ) ; } void Unlink ( ) ; void LinkBefore ( const Handle ( MAT_Edge ) & anitem ) ; void LinkAfter ( const Handle ( MAT_Edge ) & anitem ) ; void FrontAdd ( const Handle ( MAT_Edge ) & anitem ) ; void BackAdd ( const Handle ( MAT_Edge ) & anitem ) ; void Permute ( ) ; void Loop ( ) const ; Standard_Boolean IsEmpty ( ) const ; void Dump ( const Standard_Integer ashift , const Standard_Integer alevel ) ; public : typedef Standard_Transient base_type ; static const char * get_type_name ( ) { return MAT_ListOfEdge ; ( MAT_ListOfEdge , Standard_Transient ) } static const Handle ( Standard_Type ) & get_type_descriptor ( ) { return Standard_Type :: Instance < MAT_ListOfEdge > ( ) ; } virtual const Handle ( Standard_Type ) & DynamicType ( ) const { return get_type_descriptor ( ) ; } protected : private : Handle ( MAT_TListNodeOfListOfEdge ) thefirstnode ; Handle ( MAT_TListNodeOfListOfEdge ) thelastnode ; Handle ( MAT_TListNodeOfListOfEdge ) thecurrentnode ; Standard_Integer thecurrentindex ; Standard_Integer thenumberofitems ; } ;
## Error: expected ';'!!!

## !!!Ignored construct:  # Item Handle ( MAT_Edge ) [NewLine] # Item_hxx < MAT_Edge . hxx > [NewLine] # MAT_TListNode MAT_TListNodeOfListOfEdge [NewLine] # MAT_TListNode_hxx < MAT_TListNodeOfListOfEdge . hxx > [NewLine] # Handle_MAT_TListNode Handle ( MAT_TListNodeOfListOfEdge ) [NewLine] # MAT_TList MAT_ListOfEdge [NewLine] # MAT_TList_hxx < MAT_ListOfEdge . hxx > [NewLine] # Handle_MAT_TList Handle ( MAT_ListOfEdge ) [NewLine] # < MAT_TList . lxx > [NewLine] # Item [NewLine] # Item_hxx [NewLine] # MAT_TListNode [NewLine] # MAT_TListNode_hxx [NewLine] # Handle_MAT_TListNode [NewLine] # MAT_TList [NewLine] # MAT_TList_hxx [NewLine] # Handle_MAT_TList [NewLine] #  _MAT_ListOfEdge_HeaderFile
## Error: did not expect <!!!














































