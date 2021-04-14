import geom_types


type
  Geom_Conic* {.header: "Geom_Conic.hxx", importcpp: "Geom_Conic", byref.} = object #of class Geom_Curve
    ## The abstract class Conic describes the common behavior of conic curves
    ## in 3D space and, in particular, their general characteristics. The
    ## Geom package provides four concrete classes of conics: Geom_Circle,
    ## Geom_Ellipse, Geom_Hyperbola and Geom_Parabola. A conic is positioned
    ## in space with a right-handed coordinate system (gp_Ax2 object), where:
    ## - the origin is the center of the conic (or the apex in the case of a
    ## parabola), - the origin, "X Direction" and "Y Direction" define the
    ## plane of the conic. This coordinate system is the local coordinate
    ## system of the conic. The "main Direction" of this coordinate system is
    ## the vector normal to the plane of the conic. The axis, of which the
    ## origin and unit vector are respectively the origin and "main
    ## Direction" of the local coordinate system, is termed the "Axis" or
    ## "main Axis" of the conic. The "main Direction" of the local coordinate
    ## system gives an explicit orientation to the conic, determining the
    ## direction in which the parameter increases along the conic. The "X
    ## Axis" of the local coordinate system also defines the origin of the
    ## parameter of the conic.

  Handle_Geom_Conic* {.header: "Geom_Conic.hxx", importcpp: "Handle_Geom_Conic".} = handle[Geom_Conic]
  Base_type* {.header: "Geom_Conic.hxx", importcpp: "Geom_Conic::base_type".} = Geom_Curve


{.push header: "Geom_Conic.hxx".}

proc setAxis*(this: var Geom_Conic, theA1: gp_Ax1)  {.importcpp: "SetAxis".}
    ## Changes the orientation of the conic's plane. The normal axis to the
    ## plane is A1. The XAxis and the YAxis are recomputed.

proc setLocation*(this: var Geom_Conic, theP: gp_Pnt)  {.importcpp: "SetLocation".}
    ## changes the location point of the conic.

proc setPosition*(this: var Geom_Conic, theA2: gp_Ax2)  {.importcpp: "SetPosition".}
    ## changes the local coordinate system of the conic.

proc axis*(this: Geom_Conic): gp_Ax1  {.importcpp: "Axis".}
    ## Returns the "main Axis" of this conic. This axis is normal to the
    ## plane of the conic.

proc location*(this: Geom_Conic): gp_Pnt  {.importcpp: "Location".}
    ## Returns the location point of the conic. For the circle, the ellipse
    ## and the hyperbola it is the center of the conic. For the parabola it
    ## is the Apex of the parabola.

proc position*(this: Geom_Conic): gp_Ax2  {.importcpp: "Position".}
    ## Returns the local coordinates system of the conic. The main direction
    ## of the Axis2Placement is normal to the plane of the conic. The X
    ## direction of the Axis2placement is in the plane of the conic and
    ## corresponds to the origin for the conic's parametric value u.

proc eccentricity*(this: Geom_Conic): cdouble  {.importcpp: "Eccentricity".}
    ## Returns the eccentricity value of the conic e. e = 0 for a circle 0 <
    ## e < 1 for an ellipse (e = 0 if MajorRadius = MinorRadius) e > 1 for a
    ## hyperbola e = 1 for a parabola Exceptions Standard_DomainError in the
    ## case of a hyperbola if its major radius is null.

proc xAxis*(this: Geom_Conic): gp_Ax1  {.importcpp: "XAxis".}
    ## Returns the XAxis of the conic. This axis defines the origin of
    ## parametrization of the conic. This axis is perpendicular to the Axis
    ## of the conic. This axis and the Yaxis define the plane of the conic.

proc yAxis*(this: Geom_Conic): gp_Ax1  {.importcpp: "YAxis".}
    ## Returns the YAxis of the conic. The YAxis is perpendicular to the
    ## Xaxis. This axis and the Xaxis define the plane of the conic.

proc reverse*(this: var Geom_Conic)  {.importcpp: "Reverse".}
    ## Reverses the direction of parameterization of <me>. The local
    ## coordinate system of the conic is modified.

proc reversedParameter*(this: Geom_Conic, U: cdouble): cdouble  {.importcpp: "ReversedParameter".}
    ## Returns the parameter on the reversed curve for the point of parameter
    ## U on <me>.

proc continuity*(this: Geom_Conic): GeomAbs_Shape  {.importcpp: "Continuity".}
    ## The continuity of the conic is Cn.

proc isCN*(this: Geom_Conic, N: cint): bool  {.importcpp: "IsCN".}
    ## Returns True. Raised if N < 0.

proc dumpJson*(this: Geom_Conic, theOStream: var Standard_OStream, theDepth: cint = 1)  {.importcpp: "DumpJson".}
    ## Dumps the content of me into the stream

proc get_type_name*(this: var Geom_Conic): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_Conic): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_Conic): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_Conic.hxx"
