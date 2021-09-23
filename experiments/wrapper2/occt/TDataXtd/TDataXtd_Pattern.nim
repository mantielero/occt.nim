##  Created on: 2009-04-06
##  Created by: Sergey ZARITCHNY
##  Copyright (c) 2009-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../TDF/TDF_Attribute,
  ../Standard/Standard_Integer, TDataXtd_Array1OfTrsf

discard "forward decl of Standard_GUID"
discard "forward decl of TDataXtd_Pattern"
discard "forward decl of TDataXtd_Pattern"
type
  Handle_TDataXtd_Pattern* = handle[TDataXtd_Pattern]

## ! a general pattern model

type
  TDataXtd_Pattern* {.importcpp: "TDataXtd_Pattern",
                     header: "TDataXtd_Pattern.hxx", bycopy.} = object of TDF_Attribute


proc GetID*(): Standard_GUID {.importcpp: "TDataXtd_Pattern::GetID(@)",
                            header: "TDataXtd_Pattern.hxx".}
proc ID*(this: TDataXtd_Pattern): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TDataXtd_Pattern.hxx".}
proc PatternID*(this: TDataXtd_Pattern): Standard_GUID {.noSideEffect,
    importcpp: "PatternID", header: "TDataXtd_Pattern.hxx".}
proc NbTrsfs*(this: TDataXtd_Pattern): Standard_Integer {.noSideEffect,
    importcpp: "NbTrsfs", header: "TDataXtd_Pattern.hxx".}
proc ComputeTrsfs*(this: TDataXtd_Pattern; Trsfs: var TDataXtd_Array1OfTrsf) {.
    noSideEffect, importcpp: "ComputeTrsfs", header: "TDataXtd_Pattern.hxx".}
type
  TDataXtd_Patternbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TDataXtd_Pattern::get_type_name(@)",
                              header: "TDataXtd_Pattern.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDataXtd_Pattern::get_type_descriptor(@)",
    header: "TDataXtd_Pattern.hxx".}
proc DynamicType*(this: TDataXtd_Pattern): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataXtd_Pattern.hxx".}