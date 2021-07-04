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

import
  NCollection_TListIterator, NCollection_StlIterator,
  ../Standard/Standard_NoSuchObject

## *
##  Purpose:      Simple list to link  items together keeping the first
##                and the last one.
##                Inherits BaseList, adding the data item to each node.
##

type
  NCollection_List*[TheItemType] {.importcpp: "NCollection_List<\'0>",
                                  header: "NCollection_List.hxx", bycopy.} = object of NCollection_BaseList ##
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

  NCollection_Listvalue_type*[TheItemType] = TheItemType
  NCollection_ListListNode* = NCollection_TListNode[TheItemType]
  NCollection_ListIterator* = NCollection_TListIterator[TheItemType]
  NCollection_Listiterator* = NCollection_StlIterator[forward_iterator_tag,
      NCollection_ListIterator, TheItemType, false]
  NCollection_Listconst_iterator* = NCollection_StlIterator[forward_iterator_tag,
      NCollection_ListIterator, TheItemType, true]

proc begin*[TheItemType](this: NCollection_List[TheItemType]): NCollection_Listiterator {.
    noSideEffect, importcpp: "begin", header: "NCollection_List.hxx".}
proc `end`*[TheItemType](this: NCollection_List[TheItemType]): NCollection_Listiterator {.
    noSideEffect, importcpp: "end", header: "NCollection_List.hxx".}
proc cbegin*[TheItemType](this: NCollection_List[TheItemType]): NCollection_Listconst_iterator {.
    noSideEffect, importcpp: "cbegin", header: "NCollection_List.hxx".}
proc cend*[TheItemType](this: NCollection_List[TheItemType]): NCollection_Listconst_iterator {.
    noSideEffect, importcpp: "cend", header: "NCollection_List.hxx".}
proc constructNCollection_List*[TheItemType](): NCollection_List[TheItemType] {.
    constructor, importcpp: "NCollection_List<\'*0>(@)",
    header: "NCollection_List.hxx".}
proc constructNCollection_List*[TheItemType](
    theAllocator: handle[NCollection_BaseAllocator]): NCollection_List[TheItemType] {.
    constructor, importcpp: "NCollection_List<\'*0>(@)",
    header: "NCollection_List.hxx".}
proc constructNCollection_List*[TheItemType](theOther: NCollection_List): NCollection_List[
    TheItemType] {.constructor, importcpp: "NCollection_List<\'*0>(@)",
                  header: "NCollection_List.hxx".}
proc Size*[TheItemType](this: NCollection_List[TheItemType]): Standard_Integer {.
    noSideEffect, importcpp: "Size", header: "NCollection_List.hxx".}
proc Assign*[TheItemType](this: var NCollection_List[TheItemType];
                         theOther: NCollection_List): var NCollection_List {.
    importcpp: "Assign", header: "NCollection_List.hxx".}
proc Clear*[TheItemType](this: var NCollection_List[TheItemType]; theAllocator: handle[
    NCollection_BaseAllocator] = 0L'i64) {.importcpp: "Clear",
                                        header: "NCollection_List.hxx".}
proc First*[TheItemType](this: NCollection_List[TheItemType]): TheItemType {.
    noSideEffect, importcpp: "First", header: "NCollection_List.hxx".}
proc First*[TheItemType](this: var NCollection_List[TheItemType]): var TheItemType {.
    importcpp: "First", header: "NCollection_List.hxx".}
proc Last*[TheItemType](this: NCollection_List[TheItemType]): TheItemType {.
    noSideEffect, importcpp: "Last", header: "NCollection_List.hxx".}
proc Last*[TheItemType](this: var NCollection_List[TheItemType]): var TheItemType {.
    importcpp: "Last", header: "NCollection_List.hxx".}
proc Append*[TheItemType](this: var NCollection_List[TheItemType];
                         theItem: TheItemType): var TheItemType {.
    importcpp: "Append", header: "NCollection_List.hxx".}
proc Append*[TheItemType](this: var NCollection_List[TheItemType];
                         theItem: TheItemType;
                         theIter: var NCollection_ListIterator) {.
    importcpp: "Append", header: "NCollection_List.hxx".}
proc Append*[TheItemType](this: var NCollection_List[TheItemType];
                         theOther: var NCollection_List) {.importcpp: "Append",
    header: "NCollection_List.hxx".}
proc Prepend*[TheItemType](this: var NCollection_List[TheItemType];
                          theItem: TheItemType): var TheItemType {.
    importcpp: "Prepend", header: "NCollection_List.hxx".}
proc Prepend*[TheItemType](this: var NCollection_List[TheItemType];
                          theOther: var NCollection_List) {.importcpp: "Prepend",
    header: "NCollection_List.hxx".}
proc RemoveFirst*[TheItemType](this: var NCollection_List[TheItemType]) {.
    importcpp: "RemoveFirst", header: "NCollection_List.hxx".}
proc Remove*[TheItemType](this: var NCollection_List[TheItemType];
                         theIter: var NCollection_ListIterator) {.
    importcpp: "Remove", header: "NCollection_List.hxx".}
## !!!Ignored construct:  ! Remove the first occurrence of the object. template < typename TheValueType > [end of template]  instantiate this method on first call only for types defining equality operator Standard_Boolean Remove ( const TheValueType & theObject ) { for ( Iterator anIter ( * this ) ; anIter . More ( ) ; anIter . Next ( ) ) { if ( anIter . Value ( ) == theObject ) { Remove ( anIter ) ; return Standard_True ; } } return Standard_False ; } ! InsertBefore TheItemType & InsertBefore ( const TheItemType & theItem , Iterator & theIter ) { ListNode * pNew = new ( this -> myAllocator ) ListNode ( theItem ) ; PInsertBefore ( pNew , theIter ) ; return pNew -> ChangeValue ( ) ; } ! InsertBefore void InsertBefore ( NCollection_List & theOther , Iterator & theIter ) { if ( this == & theOther ) return ; if ( this -> myAllocator == theOther . myAllocator ) {  Then we take the list and glue it to our head -
##  deallocation will bring no problem PInsertBefore ( theOther , theIter ) ; } else {  No - this list has different memory scope prependList ( theOther . myFirst , theIter ) ; theOther . Clear ( ) ; } } ! InsertAfter TheItemType & InsertAfter ( const TheItemType & theItem , Iterator & theIter ) { ListNode * pNew = new ( this -> myAllocator ) ListNode ( theItem ) ; PInsertAfter ( pNew , theIter ) ; return pNew -> ChangeValue ( ) ; } ! InsertAfter void InsertAfter ( NCollection_List & theOther , Iterator & theIter ) { if ( ! theIter . More ( ) ) { Append ( theOther ) ; return ; } if ( this -> myAllocator == theOther . myAllocator ) {  Then we take the list and glue it to our head -
##  deallocation will bring no problem PInsertAfter ( theOther , theIter ) ; } else {  No - this list has different memory scope Iterator anIter ; anIter . myPrevious = theIter . myCurrent ; anIter . myCurrent = theIter . myCurrent -> Next ( ) ; prependList ( theOther . PFirst ( ) , anIter ) ; theOther . Clear ( ) ; } } ! Reverse the list void Reverse ( ) { PReverse ( ) ; } ! Return true if object is stored in the list. template < typename TheValueType >  instantiate this method on first call only for types defining equality operator Standard_Boolean Contains ( const TheValueType & theObject ) const { for ( Iterator anIter ( * this ) ; anIter . More ( ) ; anIter . Next ( ) ) { if ( anIter . Value ( ) == theObject ) { return Standard_True ; } } return Standard_False ; } ! Destructor - clears the List virtual ~ NCollection_List ( void ) { Clear ( ) ; } private :  ----------- PRIVATE METHODS ----------- ! append the list headed by the given ListNode void appendList ( const NCollection_ListNode * pCur ) { while ( pCur ) { NCollection_ListNode * pNew = new ( this -> myAllocator ) ListNode ( ( ( const ListNode * ) ( pCur ) ) -> Value ( ) ) ; PAppend ( pNew ) ; pCur = pCur -> Next ( ) ; } } ! insert the list headed by the given ListNode before the given iterator void prependList ( const NCollection_ListNode * pCur , Iterator & theIter ) { while ( pCur ) { NCollection_ListNode * pNew = new ( this -> myAllocator ) ListNode ( ( ( const ListNode * ) ( pCur ) ) -> Value ( ) ) ; PInsertBefore ( pNew , theIter ) ; pCur = pCur -> Next ( ) ; } } }
## Error: identifier expected, but got:  instantiate this method on first call only for types defining equality operator!!!
