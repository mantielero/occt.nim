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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../TDF/TDF_AttributeIndexedMap,
  ../Draw/Draw_Drawable3D, ../Standard/Standard_OStream, ../Draw/Draw_Interpretor,
  ../Standard/Standard_Integer

discard "forward decl of TDF_Data"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of TDF_Label"
discard "forward decl of DDF_Browser"
discard "forward decl of DDF_Browser"
type
  Handle_DDF_Browser* = handle[DDF_Browser]

## ! Browses a data framework from TDF.

type
  DDF_Browser* {.importcpp: "DDF_Browser", header: "DDF_Browser.hxx", bycopy.} = object of Draw_Drawable3D


proc constructDDF_Browser*(aDF: handle[TDF_Data]): DDF_Browser {.constructor,
    importcpp: "DDF_Browser(@)", header: "DDF_Browser.hxx".}
proc DrawOn*(this: DDF_Browser; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "DDF_Browser.hxx".}
proc Copy*(this: DDF_Browser): handle[Draw_Drawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DDF_Browser.hxx".}
proc Dump*(this: DDF_Browser; S: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "DDF_Browser.hxx".}
proc Whatis*(this: DDF_Browser; I: var Draw_Interpretor) {.noSideEffect,
    importcpp: "Whatis", header: "DDF_Browser.hxx".}
proc Data*(this: var DDF_Browser; aDF: handle[TDF_Data]) {.importcpp: "Data",
    header: "DDF_Browser.hxx".}
proc Data*(this: DDF_Browser): handle[TDF_Data] {.noSideEffect, importcpp: "Data",
    header: "DDF_Browser.hxx".}
proc OpenRoot*(this: DDF_Browser): TCollection_AsciiString {.noSideEffect,
    importcpp: "OpenRoot", header: "DDF_Browser.hxx".}
proc OpenLabel*(this: DDF_Browser; aLab: TDF_Label): TCollection_AsciiString {.
    noSideEffect, importcpp: "OpenLabel", header: "DDF_Browser.hxx".}
proc OpenAttributeList*(this: var DDF_Browser; aLab: TDF_Label): TCollection_AsciiString {.
    importcpp: "OpenAttributeList", header: "DDF_Browser.hxx".}
proc OpenAttribute*(this: var DDF_Browser; anIndex: Standard_Integer = 0): TCollection_AsciiString {.
    importcpp: "OpenAttribute", header: "DDF_Browser.hxx".}
proc Information*(this: DDF_Browser): TCollection_AsciiString {.noSideEffect,
    importcpp: "Information", header: "DDF_Browser.hxx".}
proc Information*(this: DDF_Browser; aLab: TDF_Label): TCollection_AsciiString {.
    noSideEffect, importcpp: "Information", header: "DDF_Browser.hxx".}
proc Information*(this: DDF_Browser; anIndex: Standard_Integer = 0): TCollection_AsciiString {.
    noSideEffect, importcpp: "Information", header: "DDF_Browser.hxx".}
type
  DDF_Browserbase_type* = Draw_Drawable3D

proc get_type_name*(): cstring {.importcpp: "DDF_Browser::get_type_name(@)",
                              header: "DDF_Browser.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DDF_Browser::get_type_descriptor(@)", header: "DDF_Browser.hxx".}
proc DynamicType*(this: DDF_Browser): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "DDF_Browser.hxx".}