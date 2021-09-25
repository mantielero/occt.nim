##  Created on: 1998-07-31
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_EditForm"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of IGESSelect_EditHeader"
discard "forward decl of IGESSelect_EditHeader"
type
  HandleIGESSelectEditHeader* = Handle[IGESSelectEditHeader]

## ! This class is aimed to display and edit the Header of an
## ! IGES Model : Start Section and Global Section

type
  IGESSelectEditHeader* {.importcpp: "IGESSelect_EditHeader",
                         header: "IGESSelect_EditHeader.hxx", bycopy.} = object of IFSelectEditor


proc constructIGESSelectEditHeader*(): IGESSelectEditHeader {.constructor,
    importcpp: "IGESSelect_EditHeader(@)", header: "IGESSelect_EditHeader.hxx".}
proc label*(this: IGESSelectEditHeader): TCollectionAsciiString {.noSideEffect,
    importcpp: "Label", header: "IGESSelect_EditHeader.hxx".}
proc recognize*(this: IGESSelectEditHeader; form: Handle[IFSelectEditForm]): bool {.
    noSideEffect, importcpp: "Recognize", header: "IGESSelect_EditHeader.hxx".}
proc stringValue*(this: IGESSelectEditHeader; form: Handle[IFSelectEditForm];
                 num: int): Handle[TCollectionHAsciiString] {.noSideEffect,
    importcpp: "StringValue", header: "IGESSelect_EditHeader.hxx".}
proc load*(this: IGESSelectEditHeader; form: Handle[IFSelectEditForm];
          ent: Handle[StandardTransient]; model: Handle[InterfaceInterfaceModel]): bool {.
    noSideEffect, importcpp: "Load", header: "IGESSelect_EditHeader.hxx".}
proc update*(this: IGESSelectEditHeader; form: Handle[IFSelectEditForm]; num: int;
            newval: Handle[TCollectionHAsciiString]; enforce: bool): bool {.
    noSideEffect, importcpp: "Update", header: "IGESSelect_EditHeader.hxx".}
proc apply*(this: IGESSelectEditHeader; form: Handle[IFSelectEditForm];
           ent: Handle[StandardTransient]; model: Handle[InterfaceInterfaceModel]): bool {.
    noSideEffect, importcpp: "Apply", header: "IGESSelect_EditHeader.hxx".}
type
  IGESSelectEditHeaderbaseType* = IFSelectEditor

proc getTypeName*(): cstring {.importcpp: "IGESSelect_EditHeader::get_type_name(@)",
                            header: "IGESSelect_EditHeader.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_EditHeader::get_type_descriptor(@)",
    header: "IGESSelect_EditHeader.hxx".}
proc dynamicType*(this: IGESSelectEditHeader): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSelect_EditHeader.hxx".}
