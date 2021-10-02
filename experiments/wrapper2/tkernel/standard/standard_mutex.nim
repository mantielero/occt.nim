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

type
  Standard_Mutex* {.importcpp: "Standard_Mutex", header: "Standard_Mutex.hxx", bycopy.} = object of Callback ## *
                                                                                                   ##  @brief Simple sentry class providing convenient interface to mutex.
                                                                                                   ##
                                                                                                   ##  Provides automatic locking and unlocking a mutex in its constructor
                                                                                                   ##  and destructor, thus ensuring correct unlock of the mutex even in case of
                                                                                                   ##  raising an exception or signal from the protected code.
                                                                                                   ##
                                                                                                   ##  Create instance of that class when entering critical section.
                                                                                                   ##
                                                                                                   ## ! Constructor: creates a mutex object and initializes it.
                                                                                                   ## ! It is strongly recommended that mutexes were created as
                                                                                                   ## ! static objects whenever possible.
                                                                                                   ## ! Callback method to unlock the mutex if OCC exception or signal is raised
    when (defined(_WIN32) or defined(__WIN32__)):
      discard
    when not (defined(_WIN32) or defined(__WIN32__)):
      discard

  Standard_MutexSentry* {.importcpp: "Standard_Mutex::Sentry",
                         header: "Standard_Mutex.hxx", bycopy.} = object ## ! Constructor - initializes the sentry object by reference to a
                                                                    ## ! mutex (which must be initialized) and locks the mutex immediately
                                                                    ## ! Lock the mutex


proc constructStandard_MutexSentry*(theMutex: var Standard_Mutex): Standard_MutexSentry {.
    cdecl, constructor, importcpp: "Standard_Mutex::Sentry(@)", dynlib: tkernel.}
proc constructStandard_MutexSentry*(theMutex: ptr Standard_Mutex): Standard_MutexSentry {.
    cdecl, constructor, importcpp: "Standard_Mutex::Sentry(@)", dynlib: tkernel.}
proc destroyStandard_MutexSentry*(this: var Standard_MutexSentry) {.cdecl,
    importcpp: "#.~Sentry()", dynlib: tkernel.}
proc constructStandard_Mutex*(): Standard_Mutex {.cdecl, constructor,
    importcpp: "Standard_Mutex(@)", dynlib: tkernel.}
proc destroyStandard_Mutex*(this: var Standard_Mutex) {.cdecl,
    importcpp: "#.~Standard_Mutex()", dynlib: tkernel.}
proc Lock*(this: var Standard_Mutex) {.cdecl, importcpp: "Lock", dynlib: tkernel.}
proc TryLock*(this: var Standard_Mutex): Standard_Boolean {.cdecl,
    importcpp: "TryLock", dynlib: tkernel.}
proc Unlock*(this: var Standard_Mutex) {.cdecl, importcpp: "Unlock", dynlib: tkernel.}
##  Implementation of the method Unlock is inline, since it is
##  just a shortcut to system function

proc Unlock*(this: var Standard_Mutex) {.cdecl, importcpp: "Unlock", dynlib: tkernel.}