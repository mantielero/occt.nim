import ../../wrapper/tkernel/tkernel

iterator items*[T](it: NCollectionList[T]):T =
  var iter = newNCollectionTListIterator(it)  # NCollectionTListIterator[TopoDS_Shape]
  while iter.more():
    yield iter.value
    iter.next()