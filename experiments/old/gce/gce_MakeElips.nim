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
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Elips"
type
  GceMakeElips* {.importcpp: "gce_MakeElips", header: "gce_MakeElips.hxx", bycopy.} = object of GceRoot ##
                                                                                              ## !
                                                                                              ## The
                                                                                              ## major
                                                                                              ## radius
                                                                                              ## of
                                                                                              ## the
                                                                                              ## ellipse
                                                                                              ## is
                                                                                              ## on
                                                                                              ## the
                                                                                              ## "XAxis"
                                                                                              ## and
                                                                                              ## the
                                                                                              ##
                                                                                              ## !
                                                                                              ## minor
                                                                                              ## radius
                                                                                              ## is
                                                                                              ## on
                                                                                              ## the
                                                                                              ## "YAxis"
                                                                                              ## of
                                                                                              ## the
                                                                                              ## ellipse.
                                                                                              ## The
                                                                                              ## "XAxis"
                                                                                              ##
                                                                                              ## !
                                                                                              ## is
                                                                                              ## defined
                                                                                              ## with
                                                                                              ## the
                                                                                              ## "XDirection"
                                                                                              ## of
                                                                                              ## A2
                                                                                              ## and
                                                                                              ## the
                                                                                              ## "YAxis"
                                                                                              ## is
                                                                                              ##
                                                                                              ## !
                                                                                              ## defined
                                                                                              ## with
                                                                                              ## the
                                                                                              ## "YDirection"
                                                                                              ## of
                                                                                              ## A2.
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
                                                                                              ## an
                                                                                              ## ellipse
                                                                                              ## with
                                                                                              ##
                                                                                              ## !
                                                                                              ## MajorRadius
                                                                                              ## =
                                                                                              ## MinorRadius.


proc constructGceMakeElips*(a2: Ax2; majorRadius: cfloat; minorRadius: cfloat): GceMakeElips {.
    constructor, importcpp: "gce_MakeElips(@)", header: "gce_MakeElips.hxx".}
proc constructGceMakeElips*(s1: Pnt; s2: Pnt; center: Pnt): GceMakeElips {.constructor,
    importcpp: "gce_MakeElips(@)", header: "gce_MakeElips.hxx".}
proc value*(this: GceMakeElips): Elips {.noSideEffect, importcpp: "Value",
                                     header: "gce_MakeElips.hxx".}
proc operator*(this: GceMakeElips): Elips {.noSideEffect, importcpp: "Operator",
                                        header: "gce_MakeElips.hxx".}
converter `elips`*(this: GceMakeElips): Elips {.noSideEffect,
    importcpp: "gce_MakeElips::operator gp_Elips", header: "gce_MakeElips.hxx".}

























