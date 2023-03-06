import convert_types
import ../tcolgp/tcolgp_types
import ../tcolstd/tcolstd_types
##  Created on: 1993-10-20
##  Created by: Bruno DUMORTIER
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


proc newConvertCompBezierCurvesToBSplineCurve*(angularTolerance: cfloat = 1.0e-4): ConvertCompBezierCurvesToBSplineCurve {.
    cdecl, constructor, importcpp: "Convert_CompBezierCurvesToBSplineCurve(@)",
    header: "Convert_CompBezierCurvesToBSplineCurve.hxx".}
proc addCurve*(this: var ConvertCompBezierCurvesToBSplineCurve;
              poles: TColgpArray1OfPnt) {.cdecl, importcpp: "AddCurve",
                                        header: "Convert_CompBezierCurvesToBSplineCurve.hxx".}
proc perform*(this: var ConvertCompBezierCurvesToBSplineCurve) {.cdecl,
    importcpp: "Perform", header: "Convert_CompBezierCurvesToBSplineCurve.hxx".}
proc degree*(this: ConvertCompBezierCurvesToBSplineCurve): cint {.noSideEffect,
    cdecl, importcpp: "Degree", header: "Convert_CompBezierCurvesToBSplineCurve.hxx".}
proc nbPoles*(this: ConvertCompBezierCurvesToBSplineCurve): cint {.noSideEffect,
    cdecl, importcpp: "NbPoles", header: "Convert_CompBezierCurvesToBSplineCurve.hxx".}
proc poles*(this: ConvertCompBezierCurvesToBSplineCurve;
           poles: var TColgpArray1OfPnt) {.noSideEffect, cdecl, importcpp: "Poles",
                                        header: "Convert_CompBezierCurvesToBSplineCurve.hxx".}
proc nbKnots*(this: ConvertCompBezierCurvesToBSplineCurve): cint {.noSideEffect,
    cdecl, importcpp: "NbKnots", header: "Convert_CompBezierCurvesToBSplineCurve.hxx".}
proc knotsAndMults*(this: ConvertCompBezierCurvesToBSplineCurve;
                   knots: var TColStdArray1OfReal;
                   mults: var TColStdArray1OfInteger) {.noSideEffect, cdecl,
    importcpp: "KnotsAndMults", header: "Convert_CompBezierCurvesToBSplineCurve.hxx".}
