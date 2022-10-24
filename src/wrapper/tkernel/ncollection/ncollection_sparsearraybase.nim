import ncollection_types

##  Created on: 2007-01-23
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

#type
#  csize_t* = csize_t

## *
##  Base class for NCollection_SparseArray;
##  provides non-template implementation of general mechanics
##  of block allocation, items creation / deletion etc.
##



proc clear*(this: var NCollectionSparseArrayBase) {.cdecl, importcpp: "Clear",
    header: "NCollection_SparseArrayBase.hxx".}
proc size*(this: NCollectionSparseArrayBase): csize_t {.noSideEffect, cdecl,
    importcpp: "Size", header: "NCollection_SparseArrayBase.hxx".}
proc hasValue*(this: NCollectionSparseArrayBase; theIndex: csize_t): bool {.
    noSideEffect, cdecl, importcpp: "HasValue", header: "NCollection_SparseArrayBase.hxx".}
proc unsetValue*(this: var NCollectionSparseArrayBase; theIndex: csize_t): bool {.
    cdecl, importcpp: "UnsetValue", header: "NCollection_SparseArrayBase.hxx".}


proc restart*(this: var NCollectionSparseArrayBaseIterator) {.cdecl,
    importcpp: "Restart", header: "NCollection_SparseArrayBase.hxx".}
proc more*(this: NCollectionSparseArrayBaseIterator): bool {.noSideEffect, cdecl,
    importcpp: "More", header: "NCollection_SparseArrayBase.hxx".}
proc next*(this: var NCollectionSparseArrayBaseIterator) {.cdecl, importcpp: "Next",
    header: "NCollection_SparseArrayBase.hxx".}
proc index*(this: NCollectionSparseArrayBaseIterator): csize_t {.noSideEffect, cdecl,
    importcpp: "Index", header: "NCollection_SparseArrayBase.hxx".}
