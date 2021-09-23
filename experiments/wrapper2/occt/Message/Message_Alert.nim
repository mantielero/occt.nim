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

import
  ../Standard/Standard_Type

discard "forward decl of Message_Alert"
discard "forward decl of Message_Alert"
type
  Handle_Message_Alert* = handle[Message_Alert]

## ! Base class of the hierarchy of classes describing various situations
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
## !

type
  Message_Alert* {.importcpp: "Message_Alert", header: "Message_Alert.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                          ## !
                                                                                                          ## Return
                                                                                                          ## a
                                                                                                          ## C
                                                                                                          ## string
                                                                                                          ## to
                                                                                                          ## be
                                                                                                          ## used
                                                                                                          ## as
                                                                                                          ## a
                                                                                                          ## key
                                                                                                          ## for
                                                                                                          ## generating
                                                                                                          ## text
                                                                                                          ## user
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## messages
                                                                                                          ## describing
                                                                                                          ## this
                                                                                                          ## alert.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## The
                                                                                                          ## messages
                                                                                                          ## are
                                                                                                          ## generated
                                                                                                          ## with
                                                                                                          ## help
                                                                                                          ## of
                                                                                                          ## Message_Msg
                                                                                                          ## class,
                                                                                                          ## in
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Message_Report::Dump().
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Base
                                                                                                          ## implementation
                                                                                                          ## returns
                                                                                                          ## dynamic
                                                                                                          ## type
                                                                                                          ## name
                                                                                                          ## of
                                                                                                          ## the
                                                                                                          ## instance.


proc GetMessageKey*(this: Message_Alert): Standard_CString {.noSideEffect,
    importcpp: "GetMessageKey", header: "Message_Alert.hxx".}
proc SupportsMerge*(this: Message_Alert): Standard_Boolean {.noSideEffect,
    importcpp: "SupportsMerge", header: "Message_Alert.hxx".}
proc Merge*(this: var Message_Alert; theTarget: handle[Message_Alert]): Standard_Boolean {.
    importcpp: "Merge", header: "Message_Alert.hxx".}
proc DumpJson*(this: Message_Alert; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Message_Alert.hxx".}
type
  Message_Alertbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Message_Alert::get_type_name(@)",
                              header: "Message_Alert.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Message_Alert::get_type_descriptor(@)",
    header: "Message_Alert.hxx".}
proc DynamicType*(this: Message_Alert): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Message_Alert.hxx".}
## ! Macro allowing to define simple alert (without data) in single line of code

template DEFINE_SIMPLE_ALERT*(Alert: untyped): void =
  type
    Alert* {.importcpp: "Alert", header: "Message_Alert.hxx", bycopy.} = object of Message_Alert

  type
    Alertbase_type* = Message_Alert
  proc get_type_name*(): cstring {.importcpp: "Alert::get_type_name(@)",
                                header: "Message_Alert.hxx".}
  proc get_type_descriptor*(): handle[Standard_Type] {.
      importcpp: "Alert::get_type_descriptor(@)", header: "Message_Alert.hxx".}
  proc DynamicType*(this: Alert): handle[Standard_Type] {.noSideEffect,
      importcpp: "DynamicType", header: "Message_Alert.hxx".}
  