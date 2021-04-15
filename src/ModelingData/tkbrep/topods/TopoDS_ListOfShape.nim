import topods_types


type
  TopoDS_ListOfShape* {.header: "TopoDS_ListOfShape.hxx", importcpp: "TopoDS_ListOfShape".} = NCollection_List[TopoDS_Shape]
  TopoDS_ListIteratorOfListOfShape* {.header: "TopoDS_ListOfShape.hxx", importcpp: "TopoDS_ListIteratorOfListOfShape".} = cint


