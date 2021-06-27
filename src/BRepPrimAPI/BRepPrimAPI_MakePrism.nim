import ../TopoDS/topods_types
import ../gp/gp_types
import brepprimapi_types
{.push header: "BRepPrimAPI_MakePrism.hxx".}


# Constructors and methods
# BRepPrimAPI_MakePrism 
proc MakePrism*(S: TopoDS_Shape, V: gp_Vec, 
      Copy: bool = false, Canonize: bool = true):TopoDS_Shape  {.constructor,importcpp: "BRepPrimAPI_MakePrism(@)".}
  ## Builds the prism of base S and vector V. If C is true, S is copied. If
  ## Canonize is true then generated surfaces are attempted to be canonized
  ## in simple types

proc MakePrism*(S: TopoDS_Shape; D: gp_Dir; Inf: bool = true; Copy: bool = false; Canonize: bool = true): BRepPrimAPI_MakePrism {.constructor,importcpp: "BRepPrimAPI_MakePrism(@)".}
  ## Builds a semi-infinite or an infinite prism of base S. If Inf is true
  ## the prism is infinite, if Inf is false the prism is semi-infinite (in
  ## the direction D). If C is true S is copied (for semi-infinite prisms).
  ## If Canonize is true then generated surfaces are attempted to be
  ## canonized in simple types
#[
proc ` new`*(this: var BRepPrimAPI_MakePrism, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrimAPI_MakePrism, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepPrimAPI_MakePrism, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepPrimAPI_MakePrism, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepPrimAPI_MakePrism, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrimAPI_MakePrism, pointer, pointer)  {.importcpp: "#  delete #".}
]#
#[FIXME
proc prism*(this: BRepPrimAPI_MakePrism): BRepSweep_Prism  {.importcpp: "Prism".}
  ## Returns the internal sweeping algorithm.
]#
proc build*(this: var BRepPrimAPI_MakePrism)  {.importcpp: "Build".}
  ## Builds the resulting shape (redefined from MakeShape).

proc firstShape*(this: var BRepPrimAPI_MakePrism): TopoDS_Shape  {.importcpp: "FirstShape".}
  ## Returns the TopoDS Shape of the bottom of the prism.

proc lastShape*(this: var BRepPrimAPI_MakePrism): TopoDS_Shape  {.importcpp: "LastShape".}
  ## Returns the TopoDS Shape of the top of the prism. In the case of a
  ## finite prism, FirstShape returns the basis of the prism, in other
  ## words, S if Copy is false; otherwise, the copy of S belonging to the
  ## prism. LastShape returns the copy of S translated by V at the time of
  ## construction.
#[FIXME
proc generated*(this: var BRepPrimAPI_MakePrism, S: TopoDS_Shape): TopTools_ListOfShape  {.importcpp: "Generated".}
  ## Returns ListOfShape from TopTools.
]#
proc isDeleted*(this: var BRepPrimAPI_MakePrism, S: TopoDS_Shape): bool  {.importcpp: "IsDeleted".}
  ## Returns true if the shape S has been deleted.

proc firstShape*(this: var BRepPrimAPI_MakePrism, theShape: TopoDS_Shape): TopoDS_Shape  {.importcpp: "FirstShape".}
  ## Returns the TopoDS Shape of the bottom of the prism. generated with
  ## theShape (subShape of the generating shape).

proc lastShape*(this: var BRepPrimAPI_MakePrism, theShape: TopoDS_Shape): TopoDS_Shape  {.importcpp: "LastShape".}
  ## Returns the TopoDS Shape of the top of the prism. generated with
  ## theShape (subShape of the generating shape).

{.pop.} # header: "BRepPrimAPI_MakePrism.hxx
