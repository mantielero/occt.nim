import geom_types


type
  Geom_Axis1Placement* {.header: "Geom_Axis1Placement.hxx", importcpp: "Geom_Axis1Placement", byref.} = object #of class Geom_AxisPlacement
    ## Describes an axis in 3D space. An axis is defined by: - its origin,
    ## also termed the "Location point" of the axis, - its unit vector,
    ## termed the "Direction" of the axis. Note: Geom_Axis1Placement axes
    ## provide the same kind of "geometric" services as gp_Ax1 axes but have
    ## more complex data structures. The geometric objects provided by the
    ## Geom package use gp_Ax1 objects to include axes in their data
    ## structures, or to define an axis of symmetry or axis of rotation.
    ## Geom_Axis1Placement axes are used in a context where they can be
    ## shared by several objects contained inside a common data structure.

  Handle_Geom_Axis1Placement* {.header: "Geom_Axis1Placement.hxx", importcpp: "Handle_Geom_Axis1Placement".} = handle[Geom_Axis1Placement]
  Base_type* {.header: "Geom_Axis1Placement.hxx", importcpp: "Geom_Axis1Placement::base_type".} = Geom_AxisPlacement


{.push header: "Geom_Axis1Placement.hxx".}

proc constructGeom_Axis1Placement*(A1: gp_Ax1): Geom_Axis1Placement {.constructor,importcpp: "Geom_Axis1Placement::Geom_Axis1Placement(@)".}
    ## Returns a transient copy of A1.

proc constructGeom_Axis1Placement*(P: gp_Pnt, V: gp_Dir): Geom_Axis1Placement {.constructor,importcpp: "Geom_Axis1Placement::Geom_Axis1Placement(@)".}
    ## P is the origin of the axis placement and V is the direction of the
    ## axis placement.

proc ax1*(this: Geom_Axis1Placement): gp_Ax1  {.importcpp: "Ax1".}
    ## Returns a non transient copy of <me>.

proc reverse*(this: var Geom_Axis1Placement)  {.importcpp: "Reverse".}
    ## Reverses the direction of the axis placement.

proc reversed*(this: Geom_Axis1Placement): handle[Geom_Axis1Placement]  {.importcpp: "Reversed".}
    ## Returns a copy of <me> reversed.

proc setDirection*(this: var Geom_Axis1Placement, V: gp_Dir)  {.importcpp: "SetDirection".}
    ## Assigns V to the unit vector of this axis.

proc transform*(this: var Geom_Axis1Placement, T: gp_Trsf)  {.importcpp: "Transform".}
    ## Applies the transformation T to this axis.

proc copy*(this: Geom_Axis1Placement): handle[Geom_Geometry]  {.importcpp: "Copy".}
    ## Creates a new object, which is a copy of this axis.

proc get_type_name*(this: var Geom_Axis1Placement): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var Geom_Axis1Placement): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: Geom_Axis1Placement): handle[Standard_Type]  {.importcpp: "DynamicType".}

{.pop.}  # header: "Geom_Axis1Placement.hxx"
