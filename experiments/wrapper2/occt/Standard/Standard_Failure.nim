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
discard "forward decl of Standard_Failure"
discard "forward decl of Standard_Failure"
type
  HandleStandardFailure* = Handle[StandardFailure]

## ! Forms the root of the entire exception hierarchy.

type
  StandardFailure* {.importcpp: "Standard_Failure", header: "Standard_Failure.hxx",
                    bycopy.} = object of StandardTransient ## ! Creates a status object of type "Failure".
                                                      ## ! Used only if standard C++ exceptions are used.
                                                      ## ! Throws exception of the same type as this by C++ throw,
                                                      ## ! and stores current object as last thrown exception,
                                                      ## ! to be accessible by method Caught()


proc constructStandardFailure*(): StandardFailure {.constructor,
    importcpp: "Standard_Failure(@)", header: "Standard_Failure.hxx".}
proc constructStandardFailure*(f: StandardFailure): StandardFailure {.constructor,
    importcpp: "Standard_Failure(@)", header: "Standard_Failure.hxx".}
proc constructStandardFailure*(aString: StandardCString): StandardFailure {.
    constructor, importcpp: "Standard_Failure(@)", header: "Standard_Failure.hxx".}
proc destroyStandardFailure*(this: var StandardFailure) {.
    importcpp: "#.~Standard_Failure()", header: "Standard_Failure.hxx".}
proc print*(this: StandardFailure; theStream: var StandardOStream) {.noSideEffect,
    importcpp: "Print", header: "Standard_Failure.hxx".}
proc getMessageString*(this: StandardFailure): StandardCString {.noSideEffect,
    importcpp: "GetMessageString", header: "Standard_Failure.hxx".}
proc setMessageString*(this: var StandardFailure; aMessage: StandardCString) {.
    importcpp: "SetMessageString", header: "Standard_Failure.hxx".}
proc reraise*(this: var StandardFailure) {.importcpp: "Reraise",
                                       header: "Standard_Failure.hxx".}
proc reraise*(this: var StandardFailure; aMessage: StandardCString) {.
    importcpp: "Reraise", header: "Standard_Failure.hxx".}
proc reraise*(this: var StandardFailure; aReason: StandardSStream) {.
    importcpp: "Reraise", header: "Standard_Failure.hxx".}
proc `raise`*(aMessage: StandardCString = "") {.
    importcpp: "Standard_Failure::Raise(@)", header: "Standard_Failure.hxx".}
proc `raise`*(aReason: StandardSStream) {.importcpp: "Standard_Failure::Raise(@)",
                                       header: "Standard_Failure.hxx".}
proc newInstance*(aMessage: StandardCString): Handle[StandardFailure] {.
    importcpp: "Standard_Failure::NewInstance(@)", header: "Standard_Failure.hxx".}
proc jump*(this: var StandardFailure) {.importcpp: "Jump",
                                    header: "Standard_Failure.hxx".}
## !!!Ignored construct:  ! Returns the last caught exception.
## ! Needed when exceptions are emulated by C longjumps,
## ! in other cases is also provided for compatibility. Standard_DEPRECATED ( This method is deprecated (not thread-safe), use standard C++ mechanism instead ) static opencascade :: handle < Standard_Failure > [end of template] Caught ( ) ;
## Error: identifier expected, but got: This method is deprecated (not thread-safe), use standard C++ mechanism instead!!!

type
  StandardFailurebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Standard_Failure::get_type_name(@)",
                            header: "Standard_Failure.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Standard_Failure::get_type_descriptor(@)",
    header: "Standard_Failure.hxx".}
proc dynamicType*(this: StandardFailure): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Standard_Failure.hxx".}
proc `<<`*(aStream: var StandardOStream; aFailure: Handle[StandardFailure]): var StandardOStream {.
    importcpp: "(# << #)", header: "Standard_Failure.hxx".}
proc `<<`*(aStream: var StandardOStream; aFailure: StandardFailure): var StandardOStream {.
    importcpp: "(# << #)", header: "Standard_Failure.hxx".}
