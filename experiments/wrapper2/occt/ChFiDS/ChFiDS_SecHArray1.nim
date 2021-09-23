##  Created on: 1993-11-17
##  Created by: Isabelle GRIGNON
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
  ChFiDS_CircSection, ChFiDS_SecArray1, ../NCollection/NCollection_DefineHArray1

type
  ChFiDS_SecHArray1* {.importcpp: "ChFiDS_SecHArray1",
                      header: "ChFiDS_SecHArray1.hxx", bycopy.} = object of ChFiDS_SecArray1


proc constructChFiDS_SecHArray1*(theLower: Standard_Integer;
                                theUpper: Standard_Integer): ChFiDS_SecHArray1 {.
    constructor, importcpp: "ChFiDS_SecHArray1(@)", header: "ChFiDS_SecHArray1.hxx".}
proc constructChFiDS_SecHArray1*(theLower: Standard_Integer;
                                theUpper: Standard_Integer; theValue: value_type): ChFiDS_SecHArray1 {.
    constructor, importcpp: "ChFiDS_SecHArray1(@)", header: "ChFiDS_SecHArray1.hxx".}
proc constructChFiDS_SecHArray1*(theOther: ChFiDS_SecArray1): ChFiDS_SecHArray1 {.
    constructor, importcpp: "ChFiDS_SecHArray1(@)", header: "ChFiDS_SecHArray1.hxx".}
proc Array1*(this: ChFiDS_SecHArray1): ChFiDS_SecArray1 {.noSideEffect,
    importcpp: "Array1", header: "ChFiDS_SecHArray1.hxx".}
proc ChangeArray1*(this: var ChFiDS_SecHArray1): var ChFiDS_SecArray1 {.
    importcpp: "ChangeArray1", header: "ChFiDS_SecHArray1.hxx".}
type
  ChFiDS_SecHArray1base_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "ChFiDS_SecHArray1::get_type_name(@)",
                              header: "ChFiDS_SecHArray1.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ChFiDS_SecHArray1::get_type_descriptor(@)",
    header: "ChFiDS_SecHArray1.hxx".}
proc DynamicType*(this: ChFiDS_SecHArray1): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "ChFiDS_SecHArray1.hxx".}