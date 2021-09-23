##  Created on: 1992-08-26
##  Created by: Remi GILET
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../gp/gp_Cylinder, gce_Root,
  ../Standard/Standard_Real

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Circ"
type
  gce_MakeCylinder* {.importcpp: "gce_MakeCylinder",
                     header: "gce_MakeCylinder.hxx", bycopy.} = object of gce_Root ## ! <A2> is the
                                                                            ## local
                                                                            ## cartesian
                                                                            ## coordinate
                                                                            ## system of
                                                                            ## <me>.
                                                                            ## ! The
                                                                            ## status is
                                                                            ## "NegativeRadius" if R < 0.0


proc constructgce_MakeCylinder*(A2: gp_Ax2; Radius: Standard_Real): gce_MakeCylinder {.
    constructor, importcpp: "gce_MakeCylinder(@)", header: "gce_MakeCylinder.hxx".}
proc constructgce_MakeCylinder*(Cyl: gp_Cylinder; Point: gp_Pnt): gce_MakeCylinder {.
    constructor, importcpp: "gce_MakeCylinder(@)", header: "gce_MakeCylinder.hxx".}
proc constructgce_MakeCylinder*(Cyl: gp_Cylinder; Dist: Standard_Real): gce_MakeCylinder {.
    constructor, importcpp: "gce_MakeCylinder(@)", header: "gce_MakeCylinder.hxx".}
proc constructgce_MakeCylinder*(P1: gp_Pnt; P2: gp_Pnt; P3: gp_Pnt): gce_MakeCylinder {.
    constructor, importcpp: "gce_MakeCylinder(@)", header: "gce_MakeCylinder.hxx".}
proc constructgce_MakeCylinder*(Axis: gp_Ax1; Radius: Standard_Real): gce_MakeCylinder {.
    constructor, importcpp: "gce_MakeCylinder(@)", header: "gce_MakeCylinder.hxx".}
proc constructgce_MakeCylinder*(Circ: gp_Circ): gce_MakeCylinder {.constructor,
    importcpp: "gce_MakeCylinder(@)", header: "gce_MakeCylinder.hxx".}
proc Value*(this: gce_MakeCylinder): gp_Cylinder {.noSideEffect, importcpp: "Value",
    header: "gce_MakeCylinder.hxx".}
proc Operator*(this: gce_MakeCylinder): gp_Cylinder {.noSideEffect,
    importcpp: "Operator", header: "gce_MakeCylinder.hxx".}
converter `gp_Cylinder`*(this: gce_MakeCylinder): gp_Cylinder {.noSideEffect,
    importcpp: "gce_MakeCylinder::operator gp_Cylinder",
    header: "gce_MakeCylinder.hxx".}