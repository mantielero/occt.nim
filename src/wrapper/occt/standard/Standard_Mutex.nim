# /usr/include/opencascade/Standard_Mutex.hxx --> occt/standard/Standard_Mutex.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardmutex = "/usr/include/opencascade/Standard_Mutex.hxx"
type
  StandardMutex* {.importcpp: "Standard_Mutex", header: headerStandardmutex, bycopy.} = object of Callback

  StandardMutexSentry* {.importcpp: "Standard_Mutex::Sentry",
                        header: headerStandardmutex, bycopy.} = object


proc constructStandardMutexSentry*(theMutex: var StandardMutex): StandardMutexSentry {.
    constructor, importcpp: "Standard_Mutex::Sentry(@)",
    header: headerStandardmutex.}
proc constructStandardMutexSentry*(theMutex: ptr StandardMutex): StandardMutexSentry {.
    constructor, importcpp: "Standard_Mutex::Sentry(@)",
    header: headerStandardmutex.}
proc destroyStandardMutexSentry*(this: var StandardMutexSentry) {.
    importcpp: "#.~Sentry()", header: headerStandardmutex.}
proc constructStandardMutex*(): StandardMutex {.constructor,
    importcpp: "Standard_Mutex(@)", header: headerStandardmutex.}
proc destroyStandardMutex*(this: var StandardMutex) {.
    importcpp: "#.~Standard_Mutex()", header: headerStandardmutex.}
proc lock*(this: var StandardMutex) {.importcpp: "Lock", header: headerStandardmutex.}
proc tryLock*(this: var StandardMutex): StandardBoolean {.importcpp: "TryLock",
    header: headerStandardmutex.}
proc unlock*(this: var StandardMutex) {.importcpp: "Unlock",
                                    header: headerStandardmutex.}
proc unlock*(this: var StandardMutex) {.importcpp: "Unlock",
                                    header: headerStandardmutex.}