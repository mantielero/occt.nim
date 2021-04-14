import geom_types


type
  Geom_BoundedCurve* {.header: "Geom_BoundedCurve.hxx", importcpp: "Geom_BoundedCurve", byref.} = object #of class Geom_Curve
    ## The abstract class BoundedCurve describes the common behavior of
    ## bounded curves in 3D space. A bounded curve is limited by two finite
    ## values of the parameter, termed respectively "first parameter" and
    ## "last parameter". The "first parameter" gives the "start point" of the
    ## bounded curve, and the "last parameter" gives the "end point" of the
    ## bounded curve. The length of a bounded curve is finite. The Geom
    ## package provides three concrete classes of bounded curves: - two
    ## frequently used mathematical formulations of complex curves: -
    ## Geom_BezierCurve, - Geom_BSplineCurve, and - Geom_TrimmedCurve to trim
    ## a curve, i.e. to only take part of the curve limited by two values of
    ## the parameter of the basis curve.

  Handle_Geom_BoundedCurve* {.header: "Geom_BoundedCurve.hxx", importcpp: "Handle_Geom_BoundedCurve".} = handle[Geom_BoundedCurve]
  Base_type* {.header: "Geom_BoundedCurve.hxx", importcpp: "Geom_BoundedCurve::base_type".} = Geom_Curve


{.push header: "Geom_BoundedCurve.hxx".}

proc endPoint*(this: Geom_BoundedCurve): gp_Pnt  {.importcpp: "EndPoint".}
    ## Returns the end point of the curve.

proc startPoint*(this: Geom_BoundedCurve): gp_Pnt  {.importcpp: "StartPoint".}
    ## Returns the start point of the curve.

proc dumpJson*(this: Geom_BoundedCurve, theOStream: var Standard_OStream, theDepth: cint = 1)  {.importcpp: "DumpJson".}
    ## Dumps the content of me into the stream

proc get_type_name*(this: var Geom_BoundedCurve): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_BoundedCurve): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_BoundedCurve): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_BoundedCurve.hxx"
