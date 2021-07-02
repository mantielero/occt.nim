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

discard "forward decl of IGESBasic_HArray1OfHArray1OfInteger"
discard "forward decl of IGESBasic_HArray1OfHArray1OfInteger"
type
  HandleIGESBasicHArray1OfHArray1OfInteger* = Handle[
      IGESBasicHArray1OfHArray1OfInteger]
  IGESBasicHArray1OfHArray1OfInteger* {.importcpp: "IGESBasic_HArray1OfHArray1OfInteger", header: "IGESBasic_HArray1OfHArray1OfInteger.hxx",
                                       bycopy.} = object of StandardTransient


proc constructIGESBasicHArray1OfHArray1OfInteger*(low: StandardInteger;
    up: StandardInteger): IGESBasicHArray1OfHArray1OfInteger {.constructor,
    importcpp: "IGESBasic_HArray1OfHArray1OfInteger(@)",
    header: "IGESBasic_HArray1OfHArray1OfInteger.hxx".}
proc lower*(this: IGESBasicHArray1OfHArray1OfInteger): StandardInteger {.
    noSideEffect, importcpp: "Lower",
    header: "IGESBasic_HArray1OfHArray1OfInteger.hxx".}
proc upper*(this: IGESBasicHArray1OfHArray1OfInteger): StandardInteger {.
    noSideEffect, importcpp: "Upper",
    header: "IGESBasic_HArray1OfHArray1OfInteger.hxx".}
proc length*(this: IGESBasicHArray1OfHArray1OfInteger): StandardInteger {.
    noSideEffect, importcpp: "Length",
    header: "IGESBasic_HArray1OfHArray1OfInteger.hxx".}
proc setValue*(this: var IGESBasicHArray1OfHArray1OfInteger; num: StandardInteger;
              val: Handle[TColStdHArray1OfInteger]) {.importcpp: "SetValue",
    header: "IGESBasic_HArray1OfHArray1OfInteger.hxx".}
proc value*(this: IGESBasicHArray1OfHArray1OfInteger; num: StandardInteger): Handle[
    TColStdHArray1OfInteger] {.noSideEffect, importcpp: "Value",
                              header: "IGESBasic_HArray1OfHArray1OfInteger.hxx".}
type
  IGESBasicHArray1OfHArray1OfIntegerbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IGESBasic_HArray1OfHArray1OfInteger::get_type_name(@)",
                            header: "IGESBasic_HArray1OfHArray1OfInteger.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESBasic_HArray1OfHArray1OfInteger::get_type_descriptor(@)",
    header: "IGESBasic_HArray1OfHArray1OfInteger.hxx".}
proc dynamicType*(this: IGESBasicHArray1OfHArray1OfInteger): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESBasic_HArray1OfHArray1OfInteger.hxx".}

