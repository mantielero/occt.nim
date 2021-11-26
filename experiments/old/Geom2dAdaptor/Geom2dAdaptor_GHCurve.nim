##  Created on: 1993-06-03
##  Created by: Bruno DUMORTIER
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

## !!!Ignored construct:  # _Geom2dAdaptor_GHCurve_HeaderFile [NewLine] # _Geom2dAdaptor_GHCurve_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < Geom2dAdaptor_Curve . hxx > [NewLine] # < Adaptor2d_HCurve2d . hxx > [NewLine] class Standard_OutOfRange ;
## Error: expected ';'!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Geom2dAdaptor_Curve"
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Geom2dAdaptor_GHCurve"
## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( Geom2dAdaptor_GHCurve , Adaptor2d_HCurve2d ) class Geom2dAdaptor_GHCurve : public Adaptor2d_HCurve2d { public : ! Creates an empty GenHCurve2d. Geom2dAdaptor_GHCurve ( ) ; ! Creates a GenHCurve2d from a Curve Geom2dAdaptor_GHCurve ( const Geom2dAdaptor_Curve & C ) ; ! Sets the field of the GenHCurve2d. void Set ( const Geom2dAdaptor_Curve & C ) ; ! Returns the curve used to create the GenHCurve2d.
## ! This is redefined from HCurve2d, cannot be inline. const Adaptor2d_Curve2d & Curve2d ( ) const ; ! Returns the curve used to create the GenHCurve. Geom2dAdaptor_Curve & ChangeCurve2d ( ) ; public : typedef Adaptor2d_HCurve2d base_type ; static const char * get_type_name ( ) { return Geom2dAdaptor_GHCurve ; ( Geom2dAdaptor_GHCurve , Adaptor2d_HCurve2d ) } static const Handle ( Standard_Type ) & get_type_descriptor ( ) { return Standard_Type :: Instance < Geom2dAdaptor_GHCurve > ( ) ; } virtual const Handle ( Standard_Type ) & DynamicType ( ) const { return get_type_descriptor ( ) ; } protected : Geom2dAdaptor_Curve myCurve ; private : } ;
## Error: expected ';'!!!

## !!!Ignored construct:  # TheCurve Geom2dAdaptor_Curve [NewLine] # TheCurve_hxx < Geom2dAdaptor_Curve . hxx > [NewLine] # Adaptor2d_GenHCurve2d Geom2dAdaptor_GHCurve [NewLine] # Adaptor2d_GenHCurve2d_hxx < Geom2dAdaptor_GHCurve . hxx > [NewLine] # Handle_Adaptor2d_GenHCurve2d Handle ( Geom2dAdaptor_GHCurve ) [NewLine] # < Adaptor2d_GenHCurve2d . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # Adaptor2d_GenHCurve2d [NewLine] # Adaptor2d_GenHCurve2d_hxx [NewLine] # Handle_Adaptor2d_GenHCurve2d [NewLine] #  _Geom2dAdaptor_GHCurve_HeaderFile
## Error: did not expect <!!!














































