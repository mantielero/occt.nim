import geom2d_types
import ../gp/gp_types
import ../standard/standard_types




{.push cdecl, header: "Geom2d_Ellipse.hxx".}

{.push constructor, importcpp: "Geom2d_Ellipse(@)".}

proc newGeom2dEllipse*(e: gp_Elips2d): Geom2dEllipse 

proc newGeom2dEllipse*(majorAxis: gp_Ax2d; majorRadius: cfloat; minorRadius: cfloat;
                      sense: bool = true): Geom2dEllipse

proc newGeom2dEllipse*(axis: gp_Ax22d; majorRadius: cfloat; minorRadius: cfloat): Geom2dEllipse 

{.pop.}

proc setElips2d*(this: var Geom2dEllipse; e: gp_Elips2d) {.importcpp: "SetElips2d".}

proc setMajorRadius*(this: var Geom2dEllipse; majorRadius: cfloat) {.
    importcpp: "SetMajorRadius".}

proc setMinorRadius*(this: var Geom2dEllipse; minorRadius: cfloat) {.
    importcpp: "SetMinorRadius".}

{.push noSideEffect.}

proc elips2d*(this: Geom2dEllipse): gp_Elips2d {.
    importcpp: "Elips2d".}

proc reversedParameter*(this: Geom2dEllipse; u: cfloat): cfloat {.
    importcpp: "ReversedParameter".}

proc directrix1*(this: Geom2dEllipse): gp_Ax2d {.
    importcpp: "Directrix1".}

proc directrix2*(this: Geom2dEllipse): gp_Ax2d {.
    importcpp: "Directrix2".}

proc eccentricity*(this: Geom2dEllipse): cfloat {.
    importcpp: "Eccentricity".}

proc focal*(this: Geom2dEllipse): cfloat {.importcpp: "Focal"
                                       .}

proc focus1*(this: Geom2dEllipse): gp_Pnt2d {.importcpp: "Focus1"
                                       .}

proc focus2*(this: Geom2dEllipse): gp_Pnt2d {.importcpp: "Focus2"
                                       .}

proc majorRadius*(this: Geom2dEllipse): cfloat {.
    importcpp: "MajorRadius".}

proc minorRadius*(this: Geom2dEllipse): cfloat {.
    importcpp: "MinorRadius".}

proc parameter*(this: Geom2dEllipse): cfloat {.
    importcpp: "Parameter".}

proc firstParameter*(this: Geom2dEllipse): cfloat {.
    importcpp: "FirstParameter".}

proc lastParameter*(this: Geom2dEllipse): cfloat {.
    importcpp: "LastParameter".}

proc isClosed*(this: Geom2dEllipse): bool {.
                                        importcpp: "IsClosed".}

proc isPeriodic*(this: Geom2dEllipse): bool {.
    importcpp: "IsPeriodic".}

proc d0*(this: Geom2dEllipse; u: cfloat; p: var gp_Pnt2d) {.
    importcpp: "D0".}

proc d1*(this: Geom2dEllipse; u: cfloat; p: var gp_Pnt2d; v1: var gp_Vec2d) {.
    importcpp: "D1".}

proc d2*(this: Geom2dEllipse; u: cfloat; p: var gp_Pnt2d; v1: var gp_Vec2d; v2: var gp_Vec2d) {.
    importcpp: "D2".}

proc d3*(this: Geom2dEllipse; u: cfloat; p: var gp_Pnt2d; v1: var gp_Vec2d; v2: var gp_Vec2d;
        v3: var gp_Vec2d) {.importcpp: "D3".}

proc dn*(this: Geom2dEllipse; u: cfloat; n: cint): gp_Vec2d {.
    importcpp: "DN".}
{.pop.}

proc transform*(this: var Geom2dEllipse; t: gp_Trsf2d) {.importcpp: "Transform",
    .}

proc copy*(this: Geom2dEllipse): Handle[Geom2dGeometry] {.noSideEffect, 
    importcpp: "Copy".}

proc dumpJson*(this: Geom2dEllipse; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson".}


{.pop.}