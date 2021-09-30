##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( Deepak PRABHU )
##  Copyright (c) 1993-1999 Matra Datavision
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

## !!!Ignored construct:  # _IGESDefs_HArray1OfHArray1OfTextDisplayTemplate_HeaderFile [NewLine] # _IGESDefs_HArray1OfHArray1OfTextDisplayTemplate_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < TColStd_Array1OfTransient . hxx > [NewLine] # < Standard_Transient . hxx > [NewLine] # < IGESGraph_HArray1OfTextDisplayTemplate . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] class IGESDefs_HArray1OfHArray1OfTextDisplayTemplate ;
## Error: expected ';'!!!

## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( IGESDefs_HArray1OfHArray1OfTextDisplayTemplate , Standard_Transient ) class IGESDefs_HArray1OfHArray1OfTextDisplayTemplate : public Standard_Transient { public : IGESDefs_HArray1OfHArray1OfTextDisplayTemplate ( const Standard_Integer low , const Standard_Integer up ) ; Standard_Integer Lower ( ) const ; Standard_Integer Upper ( ) const ; Standard_Integer Length ( ) const ; void SetValue ( const Standard_Integer num , const Handle ( IGESGraph_HArray1OfTextDisplayTemplate ) & val ) ; Handle ( IGESGraph_HArray1OfTextDisplayTemplate ) Value ( const Standard_Integer num ) const ; public : typedef Standard_Transient base_type ; static const char * get_type_name ( ) { return IGESDefs_HArray1OfHArray1OfTextDisplayTemplate ; ( IGESDefs_HArray1OfHArray1OfTextDisplayTemplate , Standard_Transient ) } static const Handle ( Standard_Type ) & get_type_descriptor ( ) { return Standard_Type :: Instance < IGESDefs_HArray1OfHArray1OfTextDisplayTemplate > ( ) ; } virtual const Handle ( Standard_Type ) & DynamicType ( ) const { return get_type_descriptor ( ) ; } protected : private : TColStd_Array1OfTransient thelist ; } ;
## Error: expected ';'!!!














































