import xcafdoc_types

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


proc newXCAFDoc_AssemblyItemId*(): XCAFDoc_AssemblyItemId {.cdecl, constructor,
    importcpp: "XCAFDoc_AssemblyItemId(@)", header: "XCAFDoc_AssemblyItemId.hxx".}
proc newXCAFDoc_AssemblyItemId*(thePath: TColStd_ListOfAsciiString): XCAFDoc_AssemblyItemId {.
    cdecl, constructor, importcpp: "XCAFDoc_AssemblyItemId(@)",
    header: "XCAFDoc_AssemblyItemId.hxx".}
proc newXCAFDoc_AssemblyItemId*(theString: TCollection_AsciiString): XCAFDoc_AssemblyItemId {.
    cdecl, constructor, importcpp: "XCAFDoc_AssemblyItemId(@)",
    header: "XCAFDoc_AssemblyItemId.hxx".}
proc Init*(this: var XCAFDoc_AssemblyItemId; thePath: TColStd_ListOfAsciiString) {.
    cdecl, importcpp: "Init", header: "XCAFDoc_AssemblyItemId.hxx".}
proc Init*(this: var XCAFDoc_AssemblyItemId; theString: TCollection_AsciiString) {.
    cdecl, importcpp: "Init", header: "XCAFDoc_AssemblyItemId.hxx".}
proc IsNull*(this: XCAFDoc_AssemblyItemId): bool {.noSideEffect, cdecl,
    importcpp: "IsNull", header: "XCAFDoc_AssemblyItemId.hxx".}
proc Nullify*(this: var XCAFDoc_AssemblyItemId) {.cdecl, importcpp: "Nullify",
    header: "XCAFDoc_AssemblyItemId.hxx".}
proc IsChild*(this: XCAFDoc_AssemblyItemId; theOther: XCAFDoc_AssemblyItemId): bool {.
    noSideEffect, cdecl, importcpp: "IsChild", header: "XCAFDoc_AssemblyItemId.hxx".}
proc IsDirectChild*(this: XCAFDoc_AssemblyItemId; theOther: XCAFDoc_AssemblyItemId): bool {.
    noSideEffect, cdecl, importcpp: "IsDirectChild",
    header: "XCAFDoc_AssemblyItemId.hxx".}
proc IsEqual*(this: XCAFDoc_AssemblyItemId; theOther: XCAFDoc_AssemblyItemId): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", header: "XCAFDoc_AssemblyItemId.hxx".}
proc GetPath*(this: XCAFDoc_AssemblyItemId): TColStd_ListOfAsciiString {.
    noSideEffect, cdecl, importcpp: "GetPath", header: "XCAFDoc_AssemblyItemId.hxx".}
proc ToString*(this: XCAFDoc_AssemblyItemId): TCollection_AsciiString {.
    noSideEffect, cdecl, importcpp: "ToString", header: "XCAFDoc_AssemblyItemId.hxx".}
proc DumpJson*(this: XCAFDoc_AssemblyItemId; theOStream: var Standard_OStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_AssemblyItemId.hxx".}
type
  XCAFDoc_AssemblyItemIdHasher* {.importcpp: "XCAFDoc_AssemblyItemId::Hasher",
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


proc HashCode*(theAssemblyItemId: XCAFDoc_AssemblyItemId; theUpperBound: cint): cint {.
    cdecl, importcpp: "Hasher::HashCode(@)", header: "XCAFDoc_AssemblyItemId.hxx".}
proc IsEqual*(theItem1: XCAFDoc_AssemblyItemId; theItem2: XCAFDoc_AssemblyItemId): cint {.
    cdecl, importcpp: "Hasher::IsEqual(@)", header: "XCAFDoc_AssemblyItemId.hxx".}