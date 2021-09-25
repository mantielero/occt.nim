##  Copyright (c) 2017 OPEN CASCADE SAS
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

discard "forward decl of StdStorage_BucketOfPersistent"
discard "forward decl of StdStorage_BucketIterator"
discard "forward decl of StdObjMgt_Persistent"
type
  StdStorageBucket* {.importcpp: "StdStorage_Bucket",
                     header: "StdStorage_BacketOfPersistent.hxx", bycopy.} = object


proc constructStdStorageBucket*(): StdStorageBucket {.constructor,
    importcpp: "StdStorage_Bucket(@)", header: "StdStorage_BacketOfPersistent.hxx".}
proc constructStdStorageBucket*(theSpaceSize: int): StdStorageBucket {.constructor,
    importcpp: "StdStorage_Bucket(@)", header: "StdStorage_BacketOfPersistent.hxx".}
proc clear*(this: var StdStorageBucket) {.importcpp: "Clear", header: "StdStorage_BacketOfPersistent.hxx".}
proc destroyStdStorageBucket*(this: var StdStorageBucket) {.
    importcpp: "#.~StdStorage_Bucket()",
    header: "StdStorage_BacketOfPersistent.hxx".}
type
  StdStorageBucketOfPersistent* {.importcpp: "StdStorage_BucketOfPersistent",
                                 header: "StdStorage_BacketOfPersistent.hxx",
                                 bycopy.} = object


proc constructStdStorageBucketOfPersistent*(theBucketSize: int = 300000;
    theBucketNumber: int = 100): StdStorageBucketOfPersistent {.constructor,
    importcpp: "StdStorage_BucketOfPersistent(@)",
    header: "StdStorage_BacketOfPersistent.hxx".}
proc length*(this: StdStorageBucketOfPersistent): int {.noSideEffect,
    importcpp: "Length", header: "StdStorage_BacketOfPersistent.hxx".}
proc append*(this: var StdStorageBucketOfPersistent; sp: Handle[StdObjMgtPersistent]) {.
    importcpp: "Append", header: "StdStorage_BacketOfPersistent.hxx".}
proc value*(this: var StdStorageBucketOfPersistent; theIndex: int): ptr StdObjMgtPersistent {.
    importcpp: "Value", header: "StdStorage_BacketOfPersistent.hxx".}
proc clear*(this: var StdStorageBucketOfPersistent) {.importcpp: "Clear",
    header: "StdStorage_BacketOfPersistent.hxx".}
proc destroyStdStorageBucketOfPersistent*(this: var StdStorageBucketOfPersistent) {.
    importcpp: "#.~StdStorage_BucketOfPersistent()",
    header: "StdStorage_BacketOfPersistent.hxx".}
type
  StdStorageBucketIterator* {.importcpp: "StdStorage_BucketIterator",
                             header: "StdStorage_BacketOfPersistent.hxx", bycopy.} = object


proc constructStdStorageBucketIterator*(a1: ptr StdStorageBucketOfPersistent): StdStorageBucketIterator {.
    constructor, importcpp: "StdStorage_BucketIterator(@)",
    header: "StdStorage_BacketOfPersistent.hxx".}
proc init*(this: var StdStorageBucketIterator; a2: ptr StdStorageBucketOfPersistent) {.
    importcpp: "Init", header: "StdStorage_BacketOfPersistent.hxx".}
proc reset*(this: var StdStorageBucketIterator) {.importcpp: "Reset",
    header: "StdStorage_BacketOfPersistent.hxx".}
proc value*(this: StdStorageBucketIterator): ptr StdObjMgtPersistent {.noSideEffect,
    importcpp: "Value", header: "StdStorage_BacketOfPersistent.hxx".}
proc more*(this: StdStorageBucketIterator): bool {.noSideEffect, importcpp: "More",
    header: "StdStorage_BacketOfPersistent.hxx".}
proc next*(this: var StdStorageBucketIterator) {.importcpp: "Next",
    header: "StdStorage_BacketOfPersistent.hxx".}
