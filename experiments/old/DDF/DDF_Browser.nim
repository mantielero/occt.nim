##  Created by: DAUTRY Philippe
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of TDF_Data"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TDF_Label"
discard "forward decl of DDF_Browser"
discard "forward decl of DDF_Browser"
type
  HandleC1C1* = Handle[DDF_Browser]

## ! Browses a data framework from TDF.

type
  DDF_Browser* {.importcpp: "DDF_Browser", header: "DDF_Browser.hxx", bycopy.} = object of DrawDrawable3D


proc constructDDF_Browser*(aDF: Handle[TDF_Data]): DDF_Browser {.constructor,
    importcpp: "DDF_Browser(@)", header: "DDF_Browser.hxx".}
proc drawOn*(this: DDF_Browser; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "DDF_Browser.hxx".}
proc copy*(this: DDF_Browser): Handle[DrawDrawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DDF_Browser.hxx".}
proc dump*(this: DDF_Browser; s: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "DDF_Browser.hxx".}
proc whatis*(this: DDF_Browser; i: var DrawInterpretor) {.noSideEffect,
    importcpp: "Whatis", header: "DDF_Browser.hxx".}
proc data*(this: var DDF_Browser; aDF: Handle[TDF_Data]) {.importcpp: "Data",
    header: "DDF_Browser.hxx".}
proc data*(this: DDF_Browser): Handle[TDF_Data] {.noSideEffect, importcpp: "Data",
    header: "DDF_Browser.hxx".}
proc openRoot*(this: DDF_Browser): TCollectionAsciiString {.noSideEffect,
    importcpp: "OpenRoot", header: "DDF_Browser.hxx".}
proc openLabel*(this: DDF_Browser; aLab: TDF_Label): TCollectionAsciiString {.
    noSideEffect, importcpp: "OpenLabel", header: "DDF_Browser.hxx".}
proc openAttributeList*(this: var DDF_Browser; aLab: TDF_Label): TCollectionAsciiString {.
    importcpp: "OpenAttributeList", header: "DDF_Browser.hxx".}
proc openAttribute*(this: var DDF_Browser; anIndex: cint = 0): TCollectionAsciiString {.
    importcpp: "OpenAttribute", header: "DDF_Browser.hxx".}
proc information*(this: DDF_Browser): TCollectionAsciiString {.noSideEffect,
    importcpp: "Information", header: "DDF_Browser.hxx".}
proc information*(this: DDF_Browser; aLab: TDF_Label): TCollectionAsciiString {.
    noSideEffect, importcpp: "Information", header: "DDF_Browser.hxx".}
proc information*(this: DDF_Browser; anIndex: cint = 0): TCollectionAsciiString {.
    noSideEffect, importcpp: "Information", header: "DDF_Browser.hxx".}
type
  DDF_BrowserbaseType* = DrawDrawable3D

proc getTypeName*(): cstring {.importcpp: "DDF_Browser::get_type_name(@)",
                            header: "DDF_Browser.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DDF_Browser::get_type_descriptor(@)", header: "DDF_Browser.hxx".}
proc dynamicType*(this: DDF_Browser): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "DDF_Browser.hxx".}

























