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

## !!!Ignored construct:  # _Adaptor2d_HLine2d_HeaderFile [NewLine] # _Adaptor2d_HLine2d_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < Adaptor2d_Line2d . hxx > [NewLine] # < Adaptor2d_HCurve2d . hxx > [NewLine] class Standard_OutOfRange ;
## Error: expected ';'!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Adaptor2d_Line2d"
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Adaptor2d_HLine2d"
## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( Adaptor2d_HLine2d , Adaptor2d_HCurve2d ) class Adaptor2d_HLine2d : public Adaptor2d_HCurve2d { public : ! Creates an empty GenHCurve2d. Adaptor2d_HLine2d ( ) ; ! Creates a GenHCurve2d from a Curve Adaptor2d_HLine2d ( const Adaptor2d_Line2d & C ) ; ! Sets the field of the GenHCurve2d. void Set ( const Adaptor2d_Line2d & C ) ; ! Returns the curve used to create the GenHCurve2d.
## ! This is redefined from HCurve2d, cannot be inline. const Adaptor2d_Curve2d & Curve2d ( ) const ; ! Returns the curve used to create the GenHCurve. Adaptor2d_Line2d & ChangeCurve2d ( ) ; public : typedef Adaptor2d_HCurve2d base_type ; static const char * get_type_name ( ) { return Adaptor2d_HLine2d ; ( Adaptor2d_HLine2d , Adaptor2d_HCurve2d ) } static const Handle ( Standard_Type ) & get_type_descriptor ( ) { return Standard_Type :: Instance < Adaptor2d_HLine2d > ( ) ; } virtual const Handle ( Standard_Type ) & DynamicType ( ) const { return get_type_descriptor ( ) ; } protected : Adaptor2d_Line2d myCurve ; private : } ;
## Error: expected ';'!!!

## !!!Ignored construct:  # TheCurve Adaptor2d_Line2d [NewLine] # TheCurve_hxx < Adaptor2d_Line2d . hxx > [NewLine] # Adaptor2d_GenHCurve2d Adaptor2d_HLine2d [NewLine] # Adaptor2d_GenHCurve2d_hxx < Adaptor2d_HLine2d . hxx > [NewLine] # Handle_Adaptor2d_GenHCurve2d Handle ( Adaptor2d_HLine2d ) [NewLine] # < Adaptor2d_GenHCurve2d . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # Adaptor2d_GenHCurve2d [NewLine] # Adaptor2d_GenHCurve2d_hxx [NewLine] # Handle_Adaptor2d_GenHCurve2d [NewLine] #  _Adaptor2d_HLine2d_HeaderFile
## Error: did not expect <!!!














































