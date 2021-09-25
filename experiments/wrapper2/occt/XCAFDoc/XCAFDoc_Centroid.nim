##  Created on: 2000-09-08
##  Created by: data exchange team
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of gp_Pnt"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of XCAFDoc_Centroid"
discard "forward decl of XCAFDoc_Centroid"
type
  HandleXCAFDocCentroid* = Handle[XCAFDocCentroid]

## ! attribute to store centroid

type
  XCAFDocCentroid* {.importcpp: "XCAFDoc_Centroid", header: "XCAFDoc_Centroid.hxx",
                    bycopy.} = object of TDF_Attribute ## ! class methods
                                                  ## ! =============


proc constructXCAFDocCentroid*(): XCAFDocCentroid {.constructor,
    importcpp: "XCAFDoc_Centroid(@)", header: "XCAFDoc_Centroid.hxx".}
proc getID*(): StandardGUID {.importcpp: "XCAFDoc_Centroid::GetID(@)",
                           header: "XCAFDoc_Centroid.hxx".}
proc set*(label: TDF_Label; pnt: Pnt): Handle[XCAFDocCentroid] {.
    importcpp: "XCAFDoc_Centroid::Set(@)", header: "XCAFDoc_Centroid.hxx".}
proc set*(this: var XCAFDocCentroid; pnt: Pnt) {.importcpp: "Set",
    header: "XCAFDoc_Centroid.hxx".}
proc get*(this: XCAFDocCentroid): Pnt {.noSideEffect, importcpp: "Get",
                                    header: "XCAFDoc_Centroid.hxx".}
proc get*(label: TDF_Label; pnt: var Pnt): bool {.
    importcpp: "XCAFDoc_Centroid::Get(@)", header: "XCAFDoc_Centroid.hxx".}
proc id*(this: XCAFDocCentroid): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_Centroid.hxx".}
proc restore*(this: var XCAFDocCentroid; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "XCAFDoc_Centroid.hxx".}
proc newEmpty*(this: XCAFDocCentroid): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XCAFDoc_Centroid.hxx".}
proc paste*(this: XCAFDocCentroid; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "XCAFDoc_Centroid.hxx".}
proc dump*(this: XCAFDocCentroid; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "XCAFDoc_Centroid.hxx".}
proc dumpJson*(this: XCAFDocCentroid; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "XCAFDoc_Centroid.hxx".}
type
  XCAFDocCentroidbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "XCAFDoc_Centroid::get_type_name(@)",
                            header: "XCAFDoc_Centroid.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XCAFDoc_Centroid::get_type_descriptor(@)",
    header: "XCAFDoc_Centroid.hxx".}
proc dynamicType*(this: XCAFDocCentroid): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "XCAFDoc_Centroid.hxx".}
