##  Created on: 2002-04-23
##  Created by: Alexander KARTOMIN (akm)
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
##  Purpose:     Single hashed Map. This  Map is used  to store and
##               retrieve keys in linear time.
##
##               The ::Iterator class can be  used to explore  the
##               content of the map. It is not  wise to iterate and
##               modify a map in parallel.
##
##               To compute  the hashcode of  the key the  function
##               ::HashCode must be defined in the global namespace
##
##               To compare two keys the function ::IsEqual must be
##               defined in the global namespace.
##
##               The performance of  a Map is conditionned  by  its
##               number of buckets that  should be kept greater  to
##               the number   of keys.  This  map has  an automatic
##               management of the number of buckets. It is resized
##               when  the number of Keys  becomes greater than the
##               number of buckets.
##
##               If you have a fair  idea of the number of  objects
##               you  can save on automatic   resizing by giving  a
##               number of buckets  at creation or using the ReSize
##               method. This should be  consider only for  crucial
##               optimisation issues.
##
##  = NCollection_DefaultHasher<TheKeyType> >

type
  NCollection_Map*[TheKeyType; Hasher] {.importcpp: "NCollection_Map<\'0,\'1>",
                                       header: "NCollection_Map.hxx", bycopy.} = object of NCollection_BaseMap ##
                                                                                                        ## !
                                                                                                        ## STL-compliant
                                                                                                        ## typedef
                                                                                                        ## for
                                                                                                        ## key
                                                                                                        ## type
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Adaptation
                                                                                                        ## of
                                                                                                        ## the
                                                                                                        ## TListNode
                                                                                                        ## to
                                                                                                        ## the
                                                                                                        ## map
                                                                                                        ## notations
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Implementation
                                                                                                        ## of
                                                                                                        ## the
                                                                                                        ## Iterator
                                                                                                        ## interface.
                                                                                                        ##
                                                                                                        ## ----------
                                                                                                        ## PUBLIC
                                                                                                        ## METHODS
                                                                                                        ## ------------
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Empty
                                                                                                        ## constructor.
                                                                                                        ##
                                                                                                        ## !@name
                                                                                                        ## Boolean
                                                                                                        ## operations
                                                                                                        ## with
                                                                                                        ## maps
                                                                                                        ## as
                                                                                                        ## sets
                                                                                                        ## of
                                                                                                        ## keys
                                                                                                        ##
                                                                                                        ## !@{
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## @return
                                                                                                        ## true
                                                                                                        ## if
                                                                                                        ## two
                                                                                                        ## maps
                                                                                                        ## contains
                                                                                                        ## exactly
                                                                                                        ## the
                                                                                                        ## same
                                                                                                        ## keys

  NCollection_Mapkey_type*[TheKeyType] = TheKeyType
  NCollection_MapMapNode*[TheKeyType; Hasher] {.
      importcpp: "NCollection_Map<\'0,\'1>::MapNode",
      header: "NCollection_Map.hxx", bycopy.} = object of NCollection_TListNode[
      TheKeyType]             ## ! Constructor with 'Next'


proc constructNCollection_MapMapNode*[TheKeyType; Hasher](theKey: TheKeyType;
    theNext: ptr NCollection_ListNode): NCollection_MapMapNode[TheKeyType, Hasher] {.
    constructor, importcpp: "NCollection_Map<\'*0,\'*1>::MapNode(@)",
    header: "NCollection_Map.hxx".}
proc Key*[TheKeyType; Hasher](this: var NCollection_MapMapNode[TheKeyType, Hasher]): TheKeyType {.
    importcpp: "Key", header: "NCollection_Map.hxx".}
type
  NCollection_MapIterator*[TheKeyType; Hasher] {.
      importcpp: "NCollection_Map<\'0,\'1>::Iterator",
      header: "NCollection_Map.hxx", bycopy.} = object #of NCollection_MapIterator ## ! Empty
                                                                           ## constructor


proc constructNCollection_MapIterator*[TheKeyType; Hasher](): NCollection_MapIterator[
    TheKeyType, Hasher] {.constructor,
                        importcpp: "NCollection_Map<\'*0,\'*1>::Iterator(@)",
                        header: "NCollection_Map.hxx".}
proc constructNCollection_MapIterator*[TheKeyType; Hasher](theMap: NCollection_Map): NCollection_MapIterator[
    TheKeyType, Hasher] {.constructor,
                        importcpp: "NCollection_Map<\'*0,\'*1>::Iterator(@)",
                        header: "NCollection_Map.hxx".}
proc More*[TheKeyType; Hasher](this: NCollection_MapIterator[TheKeyType, Hasher]): Standard_Boolean {.
    noSideEffect, importcpp: "More", header: "NCollection_Map.hxx".}
proc Next*[TheKeyType; Hasher](this: var NCollection_MapIterator[TheKeyType, Hasher]) {.
    importcpp: "Next", header: "NCollection_Map.hxx".}
proc Value*[TheKeyType; Hasher](this: NCollection_MapIterator[TheKeyType, Hasher]): TheKeyType {.
    noSideEffect, importcpp: "Value", header: "NCollection_Map.hxx".}
proc Key*[TheKeyType; Hasher](this: NCollection_MapIterator[TheKeyType, Hasher]): TheKeyType {.
    noSideEffect, importcpp: "Key", header: "NCollection_Map.hxx".}
#[ type
  NCollection_Mapconst_iterator* = NCollection_StlIterator[forward_iterator_tag,
      NCollection_MapIterator, TheKeyType, true] ]#

#[ proc cbegin*[TheKeyType; Hasher](this: NCollection_Map[TheKeyType, Hasher]): NCollection_Mapconst_iterator {.
    noSideEffect, importcpp: "cbegin", header: "NCollection_Map.hxx".} ]#
#[ proc cend*[TheKeyType; Hasher](this: NCollection_Map[TheKeyType, Hasher]): NCollection_Mapconst_iterator {.
    noSideEffect, importcpp: "cend", header: "NCollection_Map.hxx".} ]#
proc constructNCollection_Map*[TheKeyType; Hasher](): NCollection_Map[TheKeyType,
    Hasher] {.constructor, importcpp: "NCollection_Map<\'*0,\'*1>(@)",
             header: "NCollection_Map.hxx".}
#[ proc constructNCollection_Map*[TheKeyType; Hasher](theNbBuckets: int;
    theAllocator: handle[NCollection_BaseAllocator] = 0L'i64): NCollection_Map[
    TheKeyType, Hasher] {.constructor, importcpp: "NCollection_Map<\'*0,\'*1>(@)",
                        header: "NCollection_Map.hxx".} ]#
proc constructNCollection_Map*[TheKeyType; Hasher](theOther: NCollection_Map): NCollection_Map[
    TheKeyType, Hasher] {.constructor, importcpp: "NCollection_Map<\'*0,\'*1>(@)",
                        header: "NCollection_Map.hxx".}
proc Exchange*[TheKeyType; Hasher](this: var NCollection_Map[TheKeyType, Hasher];
                                 theOther: var NCollection_Map) {.
    importcpp: "Exchange", header: "NCollection_Map.hxx".}
proc Assign*[TheKeyType; Hasher](this: var NCollection_Map[TheKeyType, Hasher];
                               theOther: NCollection_Map): var NCollection_Map {.
    importcpp: "Assign", header: "NCollection_Map.hxx".}
proc ReSize*[TheKeyType; Hasher](this: var NCollection_Map[TheKeyType, Hasher]; N: int) {.
    importcpp: "ReSize", header: "NCollection_Map.hxx".}
proc Add*[TheKeyType; Hasher](this: var NCollection_Map[TheKeyType, Hasher];
                            K: TheKeyType): Standard_Boolean {.importcpp: "Add",
    header: "NCollection_Map.hxx".}
proc Added*[TheKeyType; Hasher](this: var NCollection_Map[TheKeyType, Hasher];
                              K: TheKeyType): TheKeyType {.importcpp: "Added",
    header: "NCollection_Map.hxx".}
proc Contains*[TheKeyType; Hasher](this: NCollection_Map[TheKeyType, Hasher];
                                 K: TheKeyType): Standard_Boolean {.noSideEffect,
    importcpp: "Contains", header: "NCollection_Map.hxx".}
proc Remove*[TheKeyType; Hasher](this: var NCollection_Map[TheKeyType, Hasher];
                               K: TheKeyType): Standard_Boolean {.
    importcpp: "Remove", header: "NCollection_Map.hxx".}
proc Clear*[TheKeyType; Hasher](this: var NCollection_Map[TheKeyType, Hasher];
                              doReleaseMemory: Standard_Boolean = true) {.
    importcpp: "Clear", header: "NCollection_Map.hxx".}
proc Clear*[TheKeyType; Hasher](this: var NCollection_Map[TheKeyType, Hasher];
                              theAllocator: handle[NCollection_BaseAllocator]) {.
    importcpp: "Clear", header: "NCollection_Map.hxx".}
proc destroyNCollection_Map*[TheKeyType; Hasher](
    this: var NCollection_Map[TheKeyType, Hasher]) {.
    importcpp: "#.~NCollection_Map()", header: "NCollection_Map.hxx".}
proc Size*[TheKeyType; Hasher](this: NCollection_Map[TheKeyType, Hasher]): int {.
    noSideEffect, importcpp: "Size", header: "NCollection_Map.hxx".}
proc IsEqual*[TheKeyType; Hasher](this: NCollection_Map[TheKeyType, Hasher];
                                theOther: NCollection_Map): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "NCollection_Map.hxx".}
proc Contains*[TheKeyType; Hasher](this: NCollection_Map[TheKeyType, Hasher];
                                 theOther: NCollection_Map): Standard_Boolean {.
    noSideEffect, importcpp: "Contains", header: "NCollection_Map.hxx".}
proc Union*[TheKeyType; Hasher](this: var NCollection_Map[TheKeyType, Hasher];
                              theLeft: NCollection_Map; theRight: NCollection_Map) {.
    importcpp: "Union", header: "NCollection_Map.hxx".}
proc Unite*[TheKeyType; Hasher](this: var NCollection_Map[TheKeyType, Hasher];
                              theOther: NCollection_Map): Standard_Boolean {.
    importcpp: "Unite", header: "NCollection_Map.hxx".}
proc HasIntersection*[TheKeyType; Hasher](this: NCollection_Map[TheKeyType, Hasher];
                                        theMap: NCollection_Map): Standard_Boolean {.
    noSideEffect, importcpp: "HasIntersection", header: "NCollection_Map.hxx".}
proc Intersection*[TheKeyType; Hasher](this: var NCollection_Map[TheKeyType, Hasher];
                                     theLeft: NCollection_Map;
                                     theRight: NCollection_Map) {.
    importcpp: "Intersection", header: "NCollection_Map.hxx".}
proc Intersect*[TheKeyType; Hasher](this: var NCollection_Map[TheKeyType, Hasher];
                                  theOther: NCollection_Map): Standard_Boolean {.
    importcpp: "Intersect", header: "NCollection_Map.hxx".}
proc Subtraction*[TheKeyType; Hasher](this: var NCollection_Map[TheKeyType, Hasher];
                                    theLeft: NCollection_Map;
                                    theRight: NCollection_Map) {.
    importcpp: "Subtraction", header: "NCollection_Map.hxx".}
proc Subtract*[TheKeyType; Hasher](this: var NCollection_Map[TheKeyType, Hasher];
                                 theOther: NCollection_Map): Standard_Boolean {.
    importcpp: "Subtract", header: "NCollection_Map.hxx".}
proc Difference*[TheKeyType; Hasher](this: var NCollection_Map[TheKeyType, Hasher];
                                   theLeft: NCollection_Map;
                                   theRight: NCollection_Map) {.
    importcpp: "Difference", header: "NCollection_Map.hxx".}
proc Differ*[TheKeyType; Hasher](this: var NCollection_Map[TheKeyType, Hasher];
                               theOther: NCollection_Map): Standard_Boolean {.
    importcpp: "Differ", header: "NCollection_Map.hxx".}