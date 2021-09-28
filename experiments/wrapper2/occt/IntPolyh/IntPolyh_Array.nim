##  Created on: 2012-11-13
##  Created by: Peter KURNEV
##  Copyright (c) 2012-2014 OPEN CASCADE SAS
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
##  Class IntPolyh_Array (dynamic array of objects)
##
##    1. The Array is dynamic array of objects.
##
##    2. The Array uses NCollection_Vector to store objects
##
##    3. The Array can be created:
##       3.1.  with initial length Nb=0.
##             In this case Array should be initiated by invoke
##             the method Init(Nb).
##       3.2.  with initial length Nb>0.
##             In this case Array is initiated automatically.
##
##       The memory is allocated to store myNbAllocated oblects.
##
##    4. The number of items that are stored in the Array (myNbItems)
##       can be increased by calling the method:  IncrementNbItems().
##       The objects are stored in already allocated memory if it is
##       possible.
##       Otherwise the new chunk of memory is allocated to store the
##       objects.
##       The size of chunk <aIncrement> can be defined during the creation
##       of the Array.
##
##    5. The start index of the Array is 0, The end index of the Array
##       can be obtained by the method  NbItems();
##
##    6. The contents of the element with index "i" can be queried or
##       modified by the methods:  Value(i), ChangeValue(i), operator[](i)
##
## =======================================================================
##  class : IntPolyh_Array
##
## =======================================================================

type
  IntPolyhArray*[Type] {.importcpp: "IntPolyh_Array<\'0>",
                        header: "IntPolyh_Array.hxx", bycopy.} = object

  IntPolyhArrayIntPolyhVectorOfType* = NCollectionVector[Type]

proc constructIntPolyhArray*[Type](aIncrement: cint = 256): IntPolyhArray[Type] {.
    constructor, importcpp: "IntPolyh_Array<\'*0>(@)", header: "IntPolyh_Array.hxx".}
proc constructIntPolyhArray*[Type](aN: cint; aIncrement: cint = 256): IntPolyhArray[
    Type] {.constructor, importcpp: "IntPolyh_Array<\'*0>(@)",
           header: "IntPolyh_Array.hxx".}
proc copy*[Type](this: var IntPolyhArray[Type]; aOther: IntPolyhArray): var IntPolyhArray {.
    importcpp: "Copy", header: "IntPolyh_Array.hxx".}
proc init*[Type](this: var IntPolyhArray[Type]; aN: cint) {.importcpp: "Init",
    header: "IntPolyh_Array.hxx".}
proc incrementNbItems*[Type](this: var IntPolyhArray[Type]) {.
    importcpp: "IncrementNbItems", header: "IntPolyh_Array.hxx".}
proc getN*[Type](this: IntPolyhArray[Type]): cint {.noSideEffect, importcpp: "GetN",
    header: "IntPolyh_Array.hxx".}
proc nbItems*[Type](this: IntPolyhArray[Type]): cint {.noSideEffect,
    importcpp: "NbItems", header: "IntPolyh_Array.hxx".}
proc setNbItems*[Type](this: var IntPolyhArray[Type]; aNb: cint) {.
    importcpp: "SetNbItems", header: "IntPolyh_Array.hxx".}
proc value*[Type](this: IntPolyhArray[Type]; aIndex: cint): Type {.noSideEffect,
    importcpp: "Value", header: "IntPolyh_Array.hxx".}
proc `[]`*[Type](this: IntPolyhArray[Type]; aIndex: cint): Type {.noSideEffect,
    importcpp: "#[@]", header: "IntPolyh_Array.hxx".}
proc changeValue*[Type](this: var IntPolyhArray[Type]; aIndex: cint): var Type {.
    importcpp: "ChangeValue", header: "IntPolyh_Array.hxx".}
proc `[]`*[Type](this: var IntPolyhArray[Type]; aIndex: cint): var Type {.
    importcpp: "#[@]", header: "IntPolyh_Array.hxx".}
proc dump*[Type](this: IntPolyhArray[Type]) {.noSideEffect, importcpp: "Dump",
    header: "IntPolyh_Array.hxx".}

























