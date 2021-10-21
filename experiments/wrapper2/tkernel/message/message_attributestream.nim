##  Copyright (c) 2020 OPEN CASCADE SAS
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

## ! Alert object storing stream value

type
  MessageAttributeStream* {.importcpp: "Message_AttributeStream",
                           header: "Message_AttributeStream.hxx", bycopy.} = object of MessageAttribute ##
                                                                                                 ## !
                                                                                                 ## Constructor
                                                                                                 ## with
                                                                                                 ## string
                                                                                                 ## argument
    ## !< container of values


proc newMessageAttributeStream*(theStream: StandardSStream; theName: TCollectionAsciiString = TCollectionAsciiString()): MessageAttributeStream {.
    cdecl, constructor, importcpp: "Message_AttributeStream(@)", dynlib: tkernel.}
proc stream*(this: MessageAttributeStream): StandardSStream {.noSideEffect, cdecl,
    importcpp: "Stream", dynlib: tkernel.}
proc setStream*(this: var MessageAttributeStream; theStream: StandardSStream) {.cdecl,
    importcpp: "SetStream", dynlib: tkernel.}
proc dumpJson*(this: MessageAttributeStream; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkernel.}