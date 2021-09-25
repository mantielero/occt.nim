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
discard "forward decl of IGESBasic_ExternalRefFileName"
discard "forward decl of IGESBasic_ExternalRefFileName"
type
  HandleIGESBasicExternalRefFileName* = Handle[IGESBasicExternalRefFileName]

## ! defines ExternalRefFileName, Type <416> Form <0-2>
## ! in package IGESBasic
## ! Used when single definition from the reference file is
## ! required or for external logical references where an
## ! entity in one file relates to an entity in another file

type
  IGESBasicExternalRefFileName* {.importcpp: "IGESBasic_ExternalRefFileName",
                                 header: "IGESBasic_ExternalRefFileName.hxx",
                                 bycopy.} = object of IGESDataIGESEntity


proc constructIGESBasicExternalRefFileName*(): IGESBasicExternalRefFileName {.
    constructor, importcpp: "IGESBasic_ExternalRefFileName(@)",
    header: "IGESBasic_ExternalRefFileName.hxx".}
proc init*(this: var IGESBasicExternalRefFileName;
          aFileIdent: Handle[TCollectionHAsciiString];
          anExtName: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "IGESBasic_ExternalRefFileName.hxx".}
proc setForEntity*(this: var IGESBasicExternalRefFileName; mode: bool) {.
    importcpp: "SetForEntity", header: "IGESBasic_ExternalRefFileName.hxx".}
proc fileId*(this: IGESBasicExternalRefFileName): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "FileId", header: "IGESBasic_ExternalRefFileName.hxx".}
proc referenceName*(this: IGESBasicExternalRefFileName): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "ReferenceName",
                              header: "IGESBasic_ExternalRefFileName.hxx".}
type
  IGESBasicExternalRefFileNamebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESBasic_ExternalRefFileName::get_type_name(@)",
                            header: "IGESBasic_ExternalRefFileName.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESBasic_ExternalRefFileName::get_type_descriptor(@)",
    header: "IGESBasic_ExternalRefFileName.hxx".}
proc dynamicType*(this: IGESBasicExternalRefFileName): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESBasic_ExternalRefFileName.hxx".}
