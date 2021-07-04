##  Created on: 2000-03-01
##  Created by: Denis PASCAL
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../DDF/DDF_Data,
  ../Standard/Standard_OStream, ../Draw/Draw_Interpretor

discard "forward decl of TDocStd_Document"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of DDocStd_DrawDocument"
discard "forward decl of DDocStd_DrawDocument"
type
  Handle_DDocStd_DrawDocument* = handle[DDocStd_DrawDocument]

## ! draw variable for TDocStd_Document.
## ! ==================================

type
  DDocStd_DrawDocument* {.importcpp: "DDocStd_DrawDocument",
                         header: "DDocStd_DrawDocument.hxx", bycopy.} = object of DDF_Data


proc Find*(Doc: handle[TDocStd_Document]): handle[DDocStd_DrawDocument] {.
    importcpp: "DDocStd_DrawDocument::Find(@)", header: "DDocStd_DrawDocument.hxx".}
proc constructDDocStd_DrawDocument*(Doc: handle[TDocStd_Document]): DDocStd_DrawDocument {.
    constructor, importcpp: "DDocStd_DrawDocument(@)",
    header: "DDocStd_DrawDocument.hxx".}
proc GetDocument*(this: DDocStd_DrawDocument): handle[TDocStd_Document] {.
    noSideEffect, importcpp: "GetDocument", header: "DDocStd_DrawDocument.hxx".}
proc DrawOn*(this: DDocStd_DrawDocument; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "DDocStd_DrawDocument.hxx".}
proc Copy*(this: DDocStd_DrawDocument): handle[Draw_Drawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DDocStd_DrawDocument.hxx".}
proc Dump*(this: DDocStd_DrawDocument; S: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "DDocStd_DrawDocument.hxx".}
proc Whatis*(this: DDocStd_DrawDocument; I: var Draw_Interpretor) {.noSideEffect,
    importcpp: "Whatis", header: "DDocStd_DrawDocument.hxx".}
type
  DDocStd_DrawDocumentbase_type* = DDF_Data

proc get_type_name*(): cstring {.importcpp: "DDocStd_DrawDocument::get_type_name(@)",
                              header: "DDocStd_DrawDocument.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DDocStd_DrawDocument::get_type_descriptor(@)",
    header: "DDocStd_DrawDocument.hxx".}
proc DynamicType*(this: DDocStd_DrawDocument): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "DDocStd_DrawDocument.hxx".}