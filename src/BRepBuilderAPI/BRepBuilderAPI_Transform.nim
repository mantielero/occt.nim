import brepbuilderapi_types

{.push header: "BRepBuilderAPI_Transform.hxx".}
type
  BRepBuilderAPI_Transform* {.byref.} = object of BRepBuilderAPI_ModifyShape
    ## Geometric transformation on a shape. The transformation to be applied
    ## is defined as a gp_Trsf transformation, i.e. a transformation which
    ## does not modify the underlying geometry of shapes. The transformation
    ## is applied to: - all curves which support edges of a shape, and - all
    ## surfaces which support its faces. A Transform object provides a
    ## framework for: - defining the geometric transformation to be applied,
    ## - implementing the transformation algorithm, and - consulting the
    ## results.



#{.push header: "BRepBuilderAPI_Transform.hxx".}

proc BRepBuilderAPI_Transform*(T: gp_Trsf): BRepBuilderAPI_Transform {.constructor,importcpp: "BRepBuilderAPI_Transform::BRepBuilderAPI_Transform(@)".}
    ## Constructs a framework for applying the geometric transformation T to
    ## a shape. Use the function Perform to define the shape to transform.

proc BRepBuilderAPI_Transform*(S: TopoDS_Shape, T: gp_Trsf, Copy: Standard_Boolean = false): BRepBuilderAPI_Transform {.constructor,importcpp: "BRepBuilderAPI_Transform::BRepBuilderAPI_Transform(@)".}
    ## Creates a transformation from the gp_Trsf <T>, and applies it to the
    ## shape <S>. If the transformation is direct and isometric (determinant
    ## = 1) and <Copy> = Standard_False, the resulting shape is <S> on which
    ## a new location has been set. Otherwise, the transformation is applied
    ## on a duplication of <S>.

#[
proc ` new`*(this: var BRepBuilderAPI_Transform, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_Transform, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepBuilderAPI_Transform, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepBuilderAPI_Transform, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepBuilderAPI_Transform, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_Transform, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}
]#

proc perform*(this: var BRepBuilderAPI_Transform, S: TopoDS_Shape, Copy: Standard_Boolean)  {.importcpp: "Perform".}
    ## pplies the geometric transformation defined at the time of
    ## construction of this framework to the shape S. - If the transformation
    ## T is direct and isometric, in other words, if the determinant of the
    ## vectorial part of T is equal to 1., and if Copy equals false (the
    ## default value), the resulting shape is the same as the original but
    ## with a new location assigned to it. - In all other cases, the
    ## transformation is applied to a duplicate of S. Use the function Shape
    ## to access the result. Note: this framework can be reused to apply the
    ## same geometric transformation to other shapes. You only need to
    ## specify them by calling the function Perform again.

proc modifiedShape*(this: BRepBuilderAPI_Transform, S: TopoDS_Shape): TopoDS_Shape  {.importcpp: "ModifiedShape".}
    ## Returns the modified shape corresponding to <S>.

proc modified*(this: var BRepBuilderAPI_Transform, S: TopoDS_Shape): TopTools_ListOfShape  {.importcpp: "Modified".}
    ## Returns the list of shapes modified from the shape <S>.

{.pop.}  # header: "BRepBuilderAPI_Transform.hxx"
