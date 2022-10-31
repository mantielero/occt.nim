import ../../tkernel/ncollection/ncollection_types
import ../../tkernel/standard/standard_types
type
  IFSelectEditValue* {.size: sizeof(cint), importcpp: "IFSelect_EditValue",
                      header: "IFSelect_EditValue.hxx".} = enum
    iFSelectOptional, iFSelectEditable, iFSelectEditProtected,
    iFSelectEditComputed, iFSelectEditRead, iFSelectEditDynamic

  IFSelectPrintCount* {.size: sizeof(cint), importcpp: "IFSelect_PrintCount",
                       header: "IFSelect_PrintCount.hxx".} = enum
    iFSelectItemsByEntity, iFSelectCountByItem, iFSelectShortByItem,
    iFSelectListByItem, iFSelectEntitiesByItem, iFSelectCountSummary,
    iFSelectGeneralInfo, iFSelectMapping, iFSelectResultCount

  IFSelectPrintFail* {.size: sizeof(cint), importcpp: "IFSelect_PrintFail",
                      header: "IFSelect_PrintFail.hxx".} = enum
    IFSelectFailOnly, IFSelectFailAndWarn

  IFSelectRemainMode* {.size: sizeof(cint), importcpp: "IFSelect_RemainMode",
                       header: "IFSelect_RemainMode.hxx".} = enum
    IFSelectRemainForget, IFSelectRemainCompute, IFSelectRemainDisplay,
    IFSelectRemainUndo

  IFSelectReturnStatus* {.size: sizeof(cint), importcpp: "IFSelect_ReturnStatus",
                         header: "IFSelect_ReturnStatus.hxx".} = enum
    IFSelectRetVoid, IFSelectRetDone, IFSelectRetError, IFSelectRetFail,
    IFSelectRetStop

  IFSelect* {.importcpp: "IFSelect", header: "IFSelect.hxx", bycopy.} = object 

  IFSelectContextModif* {.importcpp: "IFSelect_ContextModif",
                         header: "IFSelect_ContextModif.hxx", bycopy.} = object 

  IFSelectContextWrite* {.importcpp: "IFSelect_ContextWrite",
                         header: "IFSelect_ContextWrite.hxx", bycopy.} = object 

  IFSelectFunctions* {.importcpp: "IFSelect_Functions",
                      header: "IFSelect_Functions.hxx", bycopy.} = object 

  IFSelectSelectionIterator* {.importcpp: "IFSelect_SelectionIterator",
                              header: "IFSelect_SelectionIterator.hxx", bycopy.} = object 

  IFSelectSessionFile* {.importcpp: "IFSelect_SessionFile",
                        header: "IFSelect_SessionFile.hxx", bycopy.} = object 

  IFSelectShareOutResult* {.importcpp: "IFSelect_ShareOutResult",
                           header: "IFSelect_ShareOutResult.hxx", bycopy.} = object 

  IFSelectSequenceOfAppliedModifiers* = NCollectionSequence[
      Handle[IFSelectAppliedModifiers]]

  IFSelectSequenceOfGeneralModifier* = NCollectionSequence[
      Handle[IFSelectGeneralModifier]]

  IFSelectSequenceOfInterfaceModel* = NCollectionSequence[
      Handle[InterfaceInterfaceModel]]

  IFSelectTSeqOfDispatch* = NCollectionSequence[Handle[IFSelectDispatch]]

  IFSelectTSeqOfSelection* = NCollectionSequence[Handle[IFSelectSelection]]

  IFSelectActivator* {.importcpp: "IFSelect_Activator",
                      header: "IFSelect_Activator.hxx", bycopy.} = object of StandardTransient 

  IFSelectAct* {.importcpp: "IFSelect_Act", header: "IFSelect_Act.hxx", bycopy.} = object of IFSelectActivator 

  HandleIFSelectAct* = Handle[IFSelectAct]

  HandleIFSelectActivator* = Handle[IFSelectActivator]

  IFSelectAppliedModifiers* {.importcpp: "IFSelect_AppliedModifiers",
                             header: "IFSelect_AppliedModifiers.hxx", bycopy.} = object of StandardTransient 

  HandleIFSelectAppliedModifiers* = Handle[IFSelectAppliedModifiers]

  IFSelectDispatch* {.importcpp: "IFSelect_Dispatch",
                     header: "IFSelect_Dispatch.hxx", bycopy.} = object of StandardTransient 

  HandleIFSelectDispatch* = Handle[IFSelectDispatch]

  IFSelectDispGlobal* {.importcpp: "IFSelect_DispGlobal",
                       header: "IFSelect_DispGlobal.hxx", bycopy.} = object of IFSelectDispatch 

  HandleIFSelectDispGlobal* = Handle[IFSelectDispGlobal]

  IFSelectDispPerCount* {.importcpp: "IFSelect_DispPerCount",
                         header: "IFSelect_DispPerCount.hxx", bycopy.} = object of IFSelectDispatch 

  HandleIFSelectDispPerCount* = Handle[IFSelectDispPerCount]

  IFSelectDispPerFiles* {.importcpp: "IFSelect_DispPerFiles",
                         header: "IFSelect_DispPerFiles.hxx", bycopy.} = object of IFSelectDispatch 

  HandleIFSelectDispPerFiles* = Handle[IFSelectDispPerFiles]

  IFSelectDispPerOne* {.importcpp: "IFSelect_DispPerOne",
                       header: "IFSelect_DispPerOne.hxx", bycopy.} = object of IFSelectDispatch 

  HandleIFSelectDispPerOne* = Handle[IFSelectDispPerOne]

  IFSelectDispPerSignature* {.importcpp: "IFSelect_DispPerSignature",
                             header: "IFSelect_DispPerSignature.hxx", bycopy.} = object of IFSelectDispatch 

  HandleIFSelectDispPerSignature* = Handle[IFSelectDispPerSignature]

  IFSelectEditForm* {.importcpp: "IFSelect_EditForm",
                     header: "IFSelect_EditForm.hxx", bycopy.} = object of StandardTransient 

  HandleIFSelectEditForm* = Handle[IFSelectEditForm]

  IFSelectEditor* {.importcpp: "IFSelect_Editor", header: "IFSelect_Editor.hxx",
                   bycopy.} = object of StandardTransient 

  HandleIFSelectEditor* = Handle[IFSelectEditor]

  IFSelectGeneralModifier* {.importcpp: "IFSelect_GeneralModifier",
                            header: "IFSelect_GeneralModifier.hxx", bycopy.} = object of StandardTransient 

  HandleIFSelectGeneralModifier* = Handle[IFSelectGeneralModifier]

  IFSelectHSeqOfSelection* {.importcpp: "IFSelect_HSeqOfSelection",
                            header: "IFSelect_HSeqOfSelection.hxx", bycopy.} = object of IFSelectTSeqOfSelection

  IFSelectIntParam* {.importcpp: "IFSelect_IntParam",
                     header: "IFSelect_IntParam.hxx", bycopy.} = object of StandardTransient 

  HandleIFSelectIntParam* = Handle[IFSelectIntParam]

  IFSelectListEditor* {.importcpp: "IFSelect_ListEditor",
                       header: "IFSelect_ListEditor.hxx", bycopy.} = object of StandardTransient 

  HandleIFSelectListEditor* = Handle[IFSelectListEditor]

  IFSelectModelCopier* {.importcpp: "IFSelect_ModelCopier",
                        header: "IFSelect_ModelCopier.hxx", bycopy.} = object of StandardTransient 

  HandleIFSelectModelCopier* = Handle[IFSelectModelCopier]

  IFSelectModifier* {.importcpp: "IFSelect_Modifier",
                     header: "IFSelect_Modifier.hxx", bycopy.} = object of IFSelectGeneralModifier 

  IFSelectModifEditForm* {.importcpp: "IFSelect_ModifEditForm",
                          header: "IFSelect_ModifEditForm.hxx", bycopy.} = object of IFSelectModifier 

  HandleIFSelectModifEditForm* = Handle[IFSelectModifEditForm]

  HandleIFSelectModifier* = Handle[IFSelectModifier]

  IFSelectModifReorder* {.importcpp: "IFSelect_ModifReorder",
                         header: "IFSelect_ModifReorder.hxx", bycopy.} = object of IFSelectModifier 

  HandleIFSelectModifReorder* = Handle[IFSelectModifReorder]

  IFSelectPacketList* {.importcpp: "IFSelect_PacketList",
                       header: "IFSelect_PacketList.hxx", bycopy.} = object of StandardTransient 

  HandleIFSelectPacketList* = Handle[IFSelectPacketList]

  IFSelectParamEditor* {.importcpp: "IFSelect_ParamEditor",
                        header: "IFSelect_ParamEditor.hxx", bycopy.} = object of IFSelectEditor 

  HandleIFSelectParamEditor* = Handle[IFSelectParamEditor]

  IFSelectSelection* {.importcpp: "IFSelect_Selection",
                      header: "IFSelect_Selection.hxx", bycopy.} = object of StandardTransient 

  IFSelectSelectDeduct* {.importcpp: "IFSelect_SelectDeduct",
                         header: "IFSelect_SelectDeduct.hxx", bycopy.} = object of IFSelectSelection 

  IFSelectSelectExtract* {.importcpp: "IFSelect_SelectExtract",
                          header: "IFSelect_SelectExtract.hxx", bycopy.} = object of IFSelectSelectDeduct 

  IFSelectSelectFlag* {.importcpp: "IFSelect_SelectFlag",
                       header: "IFSelect_SelectFlag.hxx", bycopy.} = object of IFSelectSelectExtract 

  IFSelectSelectIncorrectEntities* {.importcpp: "IFSelect_SelectIncorrectEntities", header: "IFSelect_SelectIncorrectEntities.hxx",
                                    bycopy.} = object of IFSelectSelectFlag 

  HandleIFSelectSelectIncorrectEntities* = Handle[IFSelectSelectIncorrectEntities]

  HandleIFSelectSelectFlag* = Handle[IFSelectSelectFlag]

  HandleIFSelectSelectExtract* = Handle[IFSelectSelectExtract]

  IFSelectSelectAnyType* {.importcpp: "IFSelect_SelectAnyType",
                          header: "IFSelect_SelectAnyType.hxx", bycopy.} = object of IFSelectSelectExtract 

  HandleIFSelectSelectAnyType* = Handle[IFSelectSelectAnyType]

  IFSelectSelectErrorEntities* {.importcpp: "IFSelect_SelectErrorEntities",
                                header: "IFSelect_SelectErrorEntities.hxx", bycopy.} = object of IFSelectSelectExtract 

  HandleIFSelectSelectErrorEntities* = Handle[IFSelectSelectErrorEntities]

  IFSelectSelectExplore* {.importcpp: "IFSelect_SelectExplore",
                          header: "IFSelect_SelectExplore.hxx", bycopy.} = object of IFSelectSelectDeduct 

  HandleIFSelectSelectExplore* = Handle[IFSelectSelectExplore]

  HandleIFSelectSelectDeduct* = Handle[IFSelectSelectDeduct]

  IFSelectSelectAnyList* {.importcpp: "IFSelect_SelectAnyList",
                          header: "IFSelect_SelectAnyList.hxx", bycopy.} = object of IFSelectSelectDeduct 

  IFSelectSelectInList* {.importcpp: "IFSelect_SelectInList",
                         header: "IFSelect_SelectInList.hxx", bycopy.} = object of IFSelectSelectAnyList 

  HandleIFSelectSelectInList* = Handle[IFSelectSelectInList]

  HandleIFSelectSelectAnyList* = Handle[IFSelectSelectAnyList]

  IFSelectSelectControl* {.importcpp: "IFSelect_SelectControl",
                          header: "IFSelect_SelectControl.hxx", bycopy.} = object of IFSelectSelection 

  IFSelectSelectDiff* {.importcpp: "IFSelect_SelectDiff",
                       header: "IFSelect_SelectDiff.hxx", bycopy.} = object of IFSelectSelectControl 

  HandleIFSelectSelectDiff* = Handle[IFSelectSelectDiff]

  HandleIFSelectSelectControl* = Handle[IFSelectSelectControl]

  IFSelectSelectCombine* {.importcpp: "IFSelect_SelectCombine",
                          header: "IFSelect_SelectCombine.hxx", bycopy.} = object of IFSelectSelection 

  IFSelectSelectIntersection* {.importcpp: "IFSelect_SelectIntersection",
                               header: "IFSelect_SelectIntersection.hxx", bycopy.} = object of IFSelectSelectCombine 

  HandleIFSelectSelectIntersection* = Handle[IFSelectSelectIntersection]

  HandleIFSelectSelectCombine* = Handle[IFSelectSelectCombine]

  IFSelectSelectBase* {.importcpp: "IFSelect_SelectBase",
                       header: "IFSelect_SelectBase.hxx", bycopy.} = object of IFSelectSelection 

  IFSelectSelectEntityNumber* {.importcpp: "IFSelect_SelectEntityNumber",
                               header: "IFSelect_SelectEntityNumber.hxx", bycopy.} = object of IFSelectSelectBase 

  HandleIFSelectSelectEntityNumber* = Handle[IFSelectSelectEntityNumber]

  HandleIFSelectSelectBase* = Handle[IFSelectSelectBase]

  HandleIFSelectSelection* = Handle[IFSelectSelection]

  IFSelectSelectModelEntities* {.importcpp: "IFSelect_SelectModelEntities",
                                header: "IFSelect_SelectModelEntities.hxx", bycopy.} = object of IFSelectSelectBase 

  HandleIFSelectSelectModelEntities* = Handle[IFSelectSelectModelEntities]

  IFSelectSelectModelRoots* {.importcpp: "IFSelect_SelectModelRoots",
                             header: "IFSelect_SelectModelRoots.hxx", bycopy.} = object of IFSelectSelectBase 

  HandleIFSelectSelectModelRoots* = Handle[IFSelectSelectModelRoots]

  IFSelectSelectPointed* {.importcpp: "IFSelect_SelectPointed",
                          header: "IFSelect_SelectPointed.hxx", bycopy.} = object of IFSelectSelectBase 

  HandleIFSelectSelectPointed* = Handle[IFSelectSelectPointed]

  IFSelectSelectRange* {.importcpp: "IFSelect_SelectRange",
                        header: "IFSelect_SelectRange.hxx", bycopy.} = object of IFSelectSelectExtract 

  HandleIFSelectSelectRange* = Handle[IFSelectSelectRange]

  IFSelectSelectRootComps* {.importcpp: "IFSelect_SelectRootComps",
                            header: "IFSelect_SelectRootComps.hxx", bycopy.} = object of IFSelectSelectExtract 

  HandleIFSelectSelectRootComps* = Handle[IFSelectSelectRootComps]

  IFSelectSelectRoots* {.importcpp: "IFSelect_SelectRoots",
                        header: "IFSelect_SelectRoots.hxx", bycopy.} = object of IFSelectSelectExtract 

  HandleIFSelectSelectRoots* = Handle[IFSelectSelectRoots]

  IFSelectSelectSent* {.importcpp: "IFSelect_SelectSent",
                       header: "IFSelect_SelectSent.hxx", bycopy.} = object of IFSelectSelectExtract 

  HandleIFSelectSelectSent* = Handle[IFSelectSelectSent]

  IFSelectSelectShared* {.importcpp: "IFSelect_SelectShared",
                         header: "IFSelect_SelectShared.hxx", bycopy.} = object of IFSelectSelectDeduct 

  HandleIFSelectSelectShared* = Handle[IFSelectSelectShared]

  IFSelectSelectSharing* {.importcpp: "IFSelect_SelectSharing",
                          header: "IFSelect_SelectSharing.hxx", bycopy.} = object of IFSelectSelectDeduct 

  HandleIFSelectSelectSharing* = Handle[IFSelectSelectSharing]

  IFSelectSelectSignature* {.importcpp: "IFSelect_SelectSignature",
                            header: "IFSelect_SelectSignature.hxx", bycopy.} = object of IFSelectSelectExtract 

  HandleIFSelectSelectSignature* = Handle[IFSelectSelectSignature]

  IFSelectSelectSignedShared* {.importcpp: "IFSelect_SelectSignedShared",
                               header: "IFSelect_SelectSignedShared.hxx", bycopy.} = object of IFSelectSelectExplore 

  HandleIFSelectSelectSignedShared* = Handle[IFSelectSelectSignedShared]

  IFSelectSelectSignedSharing* {.importcpp: "IFSelect_SelectSignedSharing",
                                header: "IFSelect_SelectSignedSharing.hxx", bycopy.} = object of IFSelectSelectExplore 

  HandleIFSelectSelectSignedSharing* = Handle[IFSelectSelectSignedSharing]

  IFSelectSelectSuite* {.importcpp: "IFSelect_SelectSuite",
                        header: "IFSelect_SelectSuite.hxx", bycopy.} = object of IFSelectSelectDeduct 

  HandleIFSelectSelectSuite* = Handle[IFSelectSelectSuite]

  IFSelectSelectType* {.importcpp: "IFSelect_SelectType",
                       header: "IFSelect_SelectType.hxx", bycopy.} = object of IFSelectSelectAnyType 

  HandleIFSelectSelectType* = Handle[IFSelectSelectType]

  IFSelectSelectUnion* {.importcpp: "IFSelect_SelectUnion",
                        header: "IFSelect_SelectUnion.hxx", bycopy.} = object of IFSelectSelectCombine 

  HandleIFSelectSelectUnion* = Handle[IFSelectSelectUnion]

  IFSelectSelectUnknownEntities* {.importcpp: "IFSelect_SelectUnknownEntities",
                                  header: "IFSelect_SelectUnknownEntities.hxx",
                                  bycopy.} = object of IFSelectSelectExtract 

  HandleIFSelectSelectUnknownEntities* = Handle[IFSelectSelectUnknownEntities]

  IFSelectSessionDumper* {.importcpp: "IFSelect_SessionDumper",
                          header: "IFSelect_SessionDumper.hxx", bycopy.} = object of StandardTransient 

  IFSelectBasicDumper* {.importcpp: "IFSelect_BasicDumper",
                        header: "IFSelect_BasicDumper.hxx", bycopy.} = object of IFSelectSessionDumper 

  HandleIFSelectBasicDumper* = Handle[IFSelectBasicDumper]

  HandleIFSelectSessionDumper* = Handle[IFSelectSessionDumper]

  IFSelectSessionPilot* {.importcpp: "IFSelect_SessionPilot",
                         header: "IFSelect_SessionPilot.hxx", bycopy.} = object of IFSelectActivator 

  HandleIFSelectSessionPilot* = Handle[IFSelectSessionPilot]

  IFSelectActFunc* = proc (a1: Handle[IFSelectSessionPilot]): IFSelectReturnStatus {.
      cdecl.}

  IFSelectShareOut* {.importcpp: "IFSelect_ShareOut",
                     header: "IFSelect_ShareOut.hxx", bycopy.} = object of StandardTransient 

  HandleIFSelectShareOut* = Handle[IFSelectShareOut]

  IFSelectSignature* {.importcpp: "IFSelect_Signature",
                      header: "IFSelect_Signature.hxx", bycopy.} = object of InterfaceSignType 

  HandleIFSelectSignature* = Handle[IFSelectSignature]

  IFSelectSignatureList* {.importcpp: "IFSelect_SignatureList",
                          header: "IFSelect_SignatureList.hxx", bycopy.} = object of StandardTransient 

  IFSelectCheckCounter* {.importcpp: "IFSelect_CheckCounter",
                         header: "IFSelect_CheckCounter.hxx", bycopy.} = object of IFSelectSignatureList 

  HandleIFSelectCheckCounter* = Handle[IFSelectCheckCounter]

  HandleIFSelectSignatureList* = Handle[IFSelectSignatureList]

  IFSelectSignCategory* {.importcpp: "IFSelect_SignCategory",
                         header: "IFSelect_SignCategory.hxx", bycopy.} = object of IFSelectSignature 

  HandleIFSelectSignCategory* = Handle[IFSelectSignCategory]

  IFSelectSignCounter* {.importcpp: "IFSelect_SignCounter",
                        header: "IFSelect_SignCounter.hxx", bycopy.} = object of IFSelectSignatureList 

  IFSelectGraphCounter* {.importcpp: "IFSelect_GraphCounter",
                         header: "IFSelect_GraphCounter.hxx", bycopy.} = object of IFSelectSignCounter 

  HandleIFSelectGraphCounter* = Handle[IFSelectGraphCounter]

  HandleIFSelectSignCounter* = Handle[IFSelectSignCounter]

  IFSelectSignMultiple* {.importcpp: "IFSelect_SignMultiple",
                         header: "IFSelect_SignMultiple.hxx", bycopy.} = object of IFSelectSignature 

  HandleIFSelectSignMultiple* = Handle[IFSelectSignMultiple]

  IFSelectSignType* {.importcpp: "IFSelect_SignType",
                     header: "IFSelect_SignType.hxx", bycopy.} = object of IFSelectSignature 

  IFSelectSignAncestor* {.importcpp: "IFSelect_SignAncestor",
                         header: "IFSelect_SignAncestor.hxx", bycopy.} = object of IFSelectSignType

  HandleIFSelectSignAncestor* = Handle[IFSelectSignAncestor]

  HandleIFSelectSignType* = Handle[IFSelectSignType]

  IFSelectSignValidity* {.importcpp: "IFSelect_SignValidity",
                         header: "IFSelect_SignValidity.hxx", bycopy.} = object of IFSelectSignature 

  HandleIFSelectSignValidity* = Handle[IFSelectSignValidity]

  IFSelectTransformer* {.importcpp: "IFSelect_Transformer",
                        header: "IFSelect_Transformer.hxx", bycopy.} = object of StandardTransient 

  HandleIFSelectTransformer* = Handle[IFSelectTransformer]

  IFSelectTransformStandard* {.importcpp: "IFSelect_TransformStandard",
                              header: "IFSelect_TransformStandard.hxx", bycopy.} = object of IFSelectTransformer 

  HandleIFSelectTransformStandard* = Handle[IFSelectTransformStandard]

  IFSelectWorkLibrary* {.importcpp: "IFSelect_WorkLibrary",
                        header: "IFSelect_WorkLibrary.hxx", bycopy.} = object of StandardTransient 
                        header: "IFSelect_WorkLibrary.hxx", bycopy.} = object of StandardTransient 

  HandleIFSelectWorkLibrary* = Handle[IFSelectWorkLibrary]

                        header: "IFSelect_WorkLibrary.hxx", bycopy.} = object of StandardTransient 
  IFSelectWorkSession* {.importcpp: "IFSelect_WorkSession",
                        header: "IFSelect_WorkSession.hxx", bycopy.} = object of StandardTransient 

  HandleIFSelectWorkSession* = Handle[IFSelectWorkSession]

