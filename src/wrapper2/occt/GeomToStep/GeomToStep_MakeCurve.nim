##  Created on: 1993-06-21
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

discard "forward decl of StepGeom_Curve"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
type
  GeomToStep_MakeCurve* {.importcpp: "GeomToStep_MakeCurve",
                         header: "GeomToStep_MakeCurve.hxx", bycopy.} = object of GeomToStep_Root


proc constructGeomToStep_MakeCurve*(C: handle[Geom_Curve]): GeomToStep_MakeCurve {.
    constructor, importcpp: "GeomToStep_MakeCurve(@)",
    header: "GeomToStep_MakeCurve.hxx".}
proc constructGeomToStep_MakeCurve*(C: handle[Geom2d_Curve]): GeomToStep_MakeCurve {.
    constructor, importcpp: "GeomToStep_MakeCurve(@)",
    header: "GeomToStep_MakeCurve.hxx".}
proc Value*(this: GeomToStep_MakeCurve): handle[StepGeom_Curve] {.noSideEffect,
    importcpp: "Value", header: "GeomToStep_MakeCurve.hxx".}