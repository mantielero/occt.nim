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

type
  NCollectionMap*[TheKeyType; Hasher] {.importcpp: "NCollection_Map<\'0,\'1>",
                                      header: "NCollection_Map.hxx", bycopy.} = object of NCollectionBaseMap ##
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

  NCollectionMapkeyType*[TheKeyType] = TheKeyType
  NCollectionMapMapNode*[TheKeyType; Hasher] {.
      importcpp: "NCollection_Map<\'0,\'1>::MapNode",
      header: "NCollection_Map.hxx", bycopy.} = object of NCollectionTListNode[
      TheKeyType]             ## ! Constructor with 'Next'


proc newNCollectionMapMapNode*[TheKeyType; Hasher](theKey: TheKeyType;
    theNext: ptr NCollectionListNode): NCollectionMapMapNode[TheKeyType, Hasher] {.
    cdecl, constructor, importcpp: "NCollection_Map<\'*0,\'*1>::MapNode(@)",
    dynlib: tkernel.}
proc key*[TheKeyType; Hasher](this: var NCollectionMapMapNode[TheKeyType, Hasher]): TheKeyType {.
    cdecl, importcpp: "Key", dynlib: tkernel.}
type
  NCollectionMapIterator*[TheKeyType; Hasher] {.
      importcpp: "NCollection_Map<\'0,\'1>::Iterator",
      header: "NCollection_Map.hxx", bycopy.} = object of RootObj ## ! Empty
                                                                          ## constructor


proc newNCollectionMapIterator*[TheKeyType; Hasher](): NCollectionMapIterator[
    TheKeyType, Hasher] {.cdecl, constructor,
                        importcpp: "NCollection_Map<\'*0,\'*1>::Iterator(@)",
                        dynlib: tkernel.}
proc newNCollectionMapIterator*[TheKeyType; Hasher](theMap: NCollectionMap): NCollectionMapIterator[
    TheKeyType, Hasher] {.cdecl, constructor,
                        importcpp: "NCollection_Map<\'*0,\'*1>::Iterator(@)",
                        dynlib: tkernel.}
proc more*[TheKeyType; Hasher](this: NCollectionMapIterator[TheKeyType, Hasher]): bool {.
    noSideEffect, cdecl, importcpp: "More", dynlib: tkernel.}
proc next*[TheKeyType; Hasher](this: var NCollectionMapIterator[TheKeyType, Hasher]) {.
    cdecl, importcpp: "Next", dynlib: tkernel.}
proc value*[TheKeyType; Hasher](this: NCollectionMapIterator[TheKeyType, Hasher]): TheKeyType {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkernel.}
proc key*[TheKeyType; Hasher](this: NCollectionMapIterator[TheKeyType, Hasher]): TheKeyType {.
    noSideEffect, cdecl, importcpp: "Key", dynlib: tkernel.}
type
  NCollectionMapconstIterator* = NCollectionStlIterator[ForwardIteratorTag,
      NCollectionMapIterator, TheKeyType, true]

proc cbegin*[TheKeyType; Hasher](this: NCollectionMap[TheKeyType, Hasher]): NCollectionMapconstIterator {.
    noSideEffect, cdecl, importcpp: "cbegin", dynlib: tkernel.}
proc cend*[TheKeyType; Hasher](this: NCollectionMap[TheKeyType, Hasher]): NCollectionMapconstIterator {.
    noSideEffect, cdecl, importcpp: "cend", dynlib: tkernel.}
proc newNCollectionMap*[TheKeyType; Hasher](): NCollectionMap[TheKeyType, Hasher] {.
    cdecl, constructor, importcpp: "NCollection_Map<\'*0,\'*1>(@)", dynlib: tkernel.}
proc newNCollectionMap*[TheKeyType; Hasher](theNbBuckets: cint;
    theAllocator: Handle[NCollectionBaseAllocator] = cast[Handle[NCollectionBaseAllocator]](0)): NCollectionMap[
    TheKeyType, Hasher] {.cdecl, constructor,
                        importcpp: "NCollection_Map<\'*0,\'*1>(@)",
                        dynlib: tkernel.}
proc newNCollectionMap*[TheKeyType; Hasher](theOther: NCollectionMap): NCollectionMap[
    TheKeyType, Hasher] {.cdecl, constructor,
                        importcpp: "NCollection_Map<\'*0,\'*1>(@)",
                        dynlib: tkernel.}
proc exchange*[TheKeyType; Hasher](this: var NCollectionMap[TheKeyType, Hasher];
                                 theOther: var NCollectionMap) {.cdecl,
    importcpp: "Exchange", dynlib: tkernel.}
proc assign*[TheKeyType; Hasher](this: var NCollectionMap[TheKeyType, Hasher];
                               theOther: NCollectionMap): var NCollectionMap {.
    cdecl, importcpp: "Assign", dynlib: tkernel.}
proc reSize*[TheKeyType; Hasher](this: var NCollectionMap[TheKeyType, Hasher]; n: cint) {.
    cdecl, importcpp: "ReSize", dynlib: tkernel.}
proc add*[TheKeyType; Hasher](this: var NCollectionMap[TheKeyType, Hasher];
                            k: TheKeyType): bool {.cdecl, importcpp: "Add",
    dynlib: tkernel.}
proc added*[TheKeyType; Hasher](this: var NCollectionMap[TheKeyType, Hasher];
                              k: TheKeyType): TheKeyType {.cdecl,
    importcpp: "Added", dynlib: tkernel.}
proc contains*[TheKeyType; Hasher](this: NCollectionMap[TheKeyType, Hasher];
                                 k: TheKeyType): bool {.noSideEffect, cdecl,
    importcpp: "Contains", dynlib: tkernel.}
proc remove*[TheKeyType; Hasher](this: var NCollectionMap[TheKeyType, Hasher];
                               k: TheKeyType): bool {.cdecl, importcpp: "Remove",
    dynlib: tkernel.}
proc clear*[TheKeyType; Hasher](this: var NCollectionMap[TheKeyType, Hasher];
                              doReleaseMemory: bool = true) {.cdecl,
    importcpp: "Clear", dynlib: tkernel.}
proc clear*[TheKeyType; Hasher](this: var NCollectionMap[TheKeyType, Hasher];
                              theAllocator: Handle[NCollectionBaseAllocator]) {.
    cdecl, importcpp: "Clear", dynlib: tkernel.}
proc destroyNCollectionMap*[TheKeyType; Hasher](
    this: var NCollectionMap[TheKeyType, Hasher]) {.cdecl,
    importcpp: "#.~NCollection_Map()", dynlib: tkernel.}
proc size*[TheKeyType; Hasher](this: NCollectionMap[TheKeyType, Hasher]): cint {.
    noSideEffect, cdecl, importcpp: "Size", dynlib: tkernel.}
proc isEqual*[TheKeyType; Hasher](this: NCollectionMap[TheKeyType, Hasher];
                                theOther: NCollectionMap): bool {.noSideEffect,
    cdecl, importcpp: "IsEqual", dynlib: tkernel.}
proc contains*[TheKeyType; Hasher](this: NCollectionMap[TheKeyType, Hasher];
                                 theOther: NCollectionMap): bool {.noSideEffect,
    cdecl, importcpp: "Contains", dynlib: tkernel.}
proc union*[TheKeyType; Hasher](this: var NCollectionMap[TheKeyType, Hasher];
                              theLeft: NCollectionMap; theRight: NCollectionMap) {.
    cdecl, importcpp: "Union", dynlib: tkernel.}
proc unite*[TheKeyType; Hasher](this: var NCollectionMap[TheKeyType, Hasher];
                              theOther: NCollectionMap): bool {.cdecl,
    importcpp: "Unite", dynlib: tkernel.}
proc hasIntersection*[TheKeyType; Hasher](this: NCollectionMap[TheKeyType, Hasher];
                                        theMap: NCollectionMap): bool {.
    noSideEffect, cdecl, importcpp: "HasIntersection", dynlib: tkernel.}
proc intersection*[TheKeyType; Hasher](this: var NCollectionMap[TheKeyType, Hasher];
                                     theLeft: NCollectionMap;
                                     theRight: NCollectionMap) {.cdecl,
    importcpp: "Intersection", dynlib: tkernel.}
proc intersect*[TheKeyType; Hasher](this: var NCollectionMap[TheKeyType, Hasher];
                                  theOther: NCollectionMap): bool {.cdecl,
    importcpp: "Intersect", dynlib: tkernel.}
proc subtraction*[TheKeyType; Hasher](this: var NCollectionMap[TheKeyType, Hasher];
                                    theLeft: NCollectionMap;
                                    theRight: NCollectionMap) {.cdecl,
    importcpp: "Subtraction", dynlib: tkernel.}
proc subtract*[TheKeyType; Hasher](this: var NCollectionMap[TheKeyType, Hasher];
                                 theOther: NCollectionMap): bool {.cdecl,
    importcpp: "Subtract", dynlib: tkernel.}
proc difference*[TheKeyType; Hasher](this: var NCollectionMap[TheKeyType, Hasher];
                                   theLeft: NCollectionMap;
                                   theRight: NCollectionMap) {.cdecl,
    importcpp: "Difference", dynlib: tkernel.}
proc differ*[TheKeyType; Hasher](this: var NCollectionMap[TheKeyType, Hasher];
                               theOther: NCollectionMap): bool {.cdecl,
    importcpp: "Differ", dynlib: tkernel.}