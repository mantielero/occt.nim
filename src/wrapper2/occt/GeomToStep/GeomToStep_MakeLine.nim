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

discard "forward decl of StepGeom_Line"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Lin2d"
discard "forward decl of Geom_Line"
discard "forward decl of Geom2d_Line"
type
  GeomToStepMakeLine* {.importcpp: "GeomToStep_MakeLine",
                       header: "GeomToStep_MakeLine.hxx", bycopy.} = object of GeomToStepRoot


proc constructGeomToStepMakeLine*(L: GpLin): GeomToStepMakeLine {.constructor,
    importcpp: "GeomToStep_MakeLine(@)", header: "GeomToStep_MakeLine.hxx".}
proc constructGeomToStepMakeLine*(L: GpLin2d): GeomToStepMakeLine {.constructor,
    importcpp: "GeomToStep_MakeLine(@)", header: "GeomToStep_MakeLine.hxx".}
proc constructGeomToStepMakeLine*(c: Handle[GeomLine]): GeomToStepMakeLine {.
    constructor, importcpp: "GeomToStep_MakeLine(@)",
    header: "GeomToStep_MakeLine.hxx".}
proc constructGeomToStepMakeLine*(c: Handle[Geom2dLine]): GeomToStepMakeLine {.
    constructor, importcpp: "GeomToStep_MakeLine(@)",
    header: "GeomToStep_MakeLine.hxx".}
proc value*(this: GeomToStepMakeLine): Handle[StepGeomLine] {.noSideEffect,
    importcpp: "Value", header: "GeomToStep_MakeLine.hxx".}

