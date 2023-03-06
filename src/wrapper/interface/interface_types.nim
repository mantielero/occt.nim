import ../tcollection/tcollection_types
import ../ncollection/ncollection_types
import ../standard/standard_types
type
  InterfaceArray1OfHAsciiString* = NCollectionArray1[
      Handle[TCollectionHAsciiString]]

  InterfaceBitMap* {.importcpp: "Interface_BitMap", header: "Interface_BitMap.hxx",
                    bycopy.} = object 

  InterfaceCategory* {.importcpp: "Interface_Category",
                      header: "Interface_Category.hxx", bycopy.} = object 

  InterfaceCheck* {.importcpp: "Interface_Check", header: "Interface_Check.hxx",
                   bycopy.} = object of StandardTransient 

  HandleInterfaceCheck* = Handle[InterfaceCheck]

  InterfaceCheckIterator* {.importcpp: "Interface_CheckIterator",
                           header: "Interface_CheckIterator.hxx", bycopy.} = object 

  InterfaceCheckStatus* {.size: sizeof(cint), importcpp: "Interface_CheckStatus",
                         header: "Interface_CheckStatus.hxx".} = enum
    InterfaceCheckOK, InterfaceCheckWarning, InterfaceCheckFail, InterfaceCheckAny,
    InterfaceCheckMessage, InterfaceCheckNoFail

  InterfaceCheckTool* {.importcpp: "Interface_CheckTool",
                       header: "Interface_CheckTool.hxx", bycopy.} = object 

  InterfaceCopyControl* {.importcpp: "Interface_CopyControl",
                         header: "Interface_CopyControl.hxx", bycopy.} = object of StandardTransient 

  HandleInterfaceCopyControl* = Handle[InterfaceCopyControl]

  InterfaceCopyMap* {.importcpp: "Interface_CopyMap",
                     header: "Interface_CopyMap.hxx", bycopy.} = object of InterfaceCopyControl 

  HandleInterfaceCopyMap* = Handle[InterfaceCopyMap]

  InterfaceCopyTool* {.importcpp: "Interface_CopyTool",
                      header: "Interface_CopyTool.hxx", bycopy.} = object of RootObj 

  InterfaceDataState* {.size: sizeof(cint), importcpp: "Interface_DataState",
                       header: "Interface_DataState.hxx".} = enum
    InterfaceStateOK, InterfaceLoadWarning, InterfaceLoadFail,
    InterfaceDataWarning, InterfaceDataFail, InterfaceStateUnloaded,
    InterfaceStateUnknown

  InterfaceEntityCluster* {.importcpp: "Interface_EntityCluster",
                           header: "Interface_EntityCluster.hxx", bycopy.} = object of StandardTransient 

  HandleInterfaceEntityCluster* = Handle[InterfaceEntityCluster]

  InterfaceEntityIterator* {.importcpp: "Interface_EntityIterator",
                            header: "Interface_EntityIterator.hxx", bycopy.} = object of RootObj 

  InterfaceEntityList* {.importcpp: "Interface_EntityList",
                        header: "Interface_EntityList.hxx", bycopy.} = object 

  InterfaceFileParameter* {.importcpp: "Interface_FileParameter",
                           header: "Interface_FileParameter.hxx", bycopy.} = object

  InterfaceArray1OfFileParameter* = NCollectionArray1[InterfaceFileParameter]

  InterfaceFileReaderData* {.importcpp: "Interface_FileReaderData",
                            header: "Interface_FileReaderData.hxx", bycopy.} = object of StandardTransient 

  HandleInterfaceFileReaderData* = Handle[InterfaceFileReaderData]

  InterfaceFileReaderTool* {.importcpp: "Interface_FileReaderTool",
                            header: "Interface_FileReaderTool.hxx", bycopy.} = object 

  InterfaceFloatWriter* {.importcpp: "Interface_FloatWriter",
                         header: "Interface_FloatWriter.hxx", bycopy.} = object 

  InterfaceGeneralLib* {.importcpp: "Interface_GeneralLib",
                        header: "Interface_GeneralLib.hxx", bycopy.} = object 

  InterfaceGeneralModule* {.importcpp: "Interface_GeneralModule",
                           header: "Interface_GeneralModule.hxx", bycopy.} = object of StandardTransient 

  HandleInterfaceGeneralModule* = Handle[InterfaceGeneralModule]

  InterfaceGlobalNodeOfGeneralLib* {.importcpp: "Interface_GlobalNodeOfGeneralLib", header: "Interface_GlobalNodeOfGeneralLib.hxx",
                                    bycopy.} = object of StandardTransient 

  HandleInterfaceGlobalNodeOfGeneralLib* = Handle[InterfaceGlobalNodeOfGeneralLib]

  InterfaceGlobalNodeOfGeneralLibbaseType* = StandardTransient

  InterfaceGlobalNodeOfReaderLib* {.importcpp: "Interface_GlobalNodeOfReaderLib", header: "Interface_GlobalNodeOfReaderLib.hxx",
                                   bycopy.} = object of StandardTransient 

  HandleInterfaceGlobalNodeOfReaderLib* = Handle[InterfaceGlobalNodeOfReaderLib]

  InterfaceGlobalNodeOfReaderLibbaseType* = StandardTransient

  InterfaceGraph* {.importcpp: "Interface_Graph", header: "Interface_Graph.hxx",
                   bycopy.} = object 

  InterfaceGraphContent* {.importcpp: "Interface_GraphContent",
                          header: "Interface_GraphContent.hxx", bycopy.} = object of InterfaceEntityIterator 

  InterfaceGTool* {.importcpp: "Interface_GTool", header: "Interface_GTool.hxx",
                   bycopy.} = object of StandardTransient 

  HandleInterfaceGTool* = Handle[InterfaceGTool]

  InterfaceHArray1OfHAsciiString* {.importcpp: "Interface_HArray1OfHAsciiString", header: "Interface_HArray1OfHAsciiString.hxx",
                                   bycopy.} = object of InterfaceArray1OfHAsciiString

  InterfaceHGraph* {.importcpp: "Interface_HGraph", header: "Interface_HGraph.hxx",
                    bycopy.} = object of StandardTransient 

  HandleInterfaceHGraph* = Handle[InterfaceHGraph]

  InterfaceInterfaceModel* {.importcpp: "Interface_InterfaceModel",
                            header: "Interface_InterfaceModel.hxx", bycopy.} = object of StandardTransient 

  HandleInterfaceInterfaceModel* = Handle[InterfaceInterfaceModel]

  InterfaceIntList* {.importcpp: "Interface_IntList",
                     header: "Interface_IntList.hxx", bycopy.} = object 

  InterfaceIntVal* {.importcpp: "Interface_IntVal", header: "Interface_IntVal.hxx",
                    bycopy.} = object of StandardTransient

  HandleInterfaceIntVal* = Handle[InterfaceIntVal]

  InterfaceLineBuffer* {.importcpp: "Interface_LineBuffer",
                        header: "Interface_LineBuffer.hxx", bycopy.} = object 

  InterfaceMapAsciiStringHasher* {.importcpp: "Interface_MapAsciiStringHasher",
                                  header: "Interface_MapAsciiStringHasher.hxx",
                                  bycopy.} = object 

  InterfaceIndexedMapOfAsciiString* = NCollectionIndexedMap[
      TCollectionAsciiString, InterfaceMapAsciiStringHasher]

  InterfaceMSG* {.importcpp: "Interface_MSG", header: "Interface_MSG.hxx", bycopy.} = object 

  InterfaceNodeOfGeneralLib* {.importcpp: "Interface_NodeOfGeneralLib",
                              header: "Interface_NodeOfGeneralLib.hxx", bycopy.} = object of StandardTransient 

  HandleInterfaceNodeOfGeneralLib* = Handle[InterfaceNodeOfGeneralLib]

  InterfaceNodeOfGeneralLibbaseType* = StandardTransient

  InterfaceNodeOfReaderLib* {.importcpp: "Interface_NodeOfReaderLib",
                             header: "Interface_NodeOfReaderLib.hxx", bycopy.} = object of StandardTransient 

  HandleInterfaceNodeOfReaderLib* = Handle[InterfaceNodeOfReaderLib]

  InterfaceNodeOfReaderLibbaseType* = StandardTransient

  InterfaceParamList* {.importcpp: "Interface_ParamList",
                       header: "Interface_ParamList.hxx", bycopy.} = object of StandardTransient 

  HandleInterfaceParamList* = Handle[InterfaceParamList]

  InterfaceParamSet* {.importcpp: "Interface_ParamSet",
                      header: "Interface_ParamSet.hxx", bycopy.} = object of StandardTransient 

  HandleInterfaceParamSet* = Handle[InterfaceParamSet]

  InterfaceParamType* {.size: sizeof(cint), importcpp: "Interface_ParamType",
                       header: "Interface_ParamType.hxx".} = enum
    interfaceParamMisc, interfaceParamInteger, interfaceParamReal,
    interfaceParamIdent, interfaceParamVoid, interfaceParamText,
    interfaceParamEnum, interfaceParamLogical, interfaceParamSub,
    interfaceParamHexa, interfaceParamBinary

  InterfaceProtocol* {.importcpp: "Interface_Protocol",
                      header: "Interface_Protocol.hxx", bycopy.} = object of StandardTransient 

  HandleInterfaceProtocol* = Handle[InterfaceProtocol]

  InterfaceReaderLib* {.importcpp: "Interface_ReaderLib",
                       header: "Interface_ReaderLib.hxx", bycopy.} = object 

  InterfaceReaderModule* {.importcpp: "Interface_ReaderModule",
                          header: "Interface_ReaderModule.hxx", bycopy.} = object of StandardTransient 

  HandleInterfaceReaderModule* = Handle[InterfaceReaderModule]

  InterfaceReportEntity* {.importcpp: "Interface_ReportEntity",
                          header: "Interface_ReportEntity.hxx", bycopy.} = object of StandardTransient 

  HandleInterfaceReportEntity* = Handle[InterfaceReportEntity]

  InterfaceSequenceOfCheck* = NCollectionSequence[Handle[InterfaceCheck]]

  InterfaceHSequenceOfCheck* {.importcpp: "Interface_HSequenceOfCheck",
                              header: "Interface_HSequenceOfCheck.hxx", bycopy.} = object of InterfaceSequenceOfCheck

  HandleInterfaceHSequenceOfCheck* = Handle[InterfaceHSequenceOfCheck]

  InterfaceShareFlags* {.importcpp: "Interface_ShareFlags",
                        header: "Interface_ShareFlags.hxx", bycopy.} = object 

  InterfaceShareTool* {.importcpp: "Interface_ShareTool",
                       header: "Interface_ShareTool.hxx", bycopy.} = object 

  InterfaceSignLabel* {.importcpp: "Interface_SignLabel",
                       header: "Interface_SignLabel.hxx", bycopy.} = object of RootObj

  HandleInterfaceSignLabel* = Handle[InterfaceSignLabel]

  InterfaceSignType* {.importcpp: "Interface_SignType",
                      header: "Interface_SignType.hxx", bycopy.} = object of RootObj 

  HandleInterfaceSignType* = Handle[InterfaceSignType]

  InterfaceSTAT* {.importcpp: "Interface_STAT", header: "Interface_STAT.hxx", bycopy.} = object 

  InterfaceStaticSatisfies* = proc (val: Handle[TCollectionHAsciiString]): bool {.
      cdecl.}

  InterfaceTypedValue* {.importcpp: "Interface_TypedValue",
                        header: "Interface_TypedValue.hxx", bycopy.} = object of RootObj 

  HandleInterfaceTypedValue* = Handle[InterfaceTypedValue]

  InterfaceStatic* {.importcpp: "Interface_Static", header: "Interface_Static.hxx",
                    bycopy.} = object of InterfaceTypedValue 

  HandleInterfaceStatic* = Handle[InterfaceStatic]

  InterfaceUndefinedContent* {.importcpp: "Interface_UndefinedContent",
                              header: "Interface_UndefinedContent.hxx", bycopy.} = object of StandardTransient 

  HandleInterfaceUndefinedContent* = Handle[InterfaceUndefinedContent]

  InterfaceValueInterpret* = proc (typval: Handle[InterfaceTypedValue];
                                val: Handle[TCollectionHAsciiString]; native: bool): Handle[
      TCollectionHAsciiString] {.cdecl.}

  InterfaceValueSatisfies* = proc (val: Handle[TCollectionHAsciiString]): bool {.cdecl.}

  InterfaceVectorOfFileParameter* = NCollectionVector[InterfaceFileParameter]

