##  Created on: 1994-09-02
##  Created by: Frederic MAUPAS
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of StepGeom_Ellipse"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Elips"
discard "forward decl of Geom_Ellipse"
discard "forward decl of Geom2d_Ellipse"
type
  GeomToStep_MakeEllipse* {.importcpp: "GeomToStep_MakeEllipse",
                           header: "GeomToStep_MakeEllipse.hxx", bycopy.} = object of GeomToStep_Root


proc constructGeomToStep_MakeEllipse*(C: gp_Elips): GeomToStep_MakeEllipse {.
    constructor, importcpp: "GeomToStep_MakeEllipse(@)",
    header: "GeomToStep_MakeEllipse.hxx".}
proc constructGeomToStep_MakeEllipse*(C: handle[Geom_Ellipse]): GeomToStep_MakeEllipse {.
    constructor, importcpp: "GeomToStep_MakeEllipse(@)",
    header: "GeomToStep_MakeEllipse.hxx".}
proc constructGeomToStep_MakeEllipse*(C: handle[Geom2d_Ellipse]): GeomToStep_MakeEllipse {.
    constructor, importcpp: "GeomToStep_MakeEllipse(@)",
    header: "GeomToStep_MakeEllipse.hxx".}
proc Value*(this: GeomToStep_MakeEllipse): handle[StepGeom_Ellipse] {.noSideEffect,
    importcpp: "Value", header: "GeomToStep_MakeEllipse.hxx".}