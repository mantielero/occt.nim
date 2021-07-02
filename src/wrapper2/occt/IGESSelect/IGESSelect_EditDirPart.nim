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

discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_EditForm"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of IGESSelect_EditDirPart"
discard "forward decl of IGESSelect_EditDirPart"
type
  HandleIGESSelectEditDirPart* = Handle[IGESSelectEditDirPart]

## ! This class is aimed to display and edit the Directory Part of
## ! an IGESEntity

type
  IGESSelectEditDirPart* {.importcpp: "IGESSelect_EditDirPart",
                          header: "IGESSelect_EditDirPart.hxx", bycopy.} = object of IFSelectEditor


proc constructIGESSelectEditDirPart*(): IGESSelectEditDirPart {.constructor,
    importcpp: "IGESSelect_EditDirPart(@)", header: "IGESSelect_EditDirPart.hxx".}
proc label*(this: IGESSelectEditDirPart): TCollectionAsciiString {.noSideEffect,
    importcpp: "Label", header: "IGESSelect_EditDirPart.hxx".}
proc recognize*(this: IGESSelectEditDirPart; form: Handle[IFSelectEditForm]): StandardBoolean {.
    noSideEffect, importcpp: "Recognize", header: "IGESSelect_EditDirPart.hxx".}
proc stringValue*(this: IGESSelectEditDirPart; form: Handle[IFSelectEditForm];
                 num: StandardInteger): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "StringValue", header: "IGESSelect_EditDirPart.hxx".}
proc load*(this: IGESSelectEditDirPart; form: Handle[IFSelectEditForm];
          ent: Handle[StandardTransient]; model: Handle[InterfaceInterfaceModel]): StandardBoolean {.
    noSideEffect, importcpp: "Load", header: "IGESSelect_EditDirPart.hxx".}
proc update*(this: IGESSelectEditDirPart; form: Handle[IFSelectEditForm];
            num: StandardInteger; newval: Handle[TCollectionHAsciiString];
            enforce: StandardBoolean): StandardBoolean {.noSideEffect,
    importcpp: "Update", header: "IGESSelect_EditDirPart.hxx".}
proc apply*(this: IGESSelectEditDirPart; form: Handle[IFSelectEditForm];
           ent: Handle[StandardTransient]; model: Handle[InterfaceInterfaceModel]): StandardBoolean {.
    noSideEffect, importcpp: "Apply", header: "IGESSelect_EditDirPart.hxx".}
type
  IGESSelectEditDirPartbaseType* = IFSelectEditor

proc getTypeName*(): cstring {.importcpp: "IGESSelect_EditDirPart::get_type_name(@)",
                            header: "IGESSelect_EditDirPart.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_EditDirPart::get_type_descriptor(@)",
    header: "IGESSelect_EditDirPart.hxx".}
proc dynamicType*(this: IGESSelectEditDirPart): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSelect_EditDirPart.hxx".}

