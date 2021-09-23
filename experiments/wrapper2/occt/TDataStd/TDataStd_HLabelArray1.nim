##  Created on: 1995-05-10
##  Created by: Denis PASCAL
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../TDF/TDF_Label, TDataStd_LabelArray1, ../NCollection/NCollection_DefineHArray1

type
  TDataStd_HLabelArray1* {.importcpp: "TDataStd_HLabelArray1",
                          header: "TDataStd_HLabelArray1.hxx", bycopy.} = object of TDataStd_LabelArray1


proc constructTDataStd_HLabelArray1*(theLower: Standard_Integer;
                                    theUpper: Standard_Integer): TDataStd_HLabelArray1 {.
    constructor, importcpp: "TDataStd_HLabelArray1(@)",
    header: "TDataStd_HLabelArray1.hxx".}
proc constructTDataStd_HLabelArray1*(theLower: Standard_Integer;
                                    theUpper: Standard_Integer;
                                    theValue: value_type): TDataStd_HLabelArray1 {.
    constructor, importcpp: "TDataStd_HLabelArray1(@)",
    header: "TDataStd_HLabelArray1.hxx".}
proc constructTDataStd_HLabelArray1*(theOther: TDataStd_LabelArray1): TDataStd_HLabelArray1 {.
    constructor, importcpp: "TDataStd_HLabelArray1(@)",
    header: "TDataStd_HLabelArray1.hxx".}
proc Array1*(this: TDataStd_HLabelArray1): TDataStd_LabelArray1 {.noSideEffect,
    importcpp: "Array1", header: "TDataStd_HLabelArray1.hxx".}
proc ChangeArray1*(this: var TDataStd_HLabelArray1): var TDataStd_LabelArray1 {.
    importcpp: "ChangeArray1", header: "TDataStd_HLabelArray1.hxx".}
type
  TDataStd_HLabelArray1base_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "TDataStd_HLabelArray1::get_type_name(@)",
                              header: "TDataStd_HLabelArray1.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataStd_HLabelArray1::get_type_descriptor(@)",
    header: "TDataStd_HLabelArray1.hxx".}
proc DynamicType*(this: TDataStd_HLabelArray1): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TDataStd_HLabelArray1.hxx".}