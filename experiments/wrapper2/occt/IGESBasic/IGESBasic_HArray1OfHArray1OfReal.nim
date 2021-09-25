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

discard "forward decl of IGESBasic_HArray1OfHArray1OfReal"
discard "forward decl of IGESBasic_HArray1OfHArray1OfReal"
type
  HandleIGESBasicHArray1OfHArray1OfReal* = Handle[IGESBasicHArray1OfHArray1OfReal]
  IGESBasicHArray1OfHArray1OfReal* {.importcpp: "IGESBasic_HArray1OfHArray1OfReal", header: "IGESBasic_HArray1OfHArray1OfReal.hxx",
                                    bycopy.} = object of StandardTransient


proc constructIGESBasicHArray1OfHArray1OfReal*(low: int; up: int): IGESBasicHArray1OfHArray1OfReal {.
    constructor, importcpp: "IGESBasic_HArray1OfHArray1OfReal(@)",
    header: "IGESBasic_HArray1OfHArray1OfReal.hxx".}
proc lower*(this: IGESBasicHArray1OfHArray1OfReal): int {.noSideEffect,
    importcpp: "Lower", header: "IGESBasic_HArray1OfHArray1OfReal.hxx".}
proc upper*(this: IGESBasicHArray1OfHArray1OfReal): int {.noSideEffect,
    importcpp: "Upper", header: "IGESBasic_HArray1OfHArray1OfReal.hxx".}
proc length*(this: IGESBasicHArray1OfHArray1OfReal): int {.noSideEffect,
    importcpp: "Length", header: "IGESBasic_HArray1OfHArray1OfReal.hxx".}
proc setValue*(this: var IGESBasicHArray1OfHArray1OfReal; num: int;
              val: Handle[TColStdHArray1OfReal]) {.importcpp: "SetValue",
    header: "IGESBasic_HArray1OfHArray1OfReal.hxx".}
proc value*(this: IGESBasicHArray1OfHArray1OfReal; num: int): Handle[
    TColStdHArray1OfReal] {.noSideEffect, importcpp: "Value",
                           header: "IGESBasic_HArray1OfHArray1OfReal.hxx".}
type
  IGESBasicHArray1OfHArray1OfRealbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IGESBasic_HArray1OfHArray1OfReal::get_type_name(@)",
                            header: "IGESBasic_HArray1OfHArray1OfReal.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESBasic_HArray1OfHArray1OfReal::get_type_descriptor(@)",
    header: "IGESBasic_HArray1OfHArray1OfReal.hxx".}
proc dynamicType*(this: IGESBasicHArray1OfHArray1OfReal): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESBasic_HArray1OfHArray1OfReal.hxx".}
