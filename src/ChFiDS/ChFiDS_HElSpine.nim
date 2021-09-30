##  Created on: 1993-11-17
##  Created by: Isabelle GRIGNON
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

## !!!Ignored construct:  # _ChFiDS_HElSpine_HeaderFile [NewLine] # _ChFiDS_HElSpine_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < ChFiDS_ElSpine . hxx > [NewLine] # < Adaptor3d_HCurve . hxx > [NewLine] class Standard_OutOfRange ;
## Error: expected ';'!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of ChFiDS_ElSpine"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of ChFiDS_HElSpine"
## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( ChFiDS_HElSpine , Adaptor3d_HCurve ) class ChFiDS_HElSpine : public Adaptor3d_HCurve { public : ! Creates an empty GenHCurve. ChFiDS_HElSpine ( ) ; ! Creates a GenHCurve from a Curve ChFiDS_HElSpine ( const ChFiDS_ElSpine & C ) ; ! Sets the field of the GenHCurve. void Set ( const ChFiDS_ElSpine & C ) ; ! Returns the curve used to create the GenHCurve.
## ! This is redefined from HCurve, cannot be inline. const Adaptor3d_Curve & Curve ( ) const ; ! Returns the curve used to create the GenHCurve.
## ! This is redefined from HCurve, cannot be inline. Adaptor3d_Curve & GetCurve ( ) ; ! Returns the curve used to create the GenHCurve. ChFiDS_ElSpine & ChangeCurve ( ) ; public : typedef Adaptor3d_HCurve base_type ; static const char * get_type_name ( ) { return ChFiDS_HElSpine ; ( ChFiDS_HElSpine , Adaptor3d_HCurve ) } static const Handle ( Standard_Type ) & get_type_descriptor ( ) { return Standard_Type :: Instance < ChFiDS_HElSpine > ( ) ; } virtual const Handle ( Standard_Type ) & DynamicType ( ) const { return get_type_descriptor ( ) ; } protected : ChFiDS_ElSpine myCurve ; private : } ;
## Error: expected ';'!!!

## !!!Ignored construct:  # TheCurve ChFiDS_ElSpine [NewLine] # TheCurve_hxx < ChFiDS_ElSpine . hxx > [NewLine] # Adaptor3d_GenHCurve ChFiDS_HElSpine [NewLine] # Adaptor3d_GenHCurve_hxx < ChFiDS_HElSpine . hxx > [NewLine] # Handle_Adaptor3d_GenHCurve Handle ( ChFiDS_HElSpine ) [NewLine] # < Adaptor3d_GenHCurve . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # Adaptor3d_GenHCurve [NewLine] # Adaptor3d_GenHCurve_hxx [NewLine] # Handle_Adaptor3d_GenHCurve [NewLine] #  _ChFiDS_HElSpine_HeaderFile
## Error: did not expect <!!!














































