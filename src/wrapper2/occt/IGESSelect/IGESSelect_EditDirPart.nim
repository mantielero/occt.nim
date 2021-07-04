##  Created on: 1998-09-07
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
discard "forward decl of IGESSelect_EditDirPart"
discard "forward decl of IGESSelect_EditDirPart"
type
  Handle_IGESSelect_EditDirPart* = handle[IGESSelect_EditDirPart]

## ! This class is aimed to display and edit the Directory Part of
## ! an IGESEntity

type
  IGESSelect_EditDirPart* {.importcpp: "IGESSelect_EditDirPart",
                           header: "IGESSelect_EditDirPart.hxx", bycopy.} = object of IFSelect_Editor


proc constructIGESSelect_EditDirPart*(): IGESSelect_EditDirPart {.constructor,
    importcpp: "IGESSelect_EditDirPart(@)", header: "IGESSelect_EditDirPart.hxx".}
proc Label*(this: IGESSelect_EditDirPart): TCollection_AsciiString {.noSideEffect,
    importcpp: "Label", header: "IGESSelect_EditDirPart.hxx".}
proc Recognize*(this: IGESSelect_EditDirPart; form: handle[IFSelect_EditForm]): Standard_Boolean {.
    noSideEffect, importcpp: "Recognize", header: "IGESSelect_EditDirPart.hxx".}
proc StringValue*(this: IGESSelect_EditDirPart; form: handle[IFSelect_EditForm];
                 num: Standard_Integer): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "StringValue", header: "IGESSelect_EditDirPart.hxx".}
proc Load*(this: IGESSelect_EditDirPart; form: handle[IFSelect_EditForm];
          ent: handle[Standard_Transient]; model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    noSideEffect, importcpp: "Load", header: "IGESSelect_EditDirPart.hxx".}
proc Update*(this: IGESSelect_EditDirPart; form: handle[IFSelect_EditForm];
            num: Standard_Integer; newval: handle[TCollection_HAsciiString];
            enforce: Standard_Boolean): Standard_Boolean {.noSideEffect,
    importcpp: "Update", header: "IGESSelect_EditDirPart.hxx".}
proc Apply*(this: IGESSelect_EditDirPart; form: handle[IFSelect_EditForm];
           ent: handle[Standard_Transient];
           model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    noSideEffect, importcpp: "Apply", header: "IGESSelect_EditDirPart.hxx".}
type
  IGESSelect_EditDirPartbase_type* = IFSelect_Editor

proc get_type_name*(): cstring {.importcpp: "IGESSelect_EditDirPart::get_type_name(@)",
                              header: "IGESSelect_EditDirPart.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_EditDirPart::get_type_descriptor(@)",
    header: "IGESSelect_EditDirPart.hxx".}
proc DynamicType*(this: IGESSelect_EditDirPart): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSelect_EditDirPart.hxx".}