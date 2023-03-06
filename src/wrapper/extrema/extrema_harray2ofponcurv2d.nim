import extrema_types
import ../tcolstd/tcolstd_types
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


proc newExtrema_HArray2OfPOnCurv2d*(theRowLow: cint; theRowUpp: cint;
                                   theColLow: cint; theColUpp: cint): Extrema_HArray2OfPOnCurv2d {.
    cdecl, constructor, importcpp: "Extrema_HArray2OfPOnCurv2d(@)",
    header: "Extrema_HArray2OfPOnCurv2d.hxx".}
proc newExtrema_HArray2OfPOnCurv2d*(theRowLow: cint; theRowUpp: cint;
                                   theColLow: cint; theColUpp: cint;
                                   theValue: Value_type): Extrema_HArray2OfPOnCurv2d {.
    cdecl, constructor, importcpp: "Extrema_HArray2OfPOnCurv2d(@)",
    header: "Extrema_HArray2OfPOnCurv2d.hxx".}
proc newExtrema_HArray2OfPOnCurv2d*(theOther: Extrema_Array2OfPOnCurv2d): Extrema_HArray2OfPOnCurv2d {.
    cdecl, constructor, importcpp: "Extrema_HArray2OfPOnCurv2d(@)",
    header: "Extrema_HArray2OfPOnCurv2d.hxx".}
proc Array2*(this: Extrema_HArray2OfPOnCurv2d): Extrema_Array2OfPOnCurv2d {.
    noSideEffect, cdecl, importcpp: "Array2",
    header: "Extrema_HArray2OfPOnCurv2d.hxx".}
proc ChangeArray2*(this: var Extrema_HArray2OfPOnCurv2d): var Extrema_Array2OfPOnCurv2d {.
    cdecl, importcpp: "ChangeArray2", header: "Extrema_HArray2OfPOnCurv2d.hxx".}