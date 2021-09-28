##  Created on: 2017-02-16
##  Created by: Sergey NIKONOV
##  Copyright (c) 2000-2017 OPEN CASCADE SAS
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

## ! Unique item identifier in the hierarchical product structure.
## ! A full path to an assembly component in the "part-of" graph starting from
## ! the root node.

type
  XCAFDocAssemblyItemId* {.importcpp: "XCAFDoc_AssemblyItemId",
                          header: "XCAFDoc_AssemblyItemId.hxx", bycopy.} = object ## !
                                                                             ## Constructs an
                                                                             ## empty
                                                                             ## item ID.
    ## /< List of label entries


proc constructXCAFDocAssemblyItemId*(): XCAFDocAssemblyItemId {.constructor,
    importcpp: "XCAFDoc_AssemblyItemId(@)", header: "XCAFDoc_AssemblyItemId.hxx".}
proc constructXCAFDocAssemblyItemId*(thePath: TColStdListOfAsciiString): XCAFDocAssemblyItemId {.
    constructor, importcpp: "XCAFDoc_AssemblyItemId(@)",
    header: "XCAFDoc_AssemblyItemId.hxx".}
proc constructXCAFDocAssemblyItemId*(theString: TCollectionAsciiString): XCAFDocAssemblyItemId {.
    constructor, importcpp: "XCAFDoc_AssemblyItemId(@)",
    header: "XCAFDoc_AssemblyItemId.hxx".}
proc init*(this: var XCAFDocAssemblyItemId; thePath: TColStdListOfAsciiString) {.
    importcpp: "Init", header: "XCAFDoc_AssemblyItemId.hxx".}
proc init*(this: var XCAFDocAssemblyItemId; theString: TCollectionAsciiString) {.
    importcpp: "Init", header: "XCAFDoc_AssemblyItemId.hxx".}
proc isNull*(this: XCAFDocAssemblyItemId): bool {.noSideEffect, importcpp: "IsNull",
    header: "XCAFDoc_AssemblyItemId.hxx".}
proc nullify*(this: var XCAFDocAssemblyItemId) {.importcpp: "Nullify",
    header: "XCAFDoc_AssemblyItemId.hxx".}
proc isChild*(this: XCAFDocAssemblyItemId; theOther: XCAFDocAssemblyItemId): bool {.
    noSideEffect, importcpp: "IsChild", header: "XCAFDoc_AssemblyItemId.hxx".}
proc isDirectChild*(this: XCAFDocAssemblyItemId; theOther: XCAFDocAssemblyItemId): bool {.
    noSideEffect, importcpp: "IsDirectChild", header: "XCAFDoc_AssemblyItemId.hxx".}
proc isEqual*(this: XCAFDocAssemblyItemId; theOther: XCAFDocAssemblyItemId): bool {.
    noSideEffect, importcpp: "IsEqual", header: "XCAFDoc_AssemblyItemId.hxx".}
proc getPath*(this: XCAFDocAssemblyItemId): TColStdListOfAsciiString {.noSideEffect,
    importcpp: "GetPath", header: "XCAFDoc_AssemblyItemId.hxx".}
proc toString*(this: XCAFDocAssemblyItemId): TCollectionAsciiString {.noSideEffect,
    importcpp: "ToString", header: "XCAFDoc_AssemblyItemId.hxx".}
proc dumpJson*(this: XCAFDocAssemblyItemId; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "XCAFDoc_AssemblyItemId.hxx".}
type
  XCAFDocAssemblyItemIdHasher* {.importcpp: "XCAFDoc_AssemblyItemId::Hasher",
                                header: "XCAFDoc_AssemblyItemId.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Computes
                                                                                   ## a
                                                                                   ## hash
                                                                                   ## code
                                                                                   ## for
                                                                                   ## the
                                                                                   ## given
                                                                                   ## value
                                                                                   ## of
                                                                                   ## the
                                                                                   ## XCAFDoc_AssemblyItemId,
                                                                                   ## in
                                                                                   ## range
                                                                                   ## [1,
                                                                                   ## theUpperBound]
                                                                                   ##
                                                                                   ## !
                                                                                   ## @param
                                                                                   ## theAssemblyItemId
                                                                                   ## the
                                                                                   ## value
                                                                                   ## of
                                                                                   ## the
                                                                                   ## XCAFDoc_AssemblyItemId
                                                                                   ## type
                                                                                   ## which
                                                                                   ## hash
                                                                                   ## code
                                                                                   ## is
                                                                                   ## to
                                                                                   ## be
                                                                                   ## computed
                                                                                   ##
                                                                                   ## !
                                                                                   ## @param
                                                                                   ## theUpperBound
                                                                                   ## the
                                                                                   ## upper
                                                                                   ## bound
                                                                                   ## of
                                                                                   ## the
                                                                                   ## range
                                                                                   ## a
                                                                                   ## computing
                                                                                   ## hash
                                                                                   ## code
                                                                                   ## must
                                                                                   ## be
                                                                                   ## within
                                                                                   ##
                                                                                   ## !
                                                                                   ## @return
                                                                                   ## a
                                                                                   ## computed
                                                                                   ## hash
                                                                                   ## code,
                                                                                   ## in
                                                                                   ## range
                                                                                   ## [1,
                                                                                   ## theUpperBound]


proc hashCode*(theAssemblyItemId: XCAFDocAssemblyItemId; theUpperBound: int): int {.
    importcpp: "Hasher::HashCode(@)", header: "XCAFDoc_AssemblyItemId.hxx".}
proc isEqual*(theItem1: XCAFDocAssemblyItemId; theItem2: XCAFDocAssemblyItemId): cint {.
    importcpp: "Hasher::IsEqual(@)", header: "XCAFDoc_AssemblyItemId.hxx".}














































