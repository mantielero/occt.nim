when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

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


proc constructStandard_Failure*(): Standard_Failure {.cdecl, constructor,
    importcpp: "Standard_Failure(@)", dynlib: tkernel.}
proc constructStandard_Failure*(f: Standard_Failure): Standard_Failure {.cdecl,
    constructor, importcpp: "Standard_Failure(@)", dynlib: tkernel.}
proc constructStandard_Failure*(aString: Standard_CString): Standard_Failure {.
    cdecl, constructor, importcpp: "Standard_Failure(@)", dynlib: tkernel.}
proc destroyStandard_Failure*(this: var Standard_Failure) {.cdecl,
    importcpp: "#.~Standard_Failure()", dynlib: tkernel.}
proc Print*(this: Standard_Failure; theStream: var Standard_OStream) {.noSideEffect,
    cdecl, importcpp: "Print", dynlib: tkernel.}
proc GetMessageString*(this: Standard_Failure): Standard_CString {.noSideEffect,
    cdecl, importcpp: "GetMessageString", dynlib: tkernel.}
proc SetMessageString*(this: var Standard_Failure; aMessage: Standard_CString) {.
    cdecl, importcpp: "SetMessageString", dynlib: tkernel.}
proc Reraise*(this: var Standard_Failure) {.cdecl, importcpp: "Reraise",
                                        dynlib: tkernel.}
proc Reraise*(this: var Standard_Failure; aMessage: Standard_CString) {.cdecl,
    importcpp: "Reraise", dynlib: tkernel.}
proc Reraise*(this: var Standard_Failure; aReason: Standard_SStream) {.cdecl,
    importcpp: "Reraise", dynlib: tkernel.}
proc Raise*(aMessage: Standard_CString = "") {.cdecl,
    importcpp: "Standard_Failure::Raise(@)", dynlib: tkernel.}
proc Raise*(aReason: Standard_SStream) {.cdecl,
                                      importcpp: "Standard_Failure::Raise(@)",
                                      dynlib: tkernel.}
proc NewInstance*(aMessage: Standard_CString): handle[Standard_Failure] {.cdecl,
    importcpp: "Standard_Failure::NewInstance(@)", dynlib: tkernel.}
proc Jump*(this: var Standard_Failure) {.cdecl, importcpp: "Jump", dynlib: tkernel.}
proc Caught*(): handle[Standard_Failure] {.cdecl, importcpp: "Standard_Failure::Caught(@)",
                                        dynlib: tkernel.}
proc `<<`*(AStream: var Standard_OStream; AFailure: handle[Standard_Failure]): var Standard_OStream {.
    cdecl, importcpp: "(# << #)", dynlib: tkernel.}
proc `<<`*(AStream: var Standard_OStream; AFailure: Standard_Failure): var Standard_OStream {.
    cdecl, importcpp: "(# << #)", dynlib: tkernel.}