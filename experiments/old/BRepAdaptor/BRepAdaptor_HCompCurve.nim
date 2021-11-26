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

## !!!Ignored construct:  # _BRepAdaptor_HCompCurve_HeaderFile [NewLine] # _BRepAdaptor_HCompCurve_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < BRepAdaptor_CompCurve . hxx > [NewLine] # < Adaptor3d_HCurve . hxx > [NewLine] class Standard_OutOfRange ;
## Error: expected ';'!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of BRepAdaptor_CompCurve"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of BRepAdaptor_HCompCurve"
## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( BRepAdaptor_HCompCurve , Adaptor3d_HCurve ) class BRepAdaptor_HCompCurve : public Adaptor3d_HCurve { public : ! Creates an empty GenHCurve. BRepAdaptor_HCompCurve ( ) ; ! Creates a GenHCurve from a Curve BRepAdaptor_HCompCurve ( const BRepAdaptor_CompCurve & C ) ; ! Sets the field of the GenHCurve. void Set ( const BRepAdaptor_CompCurve & C ) ; ! Returns the curve used to create the GenHCurve.
## ! This is redefined from HCurve, cannot be inline. const Adaptor3d_Curve & Curve ( ) const ; ! Returns the curve used to create the GenHCurve.
## ! This is redefined from HCurve, cannot be inline. Adaptor3d_Curve & GetCurve ( ) ; ! Returns the curve used to create the GenHCurve. BRepAdaptor_CompCurve & ChangeCurve ( ) ; public : typedef Adaptor3d_HCurve base_type ; static const char * get_type_name ( ) { return BRepAdaptor_HCompCurve ; ( BRepAdaptor_HCompCurve , Adaptor3d_HCurve ) } static const Handle ( Standard_Type ) & get_type_descriptor ( ) { return Standard_Type :: Instance < BRepAdaptor_HCompCurve > ( ) ; } virtual const Handle ( Standard_Type ) & DynamicType ( ) const { return get_type_descriptor ( ) ; } protected : BRepAdaptor_CompCurve myCurve ; private : } ;
## Error: expected ';'!!!

## !!!Ignored construct:  # TheCurve BRepAdaptor_CompCurve [NewLine] # TheCurve_hxx < BRepAdaptor_CompCurve . hxx > [NewLine] # Adaptor3d_GenHCurve BRepAdaptor_HCompCurve [NewLine] # Adaptor3d_GenHCurve_hxx < BRepAdaptor_HCompCurve . hxx > [NewLine] # Handle_Adaptor3d_GenHCurve Handle ( BRepAdaptor_HCompCurve ) [NewLine] # < Adaptor3d_GenHCurve . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # Adaptor3d_GenHCurve [NewLine] # Adaptor3d_GenHCurve_hxx [NewLine] # Handle_Adaptor3d_GenHCurve [NewLine] #  _BRepAdaptor_HCompCurve_HeaderFile
## Error: did not expect <!!!














































