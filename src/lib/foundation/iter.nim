import ../../wrapper/occt_wrapper


converter toTopTools_ListOfShape*[T:TopoDS_Shape|TopoDS_Face](shapes:seq[T]): TopTools_ListOfShape =
  for aShape in shapes:
    result.append( aShape )


# ----
# iterator getCylinders*(this:TopoDS_Shape; )
#iterator filter*(this: TopoDS_Shape): TopoDS_