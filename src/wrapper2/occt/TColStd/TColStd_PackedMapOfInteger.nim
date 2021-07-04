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

import
  ../Standard/Standard_DefineAlloc, ../Standard/Standard_NoSuchObject,
  ../TCollection/TCollection_BasicMap,
  ../TCollection/TCollection_BasicMapIterator

## *
##  Optimized Map of integer values. Each block of 32 integers is stored in 8 bytes in memory.
##

type
  TColStd_PackedMapOfInteger* {.importcpp: "TColStd_PackedMapOfInteger",
                               header: "TColStd_PackedMapOfInteger.hxx", bycopy.} = object of TCollection_BasicMap ##  operators new and delete must be defined explicitly
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

  TColStd_PackedMapOfIntegerIterator* {.importcpp: "TColStd_PackedMapOfInteger::Iterator", header: "TColStd_PackedMapOfInteger.hxx",
                                       bycopy.} = object of TCollection_BasicMapIterator ##
                                                                                    ## /
                                                                                    ## Empty
                                                                                    ## Constructor.
    ## !< all bits set above the iterated position
    ## !< Currently iterated key


proc constructTColStd_PackedMapOfIntegerIterator*(): TColStd_PackedMapOfIntegerIterator {.
    constructor, importcpp: "TColStd_PackedMapOfInteger::Iterator(@)",
    header: "TColStd_PackedMapOfInteger.hxx".}
proc constructTColStd_PackedMapOfIntegerIterator*(
    theMap: TColStd_PackedMapOfInteger): TColStd_PackedMapOfIntegerIterator {.
    constructor, importcpp: "TColStd_PackedMapOfInteger::Iterator(@)",
    header: "TColStd_PackedMapOfInteger.hxx".}
proc Initialize*(this: var TColStd_PackedMapOfIntegerIterator;
                theMap: TColStd_PackedMapOfInteger) {.importcpp: "Initialize",
    header: "TColStd_PackedMapOfInteger.hxx".}
proc Reset*(this: var TColStd_PackedMapOfIntegerIterator) {.importcpp: "Reset",
    header: "TColStd_PackedMapOfInteger.hxx".}
proc Key*(this: TColStd_PackedMapOfIntegerIterator): Standard_Integer {.
    noSideEffect, importcpp: "Key", header: "TColStd_PackedMapOfInteger.hxx".}
proc Next*(this: var TColStd_PackedMapOfIntegerIterator) {.importcpp: "Next",
    header: "TColStd_PackedMapOfInteger.hxx".}
proc constructTColStd_PackedMapOfInteger*(NbBuckets: Standard_Integer = 1): TColStd_PackedMapOfInteger {.
    constructor, importcpp: "TColStd_PackedMapOfInteger(@)",
    header: "TColStd_PackedMapOfInteger.hxx".}
proc constructTColStd_PackedMapOfInteger*(theOther: TColStd_PackedMapOfInteger): TColStd_PackedMapOfInteger {.
    constructor, importcpp: "TColStd_PackedMapOfInteger(@)",
    header: "TColStd_PackedMapOfInteger.hxx".}
proc Assign*(this: var TColStd_PackedMapOfInteger; a2: TColStd_PackedMapOfInteger): var TColStd_PackedMapOfInteger {.
    importcpp: "Assign", header: "TColStd_PackedMapOfInteger.hxx".}
proc ReSize*(this: var TColStd_PackedMapOfInteger; NbBuckets: Standard_Integer) {.
    importcpp: "ReSize", header: "TColStd_PackedMapOfInteger.hxx".}
proc Clear*(this: var TColStd_PackedMapOfInteger) {.importcpp: "Clear",
    header: "TColStd_PackedMapOfInteger.hxx".}
proc destroyTColStd_PackedMapOfInteger*(this: var TColStd_PackedMapOfInteger) {.
    importcpp: "#.~TColStd_PackedMapOfInteger()",
    header: "TColStd_PackedMapOfInteger.hxx".}
proc Add*(this: var TColStd_PackedMapOfInteger; aKey: Standard_Integer): Standard_Boolean {.
    importcpp: "Add", header: "TColStd_PackedMapOfInteger.hxx".}
proc Contains*(this: TColStd_PackedMapOfInteger; aKey: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "Contains", header: "TColStd_PackedMapOfInteger.hxx".}
proc Remove*(this: var TColStd_PackedMapOfInteger; aKey: Standard_Integer): Standard_Boolean {.
    importcpp: "Remove", header: "TColStd_PackedMapOfInteger.hxx".}
proc NbBuckets*(this: TColStd_PackedMapOfInteger): Standard_Integer {.noSideEffect,
    importcpp: "NbBuckets", header: "TColStd_PackedMapOfInteger.hxx".}
proc Extent*(this: TColStd_PackedMapOfInteger): Standard_Integer {.noSideEffect,
    importcpp: "Extent", header: "TColStd_PackedMapOfInteger.hxx".}
proc IsEmpty*(this: TColStd_PackedMapOfInteger): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "TColStd_PackedMapOfInteger.hxx".}
proc Statistics*(this: TColStd_PackedMapOfInteger; outStream: var Standard_OStream) {.
    noSideEffect, importcpp: "Statistics", header: "TColStd_PackedMapOfInteger.hxx".}
proc GetMinimalMapped*(this: TColStd_PackedMapOfInteger): Standard_Integer {.
    noSideEffect, importcpp: "GetMinimalMapped",
    header: "TColStd_PackedMapOfInteger.hxx".}
proc GetMaximalMapped*(this: TColStd_PackedMapOfInteger): Standard_Integer {.
    noSideEffect, importcpp: "GetMaximalMapped",
    header: "TColStd_PackedMapOfInteger.hxx".}
proc Union*(this: var TColStd_PackedMapOfInteger; a2: TColStd_PackedMapOfInteger;
           a3: TColStd_PackedMapOfInteger) {.importcpp: "Union",
    header: "TColStd_PackedMapOfInteger.hxx".}
proc Unite*(this: var TColStd_PackedMapOfInteger; a2: TColStd_PackedMapOfInteger): Standard_Boolean {.
    importcpp: "Unite", header: "TColStd_PackedMapOfInteger.hxx".}
proc `|=`*(this: var TColStd_PackedMapOfInteger; MM: TColStd_PackedMapOfInteger) {.
    importcpp: "(# |= #)", header: "TColStd_PackedMapOfInteger.hxx".}
proc Intersection*(this: var TColStd_PackedMapOfInteger;
                  a2: TColStd_PackedMapOfInteger; a3: TColStd_PackedMapOfInteger) {.
    importcpp: "Intersection", header: "TColStd_PackedMapOfInteger.hxx".}
proc Intersect*(this: var TColStd_PackedMapOfInteger; a2: TColStd_PackedMapOfInteger): Standard_Boolean {.
    importcpp: "Intersect", header: "TColStd_PackedMapOfInteger.hxx".}
proc `&=`*(this: var TColStd_PackedMapOfInteger; MM: TColStd_PackedMapOfInteger) {.
    importcpp: "(# &= #)", header: "TColStd_PackedMapOfInteger.hxx".}
proc Subtraction*(this: var TColStd_PackedMapOfInteger;
                 a2: TColStd_PackedMapOfInteger; a3: TColStd_PackedMapOfInteger) {.
    importcpp: "Subtraction", header: "TColStd_PackedMapOfInteger.hxx".}
proc Subtract*(this: var TColStd_PackedMapOfInteger; a2: TColStd_PackedMapOfInteger): Standard_Boolean {.
    importcpp: "Subtract", header: "TColStd_PackedMapOfInteger.hxx".}
proc `-=`*(this: var TColStd_PackedMapOfInteger; MM: TColStd_PackedMapOfInteger) {.
    importcpp: "(# -= #)", header: "TColStd_PackedMapOfInteger.hxx".}
proc Difference*(this: var TColStd_PackedMapOfInteger;
                a2: TColStd_PackedMapOfInteger; a3: TColStd_PackedMapOfInteger) {.
    importcpp: "Difference", header: "TColStd_PackedMapOfInteger.hxx".}
proc Differ*(this: var TColStd_PackedMapOfInteger; a2: TColStd_PackedMapOfInteger): Standard_Boolean {.
    importcpp: "Differ", header: "TColStd_PackedMapOfInteger.hxx".}
proc `^=`*(this: var TColStd_PackedMapOfInteger; MM: TColStd_PackedMapOfInteger) {.
    importcpp: "(# ^= #)", header: "TColStd_PackedMapOfInteger.hxx".}
proc IsEqual*(this: TColStd_PackedMapOfInteger; a2: TColStd_PackedMapOfInteger): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "TColStd_PackedMapOfInteger.hxx".}
proc `==`*(this: TColStd_PackedMapOfInteger; MM: TColStd_PackedMapOfInteger): Standard_Boolean {.
    noSideEffect, importcpp: "(# == #)", header: "TColStd_PackedMapOfInteger.hxx".}
proc IsSubset*(this: TColStd_PackedMapOfInteger; a2: TColStd_PackedMapOfInteger): Standard_Boolean {.
    noSideEffect, importcpp: "IsSubset", header: "TColStd_PackedMapOfInteger.hxx".}
proc `<=`*(this: TColStd_PackedMapOfInteger; MM: TColStd_PackedMapOfInteger): Standard_Boolean {.
    noSideEffect, importcpp: "(# <= #)", header: "TColStd_PackedMapOfInteger.hxx".}
proc HasIntersection*(this: TColStd_PackedMapOfInteger;
                     a2: TColStd_PackedMapOfInteger): Standard_Boolean {.
    noSideEffect, importcpp: "HasIntersection",
    header: "TColStd_PackedMapOfInteger.hxx".}