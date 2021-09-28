##  Created on: 2017-06-26
##  Created by: Andrey Betenev
##  Copyright (c) 2017 OPEN CASCADE SAS
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

## !!!Ignored construct:  # _Message_Alert_HeaderFile [NewLine] # _Message_Alert_HeaderFile [NewLine] # < Standard_Type . hxx > [NewLine] class Message_Alert ;
## Error: expected ';'!!!

## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( Message_Alert , MMgt_TShared ) ! Base class of the hierarchy of classes describing various situations
## ! occurring during execution of some algorithm or procedure.
## !
## ! Alert should provide unique text identifier that can be used to distinguish
## ! particular type of alerts, e.g. to get text message string describing it.
## ! See method GetMessageKey(); by default, dynamic type name is used.
## !
## ! Alert can contain some data. To avoid duplication of data, new alert
## ! can be merged with another one of the same type. Method SupportsMerge()
## ! should return true if merge is supported; method Merge() should do the
## ! merge if possible and return true in that case and false otherwise.
## ! class Message_Alert : public Standard_Transient { public : ! Return a C string to be used as a key for generating text user
## ! messages describing this alert.
## ! The messages are generated with help of Message_Msg class, in
## ! Message_Report::Dump().
## ! Base implementation returns dynamic type name of the instance. virtual Standard_CString GetMessageKey ( ) const ; ! Return true if this type of alert can be merged with other
## ! of the same type to avoid duplication.
## ! Basis implementation returns true. virtual Standard_Boolean SupportsMerge ( ) const ; ! If possible, merge data contained in this alert to theTarget.
## ! @return True if merged.
## ! Base implementation always returns true. virtual Standard_Boolean Merge ( const Handle ( Message_Alert ) & theTarget ) ; ! Dumps the content of me into the stream virtual void DumpJson ( Standard_OStream & theOStream , Standard_Integer theDepth = - 1 ) const ;  OCCT RTTI public : typedef Standard_Transient base_type ; static const char * get_type_name ( ) { return Message_Alert ; } static const Handle ( Standard_Type ) & get_type_descriptor ( ) ; virtual const Handle ( Standard_Type ) & DynamicType ( ) const ; } ;
## Error: expected ';'!!!

## ! Macro allowing to define simple alert (without data) in single line of code

template define_Simple_Alert*(alert: untyped): void =
  type
    Alert* {.importcpp: "Alert", header: "Message_Alert.hxx", bycopy.} = object of MessageAlert

  type
    AlertbaseType* = MessageAlert
  proc getTypeName*(): cstring {.importcpp: "Alert::get_type_name(@)",
                              header: "Message_Alert.hxx".}
  ## !!!Ignored construct:  & get_type_descriptor ( ) { return Standard_Type :: Instance < Alert > ( ) ; } virtual const Handle ( Standard_Type ) & DynamicType ( ) const { return get_type_descriptor ( ) ; } }
  ## Error: identifier expected, but got: &!!!
  











































# # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# # # # # # # # # # # # # # # # # # # # # # # # # # # 

















































