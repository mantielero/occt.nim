when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

##  Created on: 2002-04-18
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

type
  NCollection_DelMapNode* = proc (a1: ptr NCollection_ListNode;
                               theAl: var handle[NCollection_BaseAllocator]) {.
      cdecl.}

## *
##  Purpose:     This is a base class for all Maps:
##                 Map
##                 DataMap
##                 DoubleMap
##                 IndexedMap
##                 IndexedDataMap
##               Provides utilitites for managing the buckets.
##

type
  NCollection_BaseMap* {.importcpp: "NCollection_BaseMap",
                        header: "NCollection_BaseMap.hxx", bycopy.} = object ## ! Memory
                                                                        ## allocation
                                                                        ##
                                                                        ## **************************************** Class Iterator
                                                                        ## ****************
                                                                        ##
                                                                        ## ---------- PUBLIC METHODS
                                                                        ## ------------
                                                                        ## !
                                                                        ## NbBuckets
                                                                        ##  --------
                                                                        ## PROTECTED METHODS
                                                                        ## -----------
                                                                        ## !
                                                                        ## Constructor
                                                                        ##
                                                                        ## ---------
                                                                        ## PROTECTED FIELDS
                                                                        ## -----------
                                                                        ##
                                                                        ## ---------- PRIVATE FIELDS
                                                                        ## ------------
    ##  ---------- FRIEND CLASSES ------------

  NCollection_BaseMapIterator* {.importcpp: "NCollection_BaseMap::Iterator",
                                header: "NCollection_BaseMap.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Empty
                                                                                ## constructor
                                                                                ##
                                                                                ## !
                                                                                ## Initialize
                                                                                ##
                                                                                ## !
                                                                                ## PMore
                                                                                ##
                                                                                ## ----------
                                                                                ## PRIVATE
                                                                                ## FIELDS
                                                                                ## ------------
    ## !< Total buckets in the map
    ## !< Location in memory
    ## !< Current bucket
    ## !< Current node


proc Initialize*(this: var NCollection_BaseMapIterator; theMap: NCollection_BaseMap) {.
    cdecl, importcpp: "Initialize", dynlib: tkernel.}
proc Reset*(this: var NCollection_BaseMapIterator) {.cdecl, importcpp: "Reset",
    dynlib: tkernel.}
proc IsEqual*(this: NCollection_BaseMapIterator;
             theOther: NCollection_BaseMapIterator): Standard_Boolean {.
    noSideEffect, cdecl, importcpp: "IsEqual", dynlib: tkernel.}
proc NbBuckets*(this: NCollection_BaseMap): cint {.noSideEffect, cdecl,
    importcpp: "NbBuckets", dynlib: tkernel.}
proc Extent*(this: NCollection_BaseMap): cint {.noSideEffect, cdecl,
    importcpp: "Extent", dynlib: tkernel.}
proc IsEmpty*(this: NCollection_BaseMap): Standard_Boolean {.noSideEffect, cdecl,
    importcpp: "IsEmpty", dynlib: tkernel.}
proc Statistics*(this: NCollection_BaseMap; S: var Standard_OStream) {.noSideEffect,
    cdecl, importcpp: "Statistics", dynlib: tkernel.}
proc Allocator*(this: NCollection_BaseMap): handle[NCollection_BaseAllocator] {.
    noSideEffect, cdecl, importcpp: "Allocator", dynlib: tkernel.}