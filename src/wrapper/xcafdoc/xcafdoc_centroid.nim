import ../tdf/tdf_types
import xcafdoc_types
import ../standard/standard_types
import ../gp/gp_types


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





proc newXCAFDocCentroid*(): XCAFDocCentroid {.cdecl, constructor,
    importcpp: "XCAFDoc_Centroid(@)", header: "XCAFDoc_Centroid.hxx".}
proc getID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc_Centroid::GetID(@)",
                           header: "XCAFDoc_Centroid.hxx".}
proc set*(label: TDF_Label; pnt: gp_Pnt): Handle[XCAFDocCentroid] {.cdecl,
    importcpp: "XCAFDoc_Centroid::Set(@)", header: "XCAFDoc_Centroid.hxx".}
proc set*(this: var XCAFDocCentroid; pnt: gp_Pnt) {.cdecl, importcpp: "Set",
    header: "XCAFDoc_Centroid.hxx".}
proc get*(this: XCAFDocCentroid): gp_Pnt {.noSideEffect, cdecl, importcpp: "Get",
                                      header: "XCAFDoc_Centroid.hxx".}
proc get*(label: TDF_Label; pnt: var gp_Pnt): bool {.cdecl,
    importcpp: "XCAFDoc_Centroid::Get(@)", header: "XCAFDoc_Centroid.hxx".}
proc id*(this: XCAFDocCentroid): StandardGUID {.noSideEffect, cdecl, importcpp: "ID",
    header: "XCAFDoc_Centroid.hxx".}
proc restore*(this: var XCAFDocCentroid; with: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "XCAFDoc_Centroid.hxx".}
proc newEmpty*(this: XCAFDocCentroid): Handle[TDF_Attribute] {.noSideEffect, cdecl,
    importcpp: "NewEmpty", header: "XCAFDoc_Centroid.hxx".}
proc paste*(this: XCAFDocCentroid; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "XCAFDoc_Centroid.hxx".}
proc dump*(this: XCAFDocCentroid; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "XCAFDoc_Centroid.hxx".}
proc dumpJson*(this: XCAFDocCentroid; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_Centroid.hxx".}

