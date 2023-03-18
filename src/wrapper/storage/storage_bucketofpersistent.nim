import ../standard/standard_types
import storage_types



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



proc newStorageBucket*(): StorageBucket {.cdecl, constructor,
                                       importcpp: "Storage_Bucket(@)",
                                       header: "Storage_BucketOfPersistent.hxx".}
proc newStorageBucket*(theSpaceSize: cint): StorageBucket {.cdecl, constructor,
    importcpp: "Storage_Bucket(@)", header: "Storage_BucketOfPersistent.hxx".}
proc clear*(this: var StorageBucket) {.cdecl, importcpp: "Clear",
                                   header: "Storage_BucketOfPersistent.hxx".}
proc destroyStorageBucket*(this: var StorageBucket) {.cdecl,
    importcpp: "#.~Storage_Bucket()", header: "Storage_BucketOfPersistent.hxx".}


proc newStorageBucketOfPersistent*(theBucketSize: cint = 300000;
                                  theBucketNumber: cint = 100): StorageBucketOfPersistent {.
    cdecl, constructor, importcpp: "Storage_BucketOfPersistent(@)",
    header: "Storage_BucketOfPersistent.hxx".}
proc length*(this: StorageBucketOfPersistent): cint {.noSideEffect, cdecl,
    importcpp: "Length", header: "Storage_BucketOfPersistent.hxx".}
proc append*(this: var StorageBucketOfPersistent; sp: Handle[StandardPersistent]) {.
    cdecl, importcpp: "Append", header: "Storage_BucketOfPersistent.hxx".}
proc value*(this: var StorageBucketOfPersistent; theIndex: cint): ptr StandardPersistent {.
    cdecl, importcpp: "Value", header: "Storage_BucketOfPersistent.hxx".}
proc clear*(this: var StorageBucketOfPersistent) {.cdecl, importcpp: "Clear",
    header: "Storage_BucketOfPersistent.hxx".}
proc destroyStorageBucketOfPersistent*(this: var StorageBucketOfPersistent) {.cdecl,
    importcpp: "#.~Storage_BucketOfPersistent()",
    header: "Storage_BucketOfPersistent.hxx".}


proc newStorageBucketIterator*(a1: ptr StorageBucketOfPersistent): StorageBucketIterator {.
    cdecl, constructor, importcpp: "Storage_BucketIterator(@)",
    header: "Storage_BucketOfPersistent.hxx".}
proc init*(this: var StorageBucketIterator; a2: ptr StorageBucketOfPersistent) {.cdecl,
    importcpp: "Init", header: "Storage_BucketOfPersistent.hxx".}
proc reset*(this: var StorageBucketIterator) {.cdecl, importcpp: "Reset",
    header: "Storage_BucketOfPersistent.hxx".}
proc value*(this: StorageBucketIterator): ptr StandardPersistent {.noSideEffect,
    cdecl, importcpp: "Value", header: "Storage_BucketOfPersistent.hxx".}
proc more*(this: StorageBucketIterator): bool {.noSideEffect, cdecl,
    importcpp: "More", header: "Storage_BucketOfPersistent.hxx".}
proc next*(this: var StorageBucketIterator) {.cdecl, importcpp: "Next",
    header: "Storage_BucketOfPersistent.hxx".}

