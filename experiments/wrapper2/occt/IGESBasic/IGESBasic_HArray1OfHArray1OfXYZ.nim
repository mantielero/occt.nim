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

discard "forward decl of IGESBasic_HArray1OfHArray1OfXYZ"
discard "forward decl of IGESBasic_HArray1OfHArray1OfXYZ"
type
  HandleIGESBasicHArray1OfHArray1OfXYZ* = Handle[IGESBasicHArray1OfHArray1OfXYZ]
  IGESBasicHArray1OfHArray1OfXYZ* {.importcpp: "IGESBasic_HArray1OfHArray1OfXYZ", header: "IGESBasic_HArray1OfHArray1OfXYZ.hxx",
                                   bycopy.} = object of StandardTransient


proc constructIGESBasicHArray1OfHArray1OfXYZ*(low: int; up: int): IGESBasicHArray1OfHArray1OfXYZ {.
    constructor, importcpp: "IGESBasic_HArray1OfHArray1OfXYZ(@)",
    header: "IGESBasic_HArray1OfHArray1OfXYZ.hxx".}
proc lower*(this: IGESBasicHArray1OfHArray1OfXYZ): int {.noSideEffect,
    importcpp: "Lower", header: "IGESBasic_HArray1OfHArray1OfXYZ.hxx".}
proc upper*(this: IGESBasicHArray1OfHArray1OfXYZ): int {.noSideEffect,
    importcpp: "Upper", header: "IGESBasic_HArray1OfHArray1OfXYZ.hxx".}
proc length*(this: IGESBasicHArray1OfHArray1OfXYZ): int {.noSideEffect,
    importcpp: "Length", header: "IGESBasic_HArray1OfHArray1OfXYZ.hxx".}
proc setValue*(this: var IGESBasicHArray1OfHArray1OfXYZ; num: int;
              val: Handle[TColgpHArray1OfXYZ]) {.importcpp: "SetValue",
    header: "IGESBasic_HArray1OfHArray1OfXYZ.hxx".}
proc value*(this: IGESBasicHArray1OfHArray1OfXYZ; num: int): Handle[
    TColgpHArray1OfXYZ] {.noSideEffect, importcpp: "Value",
                         header: "IGESBasic_HArray1OfHArray1OfXYZ.hxx".}
type
  IGESBasicHArray1OfHArray1OfXYZbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IGESBasic_HArray1OfHArray1OfXYZ::get_type_name(@)",
                            header: "IGESBasic_HArray1OfHArray1OfXYZ.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESBasic_HArray1OfHArray1OfXYZ::get_type_descriptor(@)",
    header: "IGESBasic_HArray1OfHArray1OfXYZ.hxx".}
proc dynamicType*(this: IGESBasicHArray1OfHArray1OfXYZ): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESBasic_HArray1OfHArray1OfXYZ.hxx".}
