##  Created on: 1992-09-28
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
  ../Standard/Standard_Handle, GCE2d_Root, ../Geom2d/Geom2d_Circle

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Pnt2d"
type
  GCE2d_MakeCircle* {.importcpp: "GCE2d_MakeCircle",
                     header: "GCE2d_MakeCircle.hxx", bycopy.} = object of GCE2d_Root ## !
                                                                              ## creates a
                                                                              ## circle
                                                                              ## from a
                                                                              ## non
                                                                              ## persistent
                                                                              ## one.


proc constructGCE2d_MakeCircle*(C: gp_Circ2d): GCE2d_MakeCircle {.constructor,
    importcpp: "GCE2d_MakeCircle(@)", header: "GCE2d_MakeCircle.hxx".}
proc constructGCE2d_MakeCircle*(A: gp_Ax2d; Radius: Standard_Real;
                               Sense: Standard_Boolean = Standard_True): GCE2d_MakeCircle {.
    constructor, importcpp: "GCE2d_MakeCircle(@)", header: "GCE2d_MakeCircle.hxx".}
proc constructGCE2d_MakeCircle*(A: gp_Ax22d; Radius: Standard_Real): GCE2d_MakeCircle {.
    constructor, importcpp: "GCE2d_MakeCircle(@)", header: "GCE2d_MakeCircle.hxx".}
proc constructGCE2d_MakeCircle*(Circ: gp_Circ2d; Dist: Standard_Real): GCE2d_MakeCircle {.
    constructor, importcpp: "GCE2d_MakeCircle(@)", header: "GCE2d_MakeCircle.hxx".}
proc constructGCE2d_MakeCircle*(Circ: gp_Circ2d; Point: gp_Pnt2d): GCE2d_MakeCircle {.
    constructor, importcpp: "GCE2d_MakeCircle(@)", header: "GCE2d_MakeCircle.hxx".}
proc constructGCE2d_MakeCircle*(P1: gp_Pnt2d; P2: gp_Pnt2d; P3: gp_Pnt2d): GCE2d_MakeCircle {.
    constructor, importcpp: "GCE2d_MakeCircle(@)", header: "GCE2d_MakeCircle.hxx".}
proc constructGCE2d_MakeCircle*(P: gp_Pnt2d; Radius: Standard_Real;
                               Sense: Standard_Boolean = Standard_True): GCE2d_MakeCircle {.
    constructor, importcpp: "GCE2d_MakeCircle(@)", header: "GCE2d_MakeCircle.hxx".}
proc constructGCE2d_MakeCircle*(Center: gp_Pnt2d; Point: gp_Pnt2d;
                               Sense: Standard_Boolean = Standard_True): GCE2d_MakeCircle {.
    constructor, importcpp: "GCE2d_MakeCircle(@)", header: "GCE2d_MakeCircle.hxx".}
proc Value*(this: GCE2d_MakeCircle): handle[Geom2d_Circle] {.noSideEffect,
    importcpp: "Value", header: "GCE2d_MakeCircle.hxx".}
converter `constopencascade`*(this: GCE2d_MakeCircle): handle[Geom2d_Circle] {.
    noSideEffect, importcpp: "GCE2d_MakeCircle::operator constopencascade",
    header: "GCE2d_MakeCircle.hxx".}