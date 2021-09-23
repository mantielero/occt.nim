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

import
  ../Standard/Standard, ../Standard/Standard_Handle, ../Standard/Standard_Integer

discard "forward decl of StdStorage_BucketOfPersistent"
discard "forward decl of StdStorage_BucketIterator"
discard "forward decl of StdObjMgt_Persistent"
type
  StdStorage_Bucket* {.importcpp: "StdStorage_Bucket",
                      header: "StdStorage_BacketOfPersistent.hxx", bycopy.} = object


proc constructStdStorage_Bucket*(): StdStorage_Bucket {.constructor,
    importcpp: "StdStorage_Bucket(@)", header: "StdStorage_BacketOfPersistent.hxx".}
proc constructStdStorage_Bucket*(theSpaceSize: Standard_Integer): StdStorage_Bucket {.
    constructor, importcpp: "StdStorage_Bucket(@)",
    header: "StdStorage_BacketOfPersistent.hxx".}
proc Clear*(this: var StdStorage_Bucket) {.importcpp: "Clear", header: "StdStorage_BacketOfPersistent.hxx".}
proc destroyStdStorage_Bucket*(this: var StdStorage_Bucket) {.
    importcpp: "#.~StdStorage_Bucket()",
    header: "StdStorage_BacketOfPersistent.hxx".}
type
  StdStorage_BucketOfPersistent* {.importcpp: "StdStorage_BucketOfPersistent",
                                  header: "StdStorage_BacketOfPersistent.hxx",
                                  bycopy.} = object


proc constructStdStorage_BucketOfPersistent*(
    theBucketSize: Standard_Integer = 300000;
    theBucketNumber: Standard_Integer = 100): StdStorage_BucketOfPersistent {.
    constructor, importcpp: "StdStorage_BucketOfPersistent(@)",
    header: "StdStorage_BacketOfPersistent.hxx".}
proc Length*(this: StdStorage_BucketOfPersistent): Standard_Integer {.noSideEffect,
    importcpp: "Length", header: "StdStorage_BacketOfPersistent.hxx".}
proc Append*(this: var StdStorage_BucketOfPersistent;
            sp: handle[StdObjMgt_Persistent]) {.importcpp: "Append",
    header: "StdStorage_BacketOfPersistent.hxx".}
proc Value*(this: var StdStorage_BucketOfPersistent; theIndex: Standard_Integer): ptr StdObjMgt_Persistent {.
    importcpp: "Value", header: "StdStorage_BacketOfPersistent.hxx".}
proc Clear*(this: var StdStorage_BucketOfPersistent) {.importcpp: "Clear",
    header: "StdStorage_BacketOfPersistent.hxx".}
proc destroyStdStorage_BucketOfPersistent*(
    this: var StdStorage_BucketOfPersistent) {.
    importcpp: "#.~StdStorage_BucketOfPersistent()",
    header: "StdStorage_BacketOfPersistent.hxx".}
type
  StdStorage_BucketIterator* {.importcpp: "StdStorage_BucketIterator",
                              header: "StdStorage_BacketOfPersistent.hxx", bycopy.} = object


proc constructStdStorage_BucketIterator*(a1: ptr StdStorage_BucketOfPersistent): StdStorage_BucketIterator {.
    constructor, importcpp: "StdStorage_BucketIterator(@)",
    header: "StdStorage_BacketOfPersistent.hxx".}
proc Init*(this: var StdStorage_BucketIterator;
          a2: ptr StdStorage_BucketOfPersistent) {.importcpp: "Init",
    header: "StdStorage_BacketOfPersistent.hxx".}
proc Reset*(this: var StdStorage_BucketIterator) {.importcpp: "Reset",
    header: "StdStorage_BacketOfPersistent.hxx".}
proc Value*(this: StdStorage_BucketIterator): ptr StdObjMgt_Persistent {.
    noSideEffect, importcpp: "Value", header: "StdStorage_BacketOfPersistent.hxx".}
proc More*(this: StdStorage_BucketIterator): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "StdStorage_BacketOfPersistent.hxx".}
proc Next*(this: var StdStorage_BucketIterator) {.importcpp: "Next",
    header: "StdStorage_BacketOfPersistent.hxx".}