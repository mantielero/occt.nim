import ../../wrapper/occt_wrapper

iterator items*[T](it: NCollectionList[T]):T =
  var iter = newNCollectionTListIterator(it)  # NCollectionTListIterator[TopoDS_Shape]
  while iter.more():
    yield iter.value
    iter.next()


converter toTopTools_ListOfShape*[T:TopoDS_Shape|TopoDS_Face](shapes:seq[T]): TopTools_ListOfShape =
  for aShape in shapes:
    result.append( aShape )


# ----
# iterator getCylinders*(this:TopoDS_Shape; )
#iterator filter*(this: TopoDS_Shape): TopoDS_