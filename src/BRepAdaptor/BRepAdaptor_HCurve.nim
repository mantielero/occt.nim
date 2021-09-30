##  Created on: 1993-02-19
##  Created by: Remi LEQUETTE
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

## !!!Ignored construct:  # _BRepAdaptor_HCurve_HeaderFile [NewLine] # _BRepAdaptor_HCurve_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < BRepAdaptor_Curve . hxx > [NewLine] # < Adaptor3d_HCurve . hxx > [NewLine] class Standard_OutOfRange ;
## Error: expected ';'!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of BRepAdaptor_Curve"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of BRepAdaptor_HCurve"
## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( BRepAdaptor_HCurve , Adaptor3d_HCurve ) class BRepAdaptor_HCurve : public Adaptor3d_HCurve { public : ! Creates an empty GenHCurve. BRepAdaptor_HCurve ( ) ; ! Creates a GenHCurve from a Curve BRepAdaptor_HCurve ( const BRepAdaptor_Curve & C ) ; ! Sets the field of the GenHCurve. void Set ( const BRepAdaptor_Curve & C ) ; ! Returns the curve used to create the GenHCurve.
## ! This is redefined from HCurve, cannot be inline. const Adaptor3d_Curve & Curve ( ) const ; ! Returns the curve used to create the GenHCurve.
## ! This is redefined from HCurve, cannot be inline. Adaptor3d_Curve & GetCurve ( ) ; ! Returns the curve used to create the GenHCurve. BRepAdaptor_Curve & ChangeCurve ( ) ; public : typedef Adaptor3d_HCurve base_type ; static const char * get_type_name ( ) { return BRepAdaptor_HCurve ; ( BRepAdaptor_HCurve , Adaptor3d_HCurve ) } static const Handle ( Standard_Type ) & get_type_descriptor ( ) { return Standard_Type :: Instance < BRepAdaptor_HCurve > ( ) ; } virtual const Handle ( Standard_Type ) & DynamicType ( ) const { return get_type_descriptor ( ) ; } protected : BRepAdaptor_Curve myCurve ; private : } ;
## Error: expected ';'!!!

## !!!Ignored construct:  # TheCurve BRepAdaptor_Curve [NewLine] # TheCurve_hxx < BRepAdaptor_Curve . hxx > [NewLine] # Adaptor3d_GenHCurve BRepAdaptor_HCurve [NewLine] # Adaptor3d_GenHCurve_hxx < BRepAdaptor_HCurve . hxx > [NewLine] # Handle_Adaptor3d_GenHCurve Handle ( BRepAdaptor_HCurve ) [NewLine] # < Adaptor3d_GenHCurve . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # Adaptor3d_GenHCurve [NewLine] # Adaptor3d_GenHCurve_hxx [NewLine] # Handle_Adaptor3d_GenHCurve [NewLine] #  _BRepAdaptor_HCurve_HeaderFile
## Error: did not expect <!!!














































