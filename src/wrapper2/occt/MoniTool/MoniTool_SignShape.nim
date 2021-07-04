##  Created on: 1998-02-04
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
  ../Standard/Standard, ../Standard/Standard_Type, MoniTool_SignText,
  ../Standard/Standard_CString

discard "forward decl of TCollection_AsciiString"
discard "forward decl of Standard_Transient"
discard "forward decl of MoniTool_SignShape"
discard "forward decl of MoniTool_SignShape"
type
  Handle_MoniTool_SignShape* = handle[MoniTool_SignShape]

## ! Signs HShape according to its real content (type of Shape)
## ! Context is not used

type
  MoniTool_SignShape* {.importcpp: "MoniTool_SignShape",
                       header: "MoniTool_SignShape.hxx", bycopy.} = object of MoniTool_SignText


proc constructMoniTool_SignShape*(): MoniTool_SignShape {.constructor,
    importcpp: "MoniTool_SignShape(@)", header: "MoniTool_SignShape.hxx".}
proc Name*(this: MoniTool_SignShape): Standard_CString {.noSideEffect,
    importcpp: "Name", header: "MoniTool_SignShape.hxx".}
proc Text*(this: MoniTool_SignShape; ent: handle[Standard_Transient];
          context: handle[Standard_Transient]): TCollection_AsciiString {.
    noSideEffect, importcpp: "Text", header: "MoniTool_SignShape.hxx".}
type
  MoniTool_SignShapebase_type* = MoniTool_SignText

proc get_type_name*(): cstring {.importcpp: "MoniTool_SignShape::get_type_name(@)",
                              header: "MoniTool_SignShape.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MoniTool_SignShape::get_type_descriptor(@)",
    header: "MoniTool_SignShape.hxx".}
proc DynamicType*(this: MoniTool_SignShape): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "MoniTool_SignShape.hxx".}