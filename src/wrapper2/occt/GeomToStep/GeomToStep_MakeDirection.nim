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

discard "forward decl of StepGeom_Direction"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Dir2d"
discard "forward decl of Geom_Direction"
discard "forward decl of Geom2d_Direction"
type
  GeomToStepMakeDirection* {.importcpp: "GeomToStep_MakeDirection",
                            header: "GeomToStep_MakeDirection.hxx", bycopy.} = object of GeomToStepRoot


proc constructGeomToStepMakeDirection*(d: GpDir): GeomToStepMakeDirection {.
    constructor, importcpp: "GeomToStep_MakeDirection(@)",
    header: "GeomToStep_MakeDirection.hxx".}
proc constructGeomToStepMakeDirection*(d: GpDir2d): GeomToStepMakeDirection {.
    constructor, importcpp: "GeomToStep_MakeDirection(@)",
    header: "GeomToStep_MakeDirection.hxx".}
proc constructGeomToStepMakeDirection*(d: Handle[GeomDirection]): GeomToStepMakeDirection {.
    constructor, importcpp: "GeomToStep_MakeDirection(@)",
    header: "GeomToStep_MakeDirection.hxx".}
proc constructGeomToStepMakeDirection*(d: Handle[Geom2dDirection]): GeomToStepMakeDirection {.
    constructor, importcpp: "GeomToStep_MakeDirection(@)",
    header: "GeomToStep_MakeDirection.hxx".}
proc value*(this: GeomToStepMakeDirection): Handle[StepGeomDirection] {.
    noSideEffect, importcpp: "Value", header: "GeomToStep_MakeDirection.hxx".}

