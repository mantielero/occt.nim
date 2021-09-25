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

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Parab2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Pnt2d"
type
  GCE2dMakeParabola* {.importcpp: "GCE2d_MakeParabola",
                      header: "GCE2d_MakeParabola.hxx", bycopy.} = object of GCE2dRoot ##
                                                                                ## !
                                                                                ## Creates
                                                                                ## a
                                                                                ## parabola
                                                                                ## from
                                                                                ## a
                                                                                ## non
                                                                                ## persistent
                                                                                ## one.


proc constructGCE2dMakeParabola*(prb: Parab2d): GCE2dMakeParabola {.constructor,
    importcpp: "GCE2d_MakeParabola(@)", header: "GCE2d_MakeParabola.hxx".}
proc constructGCE2dMakeParabola*(axis: Ax22d; focal: float): GCE2dMakeParabola {.
    constructor, importcpp: "GCE2d_MakeParabola(@)",
    header: "GCE2d_MakeParabola.hxx".}
proc constructGCE2dMakeParabola*(mirrorAxis: Ax2d; focal: float; sense: bool): GCE2dMakeParabola {.
    constructor, importcpp: "GCE2d_MakeParabola(@)",
    header: "GCE2d_MakeParabola.hxx".}
proc constructGCE2dMakeParabola*(d: Ax2d; f: Pnt2d; sense: bool = true): GCE2dMakeParabola {.
    constructor, importcpp: "GCE2d_MakeParabola(@)",
    header: "GCE2d_MakeParabola.hxx".}
proc constructGCE2dMakeParabola*(s1: Pnt2d; o: Pnt2d): GCE2dMakeParabola {.
    constructor, importcpp: "GCE2d_MakeParabola(@)",
    header: "GCE2d_MakeParabola.hxx".}
proc value*(this: GCE2dMakeParabola): Handle[Geom2dParabola] {.noSideEffect,
    importcpp: "Value", header: "GCE2d_MakeParabola.hxx".}
converter `constopencascade`*(this: GCE2dMakeParabola): Handle[Geom2dParabola] {.
    noSideEffect, importcpp: "GCE2d_MakeParabola::operator constopencascade",
    header: "GCE2d_MakeParabola.hxx".}
