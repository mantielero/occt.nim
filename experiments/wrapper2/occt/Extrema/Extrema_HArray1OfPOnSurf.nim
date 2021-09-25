##  Created on: 1991-02-26
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1991-1999 Matra Datavision
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
  ExtremaHArray1OfPOnSurf* {.importcpp: "Extrema_HArray1OfPOnSurf",
                            header: "Extrema_HArray1OfPOnSurf.hxx", bycopy.} = object of ExtremaArray1OfPOnSurf


proc constructExtremaHArray1OfPOnSurf*(theLower: int; theUpper: int): ExtremaHArray1OfPOnSurf {.
    constructor, importcpp: "Extrema_HArray1OfPOnSurf(@)",
    header: "Extrema_HArray1OfPOnSurf.hxx".}
proc constructExtremaHArray1OfPOnSurf*(theLower: int; theUpper: int;
                                      theValue: ValueType): ExtremaHArray1OfPOnSurf {.
    constructor, importcpp: "Extrema_HArray1OfPOnSurf(@)",
    header: "Extrema_HArray1OfPOnSurf.hxx".}
proc constructExtremaHArray1OfPOnSurf*(theOther: ExtremaArray1OfPOnSurf): ExtremaHArray1OfPOnSurf {.
    constructor, importcpp: "Extrema_HArray1OfPOnSurf(@)",
    header: "Extrema_HArray1OfPOnSurf.hxx".}
proc array1*(this: ExtremaHArray1OfPOnSurf): ExtremaArray1OfPOnSurf {.noSideEffect,
    importcpp: "Array1", header: "Extrema_HArray1OfPOnSurf.hxx".}
proc changeArray1*(this: var ExtremaHArray1OfPOnSurf): var ExtremaArray1OfPOnSurf {.
    importcpp: "ChangeArray1", header: "Extrema_HArray1OfPOnSurf.hxx".}
type
  ExtremaHArray1OfPOnSurfbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "Extrema_HArray1OfPOnSurf::get_type_name(@)",
                            header: "Extrema_HArray1OfPOnSurf.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Extrema_HArray1OfPOnSurf::get_type_descriptor(@)",
    header: "Extrema_HArray1OfPOnSurf.hxx".}
proc dynamicType*(this: ExtremaHArray1OfPOnSurf): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Extrema_HArray1OfPOnSurf.hxx".}
