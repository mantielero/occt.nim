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

discard "forward decl of StepGeom_Axis2Placement3d"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Axis2Placement"
type
  GeomToStep_MakeAxis2Placement3d* {.importcpp: "GeomToStep_MakeAxis2Placement3d", header: "GeomToStep_MakeAxis2Placement3d.hxx",
                                    bycopy.} = object of GeomToStep_Root


proc constructGeomToStep_MakeAxis2Placement3d*(): GeomToStep_MakeAxis2Placement3d {.
    constructor, importcpp: "GeomToStep_MakeAxis2Placement3d(@)",
    header: "GeomToStep_MakeAxis2Placement3d.hxx".}
proc constructGeomToStep_MakeAxis2Placement3d*(A: gp_Ax2): GeomToStep_MakeAxis2Placement3d {.
    constructor, importcpp: "GeomToStep_MakeAxis2Placement3d(@)",
    header: "GeomToStep_MakeAxis2Placement3d.hxx".}
proc constructGeomToStep_MakeAxis2Placement3d*(A: gp_Ax3): GeomToStep_MakeAxis2Placement3d {.
    constructor, importcpp: "GeomToStep_MakeAxis2Placement3d(@)",
    header: "GeomToStep_MakeAxis2Placement3d.hxx".}
proc constructGeomToStep_MakeAxis2Placement3d*(T: gp_Trsf): GeomToStep_MakeAxis2Placement3d {.
    constructor, importcpp: "GeomToStep_MakeAxis2Placement3d(@)",
    header: "GeomToStep_MakeAxis2Placement3d.hxx".}
proc constructGeomToStep_MakeAxis2Placement3d*(A: handle[Geom_Axis2Placement]): GeomToStep_MakeAxis2Placement3d {.
    constructor, importcpp: "GeomToStep_MakeAxis2Placement3d(@)",
    header: "GeomToStep_MakeAxis2Placement3d.hxx".}
proc Value*(this: GeomToStep_MakeAxis2Placement3d): handle[
    StepGeom_Axis2Placement3d] {.noSideEffect, importcpp: "Value",
                                header: "GeomToStep_MakeAxis2Placement3d.hxx".}