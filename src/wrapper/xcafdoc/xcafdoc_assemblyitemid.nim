import ../tcolstd/tcolstd_types
import xcafdoc_types
import ../standard/standard_types
import ../tcollection/tcollection_types



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



proc newXCAFDocAssemblyItemId*(): XCAFDocAssemblyItemId {.cdecl, constructor,
    importcpp: "XCAFDoc_AssemblyItemId(@)", header: "XCAFDoc_AssemblyItemId.hxx".}
proc newXCAFDocAssemblyItemId*(thePath: TColStdListOfAsciiString): XCAFDocAssemblyItemId {.
    cdecl, constructor, importcpp: "XCAFDoc_AssemblyItemId(@)",
    header: "XCAFDoc_AssemblyItemId.hxx".}
proc newXCAFDocAssemblyItemId*(theString: TCollectionAsciiString): XCAFDocAssemblyItemId {.
    cdecl, constructor, importcpp: "XCAFDoc_AssemblyItemId(@)",
    header: "XCAFDoc_AssemblyItemId.hxx".}
proc init*(this: var XCAFDocAssemblyItemId; thePath: TColStdListOfAsciiString) {.
    cdecl, importcpp: "Init", header: "XCAFDoc_AssemblyItemId.hxx".}
proc init*(this: var XCAFDocAssemblyItemId; theString: TCollectionAsciiString) {.
    cdecl, importcpp: "Init", header: "XCAFDoc_AssemblyItemId.hxx".}
proc isNull*(this: XCAFDocAssemblyItemId): bool {.noSideEffect, cdecl,
    importcpp: "IsNull", header: "XCAFDoc_AssemblyItemId.hxx".}
proc nullify*(this: var XCAFDocAssemblyItemId) {.cdecl, importcpp: "Nullify",
    header: "XCAFDoc_AssemblyItemId.hxx".}
proc isChild*(this: XCAFDocAssemblyItemId; theOther: XCAFDocAssemblyItemId): bool {.
    noSideEffect, cdecl, importcpp: "IsChild", header: "XCAFDoc_AssemblyItemId.hxx".}
proc isDirectChild*(this: XCAFDocAssemblyItemId; theOther: XCAFDocAssemblyItemId): bool {.
    noSideEffect, cdecl, importcpp: "IsDirectChild",
    header: "XCAFDoc_AssemblyItemId.hxx".}
proc isEqual*(this: XCAFDocAssemblyItemId; theOther: XCAFDocAssemblyItemId): bool {.
    noSideEffect, cdecl, importcpp: "IsEqual", header: "XCAFDoc_AssemblyItemId.hxx".}
proc getPath*(this: XCAFDocAssemblyItemId): TColStdListOfAsciiString {.noSideEffect,
    cdecl, importcpp: "GetPath", header: "XCAFDoc_AssemblyItemId.hxx".}
proc toString*(this: XCAFDocAssemblyItemId): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "ToString", header: "XCAFDoc_AssemblyItemId.hxx".}
proc dumpJson*(this: XCAFDocAssemblyItemId; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_AssemblyItemId.hxx".}


proc hashCode*(theAssemblyItemId: XCAFDocAssemblyItemId; theUpperBound: cint): cint {.
    cdecl, importcpp: "Hasher::HashCode(@)", header: "XCAFDoc_AssemblyItemId.hxx".}
proc isEqual*(theItem1: XCAFDocAssemblyItemId; theItem2: XCAFDocAssemblyItemId): cint {.
    cdecl, importcpp: "Hasher::IsEqual(@)", header: "XCAFDoc_AssemblyItemId.hxx".}

