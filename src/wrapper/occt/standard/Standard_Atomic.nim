# /usr/include/opencascade/Standard_Atomic.hxx --> occt/standard/Standard_Atomic.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardatomic = "/usr/include/opencascade/Standard_Atomic.hxx"
proc standardAtomicIncrement*(theValue: ptr cint): cint {.
    importcpp: "Standard_Atomic_Increment(@)", header: headerStandardatomic.}
proc standardAtomicDecrement*(theValue: ptr cint): cint {.
    importcpp: "Standard_Atomic_Decrement(@)", header: headerStandardatomic.}
proc standardAtomicCompareAndSwap*(theValue: ptr cint; theOldValue: cint;
                                  theNewValue: cint): bool {.
    importcpp: "Standard_Atomic_CompareAndSwap(@)", header: headerStandardatomic.}
proc standardAtomicIncrement*(theValue: ptr cint): cint =
  discard

proc standardAtomicDecrement*(theValue: ptr cint): cint =
  discard

proc standardAtomicCompareAndSwap*(theValue: ptr cint; theOldValue: cint;
                                  theNewValue: cint): bool =
  discard
