import ../../wrapper/occt_wrapper

iterator items*[T](it: NCollectionList[T]):T =
  var iter = newNCollectionTListIterator(it)  # NCollectionTListIterator[TopoDS_Shape]
  while iter.more():
    yield iter.value
    iter.next()


proc `len`*[T](it: NCollectionList[T]): int =
  it.size

proc `[]`*[T](it: NCollectionList[T]; i:int ):T =
  if i < 0:
    raise newException(ValueError, "index should be >= 0")
  elif i >= it.len:
    raise newException(ValueError, "index should be <= " & $(it.len - 1) )    

  var n = 0
  for obj in it:
    if n == i:
      return obj
    n += 1

proc `&`*[T](ncol: NCollectionList[T]; obj: T ): NCollectionList[T] =
  var newNcol = ncol
  discard newNCol.append( obj )
  return newNcol

proc `&=`*[T](ncol: var NCollectionList[T]; obj: T ) =
  ncol.append( obj )
