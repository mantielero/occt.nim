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
discard "forward decl of XCAFDoc_Material"
type
  HandleXCAFDocMaterial* = Handle[XCAFDocMaterial]

## ! attribute to store material

type
  XCAFDocMaterial* {.importcpp: "XCAFDoc_Material", header: "XCAFDoc_Material.hxx",
                    bycopy.} = object of TDF_Attribute


proc constructXCAFDocMaterial*(): XCAFDocMaterial {.constructor,
    importcpp: "XCAFDoc_Material(@)", header: "XCAFDoc_Material.hxx".}
proc getID*(): StandardGUID {.importcpp: "XCAFDoc_Material::GetID(@)",
                           header: "XCAFDoc_Material.hxx".}
proc set*(label: TDF_Label; aName: Handle[TCollectionHAsciiString];
         aDescription: Handle[TCollectionHAsciiString]; aDensity: float;
         aDensName: Handle[TCollectionHAsciiString];
         aDensValType: Handle[TCollectionHAsciiString]): Handle[XCAFDocMaterial] {.
    importcpp: "XCAFDoc_Material::Set(@)", header: "XCAFDoc_Material.hxx".}
proc set*(this: var XCAFDocMaterial; aName: Handle[TCollectionHAsciiString];
         aDescription: Handle[TCollectionHAsciiString]; aDensity: float;
         aDensName: Handle[TCollectionHAsciiString];
         aDensValType: Handle[TCollectionHAsciiString]) {.importcpp: "Set",
    header: "XCAFDoc_Material.hxx".}
proc getName*(this: XCAFDocMaterial): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "GetName", header: "XCAFDoc_Material.hxx".}
proc getDescription*(this: XCAFDocMaterial): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "GetDescription", header: "XCAFDoc_Material.hxx".}
proc getDensity*(this: XCAFDocMaterial): float {.noSideEffect,
    importcpp: "GetDensity", header: "XCAFDoc_Material.hxx".}
proc getDensName*(this: XCAFDocMaterial): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "GetDensName", header: "XCAFDoc_Material.hxx".}
proc getDensValType*(this: XCAFDocMaterial): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "GetDensValType", header: "XCAFDoc_Material.hxx".}
proc id*(this: XCAFDocMaterial): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_Material.hxx".}
proc restore*(this: var XCAFDocMaterial; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "XCAFDoc_Material.hxx".}
proc newEmpty*(this: XCAFDocMaterial): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XCAFDoc_Material.hxx".}
proc paste*(this: XCAFDocMaterial; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "XCAFDoc_Material.hxx".}
proc dumpJson*(this: XCAFDocMaterial; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "XCAFDoc_Material.hxx".}
type
  XCAFDocMaterialbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "XCAFDoc_Material::get_type_name(@)",
                            header: "XCAFDoc_Material.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XCAFDoc_Material::get_type_descriptor(@)",
    header: "XCAFDoc_Material.hxx".}
proc dynamicType*(this: XCAFDocMaterial): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "XCAFDoc_Material.hxx".}
