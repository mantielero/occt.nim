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

import
  ../Standard/Standard, ../Standard/Standard_Type, BinMDF_TypeADriverMap,
  BinMDF_TypeIdMap, ../Standard/Standard_Transient, ../Standard/Standard_Type,
  ../Standard/Standard_Integer, ../TColStd/TColStd_IndexedMapOfTransient,
  ../TColStd/TColStd_SequenceOfAsciiString

discard "forward decl of BinMDF_ADriver"
discard "forward decl of BinMDF_ADriverTable"
discard "forward decl of BinMDF_ADriverTable"
type
  Handle_BinMDF_ADriverTable* = handle[BinMDF_ADriverTable]

## ! A driver table is an object building links between
## ! object types and object drivers. In the
## ! translation process, a driver table is asked to
## ! give a translation driver for each current object
## ! to be translated.

type
  BinMDF_ADriverTable* {.importcpp: "BinMDF_ADriverTable",
                        header: "BinMDF_ADriverTable.hxx", bycopy.} = object of Standard_Transient ##
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
proc AddDriver*(this: var BinMDF_ADriverTable; theDriver: handle[BinMDF_ADriver]) {.
    importcpp: "AddDriver", header: "BinMDF_ADriverTable.hxx".}
proc AddDerivedDriver*(this: var BinMDF_ADriverTable;
                      theInstance: handle[TDF_Attribute]) {.
    importcpp: "AddDerivedDriver", header: "BinMDF_ADriverTable.hxx".}
proc AddDerivedDriver*(this: var BinMDF_ADriverTable;
                      theDerivedType: Standard_CString): handle[Standard_Type] {.
    importcpp: "AddDerivedDriver", header: "BinMDF_ADriverTable.hxx".}
proc AssignIds*(this: var BinMDF_ADriverTable;
               theTypes: TColStd_IndexedMapOfTransient) {.importcpp: "AssignIds",
    header: "BinMDF_ADriverTable.hxx".}
proc AssignIds*(this: var BinMDF_ADriverTable;
               theTypeNames: TColStd_SequenceOfAsciiString) {.
    importcpp: "AssignIds", header: "BinMDF_ADriverTable.hxx".}
proc GetDriver*(this: var BinMDF_ADriverTable; theType: handle[Standard_Type];
               theDriver: var handle[BinMDF_ADriver]): Standard_Integer {.
    importcpp: "GetDriver", header: "BinMDF_ADriverTable.hxx".}
proc GetDriver*(this: var BinMDF_ADriverTable; theTypeId: Standard_Integer): handle[
    BinMDF_ADriver] {.importcpp: "GetDriver", header: "BinMDF_ADriverTable.hxx".}
type
  BinMDF_ADriverTablebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "BinMDF_ADriverTable::get_type_name(@)",
                              header: "BinMDF_ADriverTable.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BinMDF_ADriverTable::get_type_descriptor(@)",
    header: "BinMDF_ADriverTable.hxx".}
proc DynamicType*(this: BinMDF_ADriverTable): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BinMDF_ADriverTable.hxx".}