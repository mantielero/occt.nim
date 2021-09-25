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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESBasic_ExternalReferenceFile"
discard "forward decl of IGESBasic_ExternalReferenceFile"
type
  HandleIGESBasicExternalReferenceFile* = Handle[IGESBasicExternalReferenceFile]

## ! defines ExternalReferenceFile, Type <406> Form <12>
## ! in package IGESBasic
## ! References definitions residing in another file

type
  IGESBasicExternalReferenceFile* {.importcpp: "IGESBasic_ExternalReferenceFile", header: "IGESBasic_ExternalReferenceFile.hxx",
                                   bycopy.} = object of IGESDataIGESEntity


proc constructIGESBasicExternalReferenceFile*(): IGESBasicExternalReferenceFile {.
    constructor, importcpp: "IGESBasic_ExternalReferenceFile(@)",
    header: "IGESBasic_ExternalReferenceFile.hxx".}
proc init*(this: var IGESBasicExternalReferenceFile;
          aNameArray: Handle[InterfaceHArray1OfHAsciiString]) {.importcpp: "Init",
    header: "IGESBasic_ExternalReferenceFile.hxx".}
proc nbListEntries*(this: IGESBasicExternalReferenceFile): int {.noSideEffect,
    importcpp: "NbListEntries", header: "IGESBasic_ExternalReferenceFile.hxx".}
proc name*(this: IGESBasicExternalReferenceFile; index: int): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Name",
                              header: "IGESBasic_ExternalReferenceFile.hxx".}
type
  IGESBasicExternalReferenceFilebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESBasic_ExternalReferenceFile::get_type_name(@)",
                            header: "IGESBasic_ExternalReferenceFile.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESBasic_ExternalReferenceFile::get_type_descriptor(@)",
    header: "IGESBasic_ExternalReferenceFile.hxx".}
proc dynamicType*(this: IGESBasicExternalReferenceFile): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESBasic_ExternalReferenceFile.hxx".}
