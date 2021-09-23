##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen (Arun MENON)
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_Array1OfTransient, ../Standard/Standard_Transient,
  ../TColgp/TColgp_HArray1OfXY, ../Standard/Standard_Integer

discard "forward decl of IGESBasic_HArray1OfHArray1OfXY"
discard "forward decl of IGESBasic_HArray1OfHArray1OfXY"
type
  Handle_IGESBasic_HArray1OfHArray1OfXY* = handle[IGESBasic_HArray1OfHArray1OfXY]
  IGESBasic_HArray1OfHArray1OfXY* {.importcpp: "IGESBasic_HArray1OfHArray1OfXY", header: "IGESBasic_HArray1OfHArray1OfXY.hxx",
                                   bycopy.} = object of Standard_Transient


proc constructIGESBasic_HArray1OfHArray1OfXY*(low: Standard_Integer;
    up: Standard_Integer): IGESBasic_HArray1OfHArray1OfXY {.constructor,
    importcpp: "IGESBasic_HArray1OfHArray1OfXY(@)",
    header: "IGESBasic_HArray1OfHArray1OfXY.hxx".}
proc Lower*(this: IGESBasic_HArray1OfHArray1OfXY): Standard_Integer {.noSideEffect,
    importcpp: "Lower", header: "IGESBasic_HArray1OfHArray1OfXY.hxx".}
proc Upper*(this: IGESBasic_HArray1OfHArray1OfXY): Standard_Integer {.noSideEffect,
    importcpp: "Upper", header: "IGESBasic_HArray1OfHArray1OfXY.hxx".}
proc Length*(this: IGESBasic_HArray1OfHArray1OfXY): Standard_Integer {.noSideEffect,
    importcpp: "Length", header: "IGESBasic_HArray1OfHArray1OfXY.hxx".}
proc SetValue*(this: var IGESBasic_HArray1OfHArray1OfXY; num: Standard_Integer;
              val: handle[TColgp_HArray1OfXY]) {.importcpp: "SetValue",
    header: "IGESBasic_HArray1OfHArray1OfXY.hxx".}
proc Value*(this: IGESBasic_HArray1OfHArray1OfXY; num: Standard_Integer): handle[
    TColgp_HArray1OfXY] {.noSideEffect, importcpp: "Value",
                         header: "IGESBasic_HArray1OfHArray1OfXY.hxx".}
type
  IGESBasic_HArray1OfHArray1OfXYbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IGESBasic_HArray1OfHArray1OfXY::get_type_name(@)",
                              header: "IGESBasic_HArray1OfHArray1OfXY.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESBasic_HArray1OfHArray1OfXY::get_type_descriptor(@)",
    header: "IGESBasic_HArray1OfHArray1OfXY.hxx".}
proc DynamicType*(this: IGESBasic_HArray1OfHArray1OfXY): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESBasic_HArray1OfHArray1OfXY.hxx".}