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
  ../Standard/Standard_Handle, GCE2d_Root, ../Geom2d/Geom2d_TrimmedCurve

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Hypr2d"
discard "forward decl of gp_Pnt2d"
type
  GCE2d_MakeArcOfHyperbola* {.importcpp: "GCE2d_MakeArcOfHyperbola",
                             header: "GCE2d_MakeArcOfHyperbola.hxx", bycopy.} = object of GCE2d_Root ##
                                                                                              ## !
                                                                                              ## Makes
                                                                                              ## an
                                                                                              ## arc
                                                                                              ## of
                                                                                              ## Hyperbola
                                                                                              ## (TrimmedCurve
                                                                                              ## from
                                                                                              ## Geom2d)
                                                                                              ## from
                                                                                              ##
                                                                                              ## !
                                                                                              ## a
                                                                                              ## Hyperbola
                                                                                              ## between
                                                                                              ## two
                                                                                              ## parameters
                                                                                              ## Alpha1
                                                                                              ## and
                                                                                              ## Alpha2.


proc constructGCE2d_MakeArcOfHyperbola*(Hypr: gp_Hypr2d; Alpha1: Standard_Real;
                                       Alpha2: Standard_Real;
                                       Sense: Standard_Boolean = Standard_True): GCE2d_MakeArcOfHyperbola {.
    constructor, importcpp: "GCE2d_MakeArcOfHyperbola(@)",
    header: "GCE2d_MakeArcOfHyperbola.hxx".}
proc constructGCE2d_MakeArcOfHyperbola*(Hypr: gp_Hypr2d; P: gp_Pnt2d;
                                       Alpha: Standard_Real;
                                       Sense: Standard_Boolean = Standard_True): GCE2d_MakeArcOfHyperbola {.
    constructor, importcpp: "GCE2d_MakeArcOfHyperbola(@)",
    header: "GCE2d_MakeArcOfHyperbola.hxx".}
proc constructGCE2d_MakeArcOfHyperbola*(Hypr: gp_Hypr2d; P1: gp_Pnt2d; P2: gp_Pnt2d;
                                       Sense: Standard_Boolean = Standard_True): GCE2d_MakeArcOfHyperbola {.
    constructor, importcpp: "GCE2d_MakeArcOfHyperbola(@)",
    header: "GCE2d_MakeArcOfHyperbola.hxx".}
proc Value*(this: GCE2d_MakeArcOfHyperbola): handle[Geom2d_TrimmedCurve] {.
    noSideEffect, importcpp: "Value", header: "GCE2d_MakeArcOfHyperbola.hxx".}
converter `constopencascade`*(this: GCE2d_MakeArcOfHyperbola): handle[
    Geom2d_TrimmedCurve] {.noSideEffect, importcpp: "GCE2d_MakeArcOfHyperbola::operator constopencascade",
                          header: "GCE2d_MakeArcOfHyperbola.hxx".}