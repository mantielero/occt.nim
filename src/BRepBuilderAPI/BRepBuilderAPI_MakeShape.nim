import brepbuilderapi_types
import ../TopoDS/topods_types
import Standard/standard

{.push header: "BRepBuilderAPI_MakeShape.hxx".}

proc BRepBuilderAPI_MakeShape*(): BRepBuilderAPI_MakeShape {.constructor,importcpp: "BRepBuilderAPI_MakeShape::BRepBuilderAPI_MakeShape".}
#[
proc ` new`*(this: var BRepBuilderAPI_MakeShape, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_MakeShape, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepBuilderAPI_MakeShape, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepBuilderAPI_MakeShape, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepBuilderAPI_MakeShape, a00: cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepBuilderAPI_MakeShape, a00: pointer, a01: pointer)  {.importcpp: "#  delete #".}
]#
proc build*(this: var BRepBuilderAPI_MakeShape)  {.importcpp: "Build".}
    ## This is called by Shape(). It does nothing but may be redefined.

proc shape*(this: var BRepBuilderAPI_MakeShape): TopoDS_Shape  {.importcpp: "Shape".}
    ## Returns a shape built by the shape construction algorithm. Raises
    ## exception StdFail_NotDone if the shape was not built.
#[FIXME
proc generated*(this: var BRepBuilderAPI_MakeShape, S: TopoDS_Shape): TopTools_ListOfShape  {.importcpp: "Generated".}
    ## Returns the list of shapes generated from the shape <S>.

proc modified*(this: var BRepBuilderAPI_MakeShape, S: TopoDS_Shape): TopTools_ListOfShape  {.importcpp: "Modified".}
    ## Returns the list of shapes modified from the shape <S>.
]#
proc isDeleted*(this: var BRepBuilderAPI_MakeShape, S: TopoDS_Shape): Standard_Boolean  {.importcpp: "IsDeleted".}
    ## Returns true if the shape S has been deleted.

{.pop.}  # header: "BRepBuilderAPI_MakeShape.hxx"
