##  Created on: 2002-04-12
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
##  Purpose:     Basic class for memory allocation wizards.
##               Defines  the  interface  for devising  different  allocators
##               firstly to be used  by collections of NCollection, though it
##               it is not  deferred. It allocates/frees  the memory  through
##               Standard procedures, thus it is  unnecessary (and  sometimes
##               injurious) to have  more than one such  allocator.  To avoid
##               creation  of multiple  objects the  constructors  were  maid
##               inaccessible.  To  create the  BaseAllocator use  the method
##               CommonBaseAllocator.
##               Note that this object is managed by Handle.

## *
##  Purpose:     Basic class for memory allocation wizards.
##               Defines  the  interface  for devising  different  allocators
##               firstly to be used  by collections of NCollection, though it
##               it is not  deferred. It allocates/frees  the memory  through
##               Standard procedures, thus it is  unnecessary (and  sometimes
##               injurious) to have  more than one such  allocator.  To avoid
##               creation  of multiple  objects the  constructors  were  maid
##               inaccessible.  To  create the  BaseAllocator use  the method
##               CommonBaseAllocator.
##               Note that this object is managed by Handle.
##

type
  NCollectionBaseAllocator* {.importcpp: "NCollection_BaseAllocator",
                             header: "NCollection_BaseAllocator.hxx", bycopy.} = object of StandardTransient ##  ---------- PUBLIC METHODS ------------
                                                                                                      ## ! Constructor - prohibited
                                                                                                      ## ! Copy constructor - prohibited
                                                                                                      ##  ---------- CasCade RunTime Type Information


proc allocate*(this: var NCollectionBaseAllocator; size: csize_t): pointer {.
    importcpp: "Allocate", header: "NCollection_BaseAllocator.hxx".}
proc free*(this: var NCollectionBaseAllocator; anAddress: pointer) {.
    importcpp: "Free", header: "NCollection_BaseAllocator.hxx".}
proc commonBaseAllocator*(): Handle[NCollectionBaseAllocator] {.
    importcpp: "NCollection_BaseAllocator::CommonBaseAllocator(@)",
    header: "NCollection_BaseAllocator.hxx".}
proc standardCallBack*(theIsAlloc: bool; theStorage: StandardAddress;
                      theRoundSize: StandardSize; theSize: StandardSize) {.
    importcpp: "NCollection_BaseAllocator::StandardCallBack(@)",
    header: "NCollection_BaseAllocator.hxx".}
proc printMemUsageStatistics*() {.importcpp: "NCollection_BaseAllocator::PrintMemUsageStatistics(@)",
                                header: "NCollection_BaseAllocator.hxx".}
type
  NCollectionBaseAllocatorbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "NCollection_BaseAllocator::get_type_name(@)",
                            header: "NCollection_BaseAllocator.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "NCollection_BaseAllocator::get_type_descriptor(@)",
    header: "NCollection_BaseAllocator.hxx".}
proc dynamicType*(this: NCollectionBaseAllocator): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "NCollection_BaseAllocator.hxx".}
discard "forward decl of NCollection_BaseAllocator"
type
  HandleNCollectionBaseAllocator* = Handle[NCollectionBaseAllocator]

