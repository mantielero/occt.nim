import ../cdf/cdf_types
import ../standard/standard_types
import ../tdf/tdf_types
import ../cdm/cdm_types
import ../ncollection/ncollection_types


type
  TDocStd* {.importcpp: "TDocStd", header: "TDocStd.hxx", bycopy.} = object 

  TDocStdApplication* {.importcpp: "TDocStd_Application",
                       header: "TDocStd_Application.hxx", bycopy.} = object of CDF_Application 

  HandleTDocStdApplication* = Handle[TDocStdApplication]

  TDocStdApplicationDelta* {.importcpp: "TDocStd_ApplicationDelta",
                            header: "TDocStd_ApplicationDelta.hxx", bycopy.} = object of StandardTransient

  HandleTDocStdApplicationDelta* = Handle[TDocStdApplicationDelta]

  TDocStdCompoundDelta* {.importcpp: "TDocStd_CompoundDelta",
                         header: "TDocStd_CompoundDelta.hxx", bycopy.} = object of TDF_Delta 

  HandleTDocStdCompoundDelta* = Handle[TDocStdCompoundDelta]

  TDocStdContext* {.importcpp: "TDocStd_Context", header: "TDocStd_Context.hxx",
                   bycopy.} = object

  TDocStdDocument* {.importcpp: "TDocStd_Document", header: "TDocStd_Document.hxx",
                    bycopy.} = object of CDM_Document 

  HandleTDocStdDocument* = Handle[TDocStdDocument]

  TDocStdFormatVersion* {.size: sizeof(cint), importcpp: "TDocStd_FormatVersion",
                         header: "TDocStd_FormatVersion.hxx".} = enum
    tDocStdFormatVersionVERSION_2 = 2, 
    tDocStdFormatVersionVERSION_3, 
    tDocStdFormatVersionVERSION_4, 
    tDocStdFormatVersionVERSION_5, 
    tDocStdFormatVersionVERSION_6, 
    tDocStdFormatVersionVERSION_7, 
    tDocStdFormatVersionVERSION_8, 
    tDocStdFormatVersionVERSION_9, 
    tDocStdFormatVersionVERSION_10, 
    tDocStdFormatVersionVERSION_11, 
    tDocStdFormatVersionVERSION_12


  TDocStdLabelIDMapDataMap* = NCollectionDataMap[TDF_Label, TDF_IDMap,
      TDF_LabelMapHasher]

  TDocStdDataMapIteratorOfLabelIDMapDataMap* = NCollectionDataMapIterator[TDF_Label, TDF_IDMap,
      TDF_LabelMapHasher]

  TDocStdModified* {.importcpp: "TDocStd_Modified", header: "TDocStd_Modified.hxx",
                    bycopy.} = object of TDF_Attribute 

  HandleTDocStdModified* = Handle[TDocStdModified]

  TDocStdMultiTransactionManager* {.importcpp: "TDocStd_MultiTransactionManager", header: "TDocStd_MultiTransactionManager.hxx",
                                   bycopy.} = object of StandardTransient 

  HandleTDocStdMultiTransactionManager* = Handle[TDocStdMultiTransactionManager]

  TDocStdOwner* {.importcpp: "TDocStd_Owner", header: "TDocStd_Owner.hxx", bycopy.} = object of TDF_Attribute 

  HandleTDocStdOwner* = Handle[TDocStdOwner]

  TDocStdPathParser* {.importcpp: "TDocStd_PathParser",
                      header: "TDocStd_PathParser.hxx", bycopy.} = object

  TDocStdSequenceOfApplicationDelta* = NCollectionSequence[
      Handle[TDocStdApplicationDelta]]

  TDocStdSequenceOfDocument* = NCollectionSequence[Handle[TDocStdDocument]]

  TDocStdXLink* {.importcpp: "TDocStd_XLink", header: "TDocStd_XLink.hxx", bycopy.} = object of TDF_Attribute 

  HandleTDocStdXLink* = Handle[TDocStdXLink]

  TDocStdXLinkIterator* {.importcpp: "TDocStd_XLinkIterator",
                         header: "TDocStd_XLinkIterator.hxx", bycopy.} = object 

  TDocStdXLinkPtr* = ptr TDocStdXLink

  TDocStdXLinkRoot* {.importcpp: "TDocStd_XLinkRoot",
                     header: "TDocStd_XLinkRoot.hxx", bycopy.} = object of TDF_Attribute 

  HandleTDocStdXLinkRoot* = Handle[TDocStdXLinkRoot]

  TDocStdXLinkTool* {.importcpp: "TDocStd_XLinkTool",
                     header: "TDocStd_XLinkTool.hxx", bycopy.} = object

const
    TDocStdFormatVersionCURRENT* = tDocStdFormatVersionVERSION_12

const
  tDocStdFormatVersionLOWER* = tDocStdFormatVersionVERSION_2
  tDocStdFormatVersionUPPER* = tDocStdFormatVersionVERSION_12