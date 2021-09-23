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
  ../Standard/Standard_Handle, GCE2d_Root, ../Geom2d/Geom2d_Parabola

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Parab2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Pnt2d"
type
  GCE2d_MakeParabola* {.importcpp: "GCE2d_MakeParabola",
                       header: "GCE2d_MakeParabola.hxx", bycopy.} = object of GCE2d_Root ##
                                                                                  ## !
                                                                                  ## Creates
                                                                                  ## a
                                                                                  ## parabola
                                                                                  ## from
                                                                                  ## a
                                                                                  ## non
                                                                                  ## persistent
                                                                                  ## one.


proc constructGCE2d_MakeParabola*(Prb: gp_Parab2d): GCE2d_MakeParabola {.
    constructor, importcpp: "GCE2d_MakeParabola(@)",
    header: "GCE2d_MakeParabola.hxx".}
proc constructGCE2d_MakeParabola*(Axis: gp_Ax22d; Focal: Standard_Real): GCE2d_MakeParabola {.
    constructor, importcpp: "GCE2d_MakeParabola(@)",
    header: "GCE2d_MakeParabola.hxx".}
proc constructGCE2d_MakeParabola*(MirrorAxis: gp_Ax2d; Focal: Standard_Real;
                                 Sense: Standard_Boolean): GCE2d_MakeParabola {.
    constructor, importcpp: "GCE2d_MakeParabola(@)",
    header: "GCE2d_MakeParabola.hxx".}
proc constructGCE2d_MakeParabola*(D: gp_Ax2d; F: gp_Pnt2d;
                                 Sense: Standard_Boolean = Standard_True): GCE2d_MakeParabola {.
    constructor, importcpp: "GCE2d_MakeParabola(@)",
    header: "GCE2d_MakeParabola.hxx".}
proc constructGCE2d_MakeParabola*(S1: gp_Pnt2d; O: gp_Pnt2d): GCE2d_MakeParabola {.
    constructor, importcpp: "GCE2d_MakeParabola(@)",
    header: "GCE2d_MakeParabola.hxx".}
proc Value*(this: GCE2d_MakeParabola): handle[Geom2d_Parabola] {.noSideEffect,
    importcpp: "Value", header: "GCE2d_MakeParabola.hxx".}
converter `constopencascade`*(this: GCE2d_MakeParabola): handle[Geom2d_Parabola] {.
    noSideEffect, importcpp: "GCE2d_MakeParabola::operator constopencascade",
    header: "GCE2d_MakeParabola.hxx".}