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
  ../Standard/Standard_Handle, ../gp/gp_Pln, gce_Root, ../Standard/Standard_Real

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Ax1"
type
  gce_MakePln* {.importcpp: "gce_MakePln", header: "gce_MakePln.hxx", bycopy.} = object of gce_Root ##
                                                                                          ## !
                                                                                          ## The
                                                                                          ## coordinate
                                                                                          ## system
                                                                                          ## of
                                                                                          ## the
                                                                                          ## plane
                                                                                          ## is
                                                                                          ## defined
                                                                                          ## with
                                                                                          ## the
                                                                                          ## axis
                                                                                          ##
                                                                                          ## !
                                                                                          ## placement
                                                                                          ## A2.
                                                                                          ##
                                                                                          ## !
                                                                                          ## The
                                                                                          ## "Direction"
                                                                                          ## of
                                                                                          ## A2
                                                                                          ## defines
                                                                                          ## the
                                                                                          ## normal
                                                                                          ## to
                                                                                          ## the
                                                                                          ## plane.
                                                                                          ##
                                                                                          ## !
                                                                                          ## The
                                                                                          ## "Location"
                                                                                          ## of
                                                                                          ## A2
                                                                                          ## defines
                                                                                          ## the
                                                                                          ## location
                                                                                          ## (origin)
                                                                                          ## of
                                                                                          ## the
                                                                                          ## plane.
                                                                                          ##
                                                                                          ## !
                                                                                          ## The
                                                                                          ## "XDirection"
                                                                                          ## and
                                                                                          ## "YDirection"
                                                                                          ## of
                                                                                          ## A2
                                                                                          ## define
                                                                                          ## the
                                                                                          ## "XAxis"
                                                                                          ## and
                                                                                          ##
                                                                                          ## !
                                                                                          ## the
                                                                                          ## "YAxis"
                                                                                          ## of
                                                                                          ## the
                                                                                          ## plane
                                                                                          ## used
                                                                                          ## to
                                                                                          ## parametrize
                                                                                          ## the
                                                                                          ## plane.


proc constructgce_MakePln*(A2: gp_Ax2): gce_MakePln {.constructor,
    importcpp: "gce_MakePln(@)", header: "gce_MakePln.hxx".}
proc constructgce_MakePln*(P: gp_Pnt; V: gp_Dir): gce_MakePln {.constructor,
    importcpp: "gce_MakePln(@)", header: "gce_MakePln.hxx".}
proc constructgce_MakePln*(A: Standard_Real; B: Standard_Real; C: Standard_Real;
                          D: Standard_Real): gce_MakePln {.constructor,
    importcpp: "gce_MakePln(@)", header: "gce_MakePln.hxx".}
proc constructgce_MakePln*(Pln: gp_Pln; Point: gp_Pnt): gce_MakePln {.constructor,
    importcpp: "gce_MakePln(@)", header: "gce_MakePln.hxx".}
proc constructgce_MakePln*(Pln: gp_Pln; Dist: Standard_Real): gce_MakePln {.
    constructor, importcpp: "gce_MakePln(@)", header: "gce_MakePln.hxx".}
proc constructgce_MakePln*(P1: gp_Pnt; P2: gp_Pnt; P3: gp_Pnt): gce_MakePln {.
    constructor, importcpp: "gce_MakePln(@)", header: "gce_MakePln.hxx".}
proc constructgce_MakePln*(P1: gp_Pnt; P2: gp_Pnt): gce_MakePln {.constructor,
    importcpp: "gce_MakePln(@)", header: "gce_MakePln.hxx".}
proc constructgce_MakePln*(Axis: gp_Ax1): gce_MakePln {.constructor,
    importcpp: "gce_MakePln(@)", header: "gce_MakePln.hxx".}
proc Value*(this: gce_MakePln): gp_Pln {.noSideEffect, importcpp: "Value",
                                     header: "gce_MakePln.hxx".}
proc Operator*(this: gce_MakePln): gp_Pln {.noSideEffect, importcpp: "Operator",
                                        header: "gce_MakePln.hxx".}
converter `gp_Pln`*(this: gce_MakePln): gp_Pln {.noSideEffect,
    importcpp: "gce_MakePln::operator gp_Pln", header: "gce_MakePln.hxx".}