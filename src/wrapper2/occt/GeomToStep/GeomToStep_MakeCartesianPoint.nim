##  Created on: 1993-06-11
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

discard "forward decl of StepGeom_CartesianPoint"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
discard "forward decl of Geom_CartesianPoint"
discard "forward decl of Geom2d_CartesianPoint"
type
  GeomToStepMakeCartesianPoint* {.importcpp: "GeomToStep_MakeCartesianPoint",
                                 header: "GeomToStep_MakeCartesianPoint.hxx",
                                 bycopy.} = object of GeomToStepRoot


proc constructGeomToStepMakeCartesianPoint*(p: GpPnt): GeomToStepMakeCartesianPoint {.
    constructor, importcpp: "GeomToStep_MakeCartesianPoint(@)",
    header: "GeomToStep_MakeCartesianPoint.hxx".}
proc constructGeomToStepMakeCartesianPoint*(p: GpPnt2d): GeomToStepMakeCartesianPoint {.
    constructor, importcpp: "GeomToStep_MakeCartesianPoint(@)",
    header: "GeomToStep_MakeCartesianPoint.hxx".}
proc constructGeomToStepMakeCartesianPoint*(p: Handle[GeomCartesianPoint]): GeomToStepMakeCartesianPoint {.
    constructor, importcpp: "GeomToStep_MakeCartesianPoint(@)",
    header: "GeomToStep_MakeCartesianPoint.hxx".}
proc constructGeomToStepMakeCartesianPoint*(p: Handle[Geom2dCartesianPoint]): GeomToStepMakeCartesianPoint {.
    constructor, importcpp: "GeomToStep_MakeCartesianPoint(@)",
    header: "GeomToStep_MakeCartesianPoint.hxx".}
proc value*(this: GeomToStepMakeCartesianPoint): Handle[StepGeomCartesianPoint] {.
    noSideEffect, importcpp: "Value", header: "GeomToStep_MakeCartesianPoint.hxx".}

