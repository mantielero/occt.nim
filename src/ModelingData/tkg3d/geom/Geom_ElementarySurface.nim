import geom_types


type
  Geom_ElementarySurface* {.header: "Geom_ElementarySurface.hxx", importcpp: "Geom_ElementarySurface", byref.} = object #of class Geom_Surface
    ## Describes the common behavior of surfaces which have a simple
    ## parametric equation in a local coordinate system. The Geom package
    ## provides several implementations of concrete elementary surfaces: -
    ## the plane, and - four simple surfaces of revolution: the cylinder, the
    ## cone, the sphere and the torus. An elementary surface inherits the
    ## common behavior of Geom_Surface surfaces. Furthermore, it is located
    ## in 3D space by a coordinate system (a gp_Ax3 object) which is also its
    ## local coordinate system. Any elementary surface is oriented, i.e. the
    ## normal vector is always defined, and gives the same orientation to the
    ## surface, at any point on the surface. In topology this property is
    ## referred to as the "outside region of the surface". This orientation
    ## is related to the two parametric directions of the surface. Rotation
    ## of a surface around the "main Axis" of its coordinate system, in the
    ## trigonometric sense given by the "X Direction" and the "Y Direction"
    ## of the coordinate system, defines the u parametric direction of that
    ## elementary surface of revolution. This is the default construction
    ## mode. It is also possible, however, to change the orientation of a
    ## surface by reversing one of the two parametric directions: use the
    ## UReverse or VReverse functions to change the orientation of the normal
    ## at any point on the surface. Warning The local coordinate system of an
    ## elementary surface is not necessarily direct: - if it is direct, the
    ## trigonometric sense defined by its "main Direction" is the same as the
    ## trigonometric sense defined by its two vectors "X Direction" and "Y
    ## Direction": "main Direction" = "X Direction" ^ "Y Direction" - if it
    ## is indirect, the two definitions of trigonometric sense are opposite:
    ## "main Direction" = - "X Direction" ^ "Y Direction"

  Handle_Geom_ElementarySurface* {.header: "Geom_ElementarySurface.hxx", importcpp: "Handle_Geom_ElementarySurface".} = handle[Geom_ElementarySurface]
  Base_type* {.header: "Geom_ElementarySurface.hxx", importcpp: "Geom_ElementarySurface::base_type".} = Geom_Surface


{.push header: "Geom_ElementarySurface.hxx".}

proc setAxis*(this: var Geom_ElementarySurface, theA1: gp_Ax1)  {.importcpp: "SetAxis".}
    ## Changes the main axis (ZAxis) of the elementary surface.

proc setLocation*(this: var Geom_ElementarySurface, theLoc: gp_Pnt)  {.importcpp: "SetLocation".}
    ## Changes the location of the local coordinates system of the surface.

proc setPosition*(this: var Geom_ElementarySurface, theAx3: gp_Ax3)  {.importcpp: "SetPosition".}
    ## Changes the local coordinates system of the surface.

proc axis*(this: Geom_ElementarySurface): gp_Ax1  {.importcpp: "Axis".}
    ## Returns the main axis of the surface (ZAxis).

proc location*(this: Geom_ElementarySurface): gp_Pnt  {.importcpp: "Location".}
    ## Returns the location point of the local coordinate system of the
    ## surface.

proc position*(this: Geom_ElementarySurface): gp_Ax3  {.importcpp: "Position".}
    ## Returns the local coordinates system of the surface.

proc uReverse*(this: var Geom_ElementarySurface)  {.importcpp: "UReverse".}
    ## Reverses the U parametric direction of the surface.

proc uReversedParameter*(this: Geom_ElementarySurface, U: cdouble): cdouble  {.importcpp: "UReversedParameter".}
    ## Return the parameter on the Ureversed surface for the point of
    ## parameter U on <me>.

proc vReverse*(this: var Geom_ElementarySurface)  {.importcpp: "VReverse".}
    ## Reverses the V parametric direction of the surface.

proc vReversedParameter*(this: Geom_ElementarySurface, V: cdouble): cdouble  {.importcpp: "VReversedParameter".}
    ## Return the parameter on the Vreversed surface for the point of
    ## parameter V on <me>.

proc continuity*(this: Geom_ElementarySurface): GeomAbs_Shape  {.importcpp: "Continuity".}
    ## Returns GeomAbs_CN, the global continuity of any elementary surface.

proc isCNu*(this: Geom_ElementarySurface, N: cint): bool  {.importcpp: "IsCNu".}
    ## Returns True.

proc isCNv*(this: Geom_ElementarySurface, N: cint): bool  {.importcpp: "IsCNv".}
    ## Returns True.

proc dumpJson*(this: Geom_ElementarySurface, theOStream: var Standard_OStream, theDepth: cint = 1)  {.importcpp: "DumpJson".}
    ## Dumps the content of me into the stream

proc get_type_name*(this: var Geom_ElementarySurface): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_ElementarySurface): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_ElementarySurface): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_ElementarySurface.hxx"
