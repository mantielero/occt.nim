import geom_types


type
  Handle_Geom_Geometry* {.header: "Geom_Geometry.hxx", importcpp: "Handle_Geom_Geometry".} = handle[Geom_Geometry]
  Base_type* {.header: "Geom_Geometry.hxx", importcpp: "Geom_Geometry::base_type".} = Standard_Transient


{.push header: "Geom_Geometry.hxx".}

proc mirror*(this: var Geom_Geometry, P: gp_Pnt)  {.importcpp: "Mirror".}
    ## Performs the symmetrical transformation of a Geometry with respect to
    ## the point P which is the center of the symmetry.

proc mirror*(this: var Geom_Geometry, A1: gp_Ax1)  {.importcpp: "Mirror".}
    ## Performs the symmetrical transformation of a Geometry with respect to
    ## an axis placement which is the axis of the symmetry.

proc mirror*(this: var Geom_Geometry, A2: gp_Ax2)  {.importcpp: "Mirror".}
    ## Performs the symmetrical transformation of a Geometry with respect to
    ## a plane. The axis placement A2 locates the plane of the symmetry :
    ## (Location, XDirection, YDirection).

proc rotate*(this: var Geom_Geometry, A1: gp_Ax1, Ang: Standard_Real)  {.importcpp: "Rotate".}
    ## Rotates a Geometry. A1 is the axis of the rotation. Ang is the angular
    ## value of the rotation in radians.

proc scale*(this: var Geom_Geometry, P: gp_Pnt, S: Standard_Real)  {.importcpp: "Scale".}
    ## Scales a Geometry. S is the scaling value.

proc translate*(this: var Geom_Geometry, V: gp_Vec)  {.importcpp: "Translate".}
    ## Translates a Geometry. V is the vector of the tanslation.

proc translate*(this: var Geom_Geometry, P1: gp_Pnt, P2: gp_Pnt)  {.importcpp: "Translate".}
    ## Translates a Geometry from the point P1 to the point P2.

proc transform*(this: var Geom_Geometry, T: gp_Trsf)  {.importcpp: "Transform".}
    ## Transformation of a geometric object. This tansformation can be a
    ## translation, a rotation, a symmetry, a scaling or a complex
    ## transformation obtained by combination of the previous elementaries
    ## transformations. (see class Transformation of the package Geom).

proc mirrored*(this: Geom_Geometry, P: gp_Pnt): handle[Geom_Geometry]  {.importcpp: "Mirrored".}

proc mirrored*(this: Geom_Geometry, A1: gp_Ax1): handle[Geom_Geometry]  {.importcpp: "Mirrored".}

proc mirrored*(this: Geom_Geometry, A2: gp_Ax2): handle[Geom_Geometry]  {.importcpp: "Mirrored".}

proc rotated*(this: Geom_Geometry, A1: gp_Ax1, Ang: Standard_Real): handle[Geom_Geometry]  {.importcpp: "Rotated".}

proc scaled*(this: Geom_Geometry, P: gp_Pnt, S: Standard_Real): handle[Geom_Geometry]  {.importcpp: "Scaled".}

proc transformed*(this: Geom_Geometry, T: gp_Trsf): handle[Geom_Geometry]  {.importcpp: "Transformed".}

proc translated*(this: Geom_Geometry, V: gp_Vec): handle[Geom_Geometry]  {.importcpp: "Translated".}

proc translated*(this: Geom_Geometry, P1: gp_Pnt, P2: gp_Pnt): handle[Geom_Geometry]  {.importcpp: "Translated".}

proc copy*(this: Geom_Geometry): handle[Geom_Geometry]  {.importcpp: "Copy".}
    ## Creates a new object which is a copy of this geometric object.

proc dumpJson*(this: Geom_Geometry, theOStream: var Standard_OStream, theDepth: Standard_Integer = 1)  {.importcpp: "DumpJson".}
    ## Dumps the content of me into the stream

proc get_type_name*(this: var Geom_Geometry): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_Geometry): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_Geometry): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_Geometry.hxx"
