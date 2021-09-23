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

import
  ../Standard/Standard_Transient, ../Standard/Standard_Type, NCollection_TypeDef

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
  NCollection_BaseAllocator* {.importcpp: "NCollection_BaseAllocator",
                              header: "NCollection_BaseAllocator.hxx", bycopy.} = object of Standard_Transient ##  ---------- PUBLIC METHODS ------------
                                                                                                        ## ! Constructor - prohibited
                                                                                                        ## ! Copy constructor - prohibited
                                                                                                        ##  ---------- CasCade RunTime Type Information


proc Allocate*(this: var NCollection_BaseAllocator; size: csize_t): pointer {.
    importcpp: "Allocate", header: "NCollection_BaseAllocator.hxx".}
proc Free*(this: var NCollection_BaseAllocator; anAddress: pointer) {.
    importcpp: "Free", header: "NCollection_BaseAllocator.hxx".}
proc CommonBaseAllocator*(): handle[NCollection_BaseAllocator] {.
    importcpp: "NCollection_BaseAllocator::CommonBaseAllocator(@)",
    header: "NCollection_BaseAllocator.hxx".}
proc StandardCallBack*(theIsAlloc: Standard_Boolean; theStorage: Standard_Address;
                      theRoundSize: Standard_Size; theSize: Standard_Size) {.
    importcpp: "NCollection_BaseAllocator::StandardCallBack(@)",
    header: "NCollection_BaseAllocator.hxx".}
proc PrintMemUsageStatistics*() {.importcpp: "NCollection_BaseAllocator::PrintMemUsageStatistics(@)",
                                header: "NCollection_BaseAllocator.hxx".}
type
  NCollection_BaseAllocatorbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "NCollection_BaseAllocator::get_type_name(@)",
                              header: "NCollection_BaseAllocator.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "NCollection_BaseAllocator::get_type_descriptor(@)",
    header: "NCollection_BaseAllocator.hxx".}
proc DynamicType*(this: NCollection_BaseAllocator): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "NCollection_BaseAllocator.hxx".}
discard "forward decl of NCollection_BaseAllocator"
type
  Handle_NCollection_BaseAllocator* = handle[NCollection_BaseAllocator]
