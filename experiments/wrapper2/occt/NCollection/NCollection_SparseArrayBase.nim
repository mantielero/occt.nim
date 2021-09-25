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

# type
#   StandardSize* = csize_t

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


proc clear*(this: var NCollectionSparseArrayBase) {.importcpp: "Clear",
    header: "NCollection_SparseArrayBase.hxx".}
proc size*(this: NCollectionSparseArrayBase): StandardSize {.noSideEffect,
    importcpp: "Size", header: "NCollection_SparseArrayBase.hxx".}
proc hasValue*(this: NCollectionSparseArrayBase; theIndex: StandardSize): bool {.
    noSideEffect, importcpp: "HasValue", header: "NCollection_SparseArrayBase.hxx".}
proc unsetValue*(this: var NCollectionSparseArrayBase; theIndex: StandardSize): bool {.
    importcpp: "UnsetValue", header: "NCollection_SparseArrayBase.hxx".}
## !!!Ignored construct:  !@} # defined ( __SUNPRO_CC ) && ( __SUNPRO_CC <= 0x530 ) [NewLine] public :  work-around against obsolete SUN WorkShop 5.3 compiler # [NewLine] private : # [NewLine] *
##  The block of data contains array of items, counter
##  and bit field, allocated as single piece of memory addressed
##  from the blocks array (myData).
##
##  The Block structure provides a logical view on the block,
##  and provides methods to work with bit map.
##
##  Note that NCollection_SparseArrayBase class takes responsibility
##  for correct allocation/deallocation of all the data.
##  class Block { public : typedef unsigned char Cell ; !< type of items used to hold bits ! Number of bits in each cell static Standard_Size BitsPerCell ( ) { return sizeof ( Cell ) * 8 BITSPERBYTE ; } public : ! Initializes the block by pointer to block data Block ( const Standard_Address theAddr , const Standard_Size theNbItems , const Standard_Size theItemSize ) : Count ( ( Standard_Size * ) theAddr ) , Array ( ( char * ) theAddr + sizeof ( Standard_Size ) ) , Bits ( ( Cell * ) ( ( char * ) theAddr + sizeof ( Standard_Size ) + theNbItems * theItemSize ) ) { } ! Compute required size for block data, in bytes static Standard_Size Size ( const Standard_Size theNbItems , const Standard_Size theItemSize ) { return sizeof ( Standard_Size ) + sizeof ( Cell ) * ( ( theNbItems + BitsPerCell ( ) - 1 ) / BitsPerCell ( ) ) + theNbItems * theItemSize ; } ! Returns address of array from address of block static char * ToArray ( const Standard_Address theAddress , const Standard_Size theNbItems , const Standard_Size theItemSize ) { return ( char * ) theAddress + sizeof ( Standard_Size ) ; } public : ! Set bit for i-th item; returns non-null if that bit has
## ! not been set previously Cell Set ( Standard_Size i ) { Cell * abyte = Bits + i / BitsPerCell ( ) ; Cell amask = ( Cell ) ( [char literal] << ( i % BitsPerCell ( ) ) ) ; Cell anold = ( Cell ) ( * abyte & amask ) ; * abyte = ( Cell ) ( * abyte | amask ) ; return ! anold ; } ! Check bit for i-th item; returns non-null if that bit is set Cell IsSet ( Standard_Size i ) { Cell * abyte = Bits + i / BitsPerCell ( ) ; Cell amask = ( Cell ) ( [char literal] << ( i % BitsPerCell ( ) ) ) ; return ( Cell ) ( * abyte & amask ) ; } ! Unset bit for i-th item; returns non-null if that bit
## ! has been set previously Cell Unset ( Standard_Size i ) { Cell * abyte = Bits + i / BitsPerCell ( ) ; Cell amask = ( Cell ) ( [char literal] << ( i % BitsPerCell ( ) ) ) ; Cell anold = ( Cell ) ( * abyte & amask ) ; * abyte = ( Cell ) ( * abyte & ~ amask ) ; return anold ; } public : Standard_Size * Count ; !< items counter Standard_Address Array ; !< pointer to the data items array Cell * Bits ; !< bit map for defined/undefined flags } ;
## Error: identifier expected, but got: :!!!

type
  NCollectionSparseArrayBaseIterator* {.importcpp: "NCollection_SparseArrayBase::Iterator", header: "NCollection_SparseArrayBase.hxx",
                                       bycopy.} = object ##  Public interface
                                                      ## ! Restart iterations on the same array
                                                      ##  Methods for descendant
                                                      ## ! Empty constructor


proc restart*(this: var NCollectionSparseArrayBaseIterator) {.importcpp: "Restart",
    header: "NCollection_SparseArrayBase.hxx".}
proc more*(this: NCollectionSparseArrayBaseIterator): bool {.noSideEffect,
    importcpp: "More", header: "NCollection_SparseArrayBase.hxx".}
proc next*(this: var NCollectionSparseArrayBaseIterator) {.importcpp: "Next",
    header: "NCollection_SparseArrayBase.hxx".}
proc index*(this: NCollectionSparseArrayBaseIterator): StandardSize {.noSideEffect,
    importcpp: "Index", header: "NCollection_SparseArrayBase.hxx".}

