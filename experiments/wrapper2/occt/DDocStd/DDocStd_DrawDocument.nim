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

discard "forward decl of TDocStd_Document"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of DDocStd_DrawDocument"
discard "forward decl of DDocStd_DrawDocument"
type
  HandleC1C1* = Handle[DDocStdDrawDocument]

## ! draw variable for TDocStd_Document.
## ! ==================================

type
  DDocStdDrawDocument* {.importcpp: "DDocStd_DrawDocument",
                        header: "DDocStd_DrawDocument.hxx", bycopy.} = object of DDF_Data


proc find*(doc: Handle[TDocStdDocument]): Handle[DDocStdDrawDocument] {.
    importcpp: "DDocStd_DrawDocument::Find(@)", header: "DDocStd_DrawDocument.hxx".}
proc constructDDocStdDrawDocument*(doc: Handle[TDocStdDocument]): DDocStdDrawDocument {.
    constructor, importcpp: "DDocStd_DrawDocument(@)",
    header: "DDocStd_DrawDocument.hxx".}
proc getDocument*(this: DDocStdDrawDocument): Handle[TDocStdDocument] {.
    noSideEffect, importcpp: "GetDocument", header: "DDocStd_DrawDocument.hxx".}
proc drawOn*(this: DDocStdDrawDocument; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "DDocStd_DrawDocument.hxx".}
proc copy*(this: DDocStdDrawDocument): Handle[DrawDrawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DDocStd_DrawDocument.hxx".}
proc dump*(this: DDocStdDrawDocument; s: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "DDocStd_DrawDocument.hxx".}
proc whatis*(this: DDocStdDrawDocument; i: var DrawInterpretor) {.noSideEffect,
    importcpp: "Whatis", header: "DDocStd_DrawDocument.hxx".}
type
  DDocStdDrawDocumentbaseType* = DDF_Data

proc getTypeName*(): cstring {.importcpp: "DDocStd_DrawDocument::get_type_name(@)",
                            header: "DDocStd_DrawDocument.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DDocStd_DrawDocument::get_type_descriptor(@)",
    header: "DDocStd_DrawDocument.hxx".}
proc dynamicType*(this: DDocStdDrawDocument): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "DDocStd_DrawDocument.hxx".}

























