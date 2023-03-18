import ../tdf/tdf_types
import ../tcolstd/tcolstd_types
import xcafdoc_types
import ../standard/standard_types
import ../tcollection/tcollection_types



##  Created on: 2004-01-09
##  Created by: Sergey KUUL
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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





proc newXCAFDocDimTol*(): XCAFDocDimTol {.cdecl, constructor,
                                       importcpp: "XCAFDoc_DimTol(@)",
                                       header: "XCAFDoc_DimTol.hxx".}
proc getID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc_DimTol::GetID(@)",
                           header: "XCAFDoc_DimTol.hxx".}
proc set*(label: TDF_Label; kind: cint; aVal: Handle[TColStdHArray1OfReal];
         aName: Handle[TCollectionHAsciiString];
         aDescription: Handle[TCollectionHAsciiString]): Handle[XCAFDocDimTol] {.
    cdecl, importcpp: "XCAFDoc_DimTol::Set(@)", header: "XCAFDoc_DimTol.hxx".}
proc set*(this: var XCAFDocDimTol; kind: cint; aVal: Handle[TColStdHArray1OfReal];
         aName: Handle[TCollectionHAsciiString];
         aDescription: Handle[TCollectionHAsciiString]) {.cdecl, importcpp: "Set",
    header: "XCAFDoc_DimTol.hxx".}
proc getKind*(this: XCAFDocDimTol): cint {.noSideEffect, cdecl, importcpp: "GetKind",
                                       header: "XCAFDoc_DimTol.hxx".}
proc getVal*(this: XCAFDocDimTol): Handle[TColStdHArray1OfReal] {.noSideEffect,
    cdecl, importcpp: "GetVal", header: "XCAFDoc_DimTol.hxx".}
proc getName*(this: XCAFDocDimTol): Handle[TCollectionHAsciiString] {.noSideEffect,
    cdecl, importcpp: "GetName", header: "XCAFDoc_DimTol.hxx".}
proc getDescription*(this: XCAFDocDimTol): Handle[TCollectionHAsciiString] {.
    noSideEffect, cdecl, importcpp: "GetDescription", header: "XCAFDoc_DimTol.hxx".}
proc id*(this: XCAFDocDimTol): StandardGUID {.noSideEffect, cdecl, importcpp: "ID",
    header: "XCAFDoc_DimTol.hxx".}
proc restore*(this: var XCAFDocDimTol; with: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "XCAFDoc_DimTol.hxx".}
proc newEmpty*(this: XCAFDocDimTol): Handle[TDF_Attribute] {.noSideEffect, cdecl,
    importcpp: "NewEmpty", header: "XCAFDoc_DimTol.hxx".}
proc paste*(this: XCAFDocDimTol; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "XCAFDoc_DimTol.hxx".}
proc dumpJson*(this: XCAFDocDimTol; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_DimTol.hxx".}

