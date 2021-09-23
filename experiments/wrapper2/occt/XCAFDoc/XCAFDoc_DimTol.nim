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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../TColStd/TColStd_HArray1OfReal, ../TDF/TDF_Attribute

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of XCAFDoc_DimTol"
discard "forward decl of XCAFDoc_DimTol"
type
  Handle_XCAFDoc_DimTol* = handle[XCAFDoc_DimTol]

## ! attribute to store dimension and tolerance

type
  XCAFDoc_DimTol* {.importcpp: "XCAFDoc_DimTol", header: "XCAFDoc_DimTol.hxx", bycopy.} = object of TDF_Attribute


proc constructXCAFDoc_DimTol*(): XCAFDoc_DimTol {.constructor,
    importcpp: "XCAFDoc_DimTol(@)", header: "XCAFDoc_DimTol.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "XCAFDoc_DimTol::GetID(@)",
                            header: "XCAFDoc_DimTol.hxx".}
proc Set*(label: TDF_Label; kind: Standard_Integer;
         aVal: handle[TColStd_HArray1OfReal];
         aName: handle[TCollection_HAsciiString];
         aDescription: handle[TCollection_HAsciiString]): handle[XCAFDoc_DimTol] {.
    importcpp: "XCAFDoc_DimTol::Set(@)", header: "XCAFDoc_DimTol.hxx".}
proc Set*(this: var XCAFDoc_DimTol; kind: Standard_Integer;
         aVal: handle[TColStd_HArray1OfReal];
         aName: handle[TCollection_HAsciiString];
         aDescription: handle[TCollection_HAsciiString]) {.importcpp: "Set",
    header: "XCAFDoc_DimTol.hxx".}
proc GetKind*(this: XCAFDoc_DimTol): Standard_Integer {.noSideEffect,
    importcpp: "GetKind", header: "XCAFDoc_DimTol.hxx".}
proc GetVal*(this: XCAFDoc_DimTol): handle[TColStd_HArray1OfReal] {.noSideEffect,
    importcpp: "GetVal", header: "XCAFDoc_DimTol.hxx".}
proc GetName*(this: XCAFDoc_DimTol): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "GetName", header: "XCAFDoc_DimTol.hxx".}
proc GetDescription*(this: XCAFDoc_DimTol): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "GetDescription", header: "XCAFDoc_DimTol.hxx".}
proc ID*(this: XCAFDoc_DimTol): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_DimTol.hxx".}
proc Restore*(this: var XCAFDoc_DimTol; With: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "XCAFDoc_DimTol.hxx".}
proc NewEmpty*(this: XCAFDoc_DimTol): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XCAFDoc_DimTol.hxx".}
proc Paste*(this: XCAFDoc_DimTol; Into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "XCAFDoc_DimTol.hxx".}
proc DumpJson*(this: XCAFDoc_DimTol; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "XCAFDoc_DimTol.hxx".}
type
  XCAFDoc_DimTolbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "XCAFDoc_DimTol::get_type_name(@)",
                              header: "XCAFDoc_DimTol.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XCAFDoc_DimTol::get_type_descriptor(@)",
    header: "XCAFDoc_DimTol.hxx".}
proc DynamicType*(this: XCAFDoc_DimTol): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "XCAFDoc_DimTol.hxx".}