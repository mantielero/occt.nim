##  Copyright (c) 2017-2018 OPEN CASCADE SAS
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
  XCAFDoc_NoteComment

## ! A comment note attribute.
## ! Contains a textual comment.

type
  XCAFDoc_NoteBalloon* {.importcpp: "XCAFDoc_NoteBalloon",
                        header: "XCAFDoc_NoteBalloon.hxx", bycopy.} = object of XCAFDoc_NoteComment ##  Overrides TDF_Attribute virtuals


## !!!Ignored construct:  public : DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_NoteBalloon , XCAFDoc_NoteComment ) ! Returns default attribute GUID static const Standard_GUID & GetID ( ) ;
## Error: token expected: ) but got: ,!!!

proc Get*(theLabel: TDF_Label): handle[XCAFDoc_NoteBalloon] {.
    importcpp: "XCAFDoc_NoteBalloon::Get(@)", header: "XCAFDoc_NoteBalloon.hxx".}
proc Set*(theLabel: TDF_Label; theUserName: TCollection_ExtendedString;
         theTimeStamp: TCollection_ExtendedString;
         theComment: TCollection_ExtendedString): handle[XCAFDoc_NoteBalloon] {.
    importcpp: "XCAFDoc_NoteBalloon::Set(@)", header: "XCAFDoc_NoteBalloon.hxx".}
proc constructXCAFDoc_NoteBalloon*(): XCAFDoc_NoteBalloon {.constructor,
    importcpp: "XCAFDoc_NoteBalloon(@)", header: "XCAFDoc_NoteBalloon.hxx".}
proc ID*(this: XCAFDoc_NoteBalloon): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_NoteBalloon.hxx".}
discard "forward decl of XCAFDoc_NoteBalloon"
type
  Handle_XCAFDoc_NoteBalloon* = handle[XCAFDoc_NoteBalloon]
