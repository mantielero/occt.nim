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
  ../Standard/Standard_Handle, ../gp/gp_Cone, gce_Root, ../Standard/Standard_Real

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Cone"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Lin"
type
  gce_MakeCone* {.importcpp: "gce_MakeCone", header: "gce_MakeCone.hxx", bycopy.} = object of gce_Root ##
                                                                                             ## !
                                                                                             ## Creates
                                                                                             ## an
                                                                                             ## infinite
                                                                                             ## conical
                                                                                             ## surface.
                                                                                             ## A2
                                                                                             ## locates
                                                                                             ## the
                                                                                             ## cone
                                                                                             ##
                                                                                             ## !
                                                                                             ## in
                                                                                             ## the
                                                                                             ## space
                                                                                             ## and
                                                                                             ## defines
                                                                                             ## the
                                                                                             ## reference
                                                                                             ## plane
                                                                                             ## of
                                                                                             ## the
                                                                                             ## surface.
                                                                                             ##
                                                                                             ## !
                                                                                             ## Ang
                                                                                             ## is
                                                                                             ## the
                                                                                             ## conical
                                                                                             ## surface
                                                                                             ## semi-angle
                                                                                             ## between
                                                                                             ## 0
                                                                                             ## and
                                                                                             ## PI/2
                                                                                             ## radians.
                                                                                             ##
                                                                                             ## !
                                                                                             ## Radius
                                                                                             ## is
                                                                                             ## the
                                                                                             ## radius
                                                                                             ## of
                                                                                             ## the
                                                                                             ## circle
                                                                                             ## in
                                                                                             ## the
                                                                                             ## reference
                                                                                             ## plane
                                                                                             ## of
                                                                                             ##
                                                                                             ## !
                                                                                             ## the
                                                                                             ## cone.
                                                                                             ##
                                                                                             ## !
                                                                                             ## If
                                                                                             ## Radius
                                                                                             ## is
                                                                                             ## lower
                                                                                             ## than
                                                                                             ## 0.0
                                                                                             ## the
                                                                                             ## status
                                                                                             ## is
                                                                                             ## "
                                                                                             ##
                                                                                             ## !
                                                                                             ## If
                                                                                             ## Ang
                                                                                             ## <
                                                                                             ## Resolution
                                                                                             ## from
                                                                                             ## gp
                                                                                             ## or
                                                                                             ## Ang
                                                                                             ## >=
                                                                                             ## (PI/2)
                                                                                             ## -
                                                                                             ## Resolution.


proc constructgce_MakeCone*(A2: gp_Ax2; Ang: Standard_Real; Radius: Standard_Real): gce_MakeCone {.
    constructor, importcpp: "gce_MakeCone(@)", header: "gce_MakeCone.hxx".}
proc constructgce_MakeCone*(Cone: gp_Cone; Point: gp_Pnt): gce_MakeCone {.constructor,
    importcpp: "gce_MakeCone(@)", header: "gce_MakeCone.hxx".}
proc constructgce_MakeCone*(Cone: gp_Cone; Dist: Standard_Real): gce_MakeCone {.
    constructor, importcpp: "gce_MakeCone(@)", header: "gce_MakeCone.hxx".}
proc constructgce_MakeCone*(P1: gp_Pnt; P2: gp_Pnt; P3: gp_Pnt; P4: gp_Pnt): gce_MakeCone {.
    constructor, importcpp: "gce_MakeCone(@)", header: "gce_MakeCone.hxx".}
proc constructgce_MakeCone*(Axis: gp_Ax1; P1: gp_Pnt; P2: gp_Pnt): gce_MakeCone {.
    constructor, importcpp: "gce_MakeCone(@)", header: "gce_MakeCone.hxx".}
proc constructgce_MakeCone*(Axis: gp_Lin; P1: gp_Pnt; P2: gp_Pnt): gce_MakeCone {.
    constructor, importcpp: "gce_MakeCone(@)", header: "gce_MakeCone.hxx".}
proc constructgce_MakeCone*(P1: gp_Pnt; P2: gp_Pnt; R1: Standard_Real;
                           R2: Standard_Real): gce_MakeCone {.constructor,
    importcpp: "gce_MakeCone(@)", header: "gce_MakeCone.hxx".}
proc Value*(this: gce_MakeCone): gp_Cone {.noSideEffect, importcpp: "Value",
                                       header: "gce_MakeCone.hxx".}
proc Operator*(this: gce_MakeCone): gp_Cone {.noSideEffect, importcpp: "Operator",
    header: "gce_MakeCone.hxx".}
converter `gp_Cone`*(this: gce_MakeCone): gp_Cone {.noSideEffect,
    importcpp: "gce_MakeCone::operator gp_Cone", header: "gce_MakeCone.hxx".}