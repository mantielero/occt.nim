import message_types

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




proc getMessageKey*(this: MessageAlert): cstring {.noSideEffect, cdecl,
    importcpp: "GetMessageKey", header: "Message_Alert.hxx".}
proc supportsMerge*(this: MessageAlert): bool {.noSideEffect, cdecl,
    importcpp: "SupportsMerge", header: "Message_Alert.hxx".}
proc merge*(this: var MessageAlert; theTarget: Handle[MessageAlert]): bool {.cdecl,
    importcpp: "Merge", header: "Message_Alert.hxx".}
proc dumpJson*(this: MessageAlert; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Message_Alert.hxx".}
## ! Macro allowing to define simple alert (without data) in single line of code

template define_Simple_Alert*(alert: untyped): void =
  type
    Alert* {.importcpp: "Alert", header: "Message_Alert.hxx", bycopy.} = object of MessageAlert

  type
    AlertbaseType* = MessageAlert

