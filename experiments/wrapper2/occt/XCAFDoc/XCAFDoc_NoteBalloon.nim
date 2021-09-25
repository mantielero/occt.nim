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

type
  XCAFDocNoteBalloon* {.importcpp: "XCAFDoc_NoteBalloon",
                       header: "XCAFDoc_NoteBalloon.hxx", bycopy.} = object of XCAFDocNoteComment ##  Overrides TDF_Attribute virtuals


## !!!Ignored construct:  public : DEFINE_DERIVED_ATTRIBUTE ( XCAFDoc_NoteBalloon , XCAFDoc_NoteComment ) ! Returns default attribute GUID static const Standard_GUID & GetID ( ) ;
## Error: token expected: ) but got: ,!!!

proc get*(theLabel: TDF_Label): Handle[XCAFDocNoteBalloon] {.
    importcpp: "XCAFDoc_NoteBalloon::Get(@)", header: "XCAFDoc_NoteBalloon.hxx".}
proc set*(theLabel: TDF_Label; theUserName: TCollectionExtendedString;
         theTimeStamp: TCollectionExtendedString;
         theComment: TCollectionExtendedString): Handle[XCAFDocNoteBalloon] {.
    importcpp: "XCAFDoc_NoteBalloon::Set(@)", header: "XCAFDoc_NoteBalloon.hxx".}
proc constructXCAFDocNoteBalloon*(): XCAFDocNoteBalloon {.constructor,
    importcpp: "XCAFDoc_NoteBalloon(@)", header: "XCAFDoc_NoteBalloon.hxx".}
proc id*(this: XCAFDocNoteBalloon): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "XCAFDoc_NoteBalloon.hxx".}
discard "forward decl of XCAFDoc_NoteBalloon"
type
  HandleXCAFDocNoteBalloon* = Handle[XCAFDocNoteBalloon]

