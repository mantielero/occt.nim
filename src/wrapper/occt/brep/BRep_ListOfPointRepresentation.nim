# /usr/include/opencascade/BRep_ListOfPointRepresentation.hxx --> occt/brep/BRep_ListOfPointRepresentation.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBreplistofpointrepresentation = "/usr/include/opencascade/BRep_ListOfPointRepresentation.hxx"
type
  BRepListOfPointRepresentation* = NCollectionList[Handle[BRepPointRepresentation]]
  BRepListIteratorOfListOfPointRepresentation* = Iterator[
      Handle[BRepPointRepresentation]]
