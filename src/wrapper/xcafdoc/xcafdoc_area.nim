import xcafdoc_types

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
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of XCAFDoc_Area"


proc newXCAFDoc_Area*(): XCAFDoc_Area {.cdecl, constructor,
                                     importcpp: "XCAFDoc_Area(@)",
                                     header: "XCAFDoc_Area.hxx".}
proc GetID*(): Standard_GUID {.cdecl, importcpp: "XCAFDoc_Area::GetID(@)",
                            header: "XCAFDoc_Area.hxx".}
proc ID*(this: XCAFDoc_Area): Standard_GUID {.noSideEffect, cdecl, importcpp: "ID",
    header: "XCAFDoc_Area.hxx".}
proc Set*(this: var XCAFDoc_Area; vol: cfloat) {.cdecl, importcpp: "Set",
    header: "XCAFDoc_Area.hxx".}
proc Set*(label: TDF_Label; area: cfloat): handle[XCAFDoc_Area] {.cdecl,
    importcpp: "XCAFDoc_Area::Set(@)", header: "XCAFDoc_Area.hxx".}
proc Get*(this: XCAFDoc_Area): cfloat {.noSideEffect, cdecl, importcpp: "Get",
                                    header: "XCAFDoc_Area.hxx".}
proc Get*(label: TDF_Label; area: var cfloat): bool {.cdecl,
    importcpp: "XCAFDoc_Area::Get(@)", header: "XCAFDoc_Area.hxx".}
proc Dump*(this: XCAFDoc_Area; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "XCAFDoc_Area.hxx".}
proc DumpJson*(this: XCAFDoc_Area; theOStream: var Standard_OStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_Area.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_Area , TDataStd_Real ) }
## Error: token expected: ) but got: ,!!!
