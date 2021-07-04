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
  ../Standard/Standard, ../Standard/Standard_Type, ../IGESData/IGESData_IGESEntity

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESBasic_ExternalRefFile"
discard "forward decl of IGESBasic_ExternalRefFile"
type
  Handle_IGESBasic_ExternalRefFile* = handle[IGESBasic_ExternalRefFile]

## ! defines ExternalRefFile, Type <416> Form <1>
## ! in package IGESBasic
## ! Used when entire reference file is to be instanced

type
  IGESBasic_ExternalRefFile* {.importcpp: "IGESBasic_ExternalRefFile",
                              header: "IGESBasic_ExternalRefFile.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESBasic_ExternalRefFile*(): IGESBasic_ExternalRefFile {.
    constructor, importcpp: "IGESBasic_ExternalRefFile(@)",
    header: "IGESBasic_ExternalRefFile.hxx".}
proc Init*(this: var IGESBasic_ExternalRefFile;
          aFileIdent: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "IGESBasic_ExternalRefFile.hxx".}
proc FileId*(this: IGESBasic_ExternalRefFile): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "FileId", header: "IGESBasic_ExternalRefFile.hxx".}
type
  IGESBasic_ExternalRefFilebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESBasic_ExternalRefFile::get_type_name(@)",
                              header: "IGESBasic_ExternalRefFile.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESBasic_ExternalRefFile::get_type_descriptor(@)",
    header: "IGESBasic_ExternalRefFile.hxx".}
proc DynamicType*(this: IGESBasic_ExternalRefFile): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESBasic_ExternalRefFile.hxx".}