##  Created on: 1998-07-08
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
discard "forward decl of APIHeaderSection_EditHeader"
discard "forward decl of APIHeaderSection_EditHeader"
type
  HandleAPIHeaderSectionEditHeader* = Handle[APIHeaderSectionEditHeader]
  APIHeaderSectionEditHeader* {.importcpp: "APIHeaderSection_EditHeader",
                               header: "APIHeaderSection_EditHeader.hxx", bycopy.} = object of IFSelectEditor


proc constructAPIHeaderSectionEditHeader*(): APIHeaderSectionEditHeader {.
    constructor, importcpp: "APIHeaderSection_EditHeader(@)",
    header: "APIHeaderSection_EditHeader.hxx".}
proc label*(this: APIHeaderSectionEditHeader): TCollectionAsciiString {.
    noSideEffect, importcpp: "Label", header: "APIHeaderSection_EditHeader.hxx".}
proc recognize*(this: APIHeaderSectionEditHeader; form: Handle[IFSelectEditForm]): StandardBoolean {.
    noSideEffect, importcpp: "Recognize", header: "APIHeaderSection_EditHeader.hxx".}
proc stringValue*(this: APIHeaderSectionEditHeader; form: Handle[IFSelectEditForm];
                 num: StandardInteger): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "StringValue",
    header: "APIHeaderSection_EditHeader.hxx".}
proc apply*(this: APIHeaderSectionEditHeader; form: Handle[IFSelectEditForm];
           ent: Handle[StandardTransient]; model: Handle[InterfaceInterfaceModel]): StandardBoolean {.
    noSideEffect, importcpp: "Apply", header: "APIHeaderSection_EditHeader.hxx".}
proc load*(this: APIHeaderSectionEditHeader; form: Handle[IFSelectEditForm];
          ent: Handle[StandardTransient]; model: Handle[InterfaceInterfaceModel]): StandardBoolean {.
    noSideEffect, importcpp: "Load", header: "APIHeaderSection_EditHeader.hxx".}
type
  APIHeaderSectionEditHeaderbaseType* = IFSelectEditor

proc getTypeName*(): cstring {.importcpp: "APIHeaderSection_EditHeader::get_type_name(@)",
                            header: "APIHeaderSection_EditHeader.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "APIHeaderSection_EditHeader::get_type_descriptor(@)",
    header: "APIHeaderSection_EditHeader.hxx".}
proc dynamicType*(this: APIHeaderSectionEditHeader): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "APIHeaderSection_EditHeader.hxx".}

