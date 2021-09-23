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
  ../Standard/Standard_Handle, ../gp/gp_Circ2d, gce_Root,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Pnt2d"
type
  gce_MakeCirc2d* {.importcpp: "gce_MakeCirc2d", header: "gce_MakeCirc2d.hxx", bycopy.} = object of gce_Root ##
                                                                                                   ## !
                                                                                                   ## The
                                                                                                   ## location
                                                                                                   ## point
                                                                                                   ## of
                                                                                                   ## XAxis
                                                                                                   ## is
                                                                                                   ## the
                                                                                                   ## center
                                                                                                   ## of
                                                                                                   ## the
                                                                                                   ## circle.
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
                                                                                                   ## If
                                                                                                   ## Sense
                                                                                                   ## is
                                                                                                   ## true
                                                                                                   ## the
                                                                                                   ## local
                                                                                                   ## coordinate
                                                                                                   ## system
                                                                                                   ## of
                                                                                                   ## the
                                                                                                   ## solution
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## is
                                                                                                   ## direct
                                                                                                   ## and
                                                                                                   ## non
                                                                                                   ## direct
                                                                                                   ## in
                                                                                                   ## the
                                                                                                   ## other
                                                                                                   ## case.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## The
                                                                                                   ## status
                                                                                                   ## is
                                                                                                   ## "NegativeRadius"
                                                                                                   ## if
                                                                                                   ## Radius
                                                                                                   ## <
                                                                                                   ## 0.0.


proc constructgce_MakeCirc2d*(XAxis: gp_Ax2d; Radius: Standard_Real;
                             Sense: Standard_Boolean = Standard_True): gce_MakeCirc2d {.
    constructor, importcpp: "gce_MakeCirc2d(@)", header: "gce_MakeCirc2d.hxx".}
proc constructgce_MakeCirc2d*(Axis: gp_Ax22d; Radius: Standard_Real): gce_MakeCirc2d {.
    constructor, importcpp: "gce_MakeCirc2d(@)", header: "gce_MakeCirc2d.hxx".}
proc constructgce_MakeCirc2d*(Circ: gp_Circ2d; Dist: Standard_Real): gce_MakeCirc2d {.
    constructor, importcpp: "gce_MakeCirc2d(@)", header: "gce_MakeCirc2d.hxx".}
proc constructgce_MakeCirc2d*(Circ: gp_Circ2d; Point: gp_Pnt2d): gce_MakeCirc2d {.
    constructor, importcpp: "gce_MakeCirc2d(@)", header: "gce_MakeCirc2d.hxx".}
proc constructgce_MakeCirc2d*(P1: gp_Pnt2d; P2: gp_Pnt2d; P3: gp_Pnt2d): gce_MakeCirc2d {.
    constructor, importcpp: "gce_MakeCirc2d(@)", header: "gce_MakeCirc2d.hxx".}
proc constructgce_MakeCirc2d*(Center: gp_Pnt2d; Radius: Standard_Real;
                             Sense: Standard_Boolean = Standard_True): gce_MakeCirc2d {.
    constructor, importcpp: "gce_MakeCirc2d(@)", header: "gce_MakeCirc2d.hxx".}
proc constructgce_MakeCirc2d*(Center: gp_Pnt2d; Point: gp_Pnt2d;
                             Sense: Standard_Boolean = Standard_True): gce_MakeCirc2d {.
    constructor, importcpp: "gce_MakeCirc2d(@)", header: "gce_MakeCirc2d.hxx".}
proc Value*(this: gce_MakeCirc2d): gp_Circ2d {.noSideEffect, importcpp: "Value",
    header: "gce_MakeCirc2d.hxx".}
proc Operator*(this: gce_MakeCirc2d): gp_Circ2d {.noSideEffect,
    importcpp: "Operator", header: "gce_MakeCirc2d.hxx".}
converter `gp_Circ2d`*(this: gce_MakeCirc2d): gp_Circ2d {.noSideEffect,
    importcpp: "gce_MakeCirc2d::operator gp_Circ2d", header: "gce_MakeCirc2d.hxx".}