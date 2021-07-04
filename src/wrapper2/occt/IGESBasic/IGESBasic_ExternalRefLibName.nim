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
discard "forward decl of IGESBasic_ExternalRefLibName"
discard "forward decl of IGESBasic_ExternalRefLibName"
type
  Handle_IGESBasic_ExternalRefLibName* = handle[IGESBasic_ExternalRefLibName]

## ! defines ExternalRefLibName, Type <416> Form <4>
## ! in package IGESBasic
## ! Used when it is assumed that a copy of the subfigure
## ! exists in native form in a library on the receiving
## ! system

type
  IGESBasic_ExternalRefLibName* {.importcpp: "IGESBasic_ExternalRefLibName",
                                 header: "IGESBasic_ExternalRefLibName.hxx",
                                 bycopy.} = object of IGESData_IGESEntity


proc constructIGESBasic_ExternalRefLibName*(): IGESBasic_ExternalRefLibName {.
    constructor, importcpp: "IGESBasic_ExternalRefLibName(@)",
    header: "IGESBasic_ExternalRefLibName.hxx".}
proc Init*(this: var IGESBasic_ExternalRefLibName;
          aLibName: handle[TCollection_HAsciiString];
          anExtName: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "IGESBasic_ExternalRefLibName.hxx".}
proc LibraryName*(this: IGESBasic_ExternalRefLibName): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "LibraryName",
                               header: "IGESBasic_ExternalRefLibName.hxx".}
proc ReferenceName*(this: IGESBasic_ExternalRefLibName): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "ReferenceName",
                               header: "IGESBasic_ExternalRefLibName.hxx".}
type
  IGESBasic_ExternalRefLibNamebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESBasic_ExternalRefLibName::get_type_name(@)",
                              header: "IGESBasic_ExternalRefLibName.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESBasic_ExternalRefLibName::get_type_descriptor(@)",
    header: "IGESBasic_ExternalRefLibName.hxx".}
proc DynamicType*(this: IGESBasic_ExternalRefLibName): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESBasic_ExternalRefLibName.hxx".}