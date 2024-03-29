import ncollection_types
import ../standard/standard_types
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




proc newNCollectionMapMapNode*[TheKeyType; Hasher](theKey: TheKeyType;
    theNext: ptr NCollectionListNode): NCollectionMapMapNode[TheKeyType, Hasher] {.
    cdecl, constructor, importcpp: "NCollection_Map<\'*0,\'*1>::MapNode(@)",
    header: "NCollection_Map.hxx".}
proc key*[TheKeyType; Hasher](this: var NCollectionMapMapNode[TheKeyType, Hasher]): TheKeyType {.
    cdecl, importcpp: "Key", header: "NCollection_Map.hxx".}


proc newNCollectionMapIterator*[TheKeyType; Hasher](): NCollectionMapIterator[
    TheKeyType, Hasher] {.cdecl, constructor,
                        importcpp: "NCollection_Map<\'*0,\'*1>::Iterator(@)",
                        header: "NCollection_Map.hxx".}
proc newNCollectionMapIterator*[TheKeyType; Hasher](theMap: NCollectionMap): NCollectionMapIterator[
    TheKeyType, Hasher] {.cdecl, constructor,
                        importcpp: "NCollection_Map<\'*0,\'*1>::Iterator(@)",
                        header: "NCollection_Map.hxx".}
proc more*[TheKeyType; Hasher](this: NCollectionMapIterator[TheKeyType, Hasher]): bool {.
    noSideEffect, cdecl, importcpp: "More", header: "NCollection_Map.hxx".}
proc next*[TheKeyType; Hasher](this: var NCollectionMapIterator[TheKeyType, Hasher]) {.
    cdecl, importcpp: "Next", header: "NCollection_Map.hxx".}
proc value*[TheKeyType; Hasher](this: NCollectionMapIterator[TheKeyType, Hasher]): TheKeyType {.
    noSideEffect, cdecl, importcpp: "Value", header: "NCollection_Map.hxx".}
proc key*[TheKeyType; Hasher](this: NCollectionMapIterator[TheKeyType, Hasher]): TheKeyType {.
    noSideEffect, cdecl, importcpp: "Key", header: "NCollection_Map.hxx".}

proc cbegin*[TheKeyType; Hasher](this: NCollectionMap[TheKeyType, Hasher]): NCollectionMapconstIterator {.
    noSideEffect, cdecl, importcpp: "cbegin", header: "NCollection_Map.hxx".}
proc cend*[TheKeyType; Hasher](this: NCollectionMap[TheKeyType, Hasher]): NCollectionMapconstIterator {.
    noSideEffect, cdecl, importcpp: "cend", header: "NCollection_Map.hxx".}
proc newNCollectionMap*[TheKeyType; Hasher](): NCollectionMap[TheKeyType, Hasher] {.
    cdecl, constructor, importcpp: "NCollection_Map<\'*0,\'*1>(@)", header: "NCollection_Map.hxx".}
proc newNCollectionMap*[TheKeyType; Hasher](theNbBuckets: cint;
    theAllocator: Handle[NCollectionBaseAllocator] = cast[Handle[NCollectionBaseAllocator]](0)): NCollectionMap[
    TheKeyType, Hasher] {.cdecl, constructor,
                        importcpp: "NCollection_Map<\'*0,\'*1>(@)",
                        header: "NCollection_Map.hxx".}
proc newNCollectionMap*[TheKeyType; Hasher](theOther: NCollectionMap): NCollectionMap[
    TheKeyType, Hasher] {.cdecl, constructor,
                        importcpp: "NCollection_Map<\'*0,\'*1>(@)",
                        header: "NCollection_Map.hxx".}
proc exchange*[TheKeyType; Hasher](this: var NCollectionMap[TheKeyType, Hasher];
                                 theOther: var NCollectionMap) {.cdecl,
    importcpp: "Exchange", header: "NCollection_Map.hxx".}
proc assign*[TheKeyType; Hasher](this: var NCollectionMap[TheKeyType, Hasher];
                               theOther: NCollectionMap): var NCollectionMap {.
    cdecl, importcpp: "Assign", header: "NCollection_Map.hxx".}
proc reSize*[TheKeyType; Hasher](this: var NCollectionMap[TheKeyType, Hasher]; n: cint) {.
    cdecl, importcpp: "ReSize", header: "NCollection_Map.hxx".}
proc add*[TheKeyType; Hasher](this: var NCollectionMap[TheKeyType, Hasher];
                            k: TheKeyType): bool {.cdecl, importcpp: "Add",
    header: "NCollection_Map.hxx".}
proc added*[TheKeyType; Hasher](this: var NCollectionMap[TheKeyType, Hasher];
                              k: TheKeyType): TheKeyType {.cdecl,
    importcpp: "Added", header: "NCollection_Map.hxx".}
proc contains*[TheKeyType; Hasher](this: NCollectionMap[TheKeyType, Hasher];
                                 k: TheKeyType): bool {.noSideEffect, cdecl,
    importcpp: "Contains", header: "NCollection_Map.hxx".}
proc remove*[TheKeyType; Hasher](this: var NCollectionMap[TheKeyType, Hasher];
                               k: TheKeyType): bool {.cdecl, importcpp: "Remove",
    header: "NCollection_Map.hxx".}
proc clear*[TheKeyType; Hasher](this: var NCollectionMap[TheKeyType, Hasher];
                              doReleaseMemory: bool = true) {.cdecl,
    importcpp: "Clear", header: "NCollection_Map.hxx".}
proc clear*[TheKeyType; Hasher](this: var NCollectionMap[TheKeyType, Hasher];
                              theAllocator: Handle[NCollectionBaseAllocator]) {.
    cdecl, importcpp: "Clear", header: "NCollection_Map.hxx".}
proc destroyNCollectionMap*[TheKeyType; Hasher](
    this: var NCollectionMap[TheKeyType, Hasher]) {.cdecl,
    importcpp: "#.~NCollection_Map()", header: "NCollection_Map.hxx".}
proc size*[TheKeyType; Hasher](this: NCollectionMap[TheKeyType, Hasher]): cint {.
    noSideEffect, cdecl, importcpp: "Size", header: "NCollection_Map.hxx".}
proc isEqual*[TheKeyType; Hasher](this: NCollectionMap[TheKeyType, Hasher];
                                theOther: NCollectionMap): bool {.noSideEffect,
    cdecl, importcpp: "IsEqual", header: "NCollection_Map.hxx".}
proc contains*[TheKeyType; Hasher](this: NCollectionMap[TheKeyType, Hasher];
                                 theOther: NCollectionMap): bool {.noSideEffect,
    cdecl, importcpp: "Contains", header: "NCollection_Map.hxx".}
proc union*[TheKeyType; Hasher](this: var NCollectionMap[TheKeyType, Hasher];
                              theLeft: NCollectionMap; theRight: NCollectionMap) {.
    cdecl, importcpp: "Union", header: "NCollection_Map.hxx".}
proc unite*[TheKeyType; Hasher](this: var NCollectionMap[TheKeyType, Hasher];
                              theOther: NCollectionMap): bool {.cdecl,
    importcpp: "Unite", header: "NCollection_Map.hxx".}
proc hasIntersection*[TheKeyType; Hasher](this: NCollectionMap[TheKeyType, Hasher];
                                        theMap: NCollectionMap): bool {.
    noSideEffect, cdecl, importcpp: "HasIntersection", header: "NCollection_Map.hxx".}
proc intersection*[TheKeyType; Hasher](this: var NCollectionMap[TheKeyType, Hasher];
                                     theLeft: NCollectionMap;
                                     theRight: NCollectionMap) {.cdecl,
    importcpp: "Intersection", header: "NCollection_Map.hxx".}
proc intersect*[TheKeyType; Hasher](this: var NCollectionMap[TheKeyType, Hasher];
                                  theOther: NCollectionMap): bool {.cdecl,
    importcpp: "Intersect", header: "NCollection_Map.hxx".}
proc subtraction*[TheKeyType; Hasher](this: var NCollectionMap[TheKeyType, Hasher];
                                    theLeft: NCollectionMap;
                                    theRight: NCollectionMap) {.cdecl,
    importcpp: "Subtraction", header: "NCollection_Map.hxx".}
proc subtract*[TheKeyType; Hasher](this: var NCollectionMap[TheKeyType, Hasher];
                                 theOther: NCollectionMap): bool {.cdecl,
    importcpp: "Subtract", header: "NCollection_Map.hxx".}
proc difference*[TheKeyType; Hasher](this: var NCollectionMap[TheKeyType, Hasher];
                                   theLeft: NCollectionMap;
                                   theRight: NCollectionMap) {.cdecl,
    importcpp: "Difference", header: "NCollection_Map.hxx".}
proc differ*[TheKeyType; Hasher](this: var NCollectionMap[TheKeyType, Hasher];
                               theOther: NCollectionMap): bool {.cdecl,
    importcpp: "Differ", header: "NCollection_Map.hxx".}
