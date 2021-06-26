import geom_types


type
  Geom_Line* {.header: "Geom_Line.hxx", importcpp: "Geom_Line", byref.} = object #of class Geom_Curve
    ## Describes an infinite line. A line is defined and positioned in space
    ## with an axis (gp_Ax1 object) which gives it an origin and a unit
    ## vector. The Geom_Line line is parameterized: P (U) = O + U*Dir, where:
    ## - P is the point of parameter U, - O is the origin and Dir the unit
    ## vector of its positioning axis. The parameter range is ] -infinite,
    ## +infinite [. The orientation of the line is given by the unit vector
    ## of its positioning axis.

  Handle_Geom_Line* {.header: "Geom_Line.hxx", importcpp: "Handle_Geom_Line".} = handle[Geom_Line]
  Base_type* {.header: "Geom_Line.hxx", importcpp: "Geom_Line::base_type".} = Geom_Curve


{.push header: "Geom_Line.hxx".}

proc constructGeom_Line*(A1: gp_Ax1): Geom_Line {.constructor,importcpp: "Geom_Line::Geom_Line(@)".}
    ## Creates a line located in 3D space with the axis placement A1. The
    ## Location of A1 is the origin of the line.

proc constructGeom_Line*(L: gp_Lin): Geom_Line {.constructor,importcpp: "Geom_Line::Geom_Line(@)".}
    ## Creates a line from a non transient line from package gp.

proc constructGeom_Line*(P: gp_Pnt, V: gp_Dir): Geom_Line {.constructor,importcpp: "Geom_Line::Geom_Line(@)".}
    ## Constructs a line passing through point P and parallel to vector V (P
    ## and V are, respectively, the origin and the unit vector of the
    ## positioning axis of the line).

proc setLin*(this: var Geom_Line, L: gp_Lin)  {.importcpp: "SetLin".}
    ## Set <me> so that <me> has the same geometric properties as L.

proc setDirection*(this: var Geom_Line, V: gp_Dir)  {.importcpp: "SetDirection".}
    ## changes the direction of the line.

proc setLocation*(this: var Geom_Line, P: gp_Pnt)  {.importcpp: "SetLocation".}
    ## changes the "Location" point (origin) of the line.

proc setPosition*(this: var Geom_Line, A1: gp_Ax1)  {.importcpp: "SetPosition".}
    ## changes the "Location" and a the "Direction" of <me>.

proc lin*(this: Geom_Line): gp_Lin  {.importcpp: "Lin".}
    ## Returns non transient line from gp with the same geometric properties
    ## as <me>

proc position*(this: Geom_Line): gp_Ax1  {.importcpp: "Position".}
    ## Returns the positioning axis of this line; this is also its local
    ## coordinate system.

proc reverse*(this: var Geom_Line)  {.importcpp: "Reverse".}
    ## Changes the orientation of this line. As a result, the unit vector of
    ## the positioning axis of this line is reversed.

proc reversedParameter*(this: Geom_Line, U: cdouble): cdouble  {.importcpp: "ReversedParameter".}
    ## Computes the parameter on the reversed line for the point of parameter
    ## U on this line. For a line, the returned value is -U.

proc firstParameter*(this: Geom_Line): cdouble  {.importcpp: "FirstParameter".}
    ## Returns the value of the first parameter of this line. This is
    ## cdouble::RealFirst().

proc lastParameter*(this: Geom_Line): cdouble  {.importcpp: "LastParameter".}
    ## Returns the value of the last parameter of this line. This is
    ## cdouble::RealLast().

proc isClosed*(this: Geom_Line): bool  {.importcpp: "IsClosed".}
    ## returns False

proc isPeriodic*(this: Geom_Line): bool  {.importcpp: "IsPeriodic".}
    ## returns False

proc continuity*(this: Geom_Line): GeomAbs_Shape  {.importcpp: "Continuity".}
    ## Returns GeomAbs_CN, which is the global continuity of any line.

proc isCN*(this: Geom_Line, N: cint): bool  {.importcpp: "IsCN".}
    ## returns True. Raised if N < 0.

proc d0*(this: Geom_Line, U: cdouble, P: var gp_Pnt)  {.importcpp: "D0".}
    ## Returns in P the point of parameter U. P (U) = O + U * Dir where O is
    ## the "Location" point of the line and Dir the direction of the line.

proc d1*(this: Geom_Line, U: cdouble, P: var gp_Pnt, V1: var gp_Vec)  {.importcpp: "D1".}
    ## Returns the point P of parameter u and the first derivative V1.

proc d2*(this: Geom_Line, U: cdouble, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec)  {.importcpp: "D2".}
    ## Returns the point P of parameter U, the first and second derivatives
    ## V1 and V2. V2 is a vector with null magnitude for a line.

proc d3*(this: Geom_Line, U: cdouble, P: var gp_Pnt, V1: var gp_Vec, V2: var gp_Vec, V3: var gp_Vec)  {.importcpp: "D3".}
    ## V2 and V3 are vectors with null magnitude for a line.

proc dN*(this: Geom_Line, U: cdouble, N: cint): gp_Vec  {.importcpp: "DN".}
    ## The returned vector gives the value of the derivative for the order of
    ## derivation N. Raised if N < 1.

proc transform*(this: var Geom_Line, T: gp_Trsf)  {.importcpp: "Transform".}
    ## Applies the transformation T to this line.

proc transformedParameter*(this: Geom_Line, U: cdouble, T: gp_Trsf): cdouble  {.importcpp: "TransformedParameter".}
    ## Returns the parameter on the transformed curve for the transform of
    ## the point of parameter U on <me>.

proc parametricTransformation*(this: Geom_Line, T: gp_Trsf): cdouble  {.importcpp: "ParametricTransformation".}
    ## Returns a coefficient to compute the parameter on the transformed
    ## curve for the transform of the point on <me>.

proc copy*(this: Geom_Line): handle[Geom_Geometry]  {.importcpp: "Copy".}
    ## Creates a new object which is a copy of this line.

proc dumpJson*(this: Geom_Line, theOStream: var Standard_OStream, theDepth: cint = 1)  {.importcpp: "DumpJson".}
    ## Dumps the content of me into the stream

proc get_type_name*(this: var Geom_Line): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_Line): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_Line): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_Line.hxx"
