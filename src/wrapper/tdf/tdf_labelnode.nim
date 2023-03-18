import tdf_types
import ../standard/standard_types



##  Created by: DAUTRY Philippe
##  Copyright (c) 1997-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

when defined(Standard_HASATOMIC):
  discard
const
  TDF_LabelNodeImportMsk* = cast[cint](0x80000000) ##  Because the sign bit (HP).
  TDF_LabelNodeAttModMsk* = 0x40000000
  TDF_LabelNodeMayModMsk* = 0x20000000
  TDF_LabelNodeFlagsMsk* = (
    TDF_LabelNodeImportMsk or TDF_LabelNodeAttModMsk or TDF_LabelNodeMayModMsk)

## =======================================================================
## class: TDF_LabelNode
## =======================================================================



proc father*(this: TDF_LabelNode): ptr TDF_LabelNode {.noSideEffect, cdecl,
    importcpp: "Father", header: "TDF_LabelNode.hxx".}
proc brother*(this: TDF_LabelNode): ptr TDF_LabelNode {.noSideEffect, cdecl,
    importcpp: "Brother", header: "TDF_LabelNode.hxx".}
proc firstChild*(this: TDF_LabelNode): ptr TDF_LabelNode {.noSideEffect, cdecl,
    importcpp: "FirstChild", header: "TDF_LabelNode.hxx".}
proc firstAttribute*(this: TDF_LabelNode): Handle[TDF_Attribute] {.noSideEffect,
    cdecl, importcpp: "FirstAttribute", header: "TDF_LabelNode.hxx".}
proc tag*(this: TDF_LabelNode): cint {.noSideEffect, cdecl, importcpp: "Tag",
                                   header: "TDF_LabelNode.hxx".}
proc depth*(this: TDF_LabelNode): cint {.noSideEffect, cdecl, importcpp: "Depth",
                                     header: "TDF_LabelNode.hxx".}
proc isRoot*(this: TDF_LabelNode): bool {.noSideEffect, cdecl, importcpp: "IsRoot",
                                      header: "TDF_LabelNode.hxx".}
proc data*(this: TDF_LabelNode): ptr TDF_Data {.noSideEffect, cdecl, importcpp: "Data",
    header: "TDF_LabelNode.hxx".}
proc attributesModified*(this: var TDF_LabelNode; aStatus: bool) {.cdecl,
    importcpp: "AttributesModified", header: "TDF_LabelNode.hxx".}
proc attributesModified*(this: TDF_LabelNode): bool {.noSideEffect, cdecl,
    importcpp: "AttributesModified", header: "TDF_LabelNode.hxx".}
proc mayBeModified*(this: var TDF_LabelNode; aStatus: bool) {.cdecl,
    importcpp: "MayBeModified", header: "TDF_LabelNode.hxx".}
proc mayBeModified*(this: TDF_LabelNode): bool {.noSideEffect, cdecl,
    importcpp: "MayBeModified", header: "TDF_LabelNode.hxx".}

