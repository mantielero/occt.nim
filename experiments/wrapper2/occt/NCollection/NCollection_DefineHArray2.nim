##  Created on: 2002-04-29
##  Created by: Alexander KARTOMIN (akm)
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
##             Automatically created from NCollection_HArray2.hxx by GAWK

## !!!Ignored construct:  # NCollection_DefineHArray2_HeaderFile [NewLine] # NCollection_DefineHArray2_HeaderFile [NewLine] # < Standard_Type . hxx > [NewLine] # < NCollection_DefineArray2 . hxx > [NewLine] # < Standard_Transient . hxx > [NewLine]       Declaration of Array2 class managed by Handle # DEFINE_HARRAY2 ( HClassName , _Array2Type_ ) class HClassName : public _Array2Type_ , public Standard_Transient { public : HClassName ( const Standard_Integer theRowLow , const Standard_Integer theRowUpp , const Standard_Integer theColLow , const Standard_Integer theColUpp ) : _Array2Type_ ( theRowLow , theRowUpp , theColLow , theColUpp ) { } HClassName ( const Standard_Integer theRowLow , const Standard_Integer theRowUpp , const Standard_Integer theColLow , const Standard_Integer theColUpp , const _Array2Type_ :: value_type & theValue ) : _Array2Type_ ( theRowLow , theRowUpp , theColLow , theColUpp ) { Init ( theValue ) ; } HClassName ( const _Array2Type_ & theOther ) : _Array2Type_ ( theOther ) { } const _Array2Type_ & Array2 ( ) const { return * this ; } _Array2Type_ & ChangeArray2 ( ) { return * this ; } public : typedef Standard_Transient base_type ; static const char * get_type_name ( ) { return HClassName ; ( HClassName , Standard_Transient ) } static const opencascade :: handle < Standard_Type > [end of template] & get_type_descriptor ( ) { return Standard_Type :: Instance < HClassName > [end of template] ( ) ; } virtual const opencascade :: handle < Standard_Type > [end of template] & DynamicType ( ) const { return get_type_descriptor ( ) ; } } ;
## Error: did not expect [NewLine]!!!

discard "forward decl of HClassName"
type
  HandleHClassNameHClassName* = Handle[HClassName]

## !!!Ignored construct:  [NewLine] # IMPLEMENT_HARRAY2 ( HClassName ) [NewLine] # [NewLine]
## Error: did not expect [NewLine]!!!

