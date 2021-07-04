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
  ../Standard/Standard, ../Standard/Standard_Type, ../Draw/Draw_Drawable3D,
  ../Standard/Standard_OStream, ../Draw/Draw_Interpretor

discard "forward decl of TDF_Data"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Drawable3D"
discard "forward decl of DDF_Data"
discard "forward decl of DDF_Data"
type
  Handle_DDF_Data* = handle[DDF_Data]

## ! Encapsulates a data framework from TDF in a drawable object

type
  DDF_Data* {.importcpp: "DDF_Data", header: "DDF_Data.hxx", bycopy.} = object of Draw_Drawable3D


proc constructDDF_Data*(aDF: handle[TDF_Data]): DDF_Data {.constructor,
    importcpp: "DDF_Data(@)", header: "DDF_Data.hxx".}
proc DrawOn*(this: DDF_Data; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "DDF_Data.hxx".}
proc Copy*(this: DDF_Data): handle[Draw_Drawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DDF_Data.hxx".}
proc Dump*(this: DDF_Data; S: var Standard_OStream) {.noSideEffect, importcpp: "Dump",
    header: "DDF_Data.hxx".}
proc DataFramework*(this: var DDF_Data; aDF: handle[TDF_Data]) {.
    importcpp: "DataFramework", header: "DDF_Data.hxx".}
proc DataFramework*(this: DDF_Data): handle[TDF_Data] {.noSideEffect,
    importcpp: "DataFramework", header: "DDF_Data.hxx".}
proc Whatis*(this: DDF_Data; I: var Draw_Interpretor) {.noSideEffect,
    importcpp: "Whatis", header: "DDF_Data.hxx".}
type
  DDF_Database_type* = Draw_Drawable3D

proc get_type_name*(): cstring {.importcpp: "DDF_Data::get_type_name(@)",
                              header: "DDF_Data.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DDF_Data::get_type_descriptor(@)", header: "DDF_Data.hxx".}
proc DynamicType*(this: DDF_Data): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "DDF_Data.hxx".}