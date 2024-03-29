##  Created on: 2007-09-04
##  Created by: Andrey BETENEV
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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
## ! Implementation of some atomic operations (elementary operations
## ! with data that cannot be interrupted by parallel threads in the
## ! multithread process) on various platforms
## !
## ! By the moment, only operations necessary for reference counter
## ! in Standard_Transient objects are implemented.
## !
## ! This is preffered to use fixed size types "int32_t" / "int64_t" for
## ! correct function declarations however we leave "int" assuming it is 32bits for now.

## ! Increments atomically integer variable pointed by theValue
## ! and returns resulting incremented value.

proc standardAtomicIncrement*(theValue: ptr cint): cint {.cdecl,
    importcpp: "Standard_Atomic_Increment(@)", header: "Standard_Atomic.hxx".}
## ! Decrements atomically integer variable pointed by theValue
## ! and returns resulting decremented value.

proc standardAtomicDecrement*(theValue: ptr cint): cint {.cdecl,
    importcpp: "Standard_Atomic_Decrement(@)", header: "Standard_Atomic.hxx".}
## ! Perform an atomic compare and swap.
## ! That is, if the current value of *theValue is theOldValue, then write theNewValue into *theValue.
## ! @param theValue    pointer to variable to modify
## ! @param theOldValue expected value to perform modification
## ! @param theNewValue new value to set in case if *theValue was equal to theOldValue
## ! @return TRUE if theNewValue has been set to *theValue

proc standardAtomicCompareAndSwap*(theValue: ptr cint; theOldValue: cint;
                                  theNewValue: cint): bool {.cdecl,
    importcpp: "Standard_Atomic_CompareAndSwap(@)", header: "Standard_Atomic.hxx".}
##  Platform-dependent implementation

#when defined(gcc_Have_Sync_Compare_And_Swap_4) or defined(emscripten):
#  ##  gcc explicitly defines the macros __GCC_HAVE_SYNC_COMPARE_AND_SWAP_*
#  ##  starting with version 4.4+, although built-in functions
#  ##  are available since 4.1.x. However unless __GCC_HAVE_SYNC_COMPARE_AND_SWAP_*
#  ##  are defined, linking may fail without specifying -march option when
#  ##  building for 32bit architecture on 64bit (using -m32 option). To avoid
#  ##  making -march mandatory, check for __GCC_HAVE_SYNC_COMPARE_AND_SWAP_* is
#  ##  enforced.
#  proc standardAtomicIncrement*(theValue: ptr cint): cint {.cdecl.} =
#    discard
#
#  proc standardAtomicDecrement*(theValue: ptr cint): cint {.cdecl.} =
#    discard
#
#  proc standardAtomicCompareAndSwap*(theValue: ptr cint; theOldValue: cint;
#                                    theNewValue: cint): bool {.cdecl.} =
#    discard
#
#elif defined(win32):
#  when defined(msc_Ver) and not defined(intel_Compiler):
#    ##  force intrinsic instead of WinAPI calls
#  ##  WinAPI function or MSVC intrinsic
#  ##  Note that we safely cast int* to long*, as they have same size and endian-ness
#  proc standardAtomicIncrement*(theValue: ptr cint): cint {.cdecl.} =
#    discard
#
#  proc standardAtomicDecrement*(theValue: ptr cint): cint {.cdecl.} =
#    discard
#
#  proc standardAtomicCompareAndSwap*(theValue: ptr cint; theOldValue: cint;
#                                    theNewValue: cint): bool {.cdecl.} =
#    discard
#
#elif defined(apple):
#  ##  use atomic operations provided by MacOS
#  proc standardAtomicIncrement*(theValue: ptr cint): cint {.cdecl.} =
#    discard
#
#  proc standardAtomicDecrement*(theValue: ptr cint): cint {.cdecl.} =
#    discard
#
#  proc standardAtomicCompareAndSwap*(theValue: ptr cint; theOldValue: cint;
#                                    theNewValue: cint): bool {.cdecl.} =
#    discard
#
#elif defined(android):
#  ##  Atomic operations that were exported by the C library didn't
#  ##  provide any memory barriers, which created potential issues on
#  ##  multi-core devices. Starting from ndk version r7b they are defined as
#  ##  inlined calls to GCC sync builtins, which always provide a full barrier.
#  ##  It is strongly recommended to use newer versions of ndk.
#  proc standardAtomicIncrement*(theValue: ptr cint): cint {.cdecl.} =
#    discard
#
#  proc standardAtomicDecrement*(theValue: ptr cint): cint {.cdecl.} =
#    discard
#
#  proc standardAtomicCompareAndSwap*(theValue: ptr cint; theOldValue: cint;
#                                    theNewValue: cint): bool {.cdecl.} =
#    discard
#
#else:
#  when not defined(IGNORE_NO_ATOMICS):
#    discard
#  proc standardAtomicIncrement*(theValue: ptr cint): cint {.cdecl.} =
#    discard
#
#  proc standardAtomicDecrement*(theValue: ptr cint): cint {.cdecl.} =
#    discard
#
#  proc standardAtomicCompareAndSwap*(theValue: ptr cint; theOldValue: cint;
#                                    theNewValue: cint): bool {.cdecl.} =
#    discard
  