##  Created on: 1998-05-20
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
  ../Standard/Standard, ../Standard/Standard_Type, ../MoniTool/MoniTool_SignText,
  ../Standard/Standard_CString

discard "forward decl of TCollection_AsciiString"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_SignLabel"
discard "forward decl of Interface_SignLabel"
type
  Handle_Interface_SignLabel* = handle[Interface_SignLabel]

## ! Signature to give the Label from the Model

type
  Interface_SignLabel* {.importcpp: "Interface_SignLabel",
                        header: "Interface_SignLabel.hxx", bycopy.} = object of MoniTool_SignText


proc constructInterface_SignLabel*(): Interface_SignLabel {.constructor,
    importcpp: "Interface_SignLabel(@)", header: "Interface_SignLabel.hxx".}
proc Name*(this: Interface_SignLabel): Standard_CString {.noSideEffect,
    importcpp: "Name", header: "Interface_SignLabel.hxx".}
proc Text*(this: Interface_SignLabel; ent: handle[Standard_Transient];
          context: handle[Standard_Transient]): TCollection_AsciiString {.
    noSideEffect, importcpp: "Text", header: "Interface_SignLabel.hxx".}
type
  Interface_SignLabelbase_type* = MoniTool_SignText

proc get_type_name*(): cstring {.importcpp: "Interface_SignLabel::get_type_name(@)",
                              header: "Interface_SignLabel.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Interface_SignLabel::get_type_descriptor(@)",
    header: "Interface_SignLabel.hxx".}
proc DynamicType*(this: Interface_SignLabel): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Interface_SignLabel.hxx".}