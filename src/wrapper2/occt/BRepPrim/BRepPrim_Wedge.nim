##  Created on: 1995-01-09
##  Created by: Modelistation
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Ax2"
type
  BRepPrimWedge* {.importcpp: "BRepPrim_Wedge", header: "BRepPrim_Wedge.hxx", bycopy.} = object of BRepPrimGWedge ##
                                                                                                        ## !
                                                                                                        ## Default
                                                                                                        ## constructor


proc constructBRepPrimWedge*(): BRepPrimWedge {.constructor,
    importcpp: "BRepPrim_Wedge(@)", header: "BRepPrim_Wedge.hxx".}
proc constructBRepPrimWedge*(axes: GpAx2; dx: StandardReal; dy: StandardReal;
                            dz: StandardReal): BRepPrimWedge {.constructor,
    importcpp: "BRepPrim_Wedge(@)", header: "BRepPrim_Wedge.hxx".}
proc constructBRepPrimWedge*(axes: GpAx2; dx: StandardReal; dy: StandardReal;
                            dz: StandardReal; ltx: StandardReal): BRepPrimWedge {.
    constructor, importcpp: "BRepPrim_Wedge(@)", header: "BRepPrim_Wedge.hxx".}
proc constructBRepPrimWedge*(axes: GpAx2; xmin: StandardReal; ymin: StandardReal;
                            zmin: StandardReal; z2min: StandardReal;
                            x2min: StandardReal; xmax: StandardReal;
                            ymax: StandardReal; zmax: StandardReal;
                            z2max: StandardReal; x2max: StandardReal): BRepPrimWedge {.
    constructor, importcpp: "BRepPrim_Wedge(@)", header: "BRepPrim_Wedge.hxx".}

