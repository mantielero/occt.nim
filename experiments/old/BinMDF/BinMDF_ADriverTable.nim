##  Created on: 2002-10-29
##  Created by: Michael SAZONOV
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

discard "forward decl of BinMDF_ADriver"
discard "forward decl of BinMDF_ADriverTable"
discard "forward decl of BinMDF_ADriverTable"
type
  HandleC1C1* = Handle[BinMDF_ADriverTable]

## ! A driver table is an object building links between
## ! object types and object drivers. In the
## ! translation process, a driver table is asked to
## ! give a translation driver for each current object
## ! to be translated.

type
  BinMDF_ADriverTable* {.importcpp: "BinMDF_ADriverTable",
                        header: "BinMDF_ADriverTable.hxx", bycopy.} = object of StandardTransient ##
                                                                                           ## !
                                                                                           ## Constructor
                                                                                           ##
                                                                                           ## !
                                                                                           ## Assigns
                                                                                           ## the
                                                                                           ## ID
                                                                                           ## to
                                                                                           ## the
                                                                                           ## driver
                                                                                           ## of
                                                                                           ## the
                                                                                           ## Type


proc constructBinMDF_ADriverTable*(): BinMDF_ADriverTable {.constructor,
    importcpp: "BinMDF_ADriverTable(@)", header: "BinMDF_ADriverTable.hxx".}
proc addDriver*(this: var BinMDF_ADriverTable; theDriver: Handle[BinMDF_ADriver]) {.
    importcpp: "AddDriver", header: "BinMDF_ADriverTable.hxx".}
proc addDerivedDriver*(this: var BinMDF_ADriverTable;
                      theInstance: Handle[TDF_Attribute]) {.
    importcpp: "AddDerivedDriver", header: "BinMDF_ADriverTable.hxx".}
proc addDerivedDriver*(this: var BinMDF_ADriverTable;
                      theDerivedType: StandardCString): Handle[StandardType] {.
    importcpp: "AddDerivedDriver", header: "BinMDF_ADriverTable.hxx".}
proc assignIds*(this: var BinMDF_ADriverTable;
               theTypes: TColStdIndexedMapOfTransient) {.importcpp: "AssignIds",
    header: "BinMDF_ADriverTable.hxx".}
proc assignIds*(this: var BinMDF_ADriverTable;
               theTypeNames: TColStdSequenceOfAsciiString) {.
    importcpp: "AssignIds", header: "BinMDF_ADriverTable.hxx".}
proc getDriver*(this: var BinMDF_ADriverTable; theType: Handle[StandardType];
               theDriver: var Handle[BinMDF_ADriver]): cint {.
    importcpp: "GetDriver", header: "BinMDF_ADriverTable.hxx".}
proc getDriver*(this: var BinMDF_ADriverTable; theTypeId: cint): Handle[BinMDF_ADriver] {.
    importcpp: "GetDriver", header: "BinMDF_ADriverTable.hxx".}
type
  BinMDF_ADriverTablebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "BinMDF_ADriverTable::get_type_name(@)",
                            header: "BinMDF_ADriverTable.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BinMDF_ADriverTable::get_type_descriptor(@)",
    header: "BinMDF_ADriverTable.hxx".}
proc dynamicType*(this: BinMDF_ADriverTable): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BinMDF_ADriverTable.hxx".}

























