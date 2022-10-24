import geom_types

##  Created on: 1993-03-10
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

discard "forward decl of Geom_Surface"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Geom_UndefinedDerivative"
discard "forward decl of Geom_UndefinedValue"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_GTrsf2d"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_RectangularTrimmedSurface"




proc newGeomRectangularTrimmedSurface*(s: Handle[GeomSurface]; u1: cfloat;
                                      u2: cfloat; v1: cfloat; v2: cfloat;
                                      uSense: bool = true; vSense: bool = true): GeomRectangularTrimmedSurface {.
    cdecl, constructor, importcpp: "Geom_RectangularTrimmedSurface(@)",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc newGeomRectangularTrimmedSurface*(s: Handle[GeomSurface]; param1: cfloat;
                                      param2: cfloat; uTrim: bool;
                                      sense: bool = true): GeomRectangularTrimmedSurface {.
    cdecl, constructor, importcpp: "Geom_RectangularTrimmedSurface(@)",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc setTrim*(this: var GeomRectangularTrimmedSurface; u1: cfloat; u2: cfloat;
             v1: cfloat; v2: cfloat; uSense: bool = true; vSense: bool = true) {.cdecl,
    importcpp: "SetTrim", header: "Geom_RectangularTrimmedSurface.hxx".}
proc setTrim*(this: var GeomRectangularTrimmedSurface; param1: cfloat; param2: cfloat;
             uTrim: bool; sense: bool = true) {.cdecl, importcpp: "SetTrim",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc basisSurface*(this: GeomRectangularTrimmedSurface): Handle[GeomSurface] {.
    noSideEffect, cdecl, importcpp: "BasisSurface", header: "Geom_RectangularTrimmedSurface.hxx".}
proc uReverse*(this: var GeomRectangularTrimmedSurface) {.cdecl,
    importcpp: "UReverse", header: "Geom_RectangularTrimmedSurface.hxx".}
proc uReversedParameter*(this: GeomRectangularTrimmedSurface; u: cfloat): cfloat {.
    noSideEffect, cdecl, importcpp: "UReversedParameter", header: "Geom_RectangularTrimmedSurface.hxx".}
proc vReverse*(this: var GeomRectangularTrimmedSurface) {.cdecl,
    importcpp: "VReverse", header: "Geom_RectangularTrimmedSurface.hxx".}
proc vReversedParameter*(this: GeomRectangularTrimmedSurface; v: cfloat): cfloat {.
    noSideEffect, cdecl, importcpp: "VReversedParameter", header: "Geom_RectangularTrimmedSurface.hxx".}
proc bounds*(this: GeomRectangularTrimmedSurface; u1: var cfloat; u2: var cfloat;
            v1: var cfloat; v2: var cfloat) {.noSideEffect, cdecl, importcpp: "Bounds",
                                        header: "Geom_RectangularTrimmedSurface.hxx".}
proc continuity*(this: GeomRectangularTrimmedSurface): GeomAbsShape {.noSideEffect,
    cdecl, importcpp: "Continuity", header: "Geom_RectangularTrimmedSurface.hxx".}
proc isUClosed*(this: GeomRectangularTrimmedSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUClosed", header: "Geom_RectangularTrimmedSurface.hxx".}
proc isVClosed*(this: GeomRectangularTrimmedSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVClosed", header: "Geom_RectangularTrimmedSurface.hxx".}
proc isCNu*(this: GeomRectangularTrimmedSurface; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCNu", header: "Geom_RectangularTrimmedSurface.hxx".}
proc isCNv*(this: GeomRectangularTrimmedSurface; n: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsCNv", header: "Geom_RectangularTrimmedSurface.hxx".}
proc isUPeriodic*(this: GeomRectangularTrimmedSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUPeriodic", header: "Geom_RectangularTrimmedSurface.hxx".}
proc uPeriod*(this: GeomRectangularTrimmedSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "UPeriod", header: "Geom_RectangularTrimmedSurface.hxx".}
proc isVPeriodic*(this: GeomRectangularTrimmedSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVPeriodic", header: "Geom_RectangularTrimmedSurface.hxx".}
proc vPeriod*(this: GeomRectangularTrimmedSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "VPeriod", header: "Geom_RectangularTrimmedSurface.hxx".}
proc uIso*(this: GeomRectangularTrimmedSurface; u: cfloat): Handle[GeomCurve] {.
    noSideEffect, cdecl, importcpp: "UIso", header: "Geom_RectangularTrimmedSurface.hxx".}
proc vIso*(this: GeomRectangularTrimmedSurface; v: cfloat): Handle[GeomCurve] {.
    noSideEffect, cdecl, importcpp: "VIso", header: "Geom_RectangularTrimmedSurface.hxx".}
proc d0*(this: GeomRectangularTrimmedSurface; u: cfloat; v: cfloat; p: var PntObj) {.
    noSideEffect, cdecl, importcpp: "D0", header: "Geom_RectangularTrimmedSurface.hxx".}
proc d1*(this: GeomRectangularTrimmedSurface; u: cfloat; v: cfloat; p: var PntObj;
        d1u: var VecObj; d1v: var VecObj) {.noSideEffect, cdecl, importcpp: "D1", header: "Geom_RectangularTrimmedSurface.hxx".}
proc d2*(this: GeomRectangularTrimmedSurface; u: cfloat; v: cfloat; p: var PntObj;
        d1u: var VecObj; d1v: var VecObj; d2u: var VecObj; d2v: var VecObj; d2uv: var VecObj) {.noSideEffect,
    cdecl, importcpp: "D2", header: "Geom_RectangularTrimmedSurface.hxx".}
proc d3*(this: GeomRectangularTrimmedSurface; u: cfloat; v: cfloat; p: var PntObj;
        d1u: var VecObj; d1v: var VecObj; d2u: var VecObj; d2v: var VecObj; d2uv: var VecObj; d3u: var VecObj;
        d3v: var VecObj; d3uuv: var VecObj; d3uvv: var VecObj) {.noSideEffect, cdecl,
    importcpp: "D3", header: "Geom_RectangularTrimmedSurface.hxx".}
proc dn*(this: GeomRectangularTrimmedSurface; u: cfloat; v: cfloat; nu: cint; nv: cint): VecObj {.
    noSideEffect, cdecl, importcpp: "DN", header: "Geom_RectangularTrimmedSurface.hxx".}
proc transform*(this: var GeomRectangularTrimmedSurface; t: TrsfObj) {.cdecl,
    importcpp: "Transform", header: "Geom_RectangularTrimmedSurface.hxx".}
proc transformParameters*(this: GeomRectangularTrimmedSurface; u: var cfloat;
                         v: var cfloat; t: TrsfObj) {.noSideEffect, cdecl,
    importcpp: "TransformParameters", header: "Geom_RectangularTrimmedSurface.hxx".}
proc parametricTransformation*(this: GeomRectangularTrimmedSurface; t: TrsfObj): GTrsf2d {.
    noSideEffect, cdecl, importcpp: "ParametricTransformation", header: "Geom_RectangularTrimmedSurface.hxx".}
proc copy*(this: GeomRectangularTrimmedSurface): Handle[GeomGeometry] {.
    noSideEffect, cdecl, importcpp: "Copy", header: "Geom_RectangularTrimmedSurface.hxx".}
proc dumpJson*(this: GeomRectangularTrimmedSurface;
              theOStream: var StandardOStream; theDepth: cint = -1) {.noSideEffect,
    cdecl, importcpp: "DumpJson", header: "Geom_RectangularTrimmedSurface.hxx".}
