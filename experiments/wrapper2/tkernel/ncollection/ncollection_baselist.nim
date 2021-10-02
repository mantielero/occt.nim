when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

##  Created on: 2002-04-17
##  Created by: Alexander Kartomin (akm)
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
##  Purpose:     This is a base  class  for the  List, Set, Queue  and Stack
##               collections. It offers operations on abstract lists (of the
##               objects of class NCollection_ListNode).
##               Apart from this class being  brand new (in TCollection said
##               collections were independent, only using the same class for
##               node representation),  here is an  important new  feature -
##               the  list  length is  continuously updated,  so the  method
##               Extent is quite quick.

type
  NCollection_DelListNode* = proc (a1: ptr NCollection_ListNode;
                                theAl: var handle[NCollection_BaseAllocator]) {.
      cdecl.}

##  ********************************************************** BaseList class

type
  NCollection_BaseList* {.importcpp: "NCollection_BaseList",
                         header: "NCollection_BaseList.hxx", bycopy.} = object ## ! Memory
                                                                          ## allocation
                                                                          ##
                                                                          ## ---------- PUBLIC
                                                                          ## METHODS
                                                                          ## ------------
                                                                          ##
                                                                          ## ******** Extent
                                                                          ##
                                                                          ## Purpose:
                                                                          ## Returns the number of nodes in the list
                                                                          ##
                                                                          ## ---------
                                                                          ## PROTECTED
                                                                          ## METHODS
                                                                          ## ----------
                                                                          ##
                                                                          ## ********
                                                                          ## Constructor
                                                                          ##
                                                                          ## Purpose:
                                                                          ## Initializes an empty list
                                                                          ##
                                                                          ## ------------
                                                                          ## PROTECTED FIELDS
                                                                          ## ------------
    ##  Pointer to the head
    ##  Pointer to the tail
    ##  Actual length
    ##  ------------ FRIEND CLASSES ------------

  NCollection_BaseListIterator* {.importcpp: "NCollection_BaseList::Iterator",
                                 header: "NCollection_BaseList.hxx", bycopy.} = object ##  ******** Empty constructor
    myCurrent* {.importc: "myCurrent".}: ptr NCollection_ListNode ##  Pointer to the current node
    myPrevious* {.importc: "myPrevious".}: ptr NCollection_ListNode ##  Pointer to the previous one


proc constructNCollection_BaseListIterator*(): NCollection_BaseListIterator {.
    cdecl, constructor, importcpp: "NCollection_BaseList::Iterator(@)",
    dynlib: tkernel.}
proc constructNCollection_BaseListIterator*(theList: NCollection_BaseList): NCollection_BaseListIterator {.
    cdecl, constructor, importcpp: "NCollection_BaseList::Iterator(@)",
    dynlib: tkernel.}
proc Init*(this: var NCollection_BaseListIterator; theList: NCollection_BaseList) {.
    cdecl, importcpp: "Init", dynlib: tkernel.}
proc Initialize*(this: var NCollection_BaseListIterator;
                theList: NCollection_BaseList) {.cdecl, importcpp: "Initialize",
    dynlib: tkernel.}
proc More*(this: NCollection_BaseListIterator): bool {.noSideEffect, cdecl,
    importcpp: "More", dynlib: tkernel.}
proc `==`*(this: NCollection_BaseListIterator; theIt: NCollection_BaseListIterator): bool {.
    noSideEffect, cdecl, importcpp: "(# == #)", dynlib: tkernel.}
proc IsEqual*(this: NCollection_BaseListIterator;
             theOther: NCollection_BaseListIterator): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", dynlib: tkernel.}
proc Extent*(this: NCollection_BaseList): cint {.noSideEffect, cdecl,
    importcpp: "Extent", dynlib: tkernel.}
proc IsEmpty*(this: NCollection_BaseList): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", dynlib: tkernel.}
proc Allocator*(this: NCollection_BaseList): handle[NCollection_BaseAllocator] {.
    noSideEffect, cdecl, importcpp: "Allocator", dynlib: tkernel.}
proc destroyNCollection_BaseList*(this: var NCollection_BaseList) {.cdecl,
    importcpp: "#.~NCollection_BaseList()", dynlib: tkernel.}