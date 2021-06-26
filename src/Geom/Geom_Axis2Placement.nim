import geom_types


type
  Geom_Axis2Placement* {.header: "Geom_Axis2Placement.hxx", importcpp: "Geom_Axis2Placement", byref.} = object #of class Geom_AxisPlacement
    ## Describes a right-handed coordinate system in 3D space. A coordinate
    ## system is defined by: - its origin, also termed the "Location point"
    ## of the coordinate system, - three orthogonal unit vectors, termed
    ## respectively the "X Direction", "Y Direction" and "Direction" (or
    ## "main Direction") of the coordinate system. As a Geom_Axis2Placement
    ## coordinate system is right-handed, its "Direction" is always equal to
    ## the cross product of its "X Direction" and "Y Direction". The
    ## "Direction" of a coordinate system is called the "main Direction"
    ## because when this unit vector is modified, the "X Direction" and "Y
    ## Direction" are recomputed, whereas when the "X Direction" or "Y
    ## Direction" is changed, the "main Direction" is retained. The "main
    ## Direction" is also the "Z Direction". Note: Geom_Axis2Placement
    ## coordinate systems provide the same kind of "geometric" services as
    ## gp_Ax2 coordinate systems but have more complex data structures. The
    ## geometric objects provided by the Geom package use gp_Ax2 objects to
    ## include coordinate systems in their data structures, or to define the
    ## geometric transformations, which are applied to them.
    ## Geom_Axis2Placement coordinate systems are used in a context where
    ## they can be shared by several objects contained inside a common data
    ## structure.

  Handle_Geom_Axis2Placement* {.header: "Geom_Axis2Placement.hxx", importcpp: "Handle_Geom_Axis2Placement".} = handle[Geom_Axis2Placement]
  Base_type* {.header: "Geom_Axis2Placement.hxx", importcpp: "Geom_Axis2Placement::base_type".} = Geom_AxisPlacement


{.push header: "Geom_Axis2Placement.hxx".}

proc constructGeom_Axis2Placement*(A2: gp_Ax2): Geom_Axis2Placement {.constructor,importcpp: "Geom_Axis2Placement::Geom_Axis2Placement(@)".}
    ## Returns a transient copy of A2.

proc constructGeom_Axis2Placement*(P: gp_Pnt, N: gp_Dir, Vx: gp_Dir): Geom_Axis2Placement {.constructor,importcpp: "Geom_Axis2Placement::Geom_Axis2Placement(@)".}
    ## P is the origin of the axis placement, N is the main direction of the
    ## axis placement and Vx is the "XDirection". If the two directions N and
    ## Vx are not orthogonal the "XDirection" is computed as follow :
    ## XDirection = N ^ (Vx ^ N). Raised if N and Vx are parallel.

proc constructGeom_Axis2Placement*(P: gp_Pnt, Vz: gp_Dir, Vx: gp_Dir, Vy: gp_Dir): Geom_Axis2Placement {.constructor,importcpp: "Geom_Axis2Placement::Geom_Axis2Placement(@)".}

proc setAx2*(this: var Geom_Axis2Placement, A2: gp_Ax2)  {.importcpp: "SetAx2".}
    ## Assigns the origin and the three unit vectors of A2 to this coordinate
    ## system.

proc setDirection*(this: var Geom_Axis2Placement, V: gp_Dir)  {.importcpp: "SetDirection".}
    ## Changes the main direction of the axis placement. The "Xdirection" is
    ## modified : New XDirection = V ^ (Previous_Xdirection ^ V).

proc setXDirection*(this: var Geom_Axis2Placement, Vx: gp_Dir)  {.importcpp: "SetXDirection".}
    ## Changes the "XDirection" of the axis placement, Vx is the new
    ## "XDirection". If Vx is not normal to the main direction then
    ## "XDirection" is computed as follow : XDirection = Direction ^ ( Vx ^
    ## Direction). The main direction is not modified. Raised if Vx and
    ## "Direction" are parallel.

proc setYDirection*(this: var Geom_Axis2Placement, Vy: gp_Dir)  {.importcpp: "SetYDirection".}
    ## Changes the "YDirection" of the axis placement, Vy is the new
    ## "YDirection". If Vy is not normal to the main direction then
    ## "YDirection" is computed as follow : YDirection = Direction ^ ( Vy ^
    ## Direction). The main direction is not modified. The "XDirection" is
    ## modified. Raised if Vy and the main direction are parallel.

proc ax2*(this: Geom_Axis2Placement): gp_Ax2  {.importcpp: "Ax2".}
    ## Returns a non transient copy of <me>.

proc xDirection*(this: Geom_Axis2Placement): gp_Dir  {.importcpp: "XDirection".}
    ## Returns the "XDirection". This is a unit vector.

proc yDirection*(this: Geom_Axis2Placement): gp_Dir  {.importcpp: "YDirection".}
    ## Returns the "YDirection". This is a unit vector.

proc transform*(this: var Geom_Axis2Placement, T: gp_Trsf)  {.importcpp: "Transform".}
    ## Transforms an axis placement with a Trsf. The "Location" point, the
    ## "XDirection" and the "YDirection" are transformed with T. The
    ## resulting main "Direction" of <me> is the cross product between the
    ## "XDirection" and the "YDirection" after transformation.

proc copy*(this: Geom_Axis2Placement): handle[Geom_Geometry]  {.importcpp: "Copy".}
    ## Creates a new object which is a copy of this coordinate system.

proc get_type_name*(this: var Geom_Axis2Placement): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_Axis2Placement): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_Axis2Placement): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_Axis2Placement.hxx"
