import brepbuilderapi_types


type
  BRepBuilderAPI_GTransform* {.header: "BRepBuilderAPI_GTransform.hxx", importcpp: "BRepBuilderAPI_GTransform", byref.} = object #of class BRepBuilderAPI_ModifyShape
    ## Geometric transformation on a shape. The transformation to be applied
    ## is defined as a gp_GTrsf transformation. It may be: - a transformation
    ## equivalent to a gp_Trsf transformation, the most common case: you
    ## should , however, use a BRepAPI_Transform object to perform this kind
    ## of transformation; or - an affinity, or - more generally, any type of
    ## point transformation which may be defined by a three row, four column
    ## matrix of transformation. In the last two cases, the underlying
    ## geometry of the following shapes may change: - a curve which supports
    ## an edge of the shape, or - a surface which supports a face of the
    ## shape; For example, a circle may be transformed into an ellipse when
    ## applying an affinity transformation. The transformation is applied to:
    ## - all the curves which support edges of the shape, and - all the
    ## surfaces which support faces of the shape. A GTransform object
    ## provides a framework for: - defining the geometric transformation to
    ## be applied, - implementing the transformation algorithm, and -
    ## consulting the result.



{.push header: "BRepBuilderAPI_GTransform.hxx".}

proc constructBRepBuilderAPI_GTransform*(T: gp_GTrsf): BRepBuilderAPI_GTransform {.constructor,importcpp: "BRepBuilderAPI_GTransform::BRepBuilderAPI_GTransform(@)".}
    ## Constructs a framework for applying the geometric transformation T to
    ## a shape. Use the function Perform to define the shape to transform.

proc constructBRepBuilderAPI_GTransform*(S: TopoDS_Shape, T: gp_GTrsf, Copy: Standard_Boolean): BRepBuilderAPI_GTransform {.constructor,importcpp: "BRepBuilderAPI_GTransform::BRepBuilderAPI_GTransform(@)".}
    ## Constructs a framework for applying the geometric transformation T to
    ## a shape, and applies it to the shape S. - If the transformation T is
    ## direct and isometric (i.e. if the determinant of the vectorial part of
    ## T is equal to 1.), and if Copy equals false (default value), the
    ## resulting shape is the same as the original but with a new location
    ## assigned to it. - In all other cases, the transformation is applied to
    ## a duplicate of S. Use the function Shape to access the result. Note:
    ## the constructed framework can be reused to apply the same geometric
    ## transformation to other shapes: just specify them with the function
    ## Perform.

proc ` new`*(this: var BRepBuilderAPI_GTransform, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_GTransform, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepBuilderAPI_GTransform, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepBuilderAPI_GTransform, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepBuilderAPI_GTransform, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_GTransform, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}

proc perform*(this: var BRepBuilderAPI_GTransform, S: TopoDS_Shape, Copy: Standard_Boolean)  {.importcpp: "Perform".}
    ## Applies the geometric transformation defined at the time of
    ## construction of this framework to the shape S. - If the transformation
    ## T is direct and isometric (i.e. if the determinant of the vectorial
    ## part of T is equal to 1.), and if Copy equals false (default value),
    ## the resulting shape is the same as the original but with a new
    ## location assigned to it. - In all other cases, the transformation is
    ## applied to a duplicate of S. Use the function Shape to access the
    ## result. Note: this framework can be reused to apply the same geometric
    ## transformation to other shapes: just specify them by calling the
    ## function Perform again.

proc modified*(this: var BRepBuilderAPI_GTransform, S: TopoDS_Shape): TopTools_ListOfShape  {.importcpp: "Modified".}
    ## Returns the list of shapes modified from the shape <S>.

proc modifiedShape*(this: BRepBuilderAPI_GTransform, S: TopoDS_Shape): TopoDS_Shape  {.importcpp: "ModifiedShape".}
    ## Returns the modified shape corresponding to <S>.

{.pop.}  # header: "BRepBuilderAPI_GTransform.hxx"
