##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( Anand NATRAJAN )
##  Copyright (c) 1993-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESBasic_ExternalRefFileIndex"
discard "forward decl of IGESBasic_ExternalRefFileIndex"
type
  HandleIGESBasicExternalRefFileIndex* = Handle[IGESBasicExternalRefFileIndex]

## ! defines ExternalRefFileIndex, Type <402> Form <12>
## ! in package IGESBasic
## ! Contains a list of the symbolic names used by the
## ! referencing files and the DE pointers to the
## ! corresponding definitions within the referenced file

type
  IGESBasicExternalRefFileIndex* {.importcpp: "IGESBasic_ExternalRefFileIndex",
                                  header: "IGESBasic_ExternalRefFileIndex.hxx",
                                  bycopy.} = object of IGESDataIGESEntity


proc constructIGESBasicExternalRefFileIndex*(): IGESBasicExternalRefFileIndex {.
    constructor, importcpp: "IGESBasic_ExternalRefFileIndex(@)",
    header: "IGESBasic_ExternalRefFileIndex.hxx".}
proc init*(this: var IGESBasicExternalRefFileIndex;
          aNameArray: Handle[InterfaceHArray1OfHAsciiString];
          allEntities: Handle[IGESDataHArray1OfIGESEntity]) {.importcpp: "Init",
    header: "IGESBasic_ExternalRefFileIndex.hxx".}
proc nbEntries*(this: IGESBasicExternalRefFileIndex): int {.noSideEffect,
    importcpp: "NbEntries", header: "IGESBasic_ExternalRefFileIndex.hxx".}
proc name*(this: IGESBasicExternalRefFileIndex; index: int): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Name",
                              header: "IGESBasic_ExternalRefFileIndex.hxx".}
proc entity*(this: IGESBasicExternalRefFileIndex; index: int): Handle[
    IGESDataIGESEntity] {.noSideEffect, importcpp: "Entity",
                         header: "IGESBasic_ExternalRefFileIndex.hxx".}
type
  IGESBasicExternalRefFileIndexbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESBasic_ExternalRefFileIndex::get_type_name(@)",
                            header: "IGESBasic_ExternalRefFileIndex.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESBasic_ExternalRefFileIndex::get_type_descriptor(@)",
    header: "IGESBasic_ExternalRefFileIndex.hxx".}
proc dynamicType*(this: IGESBasicExternalRefFileIndex): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESBasic_ExternalRefFileIndex.hxx".}
