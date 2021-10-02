when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

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
    cdecl, constructor, importcpp: "NCollection_Map<\'*0,\'*1>::MapNode(@)",
    dynlib: tkernel.}
proc Key*[TheKeyType; Hasher](this: var NCollection_MapMapNode[TheKeyType, Hasher]): TheKeyType {.
    cdecl, importcpp: "Key", dynlib: tkernel.}
type
  NCollection_MapIterator*[TheKeyType; Hasher] {.
      importcpp: "NCollection_Map<\'0,\'1>::Iterator",
      header: "NCollection_Map.hxx", bycopy.} = object of NCollection_MapIterator ## ! Empty
                                                                           ## constructor


proc constructNCollection_MapIterator*[TheKeyType; Hasher](): NCollection_MapIterator[
    TheKeyType, Hasher] {.cdecl, constructor,
                        importcpp: "NCollection_Map<\'*0,\'*1>::Iterator(@)",
                        dynlib: tkernel.}
proc constructNCollection_MapIterator*[TheKeyType; Hasher](theMap: NCollection_Map): NCollection_MapIterator[
    TheKeyType, Hasher] {.cdecl, constructor,
                        importcpp: "NCollection_Map<\'*0,\'*1>::Iterator(@)",
                        dynlib: tkernel.}
proc More*[TheKeyType; Hasher](this: NCollection_MapIterator[TheKeyType, Hasher]): bool {.
    noSideEffect, cdecl, importcpp: "More", dynlib: tkernel.}
proc Next*[TheKeyType; Hasher](this: var NCollection_MapIterator[TheKeyType, Hasher]) {.
    cdecl, importcpp: "Next", dynlib: tkernel.}
proc Value*[TheKeyType; Hasher](this: NCollection_MapIterator[TheKeyType, Hasher]): TheKeyType {.
    noSideEffect, cdecl, importcpp: "Value", dynlib: tkernel.}
proc Key*[TheKeyType; Hasher](this: NCollection_MapIterator[TheKeyType, Hasher]): TheKeyType {.
    noSideEffect, cdecl, importcpp: "Key", dynlib: tkernel.}
type
  NCollection_Mapconst_iterator* = NCollection_StlIterator[forward_iterator_tag,
      NCollection_MapIterator, TheKeyType, true]

proc cbegin*[TheKeyType; Hasher](this: NCollection_Map[TheKeyType, Hasher]): NCollection_Mapconst_iterator {.
    noSideEffect, cdecl, importcpp: "cbegin", dynlib: tkernel.}
proc cend*[TheKeyType; Hasher](this: NCollection_Map[TheKeyType, Hasher]): NCollection_Mapconst_iterator {.
    noSideEffect, cdecl, importcpp: "cend", dynlib: tkernel.}
proc constructNCollection_Map*[TheKeyType; Hasher](): NCollection_Map[TheKeyType,
    Hasher] {.cdecl, constructor, importcpp: "NCollection_Map<\'*0,\'*1>(@)",
             dynlib: tkernel.}
proc constructNCollection_Map*[TheKeyType; Hasher](theNbBuckets: cint;
    theAllocator: handle[NCollection_BaseAllocator] = 0L'i64): NCollection_Map[
    TheKeyType, Hasher] {.cdecl, constructor,
                        importcpp: "NCollection_Map<\'*0,\'*1>(@)",
                        dynlib: tkernel.}
proc constructNCollection_Map*[TheKeyType; Hasher](theOther: NCollection_Map): NCollection_Map[
    TheKeyType, Hasher] {.cdecl, constructor,
                        importcpp: "NCollection_Map<\'*0,\'*1>(@)",
                        dynlib: tkernel.}
proc Exchange*[TheKeyType; Hasher](this: var NCollection_Map[TheKeyType, Hasher];
                                 theOther: var NCollection_Map) {.cdecl,
    importcpp: "Exchange", dynlib: tkernel.}
proc Assign*[TheKeyType; Hasher](this: var NCollection_Map[TheKeyType, Hasher];
                               theOther: NCollection_Map): var NCollection_Map {.
    cdecl, importcpp: "Assign", dynlib: tkernel.}
proc ReSize*[TheKeyType; Hasher](this: var NCollection_Map[TheKeyType, Hasher];
                               N: cint) {.cdecl, importcpp: "ReSize", dynlib: tkernel.}
proc Add*[TheKeyType; Hasher](this: var NCollection_Map[TheKeyType, Hasher];
                            K: TheKeyType): bool {.cdecl, importcpp: "Add",
    dynlib: tkernel.}
proc Added*[TheKeyType; Hasher](this: var NCollection_Map[TheKeyType, Hasher];
                              K: TheKeyType): TheKeyType {.cdecl,
    importcpp: "Added", dynlib: tkernel.}
proc Contains*[TheKeyType; Hasher](this: NCollection_Map[TheKeyType, Hasher];
                                 K: TheKeyType): bool {.noSideEffect, cdecl,
    importcpp: "Contains", dynlib: tkernel.}
proc Remove*[TheKeyType; Hasher](this: var NCollection_Map[TheKeyType, Hasher];
                               K: TheKeyType): bool {.cdecl, importcpp: "Remove",
    dynlib: tkernel.}
proc Clear*[TheKeyType; Hasher](this: var NCollection_Map[TheKeyType, Hasher];
                              doReleaseMemory: bool = Standard_True) {.cdecl,
    importcpp: "Clear", dynlib: tkernel.}
proc Clear*[TheKeyType; Hasher](this: var NCollection_Map[TheKeyType, Hasher];
                              theAllocator: handle[NCollection_BaseAllocator]) {.
    cdecl, importcpp: "Clear", dynlib: tkernel.}
proc destroyNCollection_Map*[TheKeyType; Hasher](
    this: var NCollection_Map[TheKeyType, Hasher]) {.cdecl,
    importcpp: "#.~NCollection_Map()", dynlib: tkernel.}
proc Size*[TheKeyType; Hasher](this: NCollection_Map[TheKeyType, Hasher]): cint {.
    noSideEffect, cdecl, importcpp: "Size", dynlib: tkernel.}
proc IsEqual*[TheKeyType; Hasher](this: NCollection_Map[TheKeyType, Hasher];
                                theOther: NCollection_Map): bool {.noSideEffect,
    cdecl, importcpp: "IsEqual", dynlib: tkernel.}
proc Contains*[TheKeyType; Hasher](this: NCollection_Map[TheKeyType, Hasher];
                                 theOther: NCollection_Map): bool {.noSideEffect,
    cdecl, importcpp: "Contains", dynlib: tkernel.}
proc Union*[TheKeyType; Hasher](this: var NCollection_Map[TheKeyType, Hasher];
                              theLeft: NCollection_Map; theRight: NCollection_Map) {.
    cdecl, importcpp: "Union", dynlib: tkernel.}
proc Unite*[TheKeyType; Hasher](this: var NCollection_Map[TheKeyType, Hasher];
                              theOther: NCollection_Map): bool {.cdecl,
    importcpp: "Unite", dynlib: tkernel.}
proc HasIntersection*[TheKeyType; Hasher](this: NCollection_Map[TheKeyType, Hasher];
                                        theMap: NCollection_Map): bool {.
    noSideEffect, cdecl, importcpp: "HasIntersection", dynlib: tkernel.}
proc Intersection*[TheKeyType; Hasher](this: var NCollection_Map[TheKeyType, Hasher];
                                     theLeft: NCollection_Map;
                                     theRight: NCollection_Map) {.cdecl,
    importcpp: "Intersection", dynlib: tkernel.}
proc Intersect*[TheKeyType; Hasher](this: var NCollection_Map[TheKeyType, Hasher];
                                  theOther: NCollection_Map): bool {.cdecl,
    importcpp: "Intersect", dynlib: tkernel.}
proc Subtraction*[TheKeyType; Hasher](this: var NCollection_Map[TheKeyType, Hasher];
                                    theLeft: NCollection_Map;
                                    theRight: NCollection_Map) {.cdecl,
    importcpp: "Subtraction", dynlib: tkernel.}
proc Subtract*[TheKeyType; Hasher](this: var NCollection_Map[TheKeyType, Hasher];
                                 theOther: NCollection_Map): bool {.cdecl,
    importcpp: "Subtract", dynlib: tkernel.}
proc Difference*[TheKeyType; Hasher](this: var NCollection_Map[TheKeyType, Hasher];
                                   theLeft: NCollection_Map;
                                   theRight: NCollection_Map) {.cdecl,
    importcpp: "Difference", dynlib: tkernel.}
proc Differ*[TheKeyType; Hasher](this: var NCollection_Map[TheKeyType, Hasher];
                               theOther: NCollection_Map): bool {.cdecl,
    importcpp: "Differ", dynlib: tkernel.}