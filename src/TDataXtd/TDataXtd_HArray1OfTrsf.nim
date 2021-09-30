##  Created on: 2008-05-29
##  Created by: Sergey ZARITCHNY
##  Copyright (c) 2008-2014 OPEN CASCADE SAS
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

type
  TDataXtdHArray1OfTrsf* {.importcpp: "TDataXtd_HArray1OfTrsf",
                          header: "TDataXtd_HArray1OfTrsf.hxx", bycopy.} = object of TDataXtdArray1OfTrsf


proc constructTDataXtdHArray1OfTrsf*(theLower: int; theUpper: int): TDataXtdHArray1OfTrsf {.
    constructor, importcpp: "TDataXtd_HArray1OfTrsf(@)",
    header: "TDataXtd_HArray1OfTrsf.hxx".}
proc constructTDataXtdHArray1OfTrsf*(theLower: int; theUpper: int;
                                    theValue: ValueType): TDataXtdHArray1OfTrsf {.
    constructor, importcpp: "TDataXtd_HArray1OfTrsf(@)",
    header: "TDataXtd_HArray1OfTrsf.hxx".}
proc constructTDataXtdHArray1OfTrsf*(theOther: TDataXtdArray1OfTrsf): TDataXtdHArray1OfTrsf {.
    constructor, importcpp: "TDataXtd_HArray1OfTrsf(@)",
    header: "TDataXtd_HArray1OfTrsf.hxx".}
proc array1*(this: TDataXtdHArray1OfTrsf): TDataXtdArray1OfTrsf {.noSideEffect,
    importcpp: "Array1", header: "TDataXtd_HArray1OfTrsf.hxx".}
proc changeArray1*(this: var TDataXtdHArray1OfTrsf): var TDataXtdArray1OfTrsf {.
    importcpp: "ChangeArray1", header: "TDataXtd_HArray1OfTrsf.hxx".}
type
  TDataXtdHArray1OfTrsfbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "TDataXtd_HArray1OfTrsf::get_type_name(@)",
                            header: "TDataXtd_HArray1OfTrsf.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataXtd_HArray1OfTrsf::get_type_descriptor(@)",
    header: "TDataXtd_HArray1OfTrsf.hxx".}
proc dynamicType*(this: TDataXtdHArray1OfTrsf): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataXtd_HArray1OfTrsf.hxx".}














































