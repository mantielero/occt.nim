import ../ncollection/ncollection_types
type
  BOPAlgoCheckStatus* {.size: sizeof(cint), importcpp: "BOPAlgo_CheckStatus",
                       header: "BOPAlgo_CheckStatus.hxx".} = enum
    bOPAlgoCheckUnknown, bOPAlgoBadType, bOPAlgoSelfIntersect, bOPAlgoTooSmallEdge,
    bOPAlgoNonRecoverableFace, bOPAlgoIncompatibilityOfVertex,
    bOPAlgoIncompatibilityOfEdge, bOPAlgoIncompatibilityOfFace,
    bOPAlgoOperationAborted, bOPAlgoGeomAbsC0, bOPAlgoInvalidCurveOnSurface,
    bOPAlgoNotValid

  BOPAlgoGlueEnum* {.size: sizeof(cint), importcpp: "BOPAlgo_GlueEnum",
                    header: "BOPAlgo_GlueEnum.hxx".} = enum
    BOPAlgoGlueOff, BOPAlgoGlueShift, BOPAlgoGlueFull

  BOPAlgoListIteratorOfListOfCheckResult* {.importcpp:"BOPAlgo_ListOfCheckResult::Iterator", header:"BOPAlgo_ListOfCheckResult.hxx", bycopy.} = object

  BOPAlgoOperation* {.size: sizeof(cint), importcpp: "BOPAlgo_Operation",
                     header: "BOPAlgo_Operation.hxx".} = enum
    bOPAlgoCOMMON, bOPAlgoFUSE, bOPAlgoCUT, bOPAlgoCUT21, bOPAlgoSECTION,
    bOPAlgoUNKNOWN

  BOPAlgoPArgumentAnalyzer* = ptr BOPAlgoArgumentAnalyzer

  BOPAlgoPBOP* = ptr BOPAlgoBOP

  BOPAlgoPBuilder* = ptr BOPAlgoBuilder

  BOPAlgoPPaveFiller* = ptr BOPAlgoPaveFiller

  BOPAlgoPSection* = ptr BOPAlgoSection

  BOPAlgoPWireEdgeSet* = ptr BOPAlgoWireEdgeSet

  BOPAlgoCheckResult* {.importcpp: "BOPAlgo_CheckResult",
                       header: "BOPAlgo_CheckResult.hxx", bycopy.} = object 

  BOPAlgoMakePeriodicPeriodicityParams* {.
      importcpp: "BOPAlgo_MakePeriodic::PeriodicityParams",
      header: "BOPAlgo_MakePeriodic.hxx", bycopy.} = object
    myPeriodic* {.importc: "myPeriodic".}: array[3, bool] 
    myPeriod* {.importc: "myPeriod".}: array[3, cfloat] 
    myIsTrimmed* {.importc: "myIsTrimmed".}: array[3, bool] 
    myPeriodFirst* {.importc: "myPeriodFirst".}: array[3, cfloat] 

  BOPAlgoOptions* {.importcpp: "BOPAlgo_Options", header: "BOPAlgo_Options.hxx",
                   bycopy.} = object of RootObj 

  BOPAlgoSectionAttribute* {.importcpp: "BOPAlgo_SectionAttribute",
                            header: "BOPAlgo_SectionAttribute.hxx", bycopy.} = object 

  BOPAlgoTools* {.importcpp: "BOPAlgo_Tools", header: "BOPAlgo_Tools.hxx", bycopy.} = object 

  BOPAlgoWireEdgeSet* {.importcpp: "BOPAlgo_WireEdgeSet",
                       header: "BOPAlgo_WireEdgeSet.hxx", bycopy.} = object

  BOPAlgoListOfCheckResult* = NCollectionList[BOPAlgoCheckResult]

  BOPAlgoAlgo* {.importcpp: "BOPAlgo_Algo", header: "BOPAlgo_Algo.hxx", bycopy.} = object of BOPAlgoOptions 

  BOPAlgoMakeConnected* {.importcpp: "BOPAlgo_MakeConnected",
                         header: "BOPAlgo_MakeConnected.hxx", bycopy.} = object of BOPAlgoOptions 

  BOPAlgoMakePeriodic* {.importcpp: "BOPAlgo_MakePeriodic",
                        header: "BOPAlgo_MakePeriodic.hxx", bycopy.} = object of BOPAlgoOptions 

  BOPAlgoArgumentAnalyzer* {.importcpp: "BOPAlgo_ArgumentAnalyzer",
                            header: "BOPAlgo_ArgumentAnalyzer.hxx", bycopy.} = object of BOPAlgoAlgo 

  BOPAlgoBuilderArea* {.importcpp: "BOPAlgo_BuilderArea",
                       header: "BOPAlgo_BuilderArea.hxx", bycopy.} = object of BOPAlgoAlgo 

  BOPAlgoBuilderShape* {.importcpp: "BOPAlgo_BuilderShape",
                        header: "BOPAlgo_BuilderShape.hxx", bycopy.} = object of BOPAlgoAlgo 

  BOPAlgoPaveFiller* {.importcpp: "BOPAlgo_PaveFiller",
                      header: "BOPAlgo_PaveFiller.hxx", bycopy.} = object of BOPAlgoAlgo 

  BOPAlgoShellSplitter* {.importcpp: "BOPAlgo_ShellSplitter",
                         header: "BOPAlgo_ShellSplitter.hxx", bycopy.} = object of BOPAlgoAlgo 
                       #header: "BOPAlgo_WireEdgeSet.hxx", bycopy.} = object

  BOPAlgoWireSplitter* {.importcpp: "BOPAlgo_WireSplitter",
                        header: "BOPAlgo_WireSplitter.hxx", bycopy.} = object of BOPAlgoAlgo

  BOPAlgoBuilder* {.importcpp: "BOPAlgo_Builder", header: "BOPAlgo_Builder.hxx",
                   bycopy.} = object of BOPAlgoBuilderShape 

  BOPAlgoBuilderFace* {.importcpp: "BOPAlgo_BuilderFace",
                       header: "BOPAlgo_BuilderFace.hxx", bycopy.} = object of BOPAlgoBuilderArea 

  BOPAlgoBuilderSolid* {.importcpp: "BOPAlgo_BuilderSolid",
                        header: "BOPAlgo_BuilderSolid.hxx", bycopy.} = object of BOPAlgoBuilderArea 

  BOPAlgoCheckerSI* {.importcpp: "BOPAlgo_CheckerSI",
                     header: "BOPAlgo_CheckerSI.hxx", bycopy.} = object of BOPAlgoPaveFiller

  BOPAlgoRemoveFeatures* {.importcpp: "BOPAlgo_RemoveFeatures",
                          header: "BOPAlgo_RemoveFeatures.hxx", bycopy.} = object of BOPAlgoBuilderShape 

  BOPAlgoCellsBuilder* {.importcpp: "BOPAlgo_CellsBuilder",
                        header: "BOPAlgo_CellsBuilder.hxx", bycopy.} = object of BOPAlgoBuilder 

  BOPAlgoMakerVolume* {.importcpp: "BOPAlgo_MakerVolume",
                       header: "BOPAlgo_MakerVolume.hxx", bycopy.} = object of BOPAlgoBuilder 

  BOPAlgoSection* {.importcpp: "BOPAlgo_Section", header: "BOPAlgo_Section.hxx",
                   bycopy.} = object of BOPAlgoBuilder 

  BOPAlgoToolsProvider* {.importcpp: "BOPAlgo_ToolsProvider",
                         header: "BOPAlgo_ToolsProvider.hxx", bycopy.} = object of BOPAlgoBuilder 

  BOPAlgoBOP* {.importcpp: "BOPAlgo_BOP", header: "BOPAlgo_BOP.hxx", bycopy.} = object of BOPAlgoToolsProvider 

  #BOPAlgoBOP* {.importcpp: "BOPAlgo_BOP", header: "BOPAlgo_BOP.hxx", bycopy.} = object of BOPAlgoToolsProvider 
  BOPAlgoSplitter* {.importcpp: "BOPAlgo_Splitter", header: "BOPAlgo_Splitter.hxx",
                    bycopy.} = object of BOPAlgoToolsProvider 

