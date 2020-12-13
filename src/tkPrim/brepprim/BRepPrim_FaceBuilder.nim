{.push header: "BRepPrim_FaceBuilder.hxx".}


# Constructors and methods
proc constructor_BRepPrim_FaceBuilder*(): BRepPrim_FaceBuilder {.constructor,importcpp: "BRepPrim_FaceBuilder".}

proc constructor_BRepPrim_FaceBuilder*(B: BRep_Builder, S: Handle[Geom_Surface]): BRepPrim_FaceBuilder {.constructor,importcpp: "BRepPrim_FaceBuilder(@)".}

proc constructor_BRepPrim_FaceBuilder*(B: BRep_Builder, S: Handle[Geom_Surface], UMin: cdouble, UMax: cdouble, VMin: cdouble, VMax: cdouble): BRepPrim_FaceBuilder {.constructor,importcpp: "BRepPrim_FaceBuilder(@)".}

#[
proc ` new`*(this: var BRepPrim_FaceBuilder, theSize: cint)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrim_FaceBuilder, theAddress: pointer)  {.importcpp: "#  delete #".}

proc ` new[]`*(this: var BRepPrim_FaceBuilder, theSize: cint)  {.importcpp: "#  new[] #".}

proc ` delete[]`*(this: var BRepPrim_FaceBuilder, theAddress: pointer)  {.importcpp: "#  delete[] #".}

proc ` new`*(this: var BRepPrim_FaceBuilder, cint, theAddress: pointer)  {.importcpp: "#  new #".}

proc ` delete`*(this: var BRepPrim_FaceBuilder, pointer, pointer)  {.importcpp: "#  delete #".}
]#
proc init*(this: var BRepPrim_FaceBuilder, B: BRep_Builder, S: Handle[Geom_Surface])  {.importcpp: "Init".}

proc init*(this: var BRepPrim_FaceBuilder, B: BRep_Builder, S: Handle[Geom_Surface], UMin: cdouble, UMax: cdouble, VMin: cdouble, VMax: cdouble)  {.importcpp: "Init".}

proc face*(this: BRepPrim_FaceBuilder): TopoDS_Face  {.importcpp: "Face".}

proc edge*(this: BRepPrim_FaceBuilder, I: cint): TopoDS_Edge  {.importcpp: "Edge".}
  ## Returns the edge of index <I> 1 - Edge VMin 2 - Edge UMax 3 - Edge
  ## VMax 4 - Edge UMin

proc vertex*(this: BRepPrim_FaceBuilder, I: cint): TopoDS_Vertex  {.importcpp: "Vertex".}
  ## Returns the vertex of index <I> 1 - Vertex UMin,VMin 2 - Vertex
  ## UMax,VMin 3 - Vertex UMax,VMax 4 - Vertex UMin,VMax

{.pop.} # header: "BRepPrim_FaceBuilder.hxx
