import geom2d_types

##  Created on: 1993-03-24
##  Created by: JCV
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_RangeError"
discard "forward decl of gp_Hypr2d"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Trsf2d"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of Geom2d_Hyperbola"




proc newGeom2dHyperbola*(h: Hypr2dObj): Geom2dHyperbola {.cdecl, constructor,
    importcpp: "Geom2d_Hyperbola(@)", header: "Geom2d_Hyperbola.hxx".}
proc newGeom2dHyperbola*(majorAxis: Ax2dObj; majorRadius: cfloat; minorRadius: cfloat;
                        sense: bool = true): Geom2dHyperbola {.cdecl, constructor,
    importcpp: "Geom2d_Hyperbola(@)", header: "Geom2d_Hyperbola.hxx".}
proc newGeom2dHyperbola*(axis: Ax22dObj; majorRadius: cfloat; minorRadius: cfloat): Geom2dHyperbola {.
    cdecl, constructor, importcpp: "Geom2d_Hyperbola(@)", header: "Geom2d_Hyperbola.hxx".}
proc setHypr2d*(this: var Geom2dHyperbola; h: Hypr2dObj) {.cdecl, importcpp: "SetHypr2d",
    header: "Geom2d_Hyperbola.hxx".}
proc setMajorRadius*(this: var Geom2dHyperbola; majorRadius: cfloat) {.cdecl,
    importcpp: "SetMajorRadius", header: "Geom2d_Hyperbola.hxx".}
proc setMinorRadius*(this: var Geom2dHyperbola; minorRadius: cfloat) {.cdecl,
    importcpp: "SetMinorRadius", header: "Geom2d_Hyperbola.hxx".}
proc hypr2d*(this: Geom2dHyperbola): Hypr2dObj {.noSideEffect, cdecl,
    importcpp: "Hypr2d", header: "Geom2d_Hyperbola.hxx".}
proc reversedParameter*(this: Geom2dHyperbola; u: cfloat): cfloat {.noSideEffect,
    cdecl, importcpp: "ReversedParameter", header: "Geom2d_Hyperbola.hxx".}
proc firstParameter*(this: Geom2dHyperbola): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "Geom2d_Hyperbola.hxx".}
proc lastParameter*(this: Geom2dHyperbola): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "Geom2d_Hyperbola.hxx".}
proc isClosed*(this: Geom2dHyperbola): bool {.noSideEffect, cdecl,
    importcpp: "IsClosed", header: "Geom2d_Hyperbola.hxx".}
proc isPeriodic*(this: Geom2dHyperbola): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", header: "Geom2d_Hyperbola.hxx".}
proc asymptote1*(this: Geom2dHyperbola): Ax2dObj {.noSideEffect, cdecl,
    importcpp: "Asymptote1", header: "Geom2d_Hyperbola.hxx".}
proc asymptote2*(this: Geom2dHyperbola): Ax2dObj {.noSideEffect, cdecl,
    importcpp: "Asymptote2", header: "Geom2d_Hyperbola.hxx".}
proc conjugateBranch1*(this: Geom2dHyperbola): Hypr2dObj {.noSideEffect, cdecl,
    importcpp: "ConjugateBranch1", header: "Geom2d_Hyperbola.hxx".}
proc conjugateBranch2*(this: Geom2dHyperbola): Hypr2dObj {.noSideEffect, cdecl,
    importcpp: "ConjugateBranch2", header: "Geom2d_Hyperbola.hxx".}
proc directrix1*(this: Geom2dHyperbola): Ax2dObj {.noSideEffect, cdecl,
    importcpp: "Directrix1", header: "Geom2d_Hyperbola.hxx".}
proc directrix2*(this: Geom2dHyperbola): Ax2dObj {.noSideEffect, cdecl,
    importcpp: "Directrix2", header: "Geom2d_Hyperbola.hxx".}
proc eccentricity*(this: Geom2dHyperbola): cfloat {.noSideEffect, cdecl,
    importcpp: "Eccentricity", header: "Geom2d_Hyperbola.hxx".}
proc focal*(this: Geom2dHyperbola): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
    header: "Geom2d_Hyperbola.hxx".}
proc focus1*(this: Geom2dHyperbola): Pnt2dObj {.noSideEffect, cdecl, importcpp: "Focus1",
    header: "Geom2d_Hyperbola.hxx".}
proc focus2*(this: Geom2dHyperbola): Pnt2dObj {.noSideEffect, cdecl, importcpp: "Focus2",
    header: "Geom2d_Hyperbola.hxx".}
proc majorRadius*(this: Geom2dHyperbola): cfloat {.noSideEffect, cdecl,
    importcpp: "MajorRadius", header: "Geom2d_Hyperbola.hxx".}
proc minorRadius*(this: Geom2dHyperbola): cfloat {.noSideEffect, cdecl,
    importcpp: "MinorRadius", header: "Geom2d_Hyperbola.hxx".}
proc otherBranch*(this: Geom2dHyperbola): Hypr2dObj {.noSideEffect, cdecl,
    importcpp: "OtherBranch", header: "Geom2d_Hyperbola.hxx".}
proc parameter*(this: Geom2dHyperbola): cfloat {.noSideEffect, cdecl,
    importcpp: "Parameter", header: "Geom2d_Hyperbola.hxx".}
proc d0*(this: Geom2dHyperbola; u: cfloat; p: var Pnt2dObj) {.noSideEffect, cdecl,
    importcpp: "D0", header: "Geom2d_Hyperbola.hxx".}
proc d1*(this: Geom2dHyperbola; u: cfloat; p: var Pnt2dObj; v1: var Vec2dObj) {.noSideEffect,
    cdecl, importcpp: "D1", header: "Geom2d_Hyperbola.hxx".}
proc d2*(this: Geom2dHyperbola; u: cfloat; p: var Pnt2dObj; v1: var Vec2dObj; v2: var Vec2dObj) {.
    noSideEffect, cdecl, importcpp: "D2", header: "Geom2d_Hyperbola.hxx".}
proc d3*(this: Geom2dHyperbola; u: cfloat; p: var Pnt2dObj; v1: var Vec2dObj; v2: var Vec2dObj;
        v3: var Vec2dObj) {.noSideEffect, cdecl, importcpp: "D3", header: "Geom2d_Hyperbola.hxx".}
proc dn*(this: Geom2dHyperbola; u: cfloat; n: cint): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "DN", header: "Geom2d_Hyperbola.hxx".}
proc transform*(this: var Geom2dHyperbola; t: Trsf2dObj) {.cdecl, importcpp: "Transform",
    header: "Geom2d_Hyperbola.hxx".}
proc copy*(this: Geom2dHyperbola): Handle[Geom2dGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom2d_Hyperbola.hxx".}
proc dumpJson*(this: Geom2dHyperbola; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom2d_Hyperbola.hxx".}
