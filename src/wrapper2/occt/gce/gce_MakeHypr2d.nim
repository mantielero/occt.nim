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
  ../Standard/Standard_Handle, ../gp/gp_Hypr2d, gce_Root,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Hypr2d"
type
  gce_MakeHypr2d* {.importcpp: "gce_MakeHypr2d", header: "gce_MakeHypr2d.hxx", bycopy.} = object of gce_Root ##
                                                                                                   ## !
                                                                                                   ## Constructs
                                                                                                   ## a
                                                                                                   ## hyperbola
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## centered
                                                                                                   ## on
                                                                                                   ## the
                                                                                                   ## point
                                                                                                   ## Center,
                                                                                                   ## where:
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## -
                                                                                                   ## the
                                                                                                   ## major
                                                                                                   ## axis
                                                                                                   ## of
                                                                                                   ## the
                                                                                                   ## hyperbola
                                                                                                   ## is
                                                                                                   ## defined
                                                                                                   ## by
                                                                                                   ## Center
                                                                                                   ## and
                                                                                                   ## point
                                                                                                   ## S1,
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## -
                                                                                                   ## the
                                                                                                   ## major
                                                                                                   ## radius
                                                                                                   ## is
                                                                                                   ## the
                                                                                                   ## distance
                                                                                                   ## between
                                                                                                   ## Center
                                                                                                   ## and
                                                                                                   ## S1,
                                                                                                   ## and
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## -
                                                                                                   ## the
                                                                                                   ## minor
                                                                                                   ## radius
                                                                                                   ## is
                                                                                                   ## the
                                                                                                   ## distance
                                                                                                   ## between
                                                                                                   ## point
                                                                                                   ## S2
                                                                                                   ## and
                                                                                                   ## the
                                                                                                   ## major
                                                                                                   ## axis.


proc constructgce_MakeHypr2d*(S1: gp_Pnt2d; S2: gp_Pnt2d; Center: gp_Pnt2d): gce_MakeHypr2d {.
    constructor, importcpp: "gce_MakeHypr2d(@)", header: "gce_MakeHypr2d.hxx".}
proc constructgce_MakeHypr2d*(MajorAxis: gp_Ax2d; MajorRadius: Standard_Real;
                             MinorRadius: Standard_Real; Sense: Standard_Boolean): gce_MakeHypr2d {.
    constructor, importcpp: "gce_MakeHypr2d(@)", header: "gce_MakeHypr2d.hxx".}
proc constructgce_MakeHypr2d*(A: gp_Ax22d; MajorRadius: Standard_Real;
                             MinorRadius: Standard_Real): gce_MakeHypr2d {.
    constructor, importcpp: "gce_MakeHypr2d(@)", header: "gce_MakeHypr2d.hxx".}
proc Value*(this: gce_MakeHypr2d): gp_Hypr2d {.noSideEffect, importcpp: "Value",
    header: "gce_MakeHypr2d.hxx".}
proc Operator*(this: gce_MakeHypr2d): gp_Hypr2d {.noSideEffect,
    importcpp: "Operator", header: "gce_MakeHypr2d.hxx".}
converter `gp_Hypr2d`*(this: gce_MakeHypr2d): gp_Hypr2d {.noSideEffect,
    importcpp: "gce_MakeHypr2d::operator gp_Hypr2d", header: "gce_MakeHypr2d.hxx".}