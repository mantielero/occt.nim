# /usr/include/opencascade/BRep_ListOfCurveRepresentation.hxx --> occt/brep/BRep_ListOfCurveRepresentation.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBreplistofcurverepresentation = "/usr/include/opencascade/BRep_ListOfCurveRepresentation.hxx"
type
  BRepListOfCurveRepresentation* = NCollectionList[Handle[BRepCurveRepresentation]]
  BRepListIteratorOfListOfCurveRepresentation* = Iterator[
      Handle[BRepCurveRepresentation]]
