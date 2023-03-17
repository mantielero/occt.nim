import xcafdoc_types

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

## ! A comment note attribute.
## ! Contains a textual comment.


proc Get*(theLabel: TDF_Label): handle[XCAFDoc_NoteBalloon] {.cdecl,
    importcpp: "XCAFDoc_NoteBalloon::Get(@)", header: "XCAFDoc_NoteBalloon.hxx".}
proc Set*(theLabel: TDF_Label; theUserName: TCollection_ExtendedString;
         theTimeStamp: TCollection_ExtendedString;
         theComment: TCollection_ExtendedString): handle[XCAFDoc_NoteBalloon] {.
    cdecl, importcpp: "XCAFDoc_NoteBalloon::Set(@)",
    header: "XCAFDoc_NoteBalloon.hxx".}
proc newXCAFDoc_NoteBalloon*(): XCAFDoc_NoteBalloon {.cdecl, constructor,
    importcpp: "XCAFDoc_NoteBalloon(@)", header: "XCAFDoc_NoteBalloon.hxx".}
proc ID*(this: XCAFDoc_NoteBalloon): Standard_GUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "XCAFDoc_NoteBalloon.hxx".}
type
  Handle_XCAFDoc_NoteBalloon* = handle[XCAFDoc_NoteBalloon]
