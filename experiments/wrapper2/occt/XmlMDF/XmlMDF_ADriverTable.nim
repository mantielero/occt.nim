##  Created on: 2001-09-26
##  Created by: Julia DOROVSKIKH
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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

discard "forward decl of XmlMDF_ADriver"
discard "forward decl of XmlMDF_ADriverTable"
discard "forward decl of XmlMDF_ADriverTable"
type
  HandleXmlMDF_ADriverTable* = Handle[XmlMDF_ADriverTable]

## ! A driver table is an object building links between
## ! object types and object drivers. In the
## ! translation process, a driver table is asked to
## ! give a translation driver for each current object
## ! to be translated.

type
  XmlMDF_ADriverTable* {.importcpp: "XmlMDF_ADriverTable",
                        header: "XmlMDF_ADriverTable.hxx", bycopy.} = object of StandardTransient ##
                                                                                           ## !
                                                                                           ## Creates
                                                                                           ## a
                                                                                           ## mutable
                                                                                           ## ADriverTable
                                                                                           ## from
                                                                                           ## XmlMDF.


proc constructXmlMDF_ADriverTable*(): XmlMDF_ADriverTable {.constructor,
    importcpp: "XmlMDF_ADriverTable(@)", header: "XmlMDF_ADriverTable.hxx".}
proc addDriver*(this: var XmlMDF_ADriverTable; anHDriver: Handle[XmlMDF_ADriver]) {.
    importcpp: "AddDriver", header: "XmlMDF_ADriverTable.hxx".}
proc addDerivedDriver*(this: var XmlMDF_ADriverTable;
                      theInstance: Handle[TDF_Attribute]) {.
    importcpp: "AddDerivedDriver", header: "XmlMDF_ADriverTable.hxx".}
proc addDerivedDriver*(this: var XmlMDF_ADriverTable;
                      theDerivedType: StandardCString): Handle[StandardType] {.
    importcpp: "AddDerivedDriver", header: "XmlMDF_ADriverTable.hxx".}
proc createDrvMap*(this: var XmlMDF_ADriverTable;
                  theDriverMap: var XmlMDF_MapOfDriver) {.
    importcpp: "CreateDrvMap", header: "XmlMDF_ADriverTable.hxx".}
proc getDriver*(this: var XmlMDF_ADriverTable; theType: Handle[StandardType];
               theDriver: var Handle[XmlMDF_ADriver]): bool {.
    importcpp: "GetDriver", header: "XmlMDF_ADriverTable.hxx".}
type
  XmlMDF_ADriverTablebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "XmlMDF_ADriverTable::get_type_name(@)",
                            header: "XmlMDF_ADriverTable.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlMDF_ADriverTable::get_type_descriptor(@)",
    header: "XmlMDF_ADriverTable.hxx".}
proc dynamicType*(this: XmlMDF_ADriverTable): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "XmlMDF_ADriverTable.hxx".}
