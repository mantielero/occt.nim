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

discard "forward decl of Geom_BSplineCurve"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
type
  GeomLibInterpolate* {.importcpp: "GeomLib_Interpolate",
                       header: "GeomLib_Interpolate.hxx", bycopy.} = object


proc constructGeomLibInterpolate*(degree: StandardInteger;
                                 numPoints: StandardInteger;
                                 points: TColgpArray1OfPnt;
                                 parameters: TColStdArray1OfReal): GeomLibInterpolate {.
    constructor, importcpp: "GeomLib_Interpolate(@)",
    header: "GeomLib_Interpolate.hxx".}
proc isDone*(this: GeomLibInterpolate): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomLib_Interpolate.hxx".}
proc error*(this: GeomLibInterpolate): GeomLibInterpolationErrors {.noSideEffect,
    importcpp: "Error", header: "GeomLib_Interpolate.hxx".}
proc curve*(this: GeomLibInterpolate): Handle[GeomBSplineCurve] {.noSideEffect,
    importcpp: "Curve", header: "GeomLib_Interpolate.hxx".}

