##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen (Arun MENON)
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

## !!!Ignored construct:  # _IGESBasic_HArray1OfHArray1OfXYZ_HeaderFile [NewLine] # _IGESBasic_HArray1OfHArray1OfXYZ_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < TColStd_Array1OfTransient . hxx > [NewLine] # < Standard_Transient . hxx > [NewLine] # < TColgp_HArray1OfXYZ . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] class IGESBasic_HArray1OfHArray1OfXYZ ;
## Error: expected ';'!!!

## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( IGESBasic_HArray1OfHArray1OfXYZ , Standard_Transient ) class IGESBasic_HArray1OfHArray1OfXYZ : public Standard_Transient { public : IGESBasic_HArray1OfHArray1OfXYZ ( const Standard_Integer low , const Standard_Integer up ) ; Standard_Integer Lower ( ) const ; Standard_Integer Upper ( ) const ; Standard_Integer Length ( ) const ; void SetValue ( const Standard_Integer num , const Handle ( TColgp_HArray1OfXYZ ) & val ) ; Handle ( TColgp_HArray1OfXYZ ) Value ( const Standard_Integer num ) const ; public : typedef Standard_Transient base_type ; static const char * get_type_name ( ) { return IGESBasic_HArray1OfHArray1OfXYZ ; ( IGESBasic_HArray1OfHArray1OfXYZ , Standard_Transient ) } static const Handle ( Standard_Type ) & get_type_descriptor ( ) { return Standard_Type :: Instance < IGESBasic_HArray1OfHArray1OfXYZ > ( ) ; } virtual const Handle ( Standard_Type ) & DynamicType ( ) const { return get_type_descriptor ( ) ; } protected : private : TColStd_Array1OfTransient thelist ; } ;
## Error: expected ';'!!!














































