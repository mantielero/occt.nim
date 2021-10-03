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

type
  csize_t* = csize_t

## *
##  Base class for NCollection_SparseArray;
##  provides non-template implementation of general mechanics
##  of block allocation, items creation / deletion etc.
##

type
  NCollectionSparseArrayBase* {.importcpp: "NCollection_SparseArrayBase",
                               header: "NCollection_SparseArrayBase.hxx", bycopy.} = object ## !@name Type-independent public interface
                                                                                       ## !@{
                                                                                       ## ! Clears all the data
                                                                                       ## *
                                                                                       ##  The block of data contains array of items, counter
                                                                                       ##  and bit field, allocated as single piece of memory addressed
                                                                                       ##  from the blocks array (myData).
                                                                                       ##
                                                                                       ##  The Block structure provides a logical view on the block,
                                                                                       ##  and provides methods to work with bit map.
                                                                                       ##
                                                                                       ##  Note that NCollection_SparseArrayBase class takes responsibility
                                                                                       ##  for correct allocation/deallocation of all the data.
                                                                                       ##
                                                                                       ## *
                                                                                       ##  Iterator
                                                                                       ##
                                                                                       ##  Copy constructor and assignment operator are private thus not accessible
                                                                                       ##  Object life
                                                                                       ## ! Constructor; initialized by size of item and of block (in items)
                                                                                       ##  Data access interface for descendants
                                                                                       ## ! Creates Block structure for block pointed by theAddr
                                                                                       ##  Methods to be provided by descendant
                                                                                       ## ! Create new item at the specified address with default constructor
                                                                                       ##   virtual void createItem (Standard_Address theAddress) = 0;
                                                                                       ## ! Create new item at the specified address with copy constructor
                                                                                       ## ! from existing item
                                                                                       ##  Implementation of memory allocation/deallocation and access mechanics
                                                                                       ## ! Allocate space for at least iBlock+1 blocks
    ## !< size of item
    ## !< block size (in items)
    ## !< allocated size of blocks table
    ## !< number of currently defined items
    ## !< array of pointers to data blocks


proc clear*(this: var NCollectionSparseArrayBase) {.cdecl, importcpp: "Clear",
    dynlib: tkernel.}
proc size*(this: NCollectionSparseArrayBase): csize_t {.noSideEffect, cdecl,
    importcpp: "Size", dynlib: tkernel.}
proc hasValue*(this: NCollectionSparseArrayBase; theIndex: csize_t): bool {.
    noSideEffect, cdecl, importcpp: "HasValue", dynlib: tkernel.}
proc unsetValue*(this: var NCollectionSparseArrayBase; theIndex: csize_t): bool {.
    cdecl, importcpp: "UnsetValue", dynlib: tkernel.}
type
  NCollectionSparseArrayBaseIterator* {.importcpp: "NCollection_SparseArrayBase::Iterator", header: "NCollection_SparseArrayBase.hxx",
                                       bycopy.} = object ##  Public interface
                                                      ## ! Restart iterations on the same array
                                                      ##  Methods for descendant
                                                      ## ! Empty constructor


proc restart*(this: var NCollectionSparseArrayBaseIterator) {.cdecl,
    importcpp: "Restart", dynlib: tkernel.}
proc more*(this: NCollectionSparseArrayBaseIterator): bool {.noSideEffect, cdecl,
    importcpp: "More", dynlib: tkernel.}
proc next*(this: var NCollectionSparseArrayBaseIterator) {.cdecl, importcpp: "Next",
    dynlib: tkernel.}
proc index*(this: NCollectionSparseArrayBaseIterator): csize_t {.noSideEffect, cdecl,
    importcpp: "Index", dynlib: tkernel.}