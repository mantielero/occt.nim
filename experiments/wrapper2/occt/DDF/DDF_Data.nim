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
discard "forward decl of DDF_Data"
discard "forward decl of DDF_Data"
type
  HandleDDF_Data* = Handle[DDF_Data]

## ! Encapsulates a data framework from TDF in a drawable object

type
  DDF_Data* {.importcpp: "DDF_Data", header: "DDF_Data.hxx", bycopy.} = object of DrawDrawable3D


proc constructDDF_Data*(aDF: Handle[TDF_Data]): DDF_Data {.constructor,
    importcpp: "DDF_Data(@)", header: "DDF_Data.hxx".}
proc drawOn*(this: DDF_Data; dis: var DrawDisplay) {.noSideEffect, importcpp: "DrawOn",
    header: "DDF_Data.hxx".}
proc copy*(this: DDF_Data): Handle[DrawDrawable3D] {.noSideEffect, importcpp: "Copy",
    header: "DDF_Data.hxx".}
proc dump*(this: DDF_Data; s: var StandardOStream) {.noSideEffect, importcpp: "Dump",
    header: "DDF_Data.hxx".}
proc dataFramework*(this: var DDF_Data; aDF: Handle[TDF_Data]) {.
    importcpp: "DataFramework", header: "DDF_Data.hxx".}
proc dataFramework*(this: DDF_Data): Handle[TDF_Data] {.noSideEffect,
    importcpp: "DataFramework", header: "DDF_Data.hxx".}
proc whatis*(this: DDF_Data; i: var DrawInterpretor) {.noSideEffect,
    importcpp: "Whatis", header: "DDF_Data.hxx".}
type
  DDF_DatabaseType* = DrawDrawable3D

proc getTypeName*(): cstring {.importcpp: "DDF_Data::get_type_name(@)",
                            header: "DDF_Data.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DDF_Data::get_type_descriptor(@)", header: "DDF_Data.hxx".}
proc dynamicType*(this: DDF_Data): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "DDF_Data.hxx".}
