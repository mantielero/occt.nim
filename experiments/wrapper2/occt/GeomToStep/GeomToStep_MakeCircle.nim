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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, GeomToStep_Root

discard "forward decl of StepGeom_Circle"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Circ"
discard "forward decl of Geom_Circle"
discard "forward decl of Geom2d_Circle"
type
  GeomToStep_MakeCircle* {.importcpp: "GeomToStep_MakeCircle",
                          header: "GeomToStep_MakeCircle.hxx", bycopy.} = object of GeomToStep_Root


proc constructGeomToStep_MakeCircle*(C: gp_Circ): GeomToStep_MakeCircle {.
    constructor, importcpp: "GeomToStep_MakeCircle(@)",
    header: "GeomToStep_MakeCircle.hxx".}
proc constructGeomToStep_MakeCircle*(C: handle[Geom_Circle]): GeomToStep_MakeCircle {.
    constructor, importcpp: "GeomToStep_MakeCircle(@)",
    header: "GeomToStep_MakeCircle.hxx".}
proc constructGeomToStep_MakeCircle*(C: handle[Geom2d_Circle]): GeomToStep_MakeCircle {.
    constructor, importcpp: "GeomToStep_MakeCircle(@)",
    header: "GeomToStep_MakeCircle.hxx".}
proc Value*(this: GeomToStep_MakeCircle): handle[StepGeom_Circle] {.noSideEffect,
    importcpp: "Value", header: "GeomToStep_MakeCircle.hxx".}