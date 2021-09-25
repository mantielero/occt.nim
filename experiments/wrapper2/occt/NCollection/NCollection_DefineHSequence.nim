##  Created on: 2001-01-29
##  Created by: Alexander GRIGORIEV
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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
##             Automatically created from NCollection_HSequence.hxx by GAWK

## !!!Ignored construct:  # NCollection_DefineHSequence_HeaderFile [NewLine] # NCollection_DefineHSequence_HeaderFile [NewLine] # < Standard_Type . hxx > [NewLine] # < NCollection_DefineSequence . hxx > [NewLine] # < Standard_Transient . hxx > [NewLine]       Declaration of Sequence class managed by Handle # DEFINE_HSEQUENCE ( HClassName , _SequenceType_ ) class HClassName : public _SequenceType_ , public Standard_Transient { public : HClassName ( ) { } HClassName ( const _SequenceType_ & theOther ) : _SequenceType_ ( theOther ) { } const _SequenceType_ & Sequence ( ) const { return * this ; } void Append ( const _SequenceType_ :: value_type & theItem ) { _SequenceType_ :: Append ( theItem ) ; } void Append ( _SequenceType_ & theSequence ) { _SequenceType_ :: Append ( theSequence ) ; } _SequenceType_ & ChangeSequence ( ) { return * this ; } template < class T > [end of template] void Append ( const opencascade :: handle < T > [end of template] & theOther , typename opencascade :: std :: enable_if < opencascade :: std :: is_base_of < HClassName , T > :: value > :: type * = 0 ) { _SequenceType_ :: Append ( theOther -> ChangeSequence ( ) ) ; } public : typedef Standard_Transient base_type ; static const char * get_type_name ( ) { return HClassName ; ( HClassName , Standard_Transient ) } static const opencascade :: handle < Standard_Type > [end of template] & get_type_descriptor ( ) { return Standard_Type :: Instance < HClassName > [end of template] ( ) ; } virtual const opencascade :: handle < Standard_Type > [end of template] & DynamicType ( ) const { return get_type_descriptor ( ) ; } } ;
## Error: did not expect [NewLine]!!!

discard "forward decl of HClassName"
type
  HandleHClassNameHClassName* = Handle[HClassName]

## !!!Ignored construct:  [NewLine] # IMPLEMENT_HSEQUENCE ( HClassName ) [NewLine] # [NewLine]
## Error: did not expect [NewLine]!!!

