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
discard "forward decl of IGESBasic_ExternalRefLibName"
discard "forward decl of IGESBasic_ExternalRefLibName"
type
  HandleC1C1* = Handle[IGESBasicExternalRefLibName]

## ! defines ExternalRefLibName, Type <416> Form <4>
## ! in package IGESBasic
## ! Used when it is assumed that a copy of the subfigure
## ! exists in native form in a library on the receiving
## ! system

type
  IGESBasicExternalRefLibName* {.importcpp: "IGESBasic_ExternalRefLibName",
                                header: "IGESBasic_ExternalRefLibName.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESBasicExternalRefLibName*(): IGESBasicExternalRefLibName {.
    constructor, importcpp: "IGESBasic_ExternalRefLibName(@)",
    header: "IGESBasic_ExternalRefLibName.hxx".}
proc init*(this: var IGESBasicExternalRefLibName;
          aLibName: Handle[TCollectionHAsciiString];
          anExtName: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "IGESBasic_ExternalRefLibName.hxx".}
proc libraryName*(this: IGESBasicExternalRefLibName): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "LibraryName",
                              header: "IGESBasic_ExternalRefLibName.hxx".}
proc referenceName*(this: IGESBasicExternalRefLibName): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "ReferenceName",
                              header: "IGESBasic_ExternalRefLibName.hxx".}
type
  IGESBasicExternalRefLibNamebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESBasic_ExternalRefLibName::get_type_name(@)",
                            header: "IGESBasic_ExternalRefLibName.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESBasic_ExternalRefLibName::get_type_descriptor(@)",
    header: "IGESBasic_ExternalRefLibName.hxx".}
proc dynamicType*(this: IGESBasicExternalRefLibName): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESBasic_ExternalRefLibName.hxx".}

























