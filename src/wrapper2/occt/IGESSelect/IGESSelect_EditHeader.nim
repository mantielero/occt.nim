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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../IFSelect/IFSelect_Editor,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_EditForm"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of IGESSelect_EditHeader"
discard "forward decl of IGESSelect_EditHeader"
type
  Handle_IGESSelect_EditHeader* = handle[IGESSelect_EditHeader]

## ! This class is aimed to display and edit the Header of an
## ! IGES Model : Start Section and Global Section

type
  IGESSelect_EditHeader* {.importcpp: "IGESSelect_EditHeader",
                          header: "IGESSelect_EditHeader.hxx", bycopy.} = object of IFSelect_Editor


proc constructIGESSelect_EditHeader*(): IGESSelect_EditHeader {.constructor,
    importcpp: "IGESSelect_EditHeader(@)", header: "IGESSelect_EditHeader.hxx".}
proc Label*(this: IGESSelect_EditHeader): TCollection_AsciiString {.noSideEffect,
    importcpp: "Label", header: "IGESSelect_EditHeader.hxx".}
proc Recognize*(this: IGESSelect_EditHeader; form: handle[IFSelect_EditForm]): Standard_Boolean {.
    noSideEffect, importcpp: "Recognize", header: "IGESSelect_EditHeader.hxx".}
proc StringValue*(this: IGESSelect_EditHeader; form: handle[IFSelect_EditForm];
                 num: Standard_Integer): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "StringValue", header: "IGESSelect_EditHeader.hxx".}
proc Load*(this: IGESSelect_EditHeader; form: handle[IFSelect_EditForm];
          ent: handle[Standard_Transient]; model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    noSideEffect, importcpp: "Load", header: "IGESSelect_EditHeader.hxx".}
proc Update*(this: IGESSelect_EditHeader; form: handle[IFSelect_EditForm];
            num: Standard_Integer; newval: handle[TCollection_HAsciiString];
            enforce: Standard_Boolean): Standard_Boolean {.noSideEffect,
    importcpp: "Update", header: "IGESSelect_EditHeader.hxx".}
proc Apply*(this: IGESSelect_EditHeader; form: handle[IFSelect_EditForm];
           ent: handle[Standard_Transient];
           model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    noSideEffect, importcpp: "Apply", header: "IGESSelect_EditHeader.hxx".}
type
  IGESSelect_EditHeaderbase_type* = IFSelect_Editor

proc get_type_name*(): cstring {.importcpp: "IGESSelect_EditHeader::get_type_name(@)",
                              header: "IGESSelect_EditHeader.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_EditHeader::get_type_descriptor(@)",
    header: "IGESSelect_EditHeader.hxx".}
proc DynamicType*(this: IGESSelect_EditHeader): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSelect_EditHeader.hxx".}