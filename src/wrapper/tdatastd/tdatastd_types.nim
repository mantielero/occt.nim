import ../standard/standard_types
import ../ncollection/ncollection_types
import ../tcollection/tcollection_types
import ../tcolstd/tcolstd_types
import ../tdf/tdf_types

type
  #TDF_Attribute* = object of RootObj# FIXME
  #TDF_DeltaOnModification* = object of RootObj# FIXME
  #TDF_Label* = object # FIXME
  #TDF_IDList* = object # FIXEME
  Iterator[A,B] = object # FIXME

type
  TDataStd* {.importcpp: "TDataStd", header: "TDataStd.hxx", bycopy.} = object 

  TDataStdAsciiString* {.importcpp: "TDataStd_AsciiString",
                        header: "TDataStd_AsciiString.hxx", bycopy.} = object of TDF_Attribute 

  HandleTDataStdAsciiString* = Handle[TDataStdAsciiString]

  TDataStdBooleanArray* {.importcpp: "TDataStd_BooleanArray",
                         header: "TDataStd_BooleanArray.hxx", bycopy.} = object of TDF_Attribute 

  HandleTDataStdBooleanArray* = Handle[TDataStdBooleanArray]

  TDataStdBooleanList* {.importcpp: "TDataStd_BooleanList",
                        header: "TDataStd_BooleanList.hxx", bycopy.} = object of TDF_Attribute 

  HandleTDataStdBooleanList* = Handle[TDataStdBooleanList]

  TDataStdByteArray* {.importcpp: "TDataStd_ByteArray",
                      header: "TDataStd_ByteArray.hxx", bycopy.} = object of TDF_Attribute 

  HandleTDataStdByteArray* = Handle[TDataStdByteArray]

  TDataStdChildNodeIterator* {.importcpp: "TDataStd_ChildNodeIterator",
                              header: "TDataStd_ChildNodeIterator.hxx", bycopy.} = object 

  TDataStdCurrent* {.importcpp: "TDataStd_Current", header: "TDataStd_Current.hxx",
                    bycopy.} = object of TDF_Attribute 

  HandleTDataStdCurrent* = Handle[TDataStdCurrent]

  TDataStdDataMapOfStringByte* = NCollectionDataMap[TCollectionExtendedString,
      StandardByte, TCollectionExtendedString]

#   TDataStdDataMapIteratorOfDataMapOfStringByte* = Iterator[
#       TCollectionExtendedString, StandardByte, TCollectionExtendedString]

  TDataStdDataMapOfStringHArray1OfInteger* = NCollectionDataMap[
      TCollectionExtendedString, Handle[TColStdHArray1OfInteger],
      TCollectionExtendedString]

#   TDataStdDataMapIteratorOfDataMapOfStringHArray1OfInteger* = Iterator[
#       TCollectionExtendedString, Handle[TColStdHArray1OfInteger],
#       TCollectionExtendedString]

  TDataStdDataMapOfStringHArray1OfReal* = NCollectionDataMap[
      TCollectionExtendedString, Handle[TColStdHArray1OfReal],
      TCollectionExtendedString]

#   TDataStdDataMapIteratorOfDataMapOfStringHArray1OfReal* = Iterator[
#       TCollectionExtendedString, Handle[TColStdHArray1OfReal],
#       TCollectionExtendedString]

  TDataStdDataMapOfStringReal* = NCollectionDataMap[TCollectionExtendedString,
      cfloat, TCollectionExtendedString]

#   TDataStdDataMapIteratorOfDataMapOfStringReal* = Iterator[
#       TCollectionExtendedString, cfloat, TCollectionExtendedString]

  TDataStdDataMapOfStringString* = NCollectionDataMap[TCollectionExtendedString,
      TCollectionExtendedString, TCollectionExtendedString]

#   TDataStdDataMapIteratorOfDataMapOfStringString* = Iterator[
#       TCollectionExtendedString, TCollectionExtendedString,
#       TCollectionExtendedString]

  TDataStdDeltaOnModificationOfByteArray* {.
      importcpp: "TDataStd_DeltaOnModificationOfByteArray",
      header: "TDataStd_DeltaOnModificationOfByteArray.hxx", bycopy.} = object of TDF_DeltaOnModification 

  HandleTDataStdDeltaOnModificationOfByteArray* = Handle[
      TDataStdDeltaOnModificationOfByteArray]

  TDataStdDeltaOnModificationOfExtStringArray* {.
      importcpp: "TDataStd_DeltaOnModificationOfExtStringArray",
      header: "TDataStd_DeltaOnModificationOfExtStringArray.hxx", bycopy.} = object of TDF_DeltaOnModification 

  HandleTDataStdDeltaOnModificationOfExtStringArray* = Handle[
      TDataStdDeltaOnModificationOfExtStringArray]

  TDataStdDeltaOnModificationOfIntArray* {.
      importcpp: "TDataStd_DeltaOnModificationOfIntArray",
      header: "TDataStd_DeltaOnModificationOfIntArray.hxx", bycopy.} = object of TDF_DeltaOnModification 

  HandleTDataStdDeltaOnModificationOfIntArray* = Handle[
      TDataStdDeltaOnModificationOfIntArray]

  TDataStdDeltaOnModificationOfIntPackedMap* {.
      importcpp: "TDataStd_DeltaOnModificationOfIntPackedMap",
      header: "TDataStd_DeltaOnModificationOfIntPackedMap.hxx", bycopy.} = object of TDF_DeltaOnModification 

  HandleTDataStdDeltaOnModificationOfIntPackedMap* = Handle[
      TDataStdDeltaOnModificationOfIntPackedMap]

  TDataStdDeltaOnModificationOfRealArray* {.
      importcpp: "TDataStd_DeltaOnModificationOfRealArray",
      header: "TDataStd_DeltaOnModificationOfRealArray.hxx", bycopy.} = object of TDF_DeltaOnModification 

  HandleTDataStdDeltaOnModificationOfRealArray* = Handle[
      TDataStdDeltaOnModificationOfRealArray]

  TDataStdExpression* {.importcpp: "TDataStd_Expression",
                       header: "TDataStd_Expression.hxx", bycopy.} = object of TDF_Attribute 

  HandleTDataStdExpression* = Handle[TDataStdExpression]

  TDataStdExtStringArray* {.importcpp: "TDataStd_ExtStringArray",
                           header: "TDataStd_ExtStringArray.hxx", bycopy.} = object of TDF_Attribute 

  HandleTDataStdExtStringArray* = Handle[TDataStdExtStringArray]

  TDataStdExtStringList* {.importcpp: "TDataStd_ExtStringList",
                          header: "TDataStd_ExtStringList.hxx", bycopy.} = object of TDF_Attribute 

  HandleTDataStdExtStringList* = Handle[TDataStdExtStringList]

  TDataStdGenericEmpty* {.importcpp: "TDataStd_GenericEmpty",
                         header: "TDataStd_GenericEmpty.hxx", bycopy.} = object of TDF_Attribute

  HandleTDataStdGenericEmpty* = Handle[TDataStdGenericEmpty]

  TDataStdDirectory* {.importcpp: "TDataStd_Directory",
                      header: "TDataStd_Directory.hxx", bycopy.} = object of TDataStdGenericEmpty 

  HandleTDataStdDirectory* = Handle[TDataStdDirectory]

  TDataStdGenericExtString* {.importcpp: "TDataStd_GenericExtString",
                             header: "TDataStd_GenericExtString.hxx", bycopy.} = object of TDF_Attribute 

  HandleTDataStdGenericExtString* = Handle[TDataStdGenericExtString]

  TDataStdComment* {.importcpp: "TDataStd_Comment", header: "TDataStd_Comment.hxx",
                    bycopy.} = object of TDataStdGenericExtString 

  HandleTDataStdComment* = Handle[TDataStdComment]

  TDataStdHDataMapOfStringByte* {.importcpp: "TDataStd_HDataMapOfStringByte",
                                 header: "TDataStd_HDataMapOfStringByte.hxx",
                                 bycopy.} = object of StandardTransient

  HandleTDataStdHDataMapOfStringByte* = Handle[TDataStdHDataMapOfStringByte]

  TDataStdHDataMapOfStringHArray1OfInteger* {.
      importcpp: "TDataStd_HDataMapOfStringHArray1OfInteger",
      header: "TDataStd_HDataMapOfStringHArray1OfInteger.hxx", bycopy.} = object of StandardTransient

  HandleTDataStdHDataMapOfStringHArray1OfInteger* = Handle[
      TDataStdHDataMapOfStringHArray1OfInteger]

  TDataStdHDataMapOfStringHArray1OfReal* {.
      importcpp: "TDataStd_HDataMapOfStringHArray1OfReal",
      header: "TDataStd_HDataMapOfStringHArray1OfReal.hxx", bycopy.} = object of StandardTransient

  HandleTDataStdHDataMapOfStringHArray1OfReal* = Handle[
      TDataStdHDataMapOfStringHArray1OfReal]

  TDataStdHDataMapOfStringInteger* {.importcpp: "TDataStd_HDataMapOfStringInteger", header: "TDataStd_HDataMapOfStringInteger.hxx",
                                    bycopy.} = object of StandardTransient

  HandleTDataStdHDataMapOfStringInteger* = Handle[TDataStdHDataMapOfStringInteger]

  TDataStdHDataMapOfStringReal* {.importcpp: "TDataStd_HDataMapOfStringReal",
                                 header: "TDataStd_HDataMapOfStringReal.hxx",
                                 bycopy.} = object of StandardTransient

  HandleTDataStdHDataMapOfStringReal* = Handle[TDataStdHDataMapOfStringReal]

  TDataStdHDataMapOfStringString* {.importcpp: "TDataStd_HDataMapOfStringString", header: "TDataStd_HDataMapOfStringString.hxx",
                                   bycopy.} = object of StandardTransient

  HandleTDataStdHDataMapOfStringString* = Handle[TDataStdHDataMapOfStringString]

  TDataStdInteger* {.importcpp: "TDataStd_Integer", header: "TDataStd_Integer.hxx",
                    bycopy.} = object of TDF_Attribute 

  HandleTDataStdInteger* = Handle[TDataStdInteger]

  TDataStdIntegerArray* {.importcpp: "TDataStd_IntegerArray",
                         header: "TDataStd_IntegerArray.hxx", bycopy.} = object of TDF_Attribute 

  HandleTDataStdIntegerArray* = Handle[TDataStdIntegerArray]

  TDataStdIntegerList* {.importcpp: "TDataStd_IntegerList",
                        header: "TDataStd_IntegerList.hxx", bycopy.} = object of TDF_Attribute 

  HandleTDataStdIntegerList* = Handle[TDataStdIntegerList]

  TDataStdIntPackedMap* {.importcpp: "TDataStd_IntPackedMap",
                         header: "TDataStd_IntPackedMap.hxx", bycopy.} = object of TDF_Attribute 

  HandleTDataStdIntPackedMap* = Handle[TDataStdIntPackedMap]

  TDataStdLabelArray1* = NCollectionArray1[TDF_Label]

  TDataStdHLabelArray1* {.importcpp: "TDataStd_HLabelArray1",
                         header: "TDataStd_HLabelArray1.hxx", bycopy.} = object of TDataStdLabelArray1

  TDataStdListOfByte* = NCollectionList[StandardByte]

#   TDataStdListIteratorOfListOfByte* = Iterator[StandardByte]

  TDataStdListOfExtendedString* = NCollectionList[TCollectionExtendedString]

#   TDataStdListIteratorOfListOfExtendedString* = Iterator[TCollectionExtendedString]

  TDataStdName* {.importcpp: "TDataStd_Name", header: "TDataStd_Name.hxx", bycopy.} = object of TDataStdGenericExtString 

  HandleTDataStdName* = Handle[TDataStdName]

  TDataStdNamedData* {.importcpp: "TDataStd_NamedData",
                      header: "TDataStd_NamedData.hxx", bycopy.} = object of TDF_Attribute 

  HandleTDataStdNamedData* = Handle[TDataStdNamedData]

  TDataStdNoteBook* {.importcpp: "TDataStd_NoteBook",
                     header: "TDataStd_NoteBook.hxx", bycopy.} = object of TDataStdGenericEmpty 

  HandleTDataStdNoteBook* = Handle[TDataStdNoteBook]

  TDataStdPtrTreeNode* = ptr TDataStdTreeNode

  TDataStdReal* {.importcpp: "TDataStd_Real", header: "TDataStd_Real.hxx", bycopy.} = object of TDF_Attribute 

  HandleTDataStdReal* = Handle[TDataStdReal]

  TDataStdRealArray* {.importcpp: "TDataStd_RealArray",
                      header: "TDataStd_RealArray.hxx", bycopy.} = object of TDF_Attribute 

  HandleTDataStdRealArray* = Handle[TDataStdRealArray]

  TDataStdRealEnum* {.size: sizeof(cint), importcpp: "TDataStd_RealEnum",
                     header: "TDataStd_RealEnum.hxx".} = enum
    TDataStdSCALAR, TDataStdLENGTH, TDataStdANGULAR

  TDataStdRealList* {.importcpp: "TDataStd_RealList",
                     header: "TDataStd_RealList.hxx", bycopy.} = object of TDF_Attribute 

  HandleTDataStdRealList* = Handle[TDataStdRealList]

  TDataStdReferenceArray* {.importcpp: "TDataStd_ReferenceArray",
                           header: "TDataStd_ReferenceArray.hxx", bycopy.} = object of TDF_Attribute 

  HandleTDataStdReferenceArray* = Handle[TDataStdReferenceArray]

  TDataStdReferenceList* {.importcpp: "TDataStd_ReferenceList",
                          header: "TDataStd_ReferenceList.hxx", bycopy.} = object of TDF_Attribute 

  HandleTDataStdReferenceList* = Handle[TDataStdReferenceList]

  TDataStdRelation* {.importcpp: "TDataStd_Relation",
                     header: "TDataStd_Relation.hxx", bycopy.} = object of TDataStdExpression 

  HandleTDataStdRelation* = Handle[TDataStdRelation]

  TDataStdTick* {.importcpp: "TDataStd_Tick", header: "TDataStd_Tick.hxx", bycopy.} = object of TDataStdGenericEmpty 

  HandleTDataStdTick* = Handle[TDataStdTick]

  TDataStdTreeNode* {.importcpp: "TDataStd_TreeNode",
                     header: "TDataStd_TreeNode.hxx", bycopy.} = object of TDF_Attribute 

  HandleTDataStdTreeNode* = Handle[TDataStdTreeNode]

  TDataStdUAttribute* {.importcpp: "TDataStd_UAttribute",
                       header: "TDataStd_UAttribute.hxx", bycopy.} = object of TDF_Attribute 

  HandleTDataStdUAttribute* = Handle[TDataStdUAttribute]

  TDataStdVariable* {.importcpp: "TDataStd_Variable",
                     header: "TDataStd_Variable.hxx", bycopy.} = object of TDF_Attribute 

  HandleTDataStdVariable* = Handle[TDataStdVariable]


