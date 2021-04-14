import geom_types


type
  Geom_AxisPlacement* {.header: "Geom_AxisPlacement.hxx", importcpp: "Geom_AxisPlacement", byref.} = object #of class Geom_Geometry
    ## The abstract class AxisPlacement describes the common behavior of
    ## positioning systems in 3D space, such as axis or coordinate systems.
    ## The Geom package provides two implementations of 3D positioning
    ## systems: - the axis (Geom_Axis1Placement class), which is defined by:
    ## - its origin, also termed the "Location point" of the axis, - its unit
    ## vector, termed the "Direction" or "main Direction" of the axis; - the
    ## right-handed coordinate system (Geom_Axis2Placement class), which is
    ## defined by: - its origin, also termed the "Location point" of the
    ## coordinate system, - three orthogonal unit vectors, termed
    ## respectively the "X Direction", the "Y Direction" and the "Direction"
    ## of the coordinate system. As the coordinate system is right-handed,
    ## these unit vectors have the following relation: "Direction" = "X
    ## Direction" ^ "Y Direction". The "Direction" is also called the "main
    ## Direction" because, when the unit vector is modified, the "X
    ## Direction" and "Y Direction" are recomputed, whereas when the "X
    ## Direction" or "Y Direction" is modified, the "main Direction" does not
    ## change. The axis whose origin is the origin of the positioning system
    ## and whose unit vector is its "main Direction" is also called the
    ## "Axis" or "main Axis" of the positioning system.

  Handle_Geom_AxisPlacement* {.header: "Geom_AxisPlacement.hxx", importcpp: "Handle_Geom_AxisPlacement".} = handle[Geom_AxisPlacement]
  Base_type* {.header: "Geom_AxisPlacement.hxx", importcpp: "Geom_AxisPlacement::base_type".} = Geom_Geometry


{.push header: "Geom_AxisPlacement.hxx".}

proc setAxis*(this: var Geom_AxisPlacement, A1: gp_Ax1)  {.importcpp: "SetAxis".}
    ## Assigns A1 as the "main Axis" of this positioning system. This
    ## modifies - its origin, and - its "main Direction". If this positioning
    ## system is a Geom_Axis2Placement, then its "X Direction" and "Y
    ## Direction" are recomputed. Exceptions For a Geom_Axis2Placement:
    ## Standard_ConstructionError if A1 and the previous "X Direction" of the
    ## coordinate system are parallel.

proc setDirection*(this: var Geom_AxisPlacement, V: gp_Dir)  {.importcpp: "SetDirection".}
    ## Changes the direction of the axis placement. If <me> is an axis
    ## placement two axis the main "Direction" is modified and the
    ## "XDirection" and "YDirection" are recomputed. Raises ConstructionError
    ## only for an axis placement two axis if V and the previous "XDirection"
    ## are parallel because it is not possible to calculate the new
    ## "XDirection" and the new "YDirection".

proc setLocation*(this: var Geom_AxisPlacement, P: gp_Pnt)  {.importcpp: "SetLocation".}
    ## Assigns the point P as the origin of this positioning system.

proc angle*(this: Geom_AxisPlacement, Other: handle[Geom_AxisPlacement]): Standard_Real  {.importcpp: "Angle".}
    ## Computes the angular value, in radians, between the "main Direction"
    ## of this positioning system and that of positioning system Other. The
    ## result is a value between 0 and Pi.

proc axis*(this: Geom_AxisPlacement): gp_Ax1  {.importcpp: "Axis".}
    ## Returns the main axis of the axis placement. For an "Axis2placement"
    ## it is the main axis (Location, Direction ). For an "Axis1Placement"
    ## this method returns a copy of <me>.

proc direction*(this: Geom_AxisPlacement): gp_Dir  {.importcpp: "Direction".}
    ## Returns the main "Direction" of an axis placement.

proc location*(this: Geom_AxisPlacement): gp_Pnt  {.importcpp: "Location".}
    ## Returns the Location point (origin) of the axis placement.

proc get_type_name*(this: var Geom_AxisPlacement): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_AxisPlacement): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_AxisPlacement): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_AxisPlacement.hxx"
