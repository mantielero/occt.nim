##  Created on: 2005-11-05
##  Created by: Alexander GRIGORIEV
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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
##  Optimized Map of integer values. Each block of 32 integers is stored in 8 bytes in memory.
##

type
  TColStdPackedMapOfInteger* {.importcpp: "TColStd_PackedMapOfInteger",
                              header: "TColStd_PackedMapOfInteger.hxx", bycopy.} = object of TCollectionBasicMap ##  operators new and delete must be defined explicitly
                                                                                                          ##  since inherited ones are not accessible
                                                                                                          ## ! Iterator of class TColStd_PackedMapOfInteger.
                                                                                                          ## / Constructor
                                                                                                          ## !@name Boolean operations with maps as sets of integers
                                                                                                          ## !@{
                                                                                                          ## *
                                                                                                          ##  Sets this Map to be the result of union (aka addition, fuse, merge, boolean OR) operation between two given Maps.
                                                                                                          ##  The new Map contains the values that are contained either in the first map or in the second map or in both.
                                                                                                          ##  All previous contents of this Map is cleared. This map (result of the boolean operation) can also be passed as one of operands.
                                                                                                          ##
                                                                                                          ##  ---------- PROTECTED METHODS ----------
                                                                                                          ## ! Class implementing a block of 32 consecutive integer values as a node of a Map collection.
                                                                                                          ## ! The data are stored in 64 bits as:
                                                                                                          ## !  - bits  0 - 4 : (number of integers stored in the block) - 1;
                                                                                                          ## !  - bits  5 - 31: base address of the block of integers (low bits assumed 0)
                                                                                                          ## !  - bits 32 - 63: 32-bit field where each bit indicates the presence of the corresponding integer in the block.
                                                                                                          ## !                  Number of non-zero bits must be equal to the number expressed in bits 0-4.

  TColStdPackedMapOfIntegerIterator* {.importcpp: "TColStd_PackedMapOfInteger::Iterator",
                                      header: "TColStd_PackedMapOfInteger.hxx",
                                      bycopy.} = object of TCollectionBasicMapIterator ##
                                                                                  ## /
                                                                                  ## Empty
                                                                                  ## Constructor.
    ## !< all bits set above the iterated position
    ## !< Currently iterated key


proc newTColStdPackedMapOfIntegerIterator*(): TColStdPackedMapOfIntegerIterator {.
    cdecl, constructor, importcpp: "TColStd_PackedMapOfInteger::Iterator(@)",
    header: "TColStd_PackedMapOfInteger.hxx".}
proc newTColStdPackedMapOfIntegerIterator*(theMap: TColStdPackedMapOfInteger): TColStdPackedMapOfIntegerIterator {.
    cdecl, constructor, importcpp: "TColStd_PackedMapOfInteger::Iterator(@)",
    header: "TColStd_PackedMapOfInteger.hxx".}
proc initialize*(this: var TColStdPackedMapOfIntegerIterator;
                theMap: TColStdPackedMapOfInteger) {.cdecl,
    importcpp: "Initialize", header: "TColStd_PackedMapOfInteger.hxx".}
proc reset*(this: var TColStdPackedMapOfIntegerIterator) {.cdecl, importcpp: "Reset",
    header: "TColStd_PackedMapOfInteger.hxx".}
proc key*(this: TColStdPackedMapOfIntegerIterator): cint {.noSideEffect, cdecl,
    importcpp: "Key", header: "TColStd_PackedMapOfInteger.hxx".}
proc next*(this: var TColStdPackedMapOfIntegerIterator) {.cdecl, importcpp: "Next",
    header: "TColStd_PackedMapOfInteger.hxx".}
proc newTColStdPackedMapOfInteger*(nbBuckets: cint = 1): TColStdPackedMapOfInteger {.
    cdecl, constructor, importcpp: "TColStd_PackedMapOfInteger(@)", header: "TColStd_PackedMapOfInteger.hxx".}
proc newTColStdPackedMapOfInteger*(theOther: TColStdPackedMapOfInteger): TColStdPackedMapOfInteger {.
    cdecl, constructor, importcpp: "TColStd_PackedMapOfInteger(@)", header: "TColStd_PackedMapOfInteger.hxx".}
proc assign*(this: var TColStdPackedMapOfInteger; a2: TColStdPackedMapOfInteger): var TColStdPackedMapOfInteger {.
    cdecl, importcpp: "Assign", header: "TColStd_PackedMapOfInteger.hxx".}
proc reSize*(this: var TColStdPackedMapOfInteger; nbBuckets: cint) {.cdecl,
    importcpp: "ReSize", header: "TColStd_PackedMapOfInteger.hxx".}
proc clear*(this: var TColStdPackedMapOfInteger) {.cdecl, importcpp: "Clear",
    header: "TColStd_PackedMapOfInteger.hxx".}
proc destroyTColStdPackedMapOfInteger*(this: var TColStdPackedMapOfInteger) {.cdecl,
    importcpp: "#.~TColStd_PackedMapOfInteger()", header: "TColStd_PackedMapOfInteger.hxx".}
proc add*(this: var TColStdPackedMapOfInteger; aKey: cint): bool {.cdecl,
    importcpp: "Add", header: "TColStd_PackedMapOfInteger.hxx".}
proc contains*(this: TColStdPackedMapOfInteger; aKey: cint): bool {.noSideEffect,
    cdecl, importcpp: "Contains", header: "TColStd_PackedMapOfInteger.hxx".}
proc remove*(this: var TColStdPackedMapOfInteger; aKey: cint): bool {.cdecl,
    importcpp: "Remove", header: "TColStd_PackedMapOfInteger.hxx".}
proc nbBuckets*(this: TColStdPackedMapOfInteger): cint {.noSideEffect, cdecl,
    importcpp: "NbBuckets", header: "TColStd_PackedMapOfInteger.hxx".}
proc extent*(this: TColStdPackedMapOfInteger): cint {.noSideEffect, cdecl,
    importcpp: "Extent", header: "TColStd_PackedMapOfInteger.hxx".}
proc isEmpty*(this: TColStdPackedMapOfInteger): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "TColStd_PackedMapOfInteger.hxx".}
proc statistics*(this: TColStdPackedMapOfInteger; outStream: var StandardOStream) {.
    noSideEffect, cdecl, importcpp: "Statistics", header: "TColStd_PackedMapOfInteger.hxx".}
proc getMinimalMapped*(this: TColStdPackedMapOfInteger): cint {.noSideEffect, cdecl,
    importcpp: "GetMinimalMapped", header: "TColStd_PackedMapOfInteger.hxx".}
proc getMaximalMapped*(this: TColStdPackedMapOfInteger): cint {.noSideEffect, cdecl,
    importcpp: "GetMaximalMapped", header: "TColStd_PackedMapOfInteger.hxx".}
proc union*(this: var TColStdPackedMapOfInteger; a2: TColStdPackedMapOfInteger;
           a3: TColStdPackedMapOfInteger) {.cdecl, importcpp: "Union",
    header: "TColStd_PackedMapOfInteger.hxx".}
proc unite*(this: var TColStdPackedMapOfInteger; a2: TColStdPackedMapOfInteger): bool {.
    cdecl, importcpp: "Unite", header: "TColStd_PackedMapOfInteger.hxx".}
proc `|=`*(this: var TColStdPackedMapOfInteger; mm: TColStdPackedMapOfInteger) {.
    cdecl, importcpp: "(# |= #)", header: "TColStd_PackedMapOfInteger.hxx".}
proc intersection*(this: var TColStdPackedMapOfInteger;
                  a2: TColStdPackedMapOfInteger; a3: TColStdPackedMapOfInteger) {.
    cdecl, importcpp: "Intersection", header: "TColStd_PackedMapOfInteger.hxx".}
proc intersect*(this: var TColStdPackedMapOfInteger; a2: TColStdPackedMapOfInteger): bool {.
    cdecl, importcpp: "Intersect", header: "TColStd_PackedMapOfInteger.hxx".}
proc `&=`*(this: var TColStdPackedMapOfInteger; mm: TColStdPackedMapOfInteger) {.
    cdecl, importcpp: "(# &= #)", header: "TColStd_PackedMapOfInteger.hxx".}
proc subtraction*(this: var TColStdPackedMapOfInteger;
                 a2: TColStdPackedMapOfInteger; a3: TColStdPackedMapOfInteger) {.
    cdecl, importcpp: "Subtraction", header: "TColStd_PackedMapOfInteger.hxx".}
proc subtract*(this: var TColStdPackedMapOfInteger; a2: TColStdPackedMapOfInteger): bool {.
    cdecl, importcpp: "Subtract", header: "TColStd_PackedMapOfInteger.hxx".}
proc `-=`*(this: var TColStdPackedMapOfInteger; mm: TColStdPackedMapOfInteger) {.
    cdecl, importcpp: "(# -= #)", header: "TColStd_PackedMapOfInteger.hxx".}
proc difference*(this: var TColStdPackedMapOfInteger; a2: TColStdPackedMapOfInteger;
                a3: TColStdPackedMapOfInteger) {.cdecl, importcpp: "Difference",
    header: "TColStd_PackedMapOfInteger.hxx".}
proc differ*(this: var TColStdPackedMapOfInteger; a2: TColStdPackedMapOfInteger): bool {.
    cdecl, importcpp: "Differ", header: "TColStd_PackedMapOfInteger.hxx".}
proc `^=`*(this: var TColStdPackedMapOfInteger; mm: TColStdPackedMapOfInteger) {.
    cdecl, importcpp: "(# ^= #)", header: "TColStd_PackedMapOfInteger.hxx".}
proc isEqual*(this: TColStdPackedMapOfInteger; a2: TColStdPackedMapOfInteger): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", header: "TColStd_PackedMapOfInteger.hxx".}
proc `==`*(this: TColStdPackedMapOfInteger; mm: TColStdPackedMapOfInteger): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", header: "TColStd_PackedMapOfInteger.hxx".}
proc isSubset*(this: TColStdPackedMapOfInteger; a2: TColStdPackedMapOfInteger): bool {.
    noSideEffect, cdecl, importcpp: "IsSubset", header: "TColStd_PackedMapOfInteger.hxx".}
proc `<=`*(this: TColStdPackedMapOfInteger; mm: TColStdPackedMapOfInteger): bool {.
    noSideEffect, cdecl, importcpp: "(# <= #)", header: "TColStd_PackedMapOfInteger.hxx".}
proc hasIntersection*(this: TColStdPackedMapOfInteger;
                     a2: TColStdPackedMapOfInteger): bool {.noSideEffect, cdecl,
    importcpp: "HasIntersection", header: "TColStd_PackedMapOfInteger.hxx".}