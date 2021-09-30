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
discard "forward decl of IGESBasic_ExternalRefName"
discard "forward decl of IGESBasic_ExternalRefName"
type
  HandleC1C1* = Handle[IGESBasicExternalRefName]

## ! defines ExternalRefName, Type <416> Form <3>
## ! in package IGESBasic
## ! Used when it is assumed that a copy of the subfigure
## ! exists in native form on the receiving system

type
  IGESBasicExternalRefName* {.importcpp: "IGESBasic_ExternalRefName",
                             header: "IGESBasic_ExternalRefName.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESBasicExternalRefName*(): IGESBasicExternalRefName {.constructor,
    importcpp: "IGESBasic_ExternalRefName(@)",
    header: "IGESBasic_ExternalRefName.hxx".}
proc init*(this: var IGESBasicExternalRefName;
          anExtName: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "IGESBasic_ExternalRefName.hxx".}
proc referenceName*(this: IGESBasicExternalRefName): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "ReferenceName",
    header: "IGESBasic_ExternalRefName.hxx".}
type
  IGESBasicExternalRefNamebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESBasic_ExternalRefName::get_type_name(@)",
                            header: "IGESBasic_ExternalRefName.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESBasic_ExternalRefName::get_type_descriptor(@)",
    header: "IGESBasic_ExternalRefName.hxx".}
proc dynamicType*(this: IGESBasicExternalRefName): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESBasic_ExternalRefName.hxx".}

























