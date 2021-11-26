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

## !!!Ignored construct:  # _GeomAdaptor_GHSurface_HeaderFile [NewLine] # _GeomAdaptor_GHSurface_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < GeomAdaptor_Surface . hxx > [NewLine] # < Adaptor3d_HSurface . hxx > [NewLine] class Standard_OutOfRange ;
## Error: expected ';'!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of GeomAdaptor_Surface"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of GeomAdaptor_GHSurface"
## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( GeomAdaptor_GHSurface , Adaptor3d_HSurface ) class GeomAdaptor_GHSurface : public Adaptor3d_HSurface { public : ! Creates an empty GenHSurface. GeomAdaptor_GHSurface ( ) ; ! Creates a GenHSurface from a Surface. GeomAdaptor_GHSurface ( const GeomAdaptor_Surface & S ) ; ! Sets the field of the GenHSurface. void Set ( const GeomAdaptor_Surface & S ) ; ! Returns a reference to the Surface inside the HSurface.
## ! This is redefined from HSurface, cannot be inline. const Adaptor3d_Surface & Surface ( ) const ; ! Returns the surface used to create the GenHSurface. GeomAdaptor_Surface & ChangeSurface ( ) ; public : typedef Adaptor3d_HSurface base_type ; static const char * get_type_name ( ) { return GeomAdaptor_GHSurface ; ( GeomAdaptor_GHSurface , Adaptor3d_HSurface ) } static const Handle ( Standard_Type ) & get_type_descriptor ( ) { return Standard_Type :: Instance < GeomAdaptor_GHSurface > ( ) ; } virtual const Handle ( Standard_Type ) & DynamicType ( ) const { return get_type_descriptor ( ) ; } protected : GeomAdaptor_Surface mySurf ; private : } ;
## Error: expected ';'!!!

## !!!Ignored construct:  # TheSurface GeomAdaptor_Surface [NewLine] # TheSurface_hxx < GeomAdaptor_Surface . hxx > [NewLine] # Adaptor3d_GenHSurface GeomAdaptor_GHSurface [NewLine] # Adaptor3d_GenHSurface_hxx < GeomAdaptor_GHSurface . hxx > [NewLine] # Handle_Adaptor3d_GenHSurface Handle ( GeomAdaptor_GHSurface ) [NewLine] # < Adaptor3d_GenHSurface . lxx > [NewLine] # TheSurface [NewLine] # TheSurface_hxx [NewLine] # Adaptor3d_GenHSurface [NewLine] # Adaptor3d_GenHSurface_hxx [NewLine] # Handle_Adaptor3d_GenHSurface [NewLine] #  _GeomAdaptor_GHSurface_HeaderFile
## Error: did not expect <!!!














































