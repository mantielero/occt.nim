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
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax1"
type
  MakePlane* {.importcpp: "GC_MakePlane", header: "GC_MakePlane.hxx", bycopy.} = object of Root ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## a
                                                                                      ## plane
                                                                                      ## from
                                                                                      ## a
                                                                                      ## non
                                                                                      ## persistent
                                                                                      ## plane
                                                                                      ## from
                                                                                      ## package
                                                                                      ## gp.


proc newMakePlane*(pl: Pln): MakePlane {.cdecl, constructor,
                                     importcpp: "GC_MakePlane(@)",
                                     header: "GC_MakePlane.hxx".}
proc newMakePlane*(p: Pnt; v: Dir): MakePlane {.cdecl, constructor,
    importcpp: "GC_MakePlane(@)", header: "GC_MakePlane.hxx".}
proc newMakePlane*(a: cfloat; b: cfloat; c: cfloat; d: cfloat): MakePlane {.cdecl,
    constructor, importcpp: "GC_MakePlane(@)", header: "GC_MakePlane.hxx".}
proc newMakePlane*(pln: Pln; point: Pnt): MakePlane {.cdecl, constructor,
    importcpp: "GC_MakePlane(@)", header: "GC_MakePlane.hxx".}
proc newMakePlane*(pln: Pln; dist: cfloat): MakePlane {.cdecl, constructor,
    importcpp: "GC_MakePlane(@)", header: "GC_MakePlane.hxx".}
proc newMakePlane*(p1: Pnt; p2: Pnt; p3: Pnt): MakePlane {.cdecl, constructor,
    importcpp: "GC_MakePlane(@)", header: "GC_MakePlane.hxx".}
proc newMakePlane*(axis: Ax1): MakePlane {.cdecl, constructor,
                                       importcpp: "GC_MakePlane(@)",
                                       header: "GC_MakePlane.hxx".}
proc value*(this: MakePlane): Handle[GeomPlane] {.noSideEffect, cdecl,
    importcpp: "Value", header: "GC_MakePlane.hxx".}
converter `constopencascade`*(this: MakePlane): Handle[GeomPlane] {.noSideEffect,
    cdecl, importcpp: "GC_MakePlane::operator constopencascade", header: "GC_MakePlane.hxx".}