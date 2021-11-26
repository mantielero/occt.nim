##  Created on: 2013-07-15
##  Created by: Anton POLETAEV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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

## !!!Ignored construct:  # _Graphic3d_SequenceOfHClipPlane_HeaderFile [NewLine] # _Graphic3d_SequenceOfHClipPlane_HeaderFile [NewLine] # < NCollection_Sequence . hxx > [NewLine] # < Graphic3d_ClipPlane . hxx > [NewLine] ! Class defines a Clipping Volume as a logical OR (disjunction) operation between Graphic3d_ClipPlane in sequence.
## ! Each Graphic3d_ClipPlane represents either a single Plane clipping a halfspace (direction is specified by normal),
## ! or a sub-chain of planes defining a logical AND (conjunction) operation.
## ! Therefore, this collection allows defining a Clipping Volume through the limited set of Boolean operations between clipping Planes.
## !
## ! The Clipping Volume can be assigned either to entire View or to a specific Object;
## ! in the latter case property ToOverrideGlobal() will specify if Object planes should override (suppress) globally defined ones
## ! or extend their definition through logical OR (disjunction) operation.
## !
## ! Note that defining (many) planes will lead to performance degradation, and Graphics Driver may limit
## ! the overall number of simultaneously active clipping planes - but at least 6 planes should be supported on all configurations. class Graphic3d_SequenceOfHClipPlane : public Standard_Transient { public : typedef Standard_Transient base_type ; static const char * get_type_name ( ) { return Graphic3d_SequenceOfHClipPlane ; } static const Handle ( Standard_Type ) & get_type_descriptor ( ) ; virtual const Handle ( Standard_Type ) & DynamicType ( ) const ; public : ! Iterator through clipping planes. class Iterator : public NCollection_Sequence < Handle ( Graphic3d_ClipPlane ) > [end of template] :: Iterator { public : Iterator ( ) { } Iterator ( const Graphic3d_SequenceOfHClipPlane & thePlanes ) : NCollection_Sequence < Handle ( Graphic3d_ClipPlane ) > [end of template] :: Iterator ( thePlanes . myItems ) { } Iterator ( const Handle ( Graphic3d_SequenceOfHClipPlane ) & thePlanes ) { Init ( thePlanes ) ; } void Init ( const Graphic3d_SequenceOfHClipPlane & thePlanes ) { NCollection_Sequence < Handle ( Graphic3d_ClipPlane ) > :: Iterator :: Init ( thePlanes . myItems ) ; } void Init ( const Handle ( Graphic3d_SequenceOfHClipPlane ) & thePlanes ) { if ( ! thePlanes . IsNull ( ) ) { NCollection_Sequence < Handle ( Graphic3d_ClipPlane ) > :: Iterator :: Init ( thePlanes -> myItems ) ; } else { * this = Iterator ( ) ; } } } ; public : ! Empty constructor. Graphic3d_SequenceOfHClipPlane ( ) ; ! Return true if local properties should override global properties. Standard_Boolean ToOverrideGlobal ( ) const { return myToOverrideGlobal ; } ! Setup flag defining if local properties should override global properties. void SetOverrideGlobal ( const Standard_Boolean theToOverride ) { myToOverrideGlobal = theToOverride ; } ! Return TRUE if sequence is empty. bool IsEmpty ( ) const { return myItems . IsEmpty ( ) ; } ! Return the number of items in sequence. Standard_Integer Size ( ) const { return myItems . Size ( ) ; } ! Append a plane.
## ! @return TRUE if new item has been added (FALSE if item already existed) bool Append ( const Handle ( Graphic3d_ClipPlane ) & theItem ) ; ! Remove a plane.
## ! @return TRUE if item has been found and removed bool Remove ( const Handle ( Graphic3d_ClipPlane ) & theItem ) ; ! Remove a plane. void Remove ( Iterator & theItem ) { myItems . Remove ( theItem ) ; } ! Clear the items out. void Clear ( ) { myItems . Clear ( ) ; } ! Return the first item in sequence. const Handle ( Graphic3d_ClipPlane ) & First ( ) const { return myItems . First ( ) ; } ! Dumps the content of me into the stream virtual void DumpJson ( Standard_OStream & theOStream , Standard_Integer theDepth = - 1 ) const ; protected : NCollection_Sequence < Handle ( Graphic3d_ClipPlane ) > [end of template] myItems ; Standard_Boolean myToOverrideGlobal ; } ;
## Error: expected ';'!!!

## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( Graphic3d_SequenceOfHClipPlane , Standard_Transient ) #  _Graphic3d_SequenceOfHClipPlane_HeaderFile
## Error: expected ';'!!!














































