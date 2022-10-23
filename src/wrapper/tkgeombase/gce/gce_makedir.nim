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
discard "forward decl of gp_Vec"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
type
  GceMakeDir* {.importcpp: "gce_MakeDir", header: "gce_MakeDir.hxx", bycopy.} = object of GceRoot ##
                                                                                        ## !
                                                                                        ## Normalizes
                                                                                        ## the
                                                                                        ## vector
                                                                                        ## V
                                                                                        ## and
                                                                                        ## creates
                                                                                        ## a
                                                                                        ## direction.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Status
                                                                                        ## is
                                                                                        ## "NullVector"
                                                                                        ## if
                                                                                        ## V.Magnitude()
                                                                                        ## <=
                                                                                        ## Resolution.


proc newGceMakeDir*(v: VecObj): GceMakeDir {.cdecl, constructor,
                                      importcpp: "gce_MakeDir(@)",
                                      header: "gce_MakeDir.hxx".}
proc newGceMakeDir*(coord: XyzObj): GceMakeDir {.cdecl, constructor,
    importcpp: "gce_MakeDir(@)", header: "gce_MakeDir.hxx".}
proc newGceMakeDir*(xv: cfloat; yv: cfloat; zv: cfloat): GceMakeDir {.cdecl, constructor,
    importcpp: "gce_MakeDir(@)", header: "gce_MakeDir.hxx".}
proc newGceMakeDir*(p1: PntObj; p2: PntObj): GceMakeDir {.cdecl, constructor,
    importcpp: "gce_MakeDir(@)", header: "gce_MakeDir.hxx".}
proc value*(this: GceMakeDir): DirObj {.noSideEffect, cdecl, importcpp: "Value",
                                 header: "gce_MakeDir.hxx".}
proc operator*(this: GceMakeDir): DirObj {.noSideEffect, cdecl, importcpp: "Operator",
                                    header: "gce_MakeDir.hxx".}
converter `dir`*(this: GceMakeDir): DirObj {.noSideEffect, cdecl, importcpp: "gce_MakeDir::operator gp_Dir",
                                      header: "gce_MakeDir.hxx".}