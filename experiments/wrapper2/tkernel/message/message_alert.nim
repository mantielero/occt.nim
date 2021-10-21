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

discard "forward decl of Message_Alert"
type
  HandleMessageAlert* = Handle[MessageAlert]

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
  MessageAlert* {.importcpp: "Message_Alert", header: "Message_Alert.hxx", bycopy.} = object of StandardTransient ##
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


proc getMessageKey*(this: MessageAlert): cstring {.noSideEffect, cdecl,
    importcpp: "GetMessageKey", dynlib: tkernel.}
proc supportsMerge*(this: MessageAlert): bool {.noSideEffect, cdecl,
    importcpp: "SupportsMerge", dynlib: tkernel.}
proc merge*(this: var MessageAlert; theTarget: Handle[MessageAlert]): bool {.cdecl,
    importcpp: "Merge", dynlib: tkernel.}
proc dumpJson*(this: MessageAlert; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkernel.}
## ! Macro allowing to define simple alert (without data) in single line of code

template define_Simple_Alert*(alert: untyped): void =
  type
    Alert* {.importcpp: "Alert", header: "Message_Alert.hxx", bycopy.} = object of MessageAlert

  type
    AlertbaseType* = MessageAlert
