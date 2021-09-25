##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of Storage_Schema"
discard "forward decl of Storage_BucketOfPersistent"
discard "forward decl of Storage_BucketIterator"
type
  StorageBucket* {.importcpp: "Storage_Bucket",
                  header: "Storage_BucketOfPersistent.hxx", bycopy.} = object


proc constructStorageBucket*(): StorageBucket {.constructor,
    importcpp: "Storage_Bucket(@)", header: "Storage_BucketOfPersistent.hxx".}
proc constructStorageBucket*(theSpaceSize: int): StorageBucket {.constructor,
    importcpp: "Storage_Bucket(@)", header: "Storage_BucketOfPersistent.hxx".}
proc clear*(this: var StorageBucket) {.importcpp: "Clear",
                                   header: "Storage_BucketOfPersistent.hxx".}
proc destroyStorageBucket*(this: var StorageBucket) {.
    importcpp: "#.~Storage_Bucket()", header: "Storage_BucketOfPersistent.hxx".}
type
  StorageBucketOfPersistent* {.importcpp: "Storage_BucketOfPersistent",
                              header: "Storage_BucketOfPersistent.hxx", bycopy.} = object


proc constructStorageBucketOfPersistent*(theBucketSize: int = 300000;
                                        theBucketNumber: int = 100): StorageBucketOfPersistent {.
    constructor, importcpp: "Storage_BucketOfPersistent(@)",
    header: "Storage_BucketOfPersistent.hxx".}
proc length*(this: StorageBucketOfPersistent): int {.noSideEffect,
    importcpp: "Length", header: "Storage_BucketOfPersistent.hxx".}
proc append*(this: var StorageBucketOfPersistent; sp: Handle[StandardPersistent]) {.
    importcpp: "Append", header: "Storage_BucketOfPersistent.hxx".}
proc value*(this: var StorageBucketOfPersistent; theIndex: int): ptr StandardPersistent {.
    importcpp: "Value", header: "Storage_BucketOfPersistent.hxx".}
proc clear*(this: var StorageBucketOfPersistent) {.importcpp: "Clear",
    header: "Storage_BucketOfPersistent.hxx".}
proc destroyStorageBucketOfPersistent*(this: var StorageBucketOfPersistent) {.
    importcpp: "#.~Storage_BucketOfPersistent()",
    header: "Storage_BucketOfPersistent.hxx".}
type
  StorageBucketIterator* {.importcpp: "Storage_BucketIterator",
                          header: "Storage_BucketOfPersistent.hxx", bycopy.} = object


proc constructStorageBucketIterator*(a1: ptr StorageBucketOfPersistent): StorageBucketIterator {.
    constructor, importcpp: "Storage_BucketIterator(@)",
    header: "Storage_BucketOfPersistent.hxx".}
proc init*(this: var StorageBucketIterator; a2: ptr StorageBucketOfPersistent) {.
    importcpp: "Init", header: "Storage_BucketOfPersistent.hxx".}
proc reset*(this: var StorageBucketIterator) {.importcpp: "Reset",
    header: "Storage_BucketOfPersistent.hxx".}
proc value*(this: StorageBucketIterator): ptr StandardPersistent {.noSideEffect,
    importcpp: "Value", header: "Storage_BucketOfPersistent.hxx".}
proc more*(this: StorageBucketIterator): bool {.noSideEffect, importcpp: "More",
    header: "Storage_BucketOfPersistent.hxx".}
proc next*(this: var StorageBucketIterator) {.importcpp: "Next",
    header: "Storage_BucketOfPersistent.hxx".}
