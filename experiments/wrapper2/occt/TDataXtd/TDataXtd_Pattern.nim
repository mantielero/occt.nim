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

discard "forward decl of Standard_GUID"
discard "forward decl of TDataXtd_Pattern"
discard "forward decl of TDataXtd_Pattern"
type
  HandleTDataXtdPattern* = Handle[TDataXtdPattern]

## ! a general pattern model

type
  TDataXtdPattern* {.importcpp: "TDataXtd_Pattern", header: "TDataXtd_Pattern.hxx",
                    bycopy.} = object of TDF_Attribute


proc getID*(): StandardGUID {.importcpp: "TDataXtd_Pattern::GetID(@)",
                           header: "TDataXtd_Pattern.hxx".}
proc id*(this: TDataXtdPattern): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDataXtd_Pattern.hxx".}
proc patternID*(this: TDataXtdPattern): StandardGUID {.noSideEffect,
    importcpp: "PatternID", header: "TDataXtd_Pattern.hxx".}
proc nbTrsfs*(this: TDataXtdPattern): int {.noSideEffect, importcpp: "NbTrsfs",
                                        header: "TDataXtd_Pattern.hxx".}
proc computeTrsfs*(this: TDataXtdPattern; trsfs: var TDataXtdArray1OfTrsf) {.
    noSideEffect, importcpp: "ComputeTrsfs", header: "TDataXtd_Pattern.hxx".}
type
  TDataXtdPatternbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TDataXtd_Pattern::get_type_name(@)",
                            header: "TDataXtd_Pattern.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataXtd_Pattern::get_type_descriptor(@)",
    header: "TDataXtd_Pattern.hxx".}
proc dynamicType*(this: TDataXtdPattern): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataXtd_Pattern.hxx".}
