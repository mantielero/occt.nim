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
  ../Standard/Standard_Handle, ../gp/gp_Circ, gce_Root, ../Standard/Standard_Real

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Ax1"
type
  gce_MakeCirc* {.importcpp: "gce_MakeCirc", header: "gce_MakeCirc.hxx", bycopy.} = object of gce_Root ##
                                                                                             ## !
                                                                                             ## A2
                                                                                             ## locates
                                                                                             ## the
                                                                                             ## circle
                                                                                             ## and
                                                                                             ## gives
                                                                                             ## its
                                                                                             ## orientation
                                                                                             ## in
                                                                                             ## 3D
                                                                                             ## space.
                                                                                             ##
                                                                                             ## !
                                                                                             ## Warnings
                                                                                             ## :
                                                                                             ##
                                                                                             ## !
                                                                                             ## It
                                                                                             ## is
                                                                                             ## not
                                                                                             ## forbidden
                                                                                             ## to
                                                                                             ## create
                                                                                             ## a
                                                                                             ## circle
                                                                                             ## with
                                                                                             ## Radius
                                                                                             ## =
                                                                                             ## 0.0
                                                                                             ##
                                                                                             ## !
                                                                                             ## The
                                                                                             ## status
                                                                                             ## is
                                                                                             ## "NegativeRadius"
                                                                                             ## if
                                                                                             ## Radius
                                                                                             ## <
                                                                                             ## 0.0


proc constructgce_MakeCirc*(A2: gp_Ax2; Radius: Standard_Real): gce_MakeCirc {.
    constructor, importcpp: "gce_MakeCirc(@)", header: "gce_MakeCirc.hxx".}
proc constructgce_MakeCirc*(Circ: gp_Circ; Dist: Standard_Real): gce_MakeCirc {.
    constructor, importcpp: "gce_MakeCirc(@)", header: "gce_MakeCirc.hxx".}
proc constructgce_MakeCirc*(Circ: gp_Circ; Point: gp_Pnt): gce_MakeCirc {.constructor,
    importcpp: "gce_MakeCirc(@)", header: "gce_MakeCirc.hxx".}
proc constructgce_MakeCirc*(P1: gp_Pnt; P2: gp_Pnt; P3: gp_Pnt): gce_MakeCirc {.
    constructor, importcpp: "gce_MakeCirc(@)", header: "gce_MakeCirc.hxx".}
proc constructgce_MakeCirc*(Center: gp_Pnt; Norm: gp_Dir; Radius: Standard_Real): gce_MakeCirc {.
    constructor, importcpp: "gce_MakeCirc(@)", header: "gce_MakeCirc.hxx".}
proc constructgce_MakeCirc*(Center: gp_Pnt; Plane: gp_Pln; Radius: Standard_Real): gce_MakeCirc {.
    constructor, importcpp: "gce_MakeCirc(@)", header: "gce_MakeCirc.hxx".}
proc constructgce_MakeCirc*(Center: gp_Pnt; Ptaxis: gp_Pnt; Radius: Standard_Real): gce_MakeCirc {.
    constructor, importcpp: "gce_MakeCirc(@)", header: "gce_MakeCirc.hxx".}
proc constructgce_MakeCirc*(Axis: gp_Ax1; Radius: Standard_Real): gce_MakeCirc {.
    constructor, importcpp: "gce_MakeCirc(@)", header: "gce_MakeCirc.hxx".}
proc Value*(this: gce_MakeCirc): gp_Circ {.noSideEffect, importcpp: "Value",
                                       header: "gce_MakeCirc.hxx".}
proc Operator*(this: gce_MakeCirc): gp_Circ {.noSideEffect, importcpp: "Operator",
    header: "gce_MakeCirc.hxx".}
converter `gp_Circ`*(this: gce_MakeCirc): gp_Circ {.noSideEffect,
    importcpp: "gce_MakeCirc::operator gp_Circ", header: "gce_MakeCirc.hxx".}