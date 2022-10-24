import standard_types

##  Created on: 1992-09-28
##  Created by: Ramin BARRETO
##  Copyright (c) 1992-1999 Matra Datavision
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

## ! @file
## ! Support of handling of C signals as C++-style exceptions, and implementation
## ! of C++ exception handling on platforms that do not implement these natively.
## !
## ! The implementation is based on C long jumps.
## !
## ! If macro OCC_CONVERT_SIGNALS is defined, this enables macro OCC_CATCH_SIGNALS
## ! that can be used in the code (often inside try {} blocks) to convert C-style
## ! signals to standard C++ exceptions. This works only when OSD::SetSignal()
## ! is called to set appropriate signal handler. In the case of signal (like
## ! access violation, division by zero, etc.) it will jump to the nearest
## ! OCC_CATCH_SIGNALS in the call stack, which will then throw a C++ exception.
## ! This method is useful for Unix and Linux systems where C++ exceptions
## ! cannot be thrown from C signal handler.
## !
## ! On Windows with MSVC compiler, exceptions can be thrown directly from
## ! signal handler, this OCC_CONVERT_SIGNALS is not needed. Note however that
## ! this requires that compiler option /EHa is used.

discard "forward decl of Standard_Failure"


proc constructStandardErrorHandler*(): StandardErrorHandler {.cdecl, constructor,
    importcpp: "Standard_ErrorHandler(@)", header: "Standard_ErrorHandler.hxx".}
proc destroy*(this: var StandardErrorHandler) {.cdecl, importcpp: "Destroy",
    header: "Standard_ErrorHandler.hxx".}
proc destroyStandardErrorHandler*(this: var StandardErrorHandler) {.cdecl,
    importcpp: "#.~Standard_ErrorHandler()", header: "Standard_ErrorHandler.hxx".}
proc unlink*(this: var StandardErrorHandler) {.cdecl, importcpp: "Unlink",
    header: "Standard_ErrorHandler.hxx".}
proc catches*(this: var StandardErrorHandler; aType: Handle[StandardType]): bool {.
    cdecl, importcpp: "Catches", header: "Standard_ErrorHandler.hxx".}
proc label*(this: var StandardErrorHandler): var StandardJmpBuf {.cdecl,
    importcpp: "Label", header: "Standard_ErrorHandler.hxx".}
proc error*(this: StandardErrorHandler): Handle[StandardFailure] {.noSideEffect,
    cdecl, importcpp: "Error", header: "Standard_ErrorHandler.hxx".}
proc lastCaughtError*(): Handle[StandardFailure] {.cdecl,
    importcpp: "Standard_ErrorHandler::LastCaughtError(@)", header: "Standard_ErrorHandler.hxx".}
proc isInTryBlock*(): bool {.cdecl,
                          importcpp: "Standard_ErrorHandler::IsInTryBlock(@)",
                          header: "Standard_ErrorHandler.hxx".}


proc registerCallback*(this: var StandardErrorHandlerCallback) {.cdecl,
    importcpp: "RegisterCallback", header: "Standard_ErrorHandler.hxx".}
proc unregisterCallback*(this: var StandardErrorHandlerCallback) {.cdecl,
    importcpp: "UnregisterCallback", header: "Standard_ErrorHandler.hxx".}
proc destroyStandardErrorHandlerCallback*(this: var StandardErrorHandlerCallback) {.
    cdecl, importcpp: "#.~Callback()", header: "Standard_ErrorHandler.hxx".}
proc destroyCallback*(this: var StandardErrorHandlerCallback) {.cdecl,
    importcpp: "DestroyCallback", header: "Standard_ErrorHandler.hxx".}
##  If OCC_CONVERT_SIGNALS is not defined,
##  provide empty inline implementation
##  Definition of the old name "Standard_ErrorHandlerCallback" was kept for compatibility

#type
#  StandardErrorHandlerCallback* = StandardErrorHandlerCallback

