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
discard "forward decl of gp_Circ"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Ax1"
type
  MakeCircle* {.importcpp: "GC_MakeCircle", header: "GC_MakeCircle.hxx", bycopy.} = object of Root ##
                                                                                         ## !
                                                                                         ## creates
                                                                                         ## a
                                                                                         ## circle
                                                                                         ## from
                                                                                         ## a
                                                                                         ## non
                                                                                         ## persistent
                                                                                         ## circle
                                                                                         ## C
                                                                                         ## by
                                                                                         ## its
                                                                                         ## conversion.


proc circle*(c: CircObj): MakeCircle {.cdecl, constructor,
                                       importcpp: "GC_MakeCircle(@)",
                                       header: "GC_MakeCircle.hxx".}
proc circle*(a2: Ax2Obj; radius: cfloat): MakeCircle {.cdecl, constructor,
    importcpp: "GC_MakeCircle(@)", header: "GC_MakeCircle.hxx".}
proc circle*(circ: CircObj; dist: cfloat): MakeCircle {.cdecl, constructor,
    importcpp: "GC_MakeCircle(@)", header: "GC_MakeCircle.hxx".}
proc circle*(circ: CircObj; point: PntObj): MakeCircle {.cdecl, constructor,
    importcpp: "GC_MakeCircle(@)", header: "GC_MakeCircle.hxx".}
proc circle*(p1: PntObj; p2: PntObj; p3: PntObj): MakeCircle {.cdecl, constructor,
    importcpp: "GC_MakeCircle(@)", header: "GC_MakeCircle.hxx".}
proc circle*(center: PntObj; norm: DirObj; radius: cfloat): MakeCircle {.cdecl,
    constructor, importcpp: "GC_MakeCircle(@)", header: "GC_MakeCircle.hxx".}
proc circle*(center: PntObj; ptAxis: PntObj; radius: cfloat): MakeCircle {.cdecl,
    constructor, importcpp: "GC_MakeCircle(@)", header: "GC_MakeCircle.hxx".}
proc circle*(axis: Ax1Obj; radius: cfloat): MakeCircle {.cdecl, constructor,
    importcpp: "GC_MakeCircle(@)", header: "GC_MakeCircle.hxx".}
proc value*(this: MakeCircle): Handle[GeomCircle] {.noSideEffect, cdecl,
    importcpp: "Value", header: "GC_MakeCircle.hxx".}
converter toHandleGeomTrimmedCurve*(this: MakeCircle): Handle[GeomCircle] {.noSideEffect,
    cdecl, importcpp: "(Handle_Geom_TrimmedCurve)(#)",
    header: "GC_MakeCircle.hxx".}