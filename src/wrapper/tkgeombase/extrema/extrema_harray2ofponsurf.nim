import ../../tkernel/tcolstd/tcolstd_types
import extrema_types



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



proc newExtremaHArray2OfPOnSurf*(theRowLow: cint; theRowUpp: cint; theColLow: cint;
                                theColUpp: cint): ExtremaHArray2OfPOnSurf {.cdecl,
    constructor, importcpp: "Extrema_HArray2OfPOnSurf(@)", header: "Extrema_HArray2OfPOnSurf.hxx".}
proc newExtremaHArray2OfPOnSurf*(theRowLow: cint; theRowUpp: cint; theColLow: cint;
                                theColUpp: cint; theValue: ValueType): ExtremaHArray2OfPOnSurf {.
    cdecl, constructor, importcpp: "Extrema_HArray2OfPOnSurf(@)", header: "Extrema_HArray2OfPOnSurf.hxx".}
proc newExtremaHArray2OfPOnSurf*(theOther: ExtremaArray2OfPOnSurf): ExtremaHArray2OfPOnSurf {.
    cdecl, constructor, importcpp: "Extrema_HArray2OfPOnSurf(@)", header: "Extrema_HArray2OfPOnSurf.hxx".}
proc array2*(this: ExtremaHArray2OfPOnSurf): ExtremaArray2OfPOnSurf {.noSideEffect,
    cdecl, importcpp: "Array2", header: "Extrema_HArray2OfPOnSurf.hxx".}
proc changeArray2*(this: var ExtremaHArray2OfPOnSurf): var ExtremaArray2OfPOnSurf {.
    cdecl, importcpp: "ChangeArray2", header: "Extrema_HArray2OfPOnSurf.hxx".}

