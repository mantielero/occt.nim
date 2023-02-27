import ../topods/topods_types
import ../../tkernel/tcolstd/tcolstd_types
import ../../tkmath/bnd/bnd_types
import ../../tkernel/ncollection/ncollection_types
import ../../tkernel/message/message_types

type
  TopTools_FormatVersion* = object # FIXME

type
  TopToolsDataMapIteratorOfDataMapOfIntegerListOfShape* {.importcpp:"NCollection_DataMap<Standard_Integer,TopTools_ListOfShape,TColStd_MapIntegerHasher>::Iterator", header:"TopTools_DataMapOfIntegerListOfShape.hxx",bycopy.} = object

  TopToolsDataMapIteratorOfDataMapOfIntegerShape* {.importcpp:"NCollection_DataMap<Standard_Integer,TopoDS_Shape,TColStd_MapIntegerHasher>::Iterator", header:"TopTools_DataMapOfIntegerShape.hxx",bycopy.} = object

  TopToolsDataMapIteratorOfDataMapOfOrientedShapeInteger* {.importcpp:"NCollection_DataMap<TopoDS_Shape,Standard_Integer,TopTools_OrientedShapeMapHasher>::Iterator", header:"TopTools_DataMapOfOrientedShapeInteger.hxx",bycopy.} = object

  TopToolsDataMapIteratorOfDataMapOfOrientedShapeShape* {.importcpp:"NCollection_DataMap<TopoDS_Shape,TopoDS_Shape,TopTools_OrientedShapeMapHasher>::Iterator", header:"TopTools_DataMapOfOrientedShapeShape.hxx",bycopy.} = object

  TopToolsDataMapIteratorOfDataMapOfShapeBox* {.importcpp:"TopTools_DataMapOfShapeBox::Iterator", header:"TopTools_DataMapOfShapeBox.hxx",bycopy.} = object

  TopToolsDataMapIteratorOfDataMapOfShapeInteger* {.importcpp:"NCollection_DataMap<TopoDS_Shape,Standard_Integer,TopTools_ShapeMapHasher>::Iterator", header:"TopTools_DataMapOfShapeInteger.hxx",bycopy.} = object

  TopToolsDataMapIteratorOfDataMapOfShapeListOfInteger* {.importcpp:"NCollection_DataMap<TopoDS_Shape,TColStd_ListOfInteger,TopTools_ShapeMapHasher>::Iterator", header:"TopTools_DataMapOfShapeListOfInteger.hxx",bycopy.} = object

  TopToolsDataMapIteratorOfDataMapOfShapeListOfShape* {.importcpp:"NCollection_DataMap<TopoDS_Shape,TopTools_ListOfShape,TopTools_ShapeMapHasher>::Iterator", header:"TopTools_DataMapOfShapeListOfShape.hxx",bycopy.} = object

  TopToolsDataMapIteratorOfDataMapOfShapeReal* {.importcpp:"NCollection_DataMap<TopoDS_Shape,Standard_Real,TopTools_ShapeMapHasher>::Iterator", header:"TopTools_DataMapOfShapeReal.hxx",bycopy.} = object

  TopToolsDataMapIteratorOfDataMapOfShapeSequenceOfShape* {.importcpp:"NCollection_DataMap<TopoDS_Shape,TopTools_SequenceOfShape,TopTools_ShapeMapHasher>::Iterator", header:"TopTools_DataMapOfShapeSequenceOfShape.hxx",bycopy.} = object

  TopToolsDataMapIteratorOfDataMapOfShapeShape* {.importcpp:"NCollection_DataMap<TopoDS_Shape,TopoDS_Shape,TopTools_ShapeMapHasher>::Iterator", header:"TopTools_DataMapOfShapeShape.hxx",bycopy.} = object

  TopToolsListIteratorOfListOfListOfShape* {.importcpp:"TopTools_ListOfListOfShape::Iterator", header:"TopTools_ListOfListOfShape.hxx",bycopy.} = object

  TopToolsListIteratorOfListOfShape* {.importcpp:"NCollection_List<TopoDS_Shape>::Iterator", header:"TopTools_ListOfShape.hxx",bycopy.} = object

  TopToolsLocationSetPtr* = ptr TopToolsLocationSet

  TopToolsMapIteratorOfMapOfOrientedShape* {.importcpp:"NCollection_Map<TopoDS_Shape,TopTools_OrientedShapeMapHasher>::Iterator", header:"TopTools_MapOfOrientedShape.hxx",bycopy.} = object

  TopToolsMapIteratorOfMapOfShape* {.importcpp:"NCollection_Map<TopoDS_Shape,TopTools_ShapeMapHasher>::Iterator", header:"TopTools_MapOfShape.hxx",bycopy.} = object

  TopToolsShapeMapHasher* {.importcpp: "TopTools_ShapeMapHasher",
                           header: "TopTools_ShapeMapHasher.hxx", bycopy.} = object 

  TopTools* {.importcpp: "TopTools", header: "TopTools.hxx", bycopy.} = object 

  TopToolsLocationSet* {.importcpp: "TopTools_LocationSet",
                        header: "TopTools_LocationSet.hxx", bycopy.} = object 

  TopToolsMutexForShapeProvider* {.importcpp: "TopTools_MutexForShapeProvider",
                                  header: "TopTools_MutexForShapeProvider.hxx",
                                  bycopy.} = object 

  TopToolsShapeSet* {.importcpp: "TopTools_ShapeSet",
                     header: "TopTools_ShapeSet.hxx", bycopy, pure,inheritable.} = object 

  TopToolsOrientedShapeMapHasher* {.importcpp: "TopTools_OrientedShapeMapHasher", header: "TopTools_OrientedShapeMapHasher.hxx",
                                   bycopy.} = object 

  TopToolsArray1OfShape* = NCollectionArray1[TopoDS_Shape]

  TopToolsArray2OfShape* = NCollectionArray2[TopoDS_Shape]

  TopToolsDataMapOfIntegerShape* = NCollectionDataMap[cint, TopoDS_Shape,
      TColStdMapIntegerHasher]

  TopToolsDataMapOfOrientedShapeInteger* = NCollectionDataMap[TopoDS_Shape, cint,
      TopToolsOrientedShapeMapHasher]

  TopToolsDataMapOfOrientedShapeShape* = NCollectionDataMap[TopoDS_Shape,
      TopoDS_Shape, TopToolsOrientedShapeMapHasher]

  TopToolsDataMapOfShapeBox* = NCollectionDataMap[TopoDS_Shape, BndBox,
      TopToolsShapeMapHasher]

  TopToolsDataMapOfShapeInteger* = NCollectionDataMap[TopoDS_Shape, cint,
      TopToolsShapeMapHasher]

  TopToolsDataMapOfShapeListOfInteger* = NCollectionDataMap[TopoDS_Shape,
      TColStdListOfInteger, TopToolsShapeMapHasher]

  TopToolsDataMapOfShapeReal* = NCollectionDataMap[TopoDS_Shape, cfloat,
      TopToolsShapeMapHasher]

  TopToolsDataMapOfShapeShape* = NCollectionDataMap[TopoDS_Shape, TopoDS_Shape,
      TopToolsShapeMapHasher]

  TopToolsIndexedDataMapOfShapeAddress* = NCollectionIndexedDataMap[TopoDS_Shape,
      pointer, TopToolsShapeMapHasher]

  TopToolsIndexedDataMapOfShapeReal* = NCollectionIndexedDataMap[TopoDS_Shape,
      cfloat, TopToolsShapeMapHasher]

  TopToolsIndexedDataMapOfShapeShape* = NCollectionIndexedDataMap[TopoDS_Shape,
      TopoDS_Shape, TopToolsShapeMapHasher]

  TopToolsIndexedMapOfOrientedShape* = NCollectionIndexedMap[TopoDS_Shape,
      TopToolsOrientedShapeMapHasher]

  TopToolsIndexedMapOfShape* = NCollectionIndexedMap[TopoDS_Shape,
      TopToolsShapeMapHasher]

  TopToolsListOfShape* = NCollectionList[TopoDS_Shape]

  TopToolsListOfListOfShape* = NCollectionList[TopToolsListOfShape]

  TopToolsIndexedDataMapOfShapeListOfShape* = NCollectionIndexedDataMap[
      TopoDS_Shape, TopToolsListOfShape, TopToolsShapeMapHasher]

  TopToolsDataMapOfShapeListOfShape* = NCollectionDataMap[TopoDS_Shape,
      TopToolsListOfShape, TopToolsShapeMapHasher]

  TopToolsDataMapOfIntegerListOfShape* = NCollectionDataMap[cint,
      TopToolsListOfShape, TColStdMapIntegerHasher]

  TopToolsArray1OfListOfShape* = NCollectionArray1[TopToolsListOfShape]

  TopToolsMapOfOrientedShape* = NCollectionMap[TopoDS_Shape,
      TopToolsOrientedShapeMapHasher]

  TopToolsMapOfShape* = NCollectionMap[TopoDS_Shape, TopToolsShapeMapHasher]

  TopToolsSequenceOfShape* = NCollectionSequence[TopoDS_Shape]

  TopToolsDataMapOfShapeSequenceOfShape* = NCollectionDataMap[TopoDS_Shape,
      TopToolsSequenceOfShape, TopToolsShapeMapHasher]

  TopToolsHArray1OfListOfShape* {.importcpp: "TopTools_HArray1OfListOfShape",
                                 header: "TopTools_HArray1OfListOfShape.hxx",
                                 bycopy.} = object of TopToolsArray1OfListOfShape

  TopToolsHArray1OfShape* {.importcpp: "TopTools_HArray1OfShape",
                           header: "TopTools_HArray1OfShape.hxx", bycopy.} = object of TopToolsArray1OfShape

  TopToolsHArray2OfShape* {.importcpp: "TopTools_HArray2OfShape",
                           header: "TopTools_HArray2OfShape.hxx", bycopy.} = object of TopToolsArray2OfShape
                           #header: "TopTools_HArray2OfShape.hxx", bycopy.} = object of TopToolsArray2OfShape

                           #header: "TopTools_HArray2OfShape.hxx", bycopy.} = object of TopToolsArray2OfShape
  TopToolsHSequenceOfShape* {.importcpp: "TopTools_HSequenceOfShape",
                             header: "TopTools_HSequenceOfShape.hxx", bycopy.} = object of TopToolsSequenceOfShape

