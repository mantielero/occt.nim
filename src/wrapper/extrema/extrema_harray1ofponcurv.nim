import extrema_types
import ../tkernel/tcolstd/tcolstd_types
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


proc newExtrema_HArray1OfPOnCurv*(theLower: cint; theUpper: cint): Extrema_HArray1OfPOnCurv {.
    cdecl, constructor, importcpp: "Extrema_HArray1OfPOnCurv(@)",
    header: "Extrema_HArray1OfPOnCurv.hxx".}
proc newExtrema_HArray1OfPOnCurv*(theLower: cint; theUpper: cint;
                                 theValue: Value_type): Extrema_HArray1OfPOnCurv {.
    cdecl, constructor, importcpp: "Extrema_HArray1OfPOnCurv(@)",
    header: "Extrema_HArray1OfPOnCurv.hxx".}
proc newExtrema_HArray1OfPOnCurv*(theOther: Extrema_Array1OfPOnCurv): Extrema_HArray1OfPOnCurv {.
    cdecl, constructor, importcpp: "Extrema_HArray1OfPOnCurv(@)",
    header: "Extrema_HArray1OfPOnCurv.hxx".}
proc Array1*(this: Extrema_HArray1OfPOnCurv): Extrema_Array1OfPOnCurv {.
    noSideEffect, cdecl, importcpp: "Array1", header: "Extrema_HArray1OfPOnCurv.hxx".}