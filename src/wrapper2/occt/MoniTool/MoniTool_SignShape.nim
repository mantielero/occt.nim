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

discard "forward decl of TCollection_AsciiString"
discard "forward decl of Standard_Transient"
discard "forward decl of MoniTool_SignShape"
discard "forward decl of MoniTool_SignShape"
type
  HandleMoniToolSignShape* = Handle[MoniToolSignShape]

## ! Signs HShape according to its real content (type of Shape)
## ! Context is not used

type
  MoniToolSignShape* {.importcpp: "MoniTool_SignShape",
                      header: "MoniTool_SignShape.hxx", bycopy.} = object of MoniToolSignText


proc constructMoniToolSignShape*(): MoniToolSignShape {.constructor,
    importcpp: "MoniTool_SignShape(@)", header: "MoniTool_SignShape.hxx".}
proc name*(this: MoniToolSignShape): StandardCString {.noSideEffect,
    importcpp: "Name", header: "MoniTool_SignShape.hxx".}
proc text*(this: MoniToolSignShape; ent: Handle[StandardTransient];
          context: Handle[StandardTransient]): TCollectionAsciiString {.
    noSideEffect, importcpp: "Text", header: "MoniTool_SignShape.hxx".}
type
  MoniToolSignShapebaseType* = MoniToolSignText

proc getTypeName*(): cstring {.importcpp: "MoniTool_SignShape::get_type_name(@)",
                            header: "MoniTool_SignShape.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MoniTool_SignShape::get_type_descriptor(@)",
    header: "MoniTool_SignShape.hxx".}
proc dynamicType*(this: MoniToolSignShape): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "MoniTool_SignShape.hxx".}

