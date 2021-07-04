##  Created on: 1996-08-30
##  Created by: Xavier BENVENISTE
##  Copyright (c) 1996-1999 Matra Datavision
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  GeomLib_InterpolationErrors, ../Standard/Standard_Integer,
  ../TColgp/TColgp_Array1OfPnt, ../TColStd/TColStd_Array1OfReal

discard "forward decl of Geom_BSplineCurve"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
type
  GeomLib_Interpolate* {.importcpp: "GeomLib_Interpolate",
                        header: "GeomLib_Interpolate.hxx", bycopy.} = object


proc constructGeomLib_Interpolate*(Degree: Standard_Integer;
                                  NumPoints: Standard_Integer;
                                  Points: TColgp_Array1OfPnt;
                                  Parameters: TColStd_Array1OfReal): GeomLib_Interpolate {.
    constructor, importcpp: "GeomLib_Interpolate(@)",
    header: "GeomLib_Interpolate.hxx".}
proc IsDone*(this: GeomLib_Interpolate): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomLib_Interpolate.hxx".}
proc Error*(this: GeomLib_Interpolate): GeomLib_InterpolationErrors {.noSideEffect,
    importcpp: "Error", header: "GeomLib_Interpolate.hxx".}
proc Curve*(this: GeomLib_Interpolate): handle[Geom_BSplineCurve] {.noSideEffect,
    importcpp: "Curve", header: "GeomLib_Interpolate.hxx".}