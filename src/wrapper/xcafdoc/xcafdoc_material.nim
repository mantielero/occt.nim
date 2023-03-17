import xcafdoc_types

##  Created on: 2003-03-05
##  Created by: Sergey KUUL
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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
discard "forward decl of XCAFDoc_Material"


proc newXCAFDoc_Material*(): XCAFDoc_Material {.cdecl, constructor,
    importcpp: "XCAFDoc_Material(@)", header: "XCAFDoc_Material.hxx".}
proc GetID*(): Standard_GUID {.cdecl, importcpp: "XCAFDoc_Material::GetID(@)",
                            header: "XCAFDoc_Material.hxx".}
proc Set*(label: TDF_Label; aName: handle[TCollection_HAsciiString];
         aDescription: handle[TCollection_HAsciiString]; aDensity: cfloat;
         aDensName: handle[TCollection_HAsciiString];
         aDensValType: handle[TCollection_HAsciiString]): handle[XCAFDoc_Material] {.
    cdecl, importcpp: "XCAFDoc_Material::Set(@)", header: "XCAFDoc_Material.hxx".}
proc Set*(this: var XCAFDoc_Material; aName: handle[TCollection_HAsciiString];
         aDescription: handle[TCollection_HAsciiString]; aDensity: cfloat;
         aDensName: handle[TCollection_HAsciiString];
         aDensValType: handle[TCollection_HAsciiString]) {.cdecl, importcpp: "Set",
    header: "XCAFDoc_Material.hxx".}
proc GetName*(this: XCAFDoc_Material): handle[TCollection_HAsciiString] {.
    noSideEffect, cdecl, importcpp: "GetName", header: "XCAFDoc_Material.hxx".}
proc GetDescription*(this: XCAFDoc_Material): handle[TCollection_HAsciiString] {.
    noSideEffect, cdecl, importcpp: "GetDescription", header: "XCAFDoc_Material.hxx".}
proc GetDensity*(this: XCAFDoc_Material): cfloat {.noSideEffect, cdecl,
    importcpp: "GetDensity", header: "XCAFDoc_Material.hxx".}
proc GetDensName*(this: XCAFDoc_Material): handle[TCollection_HAsciiString] {.
    noSideEffect, cdecl, importcpp: "GetDensName", header: "XCAFDoc_Material.hxx".}
proc GetDensValType*(this: XCAFDoc_Material): handle[TCollection_HAsciiString] {.
    noSideEffect, cdecl, importcpp: "GetDensValType", header: "XCAFDoc_Material.hxx".}
proc ID*(this: XCAFDoc_Material): Standard_GUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "XCAFDoc_Material.hxx".}
proc Restore*(this: var XCAFDoc_Material; With: handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "XCAFDoc_Material.hxx".}
proc NewEmpty*(this: XCAFDoc_Material): handle[TDF_Attribute] {.noSideEffect, cdecl,
    importcpp: "NewEmpty", header: "XCAFDoc_Material.hxx".}
proc Paste*(this: XCAFDoc_Material; Into: handle[TDF_Attribute];
           RT: handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "XCAFDoc_Material.hxx".}
proc DumpJson*(this: XCAFDoc_Material; theOStream: var Standard_OStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_Material.hxx".}