##  Created on: 1991-09-05
##  Created by: Philippe COICADAN
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

discard "forward decl of Standard_NoSuchObject"
type
  StandardFailure* {.importcpp: "Standard_Failure", header: "Standard_Failure.hxx",
                    bycopy.} = object of StandardTransient ## ! Creates a status object of type "Failure".
                                                      ## ! Used only if standard C++ exceptions are used.
                                                      ## ! Throws exception of the same type as this by C++ throw,
                                                      ## ! and stores current object as last thrown exception,
                                                      ## ! to be accessible by method Caught()


proc constructStandardFailure*(): StandardFailure {.cdecl, constructor,
    importcpp: "Standard_Failure(@)", dynlib: tkernel.}
proc constructStandardFailure*(f: StandardFailure): StandardFailure {.cdecl,
    constructor, importcpp: "Standard_Failure(@)", dynlib: tkernel.}
proc constructStandardFailure*(aString: cstring): StandardFailure {.cdecl,
    constructor, importcpp: "Standard_Failure(@)", dynlib: tkernel.}
proc destroyStandardFailure*(this: var StandardFailure) {.cdecl,
    importcpp: "#.~Standard_Failure()", dynlib: tkernel.}
proc print*(this: StandardFailure; theStream: var StandardOStream) {.noSideEffect,
    cdecl, importcpp: "Print", dynlib: tkernel.}
proc getMessageString*(this: StandardFailure): cstring {.noSideEffect, cdecl,
    importcpp: "GetMessageString", dynlib: tkernel.}
proc setMessageString*(this: var StandardFailure; aMessage: cstring) {.cdecl,
    importcpp: "SetMessageString", dynlib: tkernel.}
proc reraise*(this: var StandardFailure) {.cdecl, importcpp: "Reraise", dynlib: tkernel.}
proc reraise*(this: var StandardFailure; aMessage: cstring) {.cdecl,
    importcpp: "Reraise", dynlib: tkernel.}
proc reraise*(this: var StandardFailure; aReason: StandardSStream) {.cdecl,
    importcpp: "Reraise", dynlib: tkernel.}
proc `raise`*(aMessage: cstring = cstring("")) {.cdecl,
                                   importcpp: "Standard_Failure::Raise(@)",
                                   dynlib: tkernel.}
proc `raise`*(aReason: StandardSStream) {.cdecl,
                                       importcpp: "Standard_Failure::Raise(@)",
                                       dynlib: tkernel.}
proc newInstance*(aMessage: cstring): Handle[StandardFailure] {.cdecl,
    importcpp: "Standard_Failure::NewInstance(@)", dynlib: tkernel.}
proc jump*(this: var StandardFailure) {.cdecl, importcpp: "Jump", dynlib: tkernel.}
proc caught*(): Handle[StandardFailure] {.cdecl, importcpp: "Standard_Failure::Caught(@)",
                                       dynlib: tkernel.}
proc `<<`*(aStream: var StandardOStream; aFailure: Handle[StandardFailure]): var StandardOStream {.
    cdecl, importcpp: "(# << #)", dynlib: tkernel.}
proc `<<`*(aStream: var StandardOStream; aFailure: StandardFailure): var StandardOStream {.
    cdecl, importcpp: "(# << #)", dynlib: tkernel.}