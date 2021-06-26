# /usr/include/opencascade/TopoDS_ListOfShape.hxx --> occt/tkBRep/topods/TopoDS_ListOfShape.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTopodslistofshape = "/usr/include/opencascade/TopoDS_ListOfShape.hxx"
discard "forward decl of TopoDS_Shape"
type
  TopoDS_ListOfShape* = NCollectionList[TopoDS_Shape]
  TopoDS_ListIteratorOfListOfShape* = Iterator[TopoDS_Shape]
