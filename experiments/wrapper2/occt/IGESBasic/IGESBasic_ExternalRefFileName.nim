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
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Boolean

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESBasic_ExternalRefFileName"
discard "forward decl of IGESBasic_ExternalRefFileName"
type
  Handle_IGESBasic_ExternalRefFileName* = handle[IGESBasic_ExternalRefFileName]

## ! defines ExternalRefFileName, Type <416> Form <0-2>
## ! in package IGESBasic
## ! Used when single definition from the reference file is
## ! required or for external logical references where an
## ! entity in one file relates to an entity in another file

type
  IGESBasic_ExternalRefFileName* {.importcpp: "IGESBasic_ExternalRefFileName",
                                  header: "IGESBasic_ExternalRefFileName.hxx",
                                  bycopy.} = object of IGESData_IGESEntity


proc constructIGESBasic_ExternalRefFileName*(): IGESBasic_ExternalRefFileName {.
    constructor, importcpp: "IGESBasic_ExternalRefFileName(@)",
    header: "IGESBasic_ExternalRefFileName.hxx".}
proc Init*(this: var IGESBasic_ExternalRefFileName;
          aFileIdent: handle[TCollection_HAsciiString];
          anExtName: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "IGESBasic_ExternalRefFileName.hxx".}
proc SetForEntity*(this: var IGESBasic_ExternalRefFileName; mode: Standard_Boolean) {.
    importcpp: "SetForEntity", header: "IGESBasic_ExternalRefFileName.hxx".}
proc FileId*(this: IGESBasic_ExternalRefFileName): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "FileId", header: "IGESBasic_ExternalRefFileName.hxx".}
proc ReferenceName*(this: IGESBasic_ExternalRefFileName): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "ReferenceName",
                               header: "IGESBasic_ExternalRefFileName.hxx".}
type
  IGESBasic_ExternalRefFileNamebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESBasic_ExternalRefFileName::get_type_name(@)",
                              header: "IGESBasic_ExternalRefFileName.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESBasic_ExternalRefFileName::get_type_descriptor(@)",
    header: "IGESBasic_ExternalRefFileName.hxx".}
proc DynamicType*(this: IGESBasic_ExternalRefFileName): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESBasic_ExternalRefFileName.hxx".}