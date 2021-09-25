##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( Deepak PRABHU )
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

type
  IGESDimenHArray1OfLeaderArrow* {.importcpp: "IGESDimen_HArray1OfLeaderArrow",
                                  header: "IGESDimen_HArray1OfLeaderArrow.hxx",
                                  bycopy.} = object of IGESDimenArray1OfLeaderArrow


proc constructIGESDimenHArray1OfLeaderArrow*(theLower: int; theUpper: int): IGESDimenHArray1OfLeaderArrow {.
    constructor, importcpp: "IGESDimen_HArray1OfLeaderArrow(@)",
    header: "IGESDimen_HArray1OfLeaderArrow.hxx".}
proc constructIGESDimenHArray1OfLeaderArrow*(theLower: int; theUpper: int;
    theValue: ValueType): IGESDimenHArray1OfLeaderArrow {.constructor,
    importcpp: "IGESDimen_HArray1OfLeaderArrow(@)",
    header: "IGESDimen_HArray1OfLeaderArrow.hxx".}
proc constructIGESDimenHArray1OfLeaderArrow*(
    theOther: IGESDimenArray1OfLeaderArrow): IGESDimenHArray1OfLeaderArrow {.
    constructor, importcpp: "IGESDimen_HArray1OfLeaderArrow(@)",
    header: "IGESDimen_HArray1OfLeaderArrow.hxx".}
proc array1*(this: IGESDimenHArray1OfLeaderArrow): IGESDimenArray1OfLeaderArrow {.
    noSideEffect, importcpp: "Array1", header: "IGESDimen_HArray1OfLeaderArrow.hxx".}
proc changeArray1*(this: var IGESDimenHArray1OfLeaderArrow): var IGESDimenArray1OfLeaderArrow {.
    importcpp: "ChangeArray1", header: "IGESDimen_HArray1OfLeaderArrow.hxx".}
type
  IGESDimenHArray1OfLeaderArrowbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "IGESDimen_HArray1OfLeaderArrow::get_type_name(@)",
                            header: "IGESDimen_HArray1OfLeaderArrow.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDimen_HArray1OfLeaderArrow::get_type_descriptor(@)",
    header: "IGESDimen_HArray1OfLeaderArrow.hxx".}
proc dynamicType*(this: IGESDimenHArray1OfLeaderArrow): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDimen_HArray1OfLeaderArrow.hxx".}
