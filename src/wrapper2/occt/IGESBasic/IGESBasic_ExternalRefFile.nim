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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESBasic_ExternalRefFile"
discard "forward decl of IGESBasic_ExternalRefFile"
type
  HandleIGESBasicExternalRefFile* = Handle[IGESBasicExternalRefFile]

## ! defines ExternalRefFile, Type <416> Form <1>
## ! in package IGESBasic
## ! Used when entire reference file is to be instanced

type
  IGESBasicExternalRefFile* {.importcpp: "IGESBasic_ExternalRefFile",
                             header: "IGESBasic_ExternalRefFile.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESBasicExternalRefFile*(): IGESBasicExternalRefFile {.constructor,
    importcpp: "IGESBasic_ExternalRefFile(@)",
    header: "IGESBasic_ExternalRefFile.hxx".}
proc init*(this: var IGESBasicExternalRefFile;
          aFileIdent: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "IGESBasic_ExternalRefFile.hxx".}
proc fileId*(this: IGESBasicExternalRefFile): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "FileId", header: "IGESBasic_ExternalRefFile.hxx".}
type
  IGESBasicExternalRefFilebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESBasic_ExternalRefFile::get_type_name(@)",
                            header: "IGESBasic_ExternalRefFile.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESBasic_ExternalRefFile::get_type_descriptor(@)",
    header: "IGESBasic_ExternalRefFile.hxx".}
proc dynamicType*(this: IGESBasicExternalRefFile): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESBasic_ExternalRefFile.hxx".}

