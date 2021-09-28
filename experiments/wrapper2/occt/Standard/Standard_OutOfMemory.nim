##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
##  Copyright (c) 1991-1999 Matra Datavision
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

discard "forward decl of Standard_OutOfMemory"
discard "forward decl of Standard_OutOfMemory"
type
  StandardOutOfMemory* {.importcpp: "Standard_OutOfMemory",
                        header: "Standard_OutOfMemory.hxx", bycopy.} = object of StandardProgramError ##
                                                                                               ## !
                                                                                               ## Constructor
                                                                                               ## is
                                                                                               ## kept
                                                                                               ## public
                                                                                               ## for
                                                                                               ## backward
                                                                                               ## compatibility



  HandleStandardOutOfMemory* = Handle[StandardOutOfMemory]

when not defined(noException) and not defined(noStandardOutOfMemory):
  template standardOutOfMemoryRaiseIf*(condition, message: untyped): void =
    if condition:
      proc standardOutOfMemory*(a1: Message): Throw {.
          importcpp: "Standard_OutOfMemory(@)", header: "Standard_OutOfMemory.hxx".}

else:
  discard
## ! Standard_OutOfMemory exception is defined explicitly and not by
## ! macro DEFINE_STANDARD_EXCEPTION, to avoid necessity of dynamic
## ! memory allocations during throwing and stack unwinding:
## !
## ! - method NewInstance() returns static instance (singleton)
## ! - method Raise() raises copy of that singleton, resetting
## !   its message string
## ! - message string is stored as field, not allocated dynamically
## !   (storable message length is limited by buffer size)
## !
## ! The reason is that in out-of-memory condition any memory allocation can
## ! fail, thus use of operator new for allocation of new exception instance
## ! is dangerous (can cause recursion until stack overflow, see #24836).

#[
proc constructStandardOutOfMemory*(theMessage: StandardCString = 0): StandardOutOfMemory {.
    constructor, importcpp: "Standard_OutOfMemory(@)",
    header: "Standard_OutOfMemory.hxx".}
proc getMessageString*(this: StandardOutOfMemory): StandardCString {.noSideEffect,
    importcpp: "GetMessageString", header: "Standard_OutOfMemory.hxx".}
proc setMessageString*(this: var StandardOutOfMemory; aMessage: StandardCString) {.
    importcpp: "SetMessageString", header: "Standard_OutOfMemory.hxx".}
]#
#[
proc `raise`*(theMessage: StandardCString = "") {.
    importcpp: "Standard_OutOfMemory::Raise(@)",
    header: "Standard_OutOfMemory.hxx".}
proc `raise`*(theMessage: var StandardSStream) {.
    importcpp: "Standard_OutOfMemory::Raise(@)",
    header: "Standard_OutOfMemory.hxx".}
proc newInstance*(theMessage: StandardCString = ""): Handle[StandardOutOfMemory] {.
    importcpp: "Standard_OutOfMemory::NewInstance(@)",
    header: "Standard_OutOfMemory.hxx".}
type
  StandardOutOfMemorybaseType* = StandardProgramError

proc getTypeName*(): cstring {.importcpp: "Standard_OutOfMemory::get_type_name(@)",
                            header: "Standard_OutOfMemory.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Standard_OutOfMemory::get_type_descriptor(@)",
    header: "Standard_OutOfMemory.hxx".}
proc dynamicType*(this: StandardOutOfMemory): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Standard_OutOfMemory.hxx".}
]#