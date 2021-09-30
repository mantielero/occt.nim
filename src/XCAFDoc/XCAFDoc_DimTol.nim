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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of XCAFDoc_DimTol"
discard "forward decl of XCAFDoc_DimTol"
type
  HandleC1C1* = Handle[XCAFDocDimTol]

## ! attribute to store dimension and tolerance

type
  XCAFDocDimTol* {.importcpp: "XCAFDoc_DimTol", header: "XCAFDoc_DimTol.hxx", bycopy.} = object of TDF_Attribute


proc constructXCAFDocDimTol*(): XCAFDocDimTol {.constructor,
    importcpp: "XCAFDoc_DimTol(@)", header: "XCAFDoc_DimTol.hxx".}
proc getID*(): StandardGUID {.importcpp: "XCAFDoc_DimTol::GetID(@)",
                           header: "XCAFDoc_DimTol.hxx".}
proc set*(label: TDF_Label; kind: cint; aVal: Handle[TColStdHArray1OfReal];
         aName: Handle[TCollectionHAsciiString];
         aDescription: Handle[TCollectionHAsciiString]): Handle[XCAFDocDimTol] {.
    importcpp: "XCAFDoc_DimTol::Set(@)", header: "XCAFDoc_DimTol.hxx".}
proc set*(this: var XCAFDocDimTol; kind: cint; aVal: Handle[TColStdHArray1OfReal];
         aName: Handle[TCollectionHAsciiString];
         aDescription: Handle[TCollectionHAsciiString]) {.importcpp: "Set",
    header: "XCAFDoc_DimTol.hxx".}
proc getKind*(this: XCAFDocDimTol): cint {.noSideEffect, importcpp: "GetKind",
                                       header: "XCAFDoc_DimTol.hxx".}
proc getVal*(this: XCAFDocDimTol): Handle[TColStdHArray1OfReal] {.noSideEffect,
    importcpp: "GetVal", header: "XCAFDoc_DimTol.hxx".}
proc getName*(this: XCAFDocDimTol): Handle[TCollectionHAsciiString] {.noSideEffect,
    importcpp: "GetName", header: "XCAFDoc_DimTol.hxx".}
proc getDescription*(this: XCAFDocDimTol): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "GetDescription", header: "XCAFDoc_DimTol.hxx".}
proc id*(this: XCAFDocDimTol): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_DimTol.hxx".}
proc restore*(this: var XCAFDocDimTol; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "XCAFDoc_DimTol.hxx".}
proc newEmpty*(this: XCAFDocDimTol): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XCAFDoc_DimTol.hxx".}
proc paste*(this: XCAFDocDimTol; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "XCAFDoc_DimTol.hxx".}
proc dumpJson*(this: XCAFDocDimTol; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "XCAFDoc_DimTol.hxx".}
type
  XCAFDocDimTolbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "XCAFDoc_DimTol::get_type_name(@)",
                            header: "XCAFDoc_DimTol.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XCAFDoc_DimTol::get_type_descriptor(@)",
    header: "XCAFDoc_DimTol.hxx".}
proc dynamicType*(this: XCAFDocDimTol): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "XCAFDoc_DimTol.hxx".}

























