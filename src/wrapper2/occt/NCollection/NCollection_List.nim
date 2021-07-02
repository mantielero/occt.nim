##  Created on: 2002-04-17
##  Created by: Alexander Kartomin (akm)
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

## *
##  Purpose:      Simple list to link  items together keeping the first
##                and the last one.
##                Inherits BaseList, adding the data item to each node.
##

type
  NCollectionList*[TheItemType] {.importcpp: "NCollection_List<\'0>",
                                 header: "NCollection_List.hxx", bycopy.} = object of NCollectionBaseList ##
                                                                                                   ## !
                                                                                                   ## STL-compliant
                                                                                                   ## typedef
                                                                                                   ## for
                                                                                                   ## value
                                                                                                   ## type
                                                                                                   ##
                                                                                                   ## ----------
                                                                                                   ## PUBLIC
                                                                                                   ## METHODS
                                                                                                   ## ------------
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## Empty
                                                                                                   ## constructor.

  NCollectionListvalueType*[TheItemType] = TheItemType
  NCollectionListListNode* = NCollectionTListNode[TheItemType]
  NCollectionListIterator* = NCollectionTListIterator[TheItemType]
  NCollectionListiterator* = NCollectionStlIterator[ForwardIteratorTag,
      NCollectionListIterator, TheItemType, False]
  NCollectionListconstIterator* = NCollectionStlIterator[ForwardIteratorTag,
      NCollectionListIterator, TheItemType, True]

proc begin*[TheItemType](this: NCollectionList[TheItemType]): NCollectionListiterator {.
    noSideEffect, importcpp: "begin", header: "NCollection_List.hxx".}
proc `end`*[TheItemType](this: NCollectionList[TheItemType]): NCollectionListiterator {.
    noSideEffect, importcpp: "end", header: "NCollection_List.hxx".}
proc cbegin*[TheItemType](this: NCollectionList[TheItemType]): NCollectionListconstIterator {.
    noSideEffect, importcpp: "cbegin", header: "NCollection_List.hxx".}
proc cend*[TheItemType](this: NCollectionList[TheItemType]): NCollectionListconstIterator {.
    noSideEffect, importcpp: "cend", header: "NCollection_List.hxx".}
proc constructNCollectionList*[TheItemType](): NCollectionList[TheItemType] {.
    constructor, importcpp: "NCollection_List<\'*0>(@)",
    header: "NCollection_List.hxx".}
proc constructNCollectionList*[TheItemType](
    theAllocator: Handle[NCollectionBaseAllocator]): NCollectionList[TheItemType] {.
    constructor, importcpp: "NCollection_List<\'*0>(@)",
    header: "NCollection_List.hxx".}
proc constructNCollectionList*[TheItemType](theOther: NCollectionList): NCollectionList[
    TheItemType] {.constructor, importcpp: "NCollection_List<\'*0>(@)",
                  header: "NCollection_List.hxx".}
proc size*[TheItemType](this: NCollectionList[TheItemType]): StandardInteger {.
    noSideEffect, importcpp: "Size", header: "NCollection_List.hxx".}
proc assign*[TheItemType](this: var NCollectionList[TheItemType];
                         theOther: NCollectionList): var NCollectionList {.
    importcpp: "Assign", header: "NCollection_List.hxx".}
proc clear*[TheItemType](this: var NCollectionList[TheItemType];
                        theAllocator: Handle[NCollectionBaseAllocator] = 0'i64) {.
    importcpp: "Clear", header: "NCollection_List.hxx".}
proc first*[TheItemType](this: NCollectionList[TheItemType]): TheItemType {.
    noSideEffect, importcpp: "First", header: "NCollection_List.hxx".}
proc first*[TheItemType](this: var NCollectionList[TheItemType]): var TheItemType {.
    importcpp: "First", header: "NCollection_List.hxx".}
proc last*[TheItemType](this: NCollectionList[TheItemType]): TheItemType {.
    noSideEffect, importcpp: "Last", header: "NCollection_List.hxx".}
proc last*[TheItemType](this: var NCollectionList[TheItemType]): var TheItemType {.
    importcpp: "Last", header: "NCollection_List.hxx".}
proc append*[TheItemType](this: var NCollectionList[TheItemType];
                         theItem: TheItemType): var TheItemType {.
    importcpp: "Append", header: "NCollection_List.hxx".}
proc append*[TheItemType](this: var NCollectionList[TheItemType];
                         theItem: TheItemType;
                         theIter: var NCollectionListIterator) {.
    importcpp: "Append", header: "NCollection_List.hxx".}
proc append*[TheItemType](this: var NCollectionList[TheItemType];
                         theOther: var NCollectionList) {.importcpp: "Append",
    header: "NCollection_List.hxx".}
proc prepend*[TheItemType](this: var NCollectionList[TheItemType];
                          theItem: TheItemType): var TheItemType {.
    importcpp: "Prepend", header: "NCollection_List.hxx".}
proc prepend*[TheItemType](this: var NCollectionList[TheItemType];
                          theOther: var NCollectionList) {.importcpp: "Prepend",
    header: "NCollection_List.hxx".}
proc removeFirst*[TheItemType](this: var NCollectionList[TheItemType]) {.
    importcpp: "RemoveFirst", header: "NCollection_List.hxx".}
proc remove*[TheItemType](this: var NCollectionList[TheItemType];
                         theIter: var NCollectionListIterator) {.
    importcpp: "Remove", header: "NCollection_List.hxx".}
## !!!Ignored construct:  ! Remove the first occurrence of the object. template < typename TheValueType > [end of template]  instantiate this method on first call only for types defining equality operator Standard_Boolean Remove ( const TheValueType & theObject ) { for ( Iterator anIter ( * this ) ; anIter . More ( ) ; anIter . Next ( ) ) { if ( anIter . Value ( ) == theObject ) { Remove ( anIter ) ; return Standard_True ; } } return Standard_False ; } ! InsertBefore TheItemType & InsertBefore ( const TheItemType & theItem , Iterator & theIter ) { ListNode * pNew = new ( this -> myAllocator ) ListNode ( theItem ) ; PInsertBefore ( pNew , theIter ) ; return pNew -> ChangeValue ( ) ; } ! InsertBefore void InsertBefore ( NCollection_List & theOther , Iterator & theIter ) { if ( this == & theOther ) return ; if ( this -> myAllocator == theOther . myAllocator ) {  Then we take the list and glue it to our head -
##  deallocation will bring no problem PInsertBefore ( theOther , theIter ) ; } else {  No - this list has different memory scope prependList ( theOther . myFirst , theIter ) ; theOther . Clear ( ) ; } } ! InsertAfter TheItemType & InsertAfter ( const TheItemType & theItem , Iterator & theIter ) { ListNode * pNew = new ( this -> myAllocator ) ListNode ( theItem ) ; PInsertAfter ( pNew , theIter ) ; return pNew -> ChangeValue ( ) ; } ! InsertAfter void InsertAfter ( NCollection_List & theOther , Iterator & theIter ) { if ( ! theIter . More ( ) ) { Append ( theOther ) ; return ; } if ( this -> myAllocator == theOther . myAllocator ) {  Then we take the list and glue it to our head -
##  deallocation will bring no problem PInsertAfter ( theOther , theIter ) ; } else {  No - this list has different memory scope Iterator anIter ; anIter . myPrevious = theIter . myCurrent ; anIter . myCurrent = theIter . myCurrent -> Next ( ) ; prependList ( theOther . PFirst ( ) , anIter ) ; theOther . Clear ( ) ; } } ! Reverse the list void Reverse ( ) { PReverse ( ) ; } ! Return true if object is stored in the list. template < typename TheValueType >  instantiate this method on first call only for types defining equality operator Standard_Boolean Contains ( const TheValueType & theObject ) const { for ( Iterator anIter ( * this ) ; anIter . More ( ) ; anIter . Next ( ) ) { if ( anIter . Value ( ) == theObject ) { return Standard_True ; } } return Standard_False ; } ! Destructor - clears the List virtual ~ NCollection_List ( void ) { Clear ( ) ; } private :  ----------- PRIVATE METHODS ----------- ! append the list headed by the given ListNode void appendList ( const NCollection_ListNode * pCur ) { while ( pCur ) { NCollection_ListNode * pNew = new ( this -> myAllocator ) ListNode ( ( ( const ListNode * ) ( pCur ) ) -> Value ( ) ) ; PAppend ( pNew ) ; pCur = pCur -> Next ( ) ; } } ! insert the list headed by the given ListNode before the given iterator void prependList ( const NCollection_ListNode * pCur , Iterator & theIter ) { while ( pCur ) { NCollection_ListNode * pNew = new ( this -> myAllocator ) ListNode ( ( ( const ListNode * ) ( pCur ) ) -> Value ( ) ) ; PInsertBefore ( pNew , theIter ) ; pCur = pCur -> Next ( ) ; } } }
## Error: identifier expected, but got:  instantiate this method on first call only for types defining equality operator!!!


