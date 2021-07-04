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

import
  ../Standard/Standard_Integer, ../Standard/Standard_Persistent

discard "forward decl of Storage_Schema"
discard "forward decl of Storage_BucketOfPersistent"
discard "forward decl of Storage_BucketIterator"
type
  Storage_Bucket* {.importcpp: "Storage_Bucket",
                   header: "Storage_BucketOfPersistent.hxx", bycopy.} = object


proc constructStorage_Bucket*(): Storage_Bucket {.constructor,
    importcpp: "Storage_Bucket(@)", header: "Storage_BucketOfPersistent.hxx".}
proc constructStorage_Bucket*(theSpaceSize: Standard_Integer): Storage_Bucket {.
    constructor, importcpp: "Storage_Bucket(@)",
    header: "Storage_BucketOfPersistent.hxx".}
proc Clear*(this: var Storage_Bucket) {.importcpp: "Clear",
                                    header: "Storage_BucketOfPersistent.hxx".}
proc destroyStorage_Bucket*(this: var Storage_Bucket) {.
    importcpp: "#.~Storage_Bucket()", header: "Storage_BucketOfPersistent.hxx".}
type
  Storage_BucketOfPersistent* {.importcpp: "Storage_BucketOfPersistent",
                               header: "Storage_BucketOfPersistent.hxx", bycopy.} = object


proc constructStorage_BucketOfPersistent*(
    theBucketSize: Standard_Integer = 300000;
    theBucketNumber: Standard_Integer = 100): Storage_BucketOfPersistent {.
    constructor, importcpp: "Storage_BucketOfPersistent(@)",
    header: "Storage_BucketOfPersistent.hxx".}
proc Length*(this: Storage_BucketOfPersistent): Standard_Integer {.noSideEffect,
    importcpp: "Length", header: "Storage_BucketOfPersistent.hxx".}
proc Append*(this: var Storage_BucketOfPersistent; sp: handle[Standard_Persistent]) {.
    importcpp: "Append", header: "Storage_BucketOfPersistent.hxx".}
proc Value*(this: var Storage_BucketOfPersistent; theIndex: Standard_Integer): ptr Standard_Persistent {.
    importcpp: "Value", header: "Storage_BucketOfPersistent.hxx".}
proc Clear*(this: var Storage_BucketOfPersistent) {.importcpp: "Clear",
    header: "Storage_BucketOfPersistent.hxx".}
proc destroyStorage_BucketOfPersistent*(this: var Storage_BucketOfPersistent) {.
    importcpp: "#.~Storage_BucketOfPersistent()",
    header: "Storage_BucketOfPersistent.hxx".}
type
  Storage_BucketIterator* {.importcpp: "Storage_BucketIterator",
                           header: "Storage_BucketOfPersistent.hxx", bycopy.} = object


proc constructStorage_BucketIterator*(a1: ptr Storage_BucketOfPersistent): Storage_BucketIterator {.
    constructor, importcpp: "Storage_BucketIterator(@)",
    header: "Storage_BucketOfPersistent.hxx".}
proc Init*(this: var Storage_BucketIterator; a2: ptr Storage_BucketOfPersistent) {.
    importcpp: "Init", header: "Storage_BucketOfPersistent.hxx".}
proc Reset*(this: var Storage_BucketIterator) {.importcpp: "Reset",
    header: "Storage_BucketOfPersistent.hxx".}
proc Value*(this: Storage_BucketIterator): ptr Standard_Persistent {.noSideEffect,
    importcpp: "Value", header: "Storage_BucketOfPersistent.hxx".}
proc More*(this: Storage_BucketIterator): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "Storage_BucketOfPersistent.hxx".}
proc Next*(this: var Storage_BucketIterator) {.importcpp: "Next",
    header: "Storage_BucketOfPersistent.hxx".}