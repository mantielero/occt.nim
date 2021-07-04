##  Created on: 1993-08-05
##  Created by: Martine LANGLOIS
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, GeomToStep_Root

discard "forward decl of StepGeom_BSplineCurveWithKnots"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom_BSplineCurve"
discard "forward decl of Geom2d_BSplineCurve"
type
  GeomToStep_MakeBSplineCurveWithKnots* {.
      importcpp: "GeomToStep_MakeBSplineCurveWithKnots",
      header: "GeomToStep_MakeBSplineCurveWithKnots.hxx", bycopy.} = object of GeomToStep_Root


proc constructGeomToStep_MakeBSplineCurveWithKnots*(
    Bsplin: handle[Geom_BSplineCurve]): GeomToStep_MakeBSplineCurveWithKnots {.
    constructor, importcpp: "GeomToStep_MakeBSplineCurveWithKnots(@)",
    header: "GeomToStep_MakeBSplineCurveWithKnots.hxx".}
proc constructGeomToStep_MakeBSplineCurveWithKnots*(
    Bsplin: handle[Geom2d_BSplineCurve]): GeomToStep_MakeBSplineCurveWithKnots {.
    constructor, importcpp: "GeomToStep_MakeBSplineCurveWithKnots(@)",
    header: "GeomToStep_MakeBSplineCurveWithKnots.hxx".}
proc Value*(this: GeomToStep_MakeBSplineCurveWithKnots): handle[
    StepGeom_BSplineCurveWithKnots] {.noSideEffect, importcpp: "Value", header: "GeomToStep_MakeBSplineCurveWithKnots.hxx".}