##  Created on: 1993-06-14
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

discard "forward decl of StepGeom_Axis1Placement"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax2d"
discard "forward decl of Geom_Axis1Placement"
discard "forward decl of Geom2d_AxisPlacement"
type
  GeomToStepMakeAxis1Placement* {.importcpp: "GeomToStep_MakeAxis1Placement",
                                 header: "GeomToStep_MakeAxis1Placement.hxx",
                                 bycopy.} = object of GeomToStepRoot


proc constructGeomToStepMakeAxis1Placement*(a: GpAx1): GeomToStepMakeAxis1Placement {.
    constructor, importcpp: "GeomToStep_MakeAxis1Placement(@)",
    header: "GeomToStep_MakeAxis1Placement.hxx".}
proc constructGeomToStepMakeAxis1Placement*(a: GpAx2d): GeomToStepMakeAxis1Placement {.
    constructor, importcpp: "GeomToStep_MakeAxis1Placement(@)",
    header: "GeomToStep_MakeAxis1Placement.hxx".}
proc constructGeomToStepMakeAxis1Placement*(a: Handle[GeomAxis1Placement]): GeomToStepMakeAxis1Placement {.
    constructor, importcpp: "GeomToStep_MakeAxis1Placement(@)",
    header: "GeomToStep_MakeAxis1Placement.hxx".}
proc constructGeomToStepMakeAxis1Placement*(a: Handle[Geom2dAxisPlacement]): GeomToStepMakeAxis1Placement {.
    constructor, importcpp: "GeomToStep_MakeAxis1Placement(@)",
    header: "GeomToStep_MakeAxis1Placement.hxx".}
proc value*(this: GeomToStepMakeAxis1Placement): Handle[StepGeomAxis1Placement] {.
    noSideEffect, importcpp: "Value", header: "GeomToStep_MakeAxis1Placement.hxx".}

