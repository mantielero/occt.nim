##  Created on: 1992-10-08
##  Created by: Isabelle GRIGNON
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

## !!!Ignored construct:  # _GeomAdaptor_GHCurve_HeaderFile [NewLine] # _GeomAdaptor_GHCurve_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < GeomAdaptor_Curve . hxx > [NewLine] # < Adaptor3d_HCurve . hxx > [NewLine] class Standard_OutOfRange ;
## Error: expected ';'!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of GeomAdaptor_Curve"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of GeomAdaptor_GHCurve"
## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( GeomAdaptor_GHCurve , Adaptor3d_HCurve ) class GeomAdaptor_GHCurve : public Adaptor3d_HCurve { public : ! Creates an empty GenHCurve. GeomAdaptor_GHCurve ( ) ; ! Creates a GenHCurve from a Curve GeomAdaptor_GHCurve ( const GeomAdaptor_Curve & C ) ; ! Sets the field of the GenHCurve. void Set ( const GeomAdaptor_Curve & C ) ; ! Returns the curve used to create the GenHCurve.
## ! This is redefined from HCurve, cannot be inline. const Adaptor3d_Curve & Curve ( ) const ; ! Returns the curve used to create the GenHCurve.
## ! This is redefined from HCurve, cannot be inline. Adaptor3d_Curve & GetCurve ( ) ; ! Returns the curve used to create the GenHCurve. GeomAdaptor_Curve & ChangeCurve ( ) ; public : typedef Adaptor3d_HCurve base_type ; static const char * get_type_name ( ) { return GeomAdaptor_GHCurve ; ( GeomAdaptor_GHCurve , Adaptor3d_HCurve ) } static const Handle ( Standard_Type ) & get_type_descriptor ( ) { return Standard_Type :: Instance < GeomAdaptor_GHCurve > ( ) ; } virtual const Handle ( Standard_Type ) & DynamicType ( ) const { return get_type_descriptor ( ) ; } protected : GeomAdaptor_Curve myCurve ; private : } ;
## Error: expected ';'!!!

## !!!Ignored construct:  # TheCurve GeomAdaptor_Curve [NewLine] # TheCurve_hxx < GeomAdaptor_Curve . hxx > [NewLine] # Adaptor3d_GenHCurve GeomAdaptor_GHCurve [NewLine] # Adaptor3d_GenHCurve_hxx < GeomAdaptor_GHCurve . hxx > [NewLine] # Handle_Adaptor3d_GenHCurve Handle ( GeomAdaptor_GHCurve ) [NewLine] # < Adaptor3d_GenHCurve . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # Adaptor3d_GenHCurve [NewLine] # Adaptor3d_GenHCurve_hxx [NewLine] # Handle_Adaptor3d_GenHCurve [NewLine] #  _GeomAdaptor_GHCurve_HeaderFile
## Error: did not expect <!!!














































