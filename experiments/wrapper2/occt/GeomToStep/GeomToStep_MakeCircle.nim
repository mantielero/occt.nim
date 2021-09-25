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

discard "forward decl of StepGeom_Circle"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Circ"
discard "forward decl of Geom_Circle"
discard "forward decl of Geom2d_Circle"
type
  GeomToStepMakeCircle* {.importcpp: "GeomToStep_MakeCircle",
                         header: "GeomToStep_MakeCircle.hxx", bycopy.} = object of GeomToStepRoot


proc constructGeomToStepMakeCircle*(c: Circ): GeomToStepMakeCircle {.constructor,
    importcpp: "GeomToStep_MakeCircle(@)", header: "GeomToStep_MakeCircle.hxx".}
proc constructGeomToStepMakeCircle*(c: Handle[GeomCircle]): GeomToStepMakeCircle {.
    constructor, importcpp: "GeomToStep_MakeCircle(@)",
    header: "GeomToStep_MakeCircle.hxx".}
proc constructGeomToStepMakeCircle*(c: Handle[Geom2dCircle]): GeomToStepMakeCircle {.
    constructor, importcpp: "GeomToStep_MakeCircle(@)",
    header: "GeomToStep_MakeCircle.hxx".}
proc value*(this: GeomToStepMakeCircle): Handle[StepGeomCircle] {.noSideEffect,
    importcpp: "Value", header: "GeomToStep_MakeCircle.hxx".}
