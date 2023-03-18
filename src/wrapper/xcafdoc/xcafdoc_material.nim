import ../tdf/tdf_types
import xcafdoc_types
import ../standard/standard_types
import ../tcollection/tcollection_types



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





proc newXCAFDocMaterial*(): XCAFDocMaterial {.cdecl, constructor,
    importcpp: "XCAFDoc_Material(@)", header: "XCAFDoc_Material.hxx".}
proc getID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc_Material::GetID(@)",
                           header: "XCAFDoc_Material.hxx".}
proc set*(label: TDF_Label; aName: Handle[TCollectionHAsciiString];
         aDescription: Handle[TCollectionHAsciiString]; aDensity: cfloat;
         aDensName: Handle[TCollectionHAsciiString];
         aDensValType: Handle[TCollectionHAsciiString]): Handle[XCAFDocMaterial] {.
    cdecl, importcpp: "XCAFDoc_Material::Set(@)", header: "XCAFDoc_Material.hxx".}
proc set*(this: var XCAFDocMaterial; aName: Handle[TCollectionHAsciiString];
         aDescription: Handle[TCollectionHAsciiString]; aDensity: cfloat;
         aDensName: Handle[TCollectionHAsciiString];
         aDensValType: Handle[TCollectionHAsciiString]) {.cdecl, importcpp: "Set",
    header: "XCAFDoc_Material.hxx".}
proc getName*(this: XCAFDocMaterial): Handle[TCollectionHAsciiString] {.
    noSideEffect, cdecl, importcpp: "GetName", header: "XCAFDoc_Material.hxx".}
proc getDescription*(this: XCAFDocMaterial): Handle[TCollectionHAsciiString] {.
    noSideEffect, cdecl, importcpp: "GetDescription", header: "XCAFDoc_Material.hxx".}
proc getDensity*(this: XCAFDocMaterial): cfloat {.noSideEffect, cdecl,
    importcpp: "GetDensity", header: "XCAFDoc_Material.hxx".}
proc getDensName*(this: XCAFDocMaterial): Handle[TCollectionHAsciiString] {.
    noSideEffect, cdecl, importcpp: "GetDensName", header: "XCAFDoc_Material.hxx".}
proc getDensValType*(this: XCAFDocMaterial): Handle[TCollectionHAsciiString] {.
    noSideEffect, cdecl, importcpp: "GetDensValType", header: "XCAFDoc_Material.hxx".}
proc id*(this: XCAFDocMaterial): StandardGUID {.noSideEffect, cdecl, importcpp: "ID",
    header: "XCAFDoc_Material.hxx".}
proc restore*(this: var XCAFDocMaterial; with: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "XCAFDoc_Material.hxx".}
proc newEmpty*(this: XCAFDocMaterial): Handle[TDF_Attribute] {.noSideEffect, cdecl,
    importcpp: "NewEmpty", header: "XCAFDoc_Material.hxx".}
proc paste*(this: XCAFDocMaterial; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "XCAFDoc_Material.hxx".}
proc dumpJson*(this: XCAFDocMaterial; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_Material.hxx".}

