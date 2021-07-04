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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../IFSelect/IFSelect_Editor,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_EditForm"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of APIHeaderSection_EditHeader"
discard "forward decl of APIHeaderSection_EditHeader"
type
  Handle_APIHeaderSection_EditHeader* = handle[APIHeaderSection_EditHeader]
  APIHeaderSection_EditHeader* {.importcpp: "APIHeaderSection_EditHeader",
                                header: "APIHeaderSection_EditHeader.hxx", bycopy.} = object of IFSelect_Editor


proc constructAPIHeaderSection_EditHeader*(): APIHeaderSection_EditHeader {.
    constructor, importcpp: "APIHeaderSection_EditHeader(@)",
    header: "APIHeaderSection_EditHeader.hxx".}
proc Label*(this: APIHeaderSection_EditHeader): TCollection_AsciiString {.
    noSideEffect, importcpp: "Label", header: "APIHeaderSection_EditHeader.hxx".}
proc Recognize*(this: APIHeaderSection_EditHeader; form: handle[IFSelect_EditForm]): Standard_Boolean {.
    noSideEffect, importcpp: "Recognize", header: "APIHeaderSection_EditHeader.hxx".}
proc StringValue*(this: APIHeaderSection_EditHeader;
                 form: handle[IFSelect_EditForm]; num: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "StringValue",
                               header: "APIHeaderSection_EditHeader.hxx".}
proc Apply*(this: APIHeaderSection_EditHeader; form: handle[IFSelect_EditForm];
           ent: handle[Standard_Transient];
           model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    noSideEffect, importcpp: "Apply", header: "APIHeaderSection_EditHeader.hxx".}
proc Load*(this: APIHeaderSection_EditHeader; form: handle[IFSelect_EditForm];
          ent: handle[Standard_Transient]; model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    noSideEffect, importcpp: "Load", header: "APIHeaderSection_EditHeader.hxx".}
type
  APIHeaderSection_EditHeaderbase_type* = IFSelect_Editor

proc get_type_name*(): cstring {.importcpp: "APIHeaderSection_EditHeader::get_type_name(@)",
                              header: "APIHeaderSection_EditHeader.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "APIHeaderSection_EditHeader::get_type_descriptor(@)",
    header: "APIHeaderSection_EditHeader.hxx".}
proc DynamicType*(this: APIHeaderSection_EditHeader): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "APIHeaderSection_EditHeader.hxx".}