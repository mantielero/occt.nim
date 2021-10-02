##  Created on: 2005-03-15
##  Created by: Peter KURNEV
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
##  Implementation of raw OCC memory manager which uses standard C
##  functions: malloc (or calloc), free and realloc
##  without any optimization
##

type
  Standard_MMgrRaw* {.importcpp: "Standard_MMgrRaw",
                     header: "Standard_MMgrRaw.hxx", bycopy.} = object of Standard_MMgrRoot ##
                                                                                     ## !
                                                                                     ## Constructor;
                                                                                     ## if
                                                                                     ## aClear
                                                                                     ## is
                                                                                     ## True,
                                                                                     ## the
                                                                                     ## memory
                                                                                     ## will
                                                                                     ## be
                                                                                     ## nullified
                                                                                     ##
                                                                                     ## !
                                                                                     ## upon
                                                                                     ## allocation.
    ## ! Option to nullify allocated memory


proc constructStandard_MMgrRaw*(aClear: Standard_Boolean = Standard_False): Standard_MMgrRaw {.
    cdecl, constructor, importcpp: "Standard_MMgrRaw(@)", dynlib: tkernel.}
proc Allocate*(this: var Standard_MMgrRaw; aSize: csize_t): pointer {.cdecl,
    importcpp: "Allocate", dynlib: tkernel.}
proc Reallocate*(this: var Standard_MMgrRaw; thePtr: pointer; theSize: csize_t): pointer {.
    cdecl, importcpp: "Reallocate", dynlib: tkernel.}
proc Free*(this: var Standard_MMgrRaw; thePtr: pointer) {.cdecl, importcpp: "Free",
    dynlib: tkernel.}