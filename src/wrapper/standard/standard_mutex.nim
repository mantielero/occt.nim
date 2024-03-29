import standard_types

##  Created on: 2005-04-10
##  Created by: Andrey BETENEV
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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

when defined(win32):
  discard
else:
  discard
## *
##  @brief Mutex: a class to synchronize access to shared data.
##
##  This is simple encapsulation of tools provided by the
##  operating system to syncronize access to shared data
##  from threads within one process.
##
##  Current implementation is very simple and straightforward;
##  it is just a wrapper around POSIX pthread librray on UNIX/Linux,
##  and CRITICAL_SECTIONs on Windows NT. It does not provide any
##  advanced functionaly such as recursive calls to the same mutex from
##  within one thread (such call will froze the execution).
##
##  Note that all the methods of that class are made inline, in order
##  to keep maximal performance. This means that a library using the mutex
##  might need to be linked to threads library directly.
##
##  The typical use of this class should be as follows:
##  - create instance of the class Standard_Mutex in the global scope
##    (whenever possible, or as a field of your class)
##  - create instance of class Standard_Mutex::Sentry using that Mutex
##    when entering critical section
##
##  Note that this class provides one feature specific to Open CASCADE:
##  safe unlocking the mutex when signal is raised and converted to OCC
##  exceptions (Note that with current implementation of this functionality
##  on UNIX and Linux, C longjumps are used for that, thus destructors of
##  classes are not called automatically).
##
##  To use this feature, call RegisterCallback() after Lock() or successful
##  TryLock(), and UnregisterCallback() before Unlock() (or use Sentry classes).
##




proc constructStandardMutexSentry*(theMutex: var StandardMutex): StandardMutexSentry {.
    cdecl, constructor, importcpp: "Standard_Mutex::Sentry(@)", header: "Standard_Mutex.hxx".}
proc constructStandardMutexSentry*(theMutex: ptr StandardMutex): StandardMutexSentry {.
    cdecl, constructor, importcpp: "Standard_Mutex::Sentry(@)", header: "Standard_Mutex.hxx".}
proc destroyStandardMutexSentry*(this: var StandardMutexSentry) {.cdecl,
    importcpp: "#.~Sentry()", header: "Standard_Mutex.hxx".}
proc constructStandardMutex*(): StandardMutex {.cdecl, constructor,
    importcpp: "Standard_Mutex(@)", header: "Standard_Mutex.hxx".}
proc destroyStandardMutex*(this: var StandardMutex) {.cdecl,
    importcpp: "#.~Standard_Mutex()", header: "Standard_Mutex.hxx".}
proc lock*(this: var StandardMutex) {.cdecl, importcpp: "Lock", header: "Standard_Mutex.hxx".}
proc tryLock*(this: var StandardMutex): bool {.cdecl, importcpp: "TryLock",
    header: "Standard_Mutex.hxx".}
proc unlock*(this: var StandardMutex) {.cdecl, importcpp: "Unlock", header: "Standard_Mutex.hxx".}
##  Implementation of the method Unlock is inline, since it is
##  just a shortcut to system function

#proc unlock*(this: var StandardMutex) {.cdecl, importcpp: "Unlock", header: "Standard_Mutex.hxx".}
