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
  ../Interface/Interface_HArray1OfHAsciiString, ../IGESData/IGESData_IGESEntity,
  ../Standard/Standard_Integer

discard "forward decl of Standard_OutOfRange"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESBasic_ExternalReferenceFile"
discard "forward decl of IGESBasic_ExternalReferenceFile"
type
  Handle_IGESBasic_ExternalReferenceFile* = handle[IGESBasic_ExternalReferenceFile]

## ! defines ExternalReferenceFile, Type <406> Form <12>
## ! in package IGESBasic
## ! References definitions residing in another file

type
  IGESBasic_ExternalReferenceFile* {.importcpp: "IGESBasic_ExternalReferenceFile", header: "IGESBasic_ExternalReferenceFile.hxx",
                                    bycopy.} = object of IGESData_IGESEntity


proc constructIGESBasic_ExternalReferenceFile*(): IGESBasic_ExternalReferenceFile {.
    constructor, importcpp: "IGESBasic_ExternalReferenceFile(@)",
    header: "IGESBasic_ExternalReferenceFile.hxx".}
proc Init*(this: var IGESBasic_ExternalReferenceFile;
          aNameArray: handle[Interface_HArray1OfHAsciiString]) {.
    importcpp: "Init", header: "IGESBasic_ExternalReferenceFile.hxx".}
proc NbListEntries*(this: IGESBasic_ExternalReferenceFile): Standard_Integer {.
    noSideEffect, importcpp: "NbListEntries",
    header: "IGESBasic_ExternalReferenceFile.hxx".}
proc Name*(this: IGESBasic_ExternalReferenceFile; Index: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Name",
                               header: "IGESBasic_ExternalReferenceFile.hxx".}
type
  IGESBasic_ExternalReferenceFilebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESBasic_ExternalReferenceFile::get_type_name(@)",
                              header: "IGESBasic_ExternalReferenceFile.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESBasic_ExternalReferenceFile::get_type_descriptor(@)",
    header: "IGESBasic_ExternalReferenceFile.hxx".}
proc DynamicType*(this: IGESBasic_ExternalReferenceFile): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESBasic_ExternalReferenceFile.hxx".}