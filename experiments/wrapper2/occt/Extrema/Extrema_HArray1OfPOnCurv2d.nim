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
  ExtremaHArray1OfPOnCurv2d* {.importcpp: "Extrema_HArray1OfPOnCurv2d",
                              header: "Extrema_HArray1OfPOnCurv2d.hxx", bycopy.} = object of ExtremaArray1OfPOnCurv2d


proc constructExtremaHArray1OfPOnCurv2d*(theLower: int; theUpper: int): ExtremaHArray1OfPOnCurv2d {.
    constructor, importcpp: "Extrema_HArray1OfPOnCurv2d(@)",
    header: "Extrema_HArray1OfPOnCurv2d.hxx".}
proc constructExtremaHArray1OfPOnCurv2d*(theLower: int; theUpper: int;
                                        theValue: ValueType): ExtremaHArray1OfPOnCurv2d {.
    constructor, importcpp: "Extrema_HArray1OfPOnCurv2d(@)",
    header: "Extrema_HArray1OfPOnCurv2d.hxx".}
proc constructExtremaHArray1OfPOnCurv2d*(theOther: ExtremaArray1OfPOnCurv2d): ExtremaHArray1OfPOnCurv2d {.
    constructor, importcpp: "Extrema_HArray1OfPOnCurv2d(@)",
    header: "Extrema_HArray1OfPOnCurv2d.hxx".}
proc array1*(this: ExtremaHArray1OfPOnCurv2d): ExtremaArray1OfPOnCurv2d {.
    noSideEffect, importcpp: "Array1", header: "Extrema_HArray1OfPOnCurv2d.hxx".}
proc changeArray1*(this: var ExtremaHArray1OfPOnCurv2d): var ExtremaArray1OfPOnCurv2d {.
    importcpp: "ChangeArray1", header: "Extrema_HArray1OfPOnCurv2d.hxx".}
type
  ExtremaHArray1OfPOnCurv2dbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "Extrema_HArray1OfPOnCurv2d::get_type_name(@)",
                            header: "Extrema_HArray1OfPOnCurv2d.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Extrema_HArray1OfPOnCurv2d::get_type_descriptor(@)",
    header: "Extrema_HArray1OfPOnCurv2d.hxx".}
proc dynamicType*(this: ExtremaHArray1OfPOnCurv2d): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Extrema_HArray1OfPOnCurv2d.hxx".}
