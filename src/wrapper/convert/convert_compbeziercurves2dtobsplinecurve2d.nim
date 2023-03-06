import convert_types
import ../tcolgp/tcolgp_types
import ../../tkernel/tcolstd/tcolstd_types
##  Created on: 1993-11-09
##  Created by: Modelistation
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

discard "forward decl of Standard_ConstructionError"


proc newConvertCompBezierCurves2dToBSplineCurve2d*(
    angularTolerance: cfloat = 1.0e-4): ConvertCompBezierCurves2dToBSplineCurve2d {.
    cdecl, constructor,
    importcpp: "Convert_CompBezierCurves2dToBSplineCurve2d(@)", header: "Convert_CompBezierCurves2dToBSplineCurve2d.hxx".}
proc addCurve*(this: var ConvertCompBezierCurves2dToBSplineCurve2d;
              poles: TColgpArray1OfPnt2d) {.cdecl, importcpp: "AddCurve",
    header: "Convert_CompBezierCurves2dToBSplineCurve2d.hxx".}
proc perform*(this: var ConvertCompBezierCurves2dToBSplineCurve2d) {.cdecl,
    importcpp: "Perform", header: "Convert_CompBezierCurves2dToBSplineCurve2d.hxx".}
proc degree*(this: ConvertCompBezierCurves2dToBSplineCurve2d): cint {.noSideEffect,
    cdecl, importcpp: "Degree", header: "Convert_CompBezierCurves2dToBSplineCurve2d.hxx".}
proc nbPoles*(this: ConvertCompBezierCurves2dToBSplineCurve2d): cint {.noSideEffect,
    cdecl, importcpp: "NbPoles", header: "Convert_CompBezierCurves2dToBSplineCurve2d.hxx".}
proc poles*(this: ConvertCompBezierCurves2dToBSplineCurve2d;
           poles: var TColgpArray1OfPnt2d) {.noSideEffect, cdecl, importcpp: "Poles",
    header: "Convert_CompBezierCurves2dToBSplineCurve2d.hxx".}
proc nbKnots*(this: ConvertCompBezierCurves2dToBSplineCurve2d): cint {.noSideEffect,
    cdecl, importcpp: "NbKnots", header: "Convert_CompBezierCurves2dToBSplineCurve2d.hxx".}
proc knotsAndMults*(this: ConvertCompBezierCurves2dToBSplineCurve2d;
                   knots: var TColStdArray1OfReal;
                   mults: var TColStdArray1OfInteger) {.noSideEffect, cdecl,
    importcpp: "KnotsAndMults", header: "Convert_CompBezierCurves2dToBSplineCurve2d.hxx".}
