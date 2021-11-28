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
    dynlib: tkernel.}
proc newTColStdPackedMapOfIntegerIterator*(theMap: TColStdPackedMapOfInteger): TColStdPackedMapOfIntegerIterator {.
    cdecl, constructor, importcpp: "TColStd_PackedMapOfInteger::Iterator(@)",
    dynlib: tkernel.}
proc initialize*(this: var TColStdPackedMapOfIntegerIterator;
                theMap: TColStdPackedMapOfInteger) {.cdecl,
    importcpp: "Initialize", dynlib: tkernel.}
proc reset*(this: var TColStdPackedMapOfIntegerIterator) {.cdecl, importcpp: "Reset",
    dynlib: tkernel.}
proc key*(this: TColStdPackedMapOfIntegerIterator): cint {.noSideEffect, cdecl,
    importcpp: "Key", dynlib: tkernel.}
proc next*(this: var TColStdPackedMapOfIntegerIterator) {.cdecl, importcpp: "Next",
    dynlib: tkernel.}
proc newTColStdPackedMapOfInteger*(nbBuckets: cint = 1): TColStdPackedMapOfInteger {.
    cdecl, constructor, importcpp: "TColStd_PackedMapOfInteger(@)", dynlib: tkernel.}
proc newTColStdPackedMapOfInteger*(theOther: TColStdPackedMapOfInteger): TColStdPackedMapOfInteger {.
    cdecl, constructor, importcpp: "TColStd_PackedMapOfInteger(@)", dynlib: tkernel.}
proc assign*(this: var TColStdPackedMapOfInteger; a2: TColStdPackedMapOfInteger): var TColStdPackedMapOfInteger {.
    cdecl, importcpp: "Assign", dynlib: tkernel.}
proc reSize*(this: var TColStdPackedMapOfInteger; nbBuckets: cint) {.cdecl,
    importcpp: "ReSize", dynlib: tkernel.}
proc clear*(this: var TColStdPackedMapOfInteger) {.cdecl, importcpp: "Clear",
    dynlib: tkernel.}
proc destroyTColStdPackedMapOfInteger*(this: var TColStdPackedMapOfInteger) {.cdecl,
    importcpp: "#.~TColStd_PackedMapOfInteger()", dynlib: tkernel.}
proc add*(this: var TColStdPackedMapOfInteger; aKey: cint): bool {.cdecl,
    importcpp: "Add", dynlib: tkernel.}
proc contains*(this: TColStdPackedMapOfInteger; aKey: cint): bool {.noSideEffect,
    cdecl, importcpp: "Contains", dynlib: tkernel.}
proc remove*(this: var TColStdPackedMapOfInteger; aKey: cint): bool {.cdecl,
    importcpp: "Remove", dynlib: tkernel.}
proc nbBuckets*(this: TColStdPackedMapOfInteger): cint {.noSideEffect, cdecl,
    importcpp: "NbBuckets", dynlib: tkernel.}
proc extent*(this: TColStdPackedMapOfInteger): cint {.noSideEffect, cdecl,
    importcpp: "Extent", dynlib: tkernel.}
proc isEmpty*(this: TColStdPackedMapOfInteger): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", dynlib: tkernel.}
proc statistics*(this: TColStdPackedMapOfInteger; outStream: var StandardOStream) {.
    noSideEffect, cdecl, importcpp: "Statistics", dynlib: tkernel.}
proc getMinimalMapped*(this: TColStdPackedMapOfInteger): cint {.noSideEffect, cdecl,
    importcpp: "GetMinimalMapped", dynlib: tkernel.}
proc getMaximalMapped*(this: TColStdPackedMapOfInteger): cint {.noSideEffect, cdecl,
    importcpp: "GetMaximalMapped", dynlib: tkernel.}
proc union*(this: var TColStdPackedMapOfInteger; a2: TColStdPackedMapOfInteger;
           a3: TColStdPackedMapOfInteger) {.cdecl, importcpp: "Union",
    dynlib: tkernel.}
proc unite*(this: var TColStdPackedMapOfInteger; a2: TColStdPackedMapOfInteger): bool {.
    cdecl, importcpp: "Unite", dynlib: tkernel.}
proc `|=`*(this: var TColStdPackedMapOfInteger; mm: TColStdPackedMapOfInteger) {.
    cdecl, importcpp: "(# |= #)", dynlib: tkernel.}
proc intersection*(this: var TColStdPackedMapOfInteger;
                  a2: TColStdPackedMapOfInteger; a3: TColStdPackedMapOfInteger) {.
    cdecl, importcpp: "Intersection", dynlib: tkernel.}
proc intersect*(this: var TColStdPackedMapOfInteger; a2: TColStdPackedMapOfInteger): bool {.
    cdecl, importcpp: "Intersect", dynlib: tkernel.}
proc `&=`*(this: var TColStdPackedMapOfInteger; mm: TColStdPackedMapOfInteger) {.
    cdecl, importcpp: "(# &= #)", dynlib: tkernel.}
proc subtraction*(this: var TColStdPackedMapOfInteger;
                 a2: TColStdPackedMapOfInteger; a3: TColStdPackedMapOfInteger) {.
    cdecl, importcpp: "Subtraction", dynlib: tkernel.}
proc subtract*(this: var TColStdPackedMapOfInteger; a2: TColStdPackedMapOfInteger): bool {.
    cdecl, importcpp: "Subtract", dynlib: tkernel.}
proc `-=`*(this: var TColStdPackedMapOfInteger; mm: TColStdPackedMapOfInteger) {.
    cdecl, importcpp: "(# -= #)", dynlib: tkernel.}
proc difference*(this: var TColStdPackedMapOfInteger; a2: TColStdPackedMapOfInteger;
                a3: TColStdPackedMapOfInteger) {.cdecl, importcpp: "Difference",
    dynlib: tkernel.}
proc differ*(this: var TColStdPackedMapOfInteger; a2: TColStdPackedMapOfInteger): bool {.
    cdecl, importcpp: "Differ", dynlib: tkernel.}
proc `^=`*(this: var TColStdPackedMapOfInteger; mm: TColStdPackedMapOfInteger) {.
    cdecl, importcpp: "(# ^= #)", dynlib: tkernel.}
proc isEqual*(this: TColStdPackedMapOfInteger; a2: TColStdPackedMapOfInteger): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", dynlib: tkernel.}
proc `==`*(this: TColStdPackedMapOfInteger; mm: TColStdPackedMapOfInteger): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", dynlib: tkernel.}
proc isSubset*(this: TColStdPackedMapOfInteger; a2: TColStdPackedMapOfInteger): bool {.
    noSideEffect, cdecl, importcpp: "IsSubset", dynlib: tkernel.}
proc `<=`*(this: TColStdPackedMapOfInteger; mm: TColStdPackedMapOfInteger): bool {.
    noSideEffect, cdecl, importcpp: "(# <= #)", dynlib: tkernel.}
proc hasIntersection*(this: TColStdPackedMapOfInteger;
                     a2: TColStdPackedMapOfInteger): bool {.noSideEffect, cdecl,
    importcpp: "HasIntersection", dynlib: tkernel.}