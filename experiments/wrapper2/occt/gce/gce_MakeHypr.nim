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
  ../Standard/Standard_Handle, ../gp/gp_Hypr, gce_Root, ../Standard/Standard_Real

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Hypr"
type
  gce_MakeHypr* {.importcpp: "gce_MakeHypr", header: "gce_MakeHypr.hxx", bycopy.} = object of gce_Root ##
                                                                                             ## !
                                                                                             ## A2
                                                                                             ## is
                                                                                             ## the
                                                                                             ## local
                                                                                             ## coordinate
                                                                                             ## system
                                                                                             ## of
                                                                                             ## the
                                                                                             ## hyperbola.
                                                                                             ##
                                                                                             ## !
                                                                                             ## In
                                                                                             ## the
                                                                                             ## local
                                                                                             ## coordinates
                                                                                             ## system
                                                                                             ## A2
                                                                                             ## the
                                                                                             ## equation
                                                                                             ## of
                                                                                             ## the
                                                                                             ##
                                                                                             ## !
                                                                                             ## hyperbola
                                                                                             ## is
                                                                                             ## :
                                                                                             ##
                                                                                             ## !
                                                                                             ## X*X
                                                                                             ## /
                                                                                             ## MajorRadius*MajorRadius
                                                                                             ## -
                                                                                             ## Y*Y
                                                                                             ## /
                                                                                             ## MinorRadius*MinorRadius
                                                                                             ## =
                                                                                             ## 1.0
                                                                                             ##
                                                                                             ## !
                                                                                             ## It
                                                                                             ## is
                                                                                             ## not
                                                                                             ## forbidden
                                                                                             ## to
                                                                                             ## create
                                                                                             ## an
                                                                                             ## Hyperbola
                                                                                             ## with
                                                                                             ## MajorRadius
                                                                                             ## =
                                                                                             ##
                                                                                             ## !
                                                                                             ## MinorRadius.
                                                                                             ##
                                                                                             ## !
                                                                                             ## For
                                                                                             ## the
                                                                                             ## hyperbola
                                                                                             ## the
                                                                                             ## MajorRadius
                                                                                             ## can
                                                                                             ## be
                                                                                             ## lower
                                                                                             ## than
                                                                                             ## the
                                                                                             ##
                                                                                             ## !
                                                                                             ## MinorRadius.
                                                                                             ##
                                                                                             ## !
                                                                                             ## The
                                                                                             ## status
                                                                                             ## is
                                                                                             ## "NegativeRadius"
                                                                                             ## if
                                                                                             ## MajorRadius
                                                                                             ## <
                                                                                             ## 0.0
                                                                                             ## and
                                                                                             ##
                                                                                             ## !
                                                                                             ## "InvertRadius"
                                                                                             ## if
                                                                                             ## MinorRadius
                                                                                             ## >
                                                                                             ## MajorRadius.


proc constructgce_MakeHypr*(A2: gp_Ax2; MajorRadius: Standard_Real;
                           MinorRadius: Standard_Real): gce_MakeHypr {.constructor,
    importcpp: "gce_MakeHypr(@)", header: "gce_MakeHypr.hxx".}
proc constructgce_MakeHypr*(S1: gp_Pnt; S2: gp_Pnt; Center: gp_Pnt): gce_MakeHypr {.
    constructor, importcpp: "gce_MakeHypr(@)", header: "gce_MakeHypr.hxx".}
proc Value*(this: gce_MakeHypr): gp_Hypr {.noSideEffect, importcpp: "Value",
                                       header: "gce_MakeHypr.hxx".}
proc Operator*(this: gce_MakeHypr): gp_Hypr {.noSideEffect, importcpp: "Operator",
    header: "gce_MakeHypr.hxx".}
converter `gp_Hypr`*(this: gce_MakeHypr): gp_Hypr {.noSideEffect,
    importcpp: "gce_MakeHypr::operator gp_Hypr", header: "gce_MakeHypr.hxx".}