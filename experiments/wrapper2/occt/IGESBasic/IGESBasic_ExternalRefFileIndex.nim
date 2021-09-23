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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../Interface/Interface_HArray1OfHAsciiString,
  ../IGESData/IGESData_HArray1OfIGESEntity, ../IGESData/IGESData_IGESEntity,
  ../Standard/Standard_Integer

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESBasic_ExternalRefFileIndex"
discard "forward decl of IGESBasic_ExternalRefFileIndex"
type
  Handle_IGESBasic_ExternalRefFileIndex* = handle[IGESBasic_ExternalRefFileIndex]

## ! defines ExternalRefFileIndex, Type <402> Form <12>
## ! in package IGESBasic
## ! Contains a list of the symbolic names used by the
## ! referencing files and the DE pointers to the
## ! corresponding definitions within the referenced file

type
  IGESBasic_ExternalRefFileIndex* {.importcpp: "IGESBasic_ExternalRefFileIndex", header: "IGESBasic_ExternalRefFileIndex.hxx",
                                   bycopy.} = object of IGESData_IGESEntity


proc constructIGESBasic_ExternalRefFileIndex*(): IGESBasic_ExternalRefFileIndex {.
    constructor, importcpp: "IGESBasic_ExternalRefFileIndex(@)",
    header: "IGESBasic_ExternalRefFileIndex.hxx".}
proc Init*(this: var IGESBasic_ExternalRefFileIndex;
          aNameArray: handle[Interface_HArray1OfHAsciiString];
          allEntities: handle[IGESData_HArray1OfIGESEntity]) {.importcpp: "Init",
    header: "IGESBasic_ExternalRefFileIndex.hxx".}
proc NbEntries*(this: IGESBasic_ExternalRefFileIndex): Standard_Integer {.
    noSideEffect, importcpp: "NbEntries",
    header: "IGESBasic_ExternalRefFileIndex.hxx".}
proc Name*(this: IGESBasic_ExternalRefFileIndex; Index: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Name",
                               header: "IGESBasic_ExternalRefFileIndex.hxx".}
proc Entity*(this: IGESBasic_ExternalRefFileIndex; Index: Standard_Integer): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "Entity",
                          header: "IGESBasic_ExternalRefFileIndex.hxx".}
type
  IGESBasic_ExternalRefFileIndexbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESBasic_ExternalRefFileIndex::get_type_name(@)",
                              header: "IGESBasic_ExternalRefFileIndex.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESBasic_ExternalRefFileIndex::get_type_descriptor(@)",
    header: "IGESBasic_ExternalRefFileIndex.hxx".}
proc DynamicType*(this: IGESBasic_ExternalRefFileIndex): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESBasic_ExternalRefFileIndex.hxx".}