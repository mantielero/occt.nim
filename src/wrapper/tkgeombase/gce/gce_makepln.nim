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
discard "forward decl of gp_Dir"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Ax1"
type
  GceMakePln* {.importcpp: "gce_MakePln", header: "gce_MakePln.hxx", bycopy.} = object of GceRoot ##
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


proc newGceMakePln*(a2: Ax2): GceMakePln {.cdecl, constructor,
                                       importcpp: "gce_MakePln(@)",
                                       header: "gce_MakePln.hxx".}
proc newGceMakePln*(p: Pnt; v: Dir): GceMakePln {.cdecl, constructor,
    importcpp: "gce_MakePln(@)", header: "gce_MakePln.hxx".}
proc newGceMakePln*(a: cfloat; b: cfloat; c: cfloat; d: cfloat): GceMakePln {.cdecl,
    constructor, importcpp: "gce_MakePln(@)", header: "gce_MakePln.hxx".}
proc newGceMakePln*(pln: Pln; point: Pnt): GceMakePln {.cdecl, constructor,
    importcpp: "gce_MakePln(@)", header: "gce_MakePln.hxx".}
proc newGceMakePln*(pln: Pln; dist: cfloat): GceMakePln {.cdecl, constructor,
    importcpp: "gce_MakePln(@)", header: "gce_MakePln.hxx".}
proc newGceMakePln*(p1: Pnt; p2: Pnt; p3: Pnt): GceMakePln {.cdecl, constructor,
    importcpp: "gce_MakePln(@)", header: "gce_MakePln.hxx".}
proc newGceMakePln*(p1: Pnt; p2: Pnt): GceMakePln {.cdecl, constructor,
    importcpp: "gce_MakePln(@)", header: "gce_MakePln.hxx".}
proc newGceMakePln*(axis: Ax1): GceMakePln {.cdecl, constructor,
    importcpp: "gce_MakePln(@)", header: "gce_MakePln.hxx".}
proc value*(this: GceMakePln): Pln {.noSideEffect, cdecl, importcpp: "Value",
                                 header: "gce_MakePln.hxx".}
proc operator*(this: GceMakePln): Pln {.noSideEffect, cdecl, importcpp: "Operator",
                                    header: "gce_MakePln.hxx".}
converter `pln`*(this: GceMakePln): Pln {.noSideEffect, cdecl, importcpp: "gce_MakePln::operator gp_Pln",
                                      header: "gce_MakePln.hxx".}