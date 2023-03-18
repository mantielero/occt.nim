import ../standard/standard_types
import ../ncollection/ncollection_types
import ../tcollection/tcollection_types
import ../tcolstd/tcolstd_types

type
  TColStdIndexedDataMapOfTransientTransient* = object # FIXME

type
  Tdf* {.importcpp: "TDF", header: "TDF.hxx", bycopy.} = object 

  TDF_Attribute* {.importcpp: "TDF_Attribute", header: "TDF_Attribute.hxx", bycopy.} = object of StandardTransient 

  HandleTDF_Attribute* = Handle[TDF_Attribute]

  TDF_AttributeArray1* = NCollectionArray1[Handle[TDF_Attribute]]

  TDF_AttributeDataMap* = NCollectionDataMap[Handle[TDF_Attribute],
      Handle[TDF_Attribute], TColStdMapTransientHasher]

#   TDF_DataMapIteratorOfAttributeDataMap* = Iterator[Handle[TDF_Attribute],
#       Handle[TDF_Attribute], TColStdMapTransientHasher]

  TDF_AttributeDelta* {.importcpp: "TDF_AttributeDelta",
                       header: "TDF_AttributeDelta.hxx", bycopy.} = object of StandardTransient 

  HandleTDF_AttributeDelta* = Handle[TDF_AttributeDelta]

  TDF_AttributeDeltaList* = NCollectionList[Handle[TDF_AttributeDelta]]

  TDF_ListIteratorOfAttributeDeltaList* = NCollectionListIterator[Handle[TDF_AttributeDelta]]

  TDF_AttributeDoubleMap* = NCollectionDoubleMap[Handle[TDF_Attribute],
      Handle[TDF_Attribute], TColStdMapTransientHasher, TColStdMapTransientHasher]

#   TDF_DoubleMapIteratorOfAttributeDoubleMap* = Iterator[Handle[TDF_Attribute],
#       Handle[TDF_Attribute], TColStdMapTransientHasher, TColStdMapTransientHasher]

  TDF_AttributeIndexedMap* = NCollectionIndexedMap[Handle[TDF_Attribute],
      TColStdMapTransientHasher]

#   TDF_AttributeIterator* {.importcpp: "TDF_AttributeIterator",
#                           header: "TDF_AttributeIterator.hxx", bycopy.} = object 

  TDF_AttributeList* = NCollectionList[Handle[TDF_Attribute]]

#   TDF_ListIteratorOfAttributeList* = Iterator[Handle[TDF_Attribute]]

  TDF_AttributeMap* = NCollectionMap[Handle[TDF_Attribute],
                                   TColStdMapTransientHasher]

#   TDF_MapIteratorOfAttributeMap* = Iterator[Handle[TDF_Attribute],
#       TColStdMapTransientHasher]

  TDF_AttributeSequence* = NCollectionSequence[Handle[TDF_Attribute]]

#   TDF_ChildIDIterator* {.importcpp: "TDF_ChildIDIterator",
#                         header: "TDF_ChildIDIterator.hxx", bycopy.} = object 

#   TDF_ChildIterator* {.importcpp: "TDF_ChildIterator",
#                       header: "TDF_ChildIterator.hxx", bycopy.} = object 

  TDF_ClosureMode* {.importcpp: "TDF_ClosureMode", header: "TDF_ClosureMode.hxx",
                    bycopy.} = object 

  TDF_ClosureTool* {.importcpp: "TDF_ClosureTool", header: "TDF_ClosureTool.hxx",
                    bycopy.} = object 

  TDF_ComparisonTool* {.importcpp: "TDF_ComparisonTool",
                       header: "TDF_ComparisonTool.hxx", bycopy.} = object 

  TDF_CopyLabel* {.importcpp: "TDF_CopyLabel", header: "TDF_CopyLabel.hxx", bycopy.} = object 

  TDF_CopyTool* {.importcpp: "TDF_CopyTool", header: "TDF_CopyTool.hxx", bycopy.} = object 

  TDF_Data* {.importcpp: "TDF_Data", header: "TDF_Data.hxx", bycopy.} = object of StandardTransient 

  HandleTDF_Data* = Handle[TDF_Data]

  TDF_DataSet* {.importcpp: "TDF_DataSet", header: "TDF_DataSet.hxx", bycopy.} = object of StandardTransient 

  HandleTDF_DataSet* = Handle[TDF_DataSet]

  TDF_Delta* {.importcpp: "TDF_Delta", header: "TDF_Delta.hxx", bycopy.} = object of StandardTransient 

  HandleTDF_Delta* = Handle[TDF_Delta]

  TDF_DeltaList* = NCollectionList[Handle[TDF_Delta]]

#   TDF_ListIteratorOfDeltaList* = Iterator[Handle[TDF_Delta]]

  TDF_DeltaOnAddition* {.importcpp: "TDF_DeltaOnAddition",
                        header: "TDF_DeltaOnAddition.hxx", bycopy.} = object of TDF_AttributeDelta 

  HandleTDF_DeltaOnAddition* = Handle[TDF_DeltaOnAddition]

  TDF_DeltaOnForget* {.importcpp: "TDF_DeltaOnForget",
                      header: "TDF_DeltaOnForget.hxx", bycopy.} = object of TDF_AttributeDelta 

  HandleTDF_DeltaOnForget* = Handle[TDF_DeltaOnForget]

  TDF_DeltaOnModification* {.importcpp: "TDF_DeltaOnModification",
                            header: "TDF_DeltaOnModification.hxx", bycopy.} = object of TDF_AttributeDelta 

  HandleTDF_DeltaOnModification* = Handle[TDF_DeltaOnModification]

  TDF_DefaultDeltaOnModification* {.importcpp: "TDF_DefaultDeltaOnModification", header: "TDF_DefaultDeltaOnModification.hxx",
                                   bycopy.} = object of TDF_DeltaOnModification 

  HandleTDF_DefaultDeltaOnModification* = Handle[TDF_DefaultDeltaOnModification]

  TDF_DeltaOnRemoval* {.importcpp: "TDF_DeltaOnRemoval",
                       header: "TDF_DeltaOnRemoval.hxx", bycopy.} = object of TDF_AttributeDelta 

  HandleTDF_DeltaOnRemoval* = Handle[TDF_DeltaOnRemoval]

  TDF_DefaultDeltaOnRemoval* {.importcpp: "TDF_DefaultDeltaOnRemoval",
                              header: "TDF_DefaultDeltaOnRemoval.hxx", bycopy.} = object of TDF_DeltaOnRemoval 

  HandleTDF_DefaultDeltaOnRemoval* = Handle[TDF_DefaultDeltaOnRemoval]

  TDF_DeltaOnResume* {.importcpp: "TDF_DeltaOnResume",
                      header: "TDF_DeltaOnResume.hxx", bycopy.} = object of TDF_AttributeDelta 

  HandleTDF_DeltaOnResume* = Handle[TDF_DeltaOnResume]

  TDF_DerivedAttribute* {.importcpp: "TDF_DerivedAttribute",
                         header: "TDF_DerivedAttribute.hxx", bycopy.} = object 

  TDF_DerivedAttributeNewDerived* = proc (): Handle[TDF_Attribute] {.cdecl.}

  TDF_GUIDProgIDMap* = NCollectionDoubleMap[StandardGUID,
      TCollectionExtendedString, StandardGUID, TCollectionExtendedString]

#   TDF_DoubleMapIteratorOfGUIDProgIDMap* = Iterator[StandardGUID,
#       TCollectionExtendedString, StandardGUID, TCollectionExtendedString]

  TDF_HAllocator* = Handle[NCollectionBaseAllocator]

  TDF_HAttributeArray1* {.importcpp: "TDF_HAttributeArray1",
                         header: "TDF_HAttributeArray1.hxx", bycopy.} = object of TDF_AttributeArray1

  TDF_IDFilter* {.importcpp: "TDF_IDFilter", header: "TDF_IDFilter.hxx", bycopy.} = object 

  TDF_IDList* = NCollectionList[StandardGUID]

#   TDF_ListIteratorOfIDList* = Iterator[StandardGUID]

  TDF_IDMap* = NCollectionMap[StandardGUID, StandardGUID]

#   TDF_MapIteratorOfIDMap* = Iterator[StandardGUID, StandardGUID]

  TDF_Label* {.importcpp: "TDF_Label", header: "TDF_Label.hxx", bycopy.} = object 

  TDF_LabelList* = NCollectionList[TDF_Label]

#   TDF_ListIteratorOfLabelList* = Iterator[TDF_Label]

  TDF_LabelMapHasher* {.importcpp: "TDF_LabelMapHasher",
                       header: "TDF_LabelMapHasher.hxx", bycopy.} = object 

#   TDF_MapIteratorOfLabelMap* = Iterator[TDF_Label, TDF_LabelMapHasher]

  TDF_LabelMap* = NCollectionMap[TDF_Label, TDF_LabelMapHasher]

#   TDF_DataMapIteratorOfLabelIntegerMap* = Iterator[TDF_Label, cint,
#       TDF_LabelMapHasher]

  TDF_LabelIntegerMap* = NCollectionDataMap[TDF_Label, cint, TDF_LabelMapHasher]

  TDF_LabelIndexedMap* = NCollectionIndexedMap[TDF_Label, TDF_LabelMapHasher]

#   TDF_DoubleMapIteratorOfLabelDoubleMap* = Iterator[TDF_Label, TDF_Label,
#       TDF_LabelMapHasher, TDF_LabelMapHasher]

  TDF_LabelDoubleMap* = NCollectionDoubleMap[TDF_Label, TDF_Label,
      TDF_LabelMapHasher, TDF_LabelMapHasher]

#   TDF_DataMapIteratorOfLabelDataMap* = Iterator[TDF_Label, TDF_Label,
#       TDF_LabelMapHasher]

  TDF_LabelDataMap* = NCollectionDataMap[TDF_Label, TDF_Label, TDF_LabelMapHasher]

  TDF_LabelNode* {.importcpp: "TDF_LabelNode", header: "TDF_LabelNode.hxx", bycopy.} = object 
    when defined(OCCT_DEBUG):
      discard

  TDF_LabelNodePtr* = ptr TDF_LabelNode

  TDF_LabelSequence* = NCollectionSequence[TDF_Label]

  TDF_Reference* {.importcpp: "TDF_Reference", header: "TDF_Reference.hxx", bycopy.} = object of TDF_Attribute

  HandleTDF_Reference* = Handle[TDF_Reference]

  TDF_RelocationTable* {.importcpp: "TDF_RelocationTable",
                        header: "TDF_RelocationTable.hxx", bycopy.} = object of StandardTransient 

  HandleTDF_RelocationTable* = Handle[TDF_RelocationTable]

  TDF_TagSource* {.importcpp: "TDF_TagSource", header: "TDF_TagSource.hxx", bycopy.} = object of TDF_Attribute 

  HandleTDF_TagSource* = Handle[TDF_TagSource]

  TDF_Tool* {.importcpp: "TDF_Tool", header: "TDF_Tool.hxx", bycopy.} = object 

  TDF_Transaction* {.importcpp: "TDF_Transaction", header: "TDF_Transaction.hxx",
                    bycopy.} = object 


