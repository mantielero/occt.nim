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

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Elips2d"
type
  GceMakeElips2d* {.importcpp: "gce_MakeElips2d", header: "gce_MakeElips2d.hxx",
                   bycopy.} = object of GceRoot ## ! Creates an ellipse with the major axis, the major and the
                                           ## ! minor radius. The location of the MajorAxis is the center
                                           ## ! of the  ellipse.
                                           ## ! The sense of parametrization is given by Sense.
                                           ## ! It is possible to create an ellipse with MajorRadius = MinorRadius.
                                           ## ! the status is "InvertRadius" if MajorRadius < MinorRadius or
                                           ## ! "NegativeRadius" if MinorRadius < 0.0


proc constructGceMakeElips2d*(majorAxis: Ax2d; majorRadius: float;
                             minorRadius: float; sense: bool = true): GceMakeElips2d {.
    constructor, importcpp: "gce_MakeElips2d(@)", header: "gce_MakeElips2d.hxx".}
proc constructGceMakeElips2d*(a: Ax22d; majorRadius: float; minorRadius: float): GceMakeElips2d {.
    constructor, importcpp: "gce_MakeElips2d(@)", header: "gce_MakeElips2d.hxx".}
proc constructGceMakeElips2d*(s1: Pnt2d; s2: Pnt2d; center: Pnt2d): GceMakeElips2d {.
    constructor, importcpp: "gce_MakeElips2d(@)", header: "gce_MakeElips2d.hxx".}
proc value*(this: GceMakeElips2d): Elips2d {.noSideEffect, importcpp: "Value",
    header: "gce_MakeElips2d.hxx".}
proc operator*(this: GceMakeElips2d): Elips2d {.noSideEffect, importcpp: "Operator",
    header: "gce_MakeElips2d.hxx".}
converter `elips2d`*(this: GceMakeElips2d): Elips2d {.noSideEffect,
    importcpp: "gce_MakeElips2d::operator gp_Elips2d",
    header: "gce_MakeElips2d.hxx".}
