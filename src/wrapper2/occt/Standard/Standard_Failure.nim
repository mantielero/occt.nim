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

import
  Standard, Standard_Type, Standard_CString, Standard_Transient, Standard_OStream,
  Standard_SStream

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_Failure"
discard "forward decl of Standard_Failure"
type
  Handle_Standard_Failure* = handle[Standard_Failure]

## ! Forms the root of the entire exception hierarchy.

type
  Standard_Failure* {.importcpp: "Standard_Failure",
                     header: "Standard_Failure.hxx", bycopy.} = object of Standard_Transient ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## a
                                                                                      ## status
                                                                                      ## object
                                                                                      ## of
                                                                                      ## type
                                                                                      ## "Failure".
                                                                                      ##
                                                                                      ## !
                                                                                      ## Used
                                                                                      ## only
                                                                                      ## if
                                                                                      ## standard
                                                                                      ## C++
                                                                                      ## exceptions
                                                                                      ## are
                                                                                      ## used.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Throws
                                                                                      ## exception
                                                                                      ## of
                                                                                      ## the
                                                                                      ## same
                                                                                      ## type
                                                                                      ## as
                                                                                      ## this
                                                                                      ## by
                                                                                      ## C++
                                                                                      ## throw,
                                                                                      ##
                                                                                      ## !
                                                                                      ## and
                                                                                      ## stores
                                                                                      ## current
                                                                                      ## object
                                                                                      ## as
                                                                                      ## last
                                                                                      ## thrown
                                                                                      ## exception,
                                                                                      ##
                                                                                      ## !
                                                                                      ## to
                                                                                      ## be
                                                                                      ## accessible
                                                                                      ## by
                                                                                      ## method
                                                                                      ## Caught()


proc constructStandard_Failure*(): Standard_Failure {.constructor,
    importcpp: "Standard_Failure(@)", header: "Standard_Failure.hxx".}
proc constructStandard_Failure*(f: Standard_Failure): Standard_Failure {.
    constructor, importcpp: "Standard_Failure(@)", header: "Standard_Failure.hxx".}
proc constructStandard_Failure*(aString: Standard_CString): Standard_Failure {.
    constructor, importcpp: "Standard_Failure(@)", header: "Standard_Failure.hxx".}
proc destroyStandard_Failure*(this: var Standard_Failure) {.
    importcpp: "#.~Standard_Failure()", header: "Standard_Failure.hxx".}
proc Print*(this: Standard_Failure; theStream: var Standard_OStream) {.noSideEffect,
    importcpp: "Print", header: "Standard_Failure.hxx".}
proc GetMessageString*(this: Standard_Failure): Standard_CString {.noSideEffect,
    importcpp: "GetMessageString", header: "Standard_Failure.hxx".}
proc SetMessageString*(this: var Standard_Failure; aMessage: Standard_CString) {.
    importcpp: "SetMessageString", header: "Standard_Failure.hxx".}
proc Reraise*(this: var Standard_Failure) {.importcpp: "Reraise",
                                        header: "Standard_Failure.hxx".}
proc Reraise*(this: var Standard_Failure; aMessage: Standard_CString) {.
    importcpp: "Reraise", header: "Standard_Failure.hxx".}
proc Reraise*(this: var Standard_Failure; aReason: Standard_SStream) {.
    importcpp: "Reraise", header: "Standard_Failure.hxx".}
proc Raise*(aMessage: Standard_CString = "") {.
    importcpp: "Standard_Failure::Raise(@)", header: "Standard_Failure.hxx".}
proc Raise*(aReason: Standard_SStream) {.importcpp: "Standard_Failure::Raise(@)",
                                      header: "Standard_Failure.hxx".}
proc NewInstance*(aMessage: Standard_CString): handle[Standard_Failure] {.
    importcpp: "Standard_Failure::NewInstance(@)", header: "Standard_Failure.hxx".}
proc Jump*(this: var Standard_Failure) {.importcpp: "Jump",
                                     header: "Standard_Failure.hxx".}
## !!!Ignored construct:  ! Returns the last caught exception.
## ! Needed when exceptions are emulated by C longjumps,
## ! in other cases is also provided for compatibility. Standard_DEPRECATED ( This method is deprecated (not thread-safe), use standard C++ mechanism instead ) static opencascade :: handle < Standard_Failure > [end of template] Caught ( ) ;
## Error: identifier expected, but got: This method is deprecated (not thread-safe), use standard C++ mechanism instead!!!

type
  Standard_Failurebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Standard_Failure::get_type_name(@)",
                              header: "Standard_Failure.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Standard_Failure::get_type_descriptor(@)",
    header: "Standard_Failure.hxx".}
proc DynamicType*(this: Standard_Failure): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Standard_Failure.hxx".}
proc `<<`*(AStream: var Standard_OStream; AFailure: handle[Standard_Failure]): var Standard_OStream {.
    importcpp: "(# << #)", header: "Standard_Failure.hxx".}
proc `<<`*(AStream: var Standard_OStream; AFailure: Standard_Failure): var Standard_OStream {.
    importcpp: "(# << #)", header: "Standard_Failure.hxx".}