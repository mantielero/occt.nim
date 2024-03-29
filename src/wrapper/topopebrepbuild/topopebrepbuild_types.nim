import ../topods/topods_types
import ../toptools/toptools_types
import ../ncollection/ncollection_types
import ../standard/standard_types
type
  TopOpeBRepBuildDataMapIteratorOfDataMapOfShapeListOfShapeListOfShape* {.importcpp:"NCollection_DataMap<TopoDS_Shape,TopOpeBRepBuild_ListOfShapeListOfShape,TopTools_ShapeMapHasher>::Iterator", header:"TopOpeBRepBuild_DataMapOfShapeListOfShapeListOfShape.hxx", bycopy.} = object

  TopOpeBRepBuildListIteratorOfListOfListOfLoop* {.importcpp:"NCollection_List<TopOpeBRepBuild_ListOfLoop>::Iterator", header:"TopOpeBRepBuild_ListOfListOfLoop.hxx", bycopy.} = object

  TopOpeBRepBuildListIteratorOfListOfLoop* {.importcpp:"NCollection_List<Handle(TopOpeBRepBuild_Loop)>::Iterator", header:"TopOpeBRepBuild_ListOfLoop.hxx", bycopy.} = object

  TopOpeBRepBuildListIteratorOfListOfPave* {.importcpp:"NCollection_List<Handle(TopOpeBRepBuild_Pave)>::Iterator", header:"TopOpeBRepBuild_ListOfPave.hxx", bycopy.} = object

  TopOpeBRepBuildListIteratorOfListOfShapeListOfShape* {.importcpp:"NCollection_List<TopOpeBRepBuild_ShapeListOfShape>::Iterator", header:"TopOpeBRepBuild_ListOfShapeListOfShape.hxx", bycopy.} = object

  TopOpeBRepBuildLoopEnum* {.size: sizeof(cint),
                            importcpp: "TopOpeBRepBuild_LoopEnum",
                            header: "TopOpeBRepBuild_LoopEnum.hxx".} = enum
    TopOpeBRepBuildANYLOOP, TopOpeBRepBuildBOUNDARY, TopOpeBRepBuildBLOCK

  TopOpeBRepBuildPBuilder* = ptr TopOpeBRepBuildBuilder

  TopOpeBRepBuildPGTopo* = ptr TopOpeBRepBuildGTopo

  TopOpeBRepBuildPWireEdgeSet* = ptr TopOpeBRepBuildWireEdgeSet

  TopOpeBRepBuildAreaBuilder* {.importcpp: "TopOpeBRepBuild_AreaBuilder",
                               header: "TopOpeBRepBuild_AreaBuilder.hxx", bycopy.} = object of RootObj

  TopOpeBRepBuildBlockBuilder* {.importcpp: "TopOpeBRepBuild_BlockBuilder",
                                header: "TopOpeBRepBuild_BlockBuilder.hxx", bycopy.} = object

  TopOpeBRepBuildBlockIterator* {.importcpp: "TopOpeBRepBuild_BlockIterator",
                                 header: "TopOpeBRepBuild_BlockIterator.hxx",
                                 bycopy.} = object

  TopOpeBRepBuildBuilder* {.importcpp: "TopOpeBRepBuild_Builder",
                           header: "TopOpeBRepBuild_Builder.hxx", bycopy.} = object of RootObj 

  TopOpeBRepBuildBuilderON* {.importcpp: "TopOpeBRepBuild_BuilderON",
                             header: "TopOpeBRepBuild_BuilderON.hxx", bycopy.} = object

  TopOpeBRepBuildCorrectFace2d* {.importcpp: "TopOpeBRepBuild_CorrectFace2d",
                                 header: "TopOpeBRepBuild_CorrectFace2d.hxx",
                                 bycopy.} = object

  TopOpeBRepBuildFaceBuilder* {.importcpp: "TopOpeBRepBuild_FaceBuilder",
                               header: "TopOpeBRepBuild_FaceBuilder.hxx", bycopy.} = object

  TopOpeBRepBuildFuseFace* {.importcpp: "TopOpeBRepBuild_FuseFace",
                            header: "TopOpeBRepBuild_FuseFace.hxx", bycopy.} = object

  TopOpeBRepBuildGIter* {.importcpp: "TopOpeBRepBuild_GIter",
                         header: "TopOpeBRepBuild_GIter.hxx", bycopy.} = object

  TopOpeBRepBuildGTool* {.importcpp: "TopOpeBRepBuild_GTool",
                         header: "TopOpeBRepBuild_GTool.hxx", bycopy.} = object

  TopOpeBRepBuildGTopo* {.importcpp: "TopOpeBRepBuild_GTopo",
                         header: "TopOpeBRepBuild_GTopo.hxx", bycopy.} = object

  TopOpeBRepBuildLoopClassifier* {.importcpp: "TopOpeBRepBuild_LoopClassifier",
                                  header: "TopOpeBRepBuild_LoopClassifier.hxx",
                                  bycopy.} = object of RootObj

  TopOpeBRepBuildLoopSet* {.importcpp: "TopOpeBRepBuild_LoopSet",
                           header: "TopOpeBRepBuild_LoopSet.hxx", bycopy.} = object of RootObj

  TopOpeBRepBuildShapeListOfShape* {.importcpp: "TopOpeBRepBuild_ShapeListOfShape", header: "TopOpeBRepBuild_ShapeListOfShape.hxx",
                                    bycopy.} = object

  TopOpeBRepBuildShapeSet* {.importcpp: "TopOpeBRepBuild_ShapeSet",
                            header: "TopOpeBRepBuild_ShapeSet.hxx", bycopy.} = object of RootObj 

  TopOpeBRepBuildShellToSolid* {.importcpp: "TopOpeBRepBuild_ShellToSolid",
                                header: "TopOpeBRepBuild_ShellToSolid.hxx", bycopy.} = object

  TopOpeBRepBuildSolidBuilder* {.importcpp: "TopOpeBRepBuild_SolidBuilder",
                                header: "TopOpeBRepBuild_SolidBuilder.hxx", bycopy.} = object

  TopOpeBRepBuildTools* {.importcpp: "TopOpeBRepBuild_Tools",
                         header: "TopOpeBRepBuild_Tools.hxx", bycopy.} = object

  TopOpeBRepBuildTools2d* {.importcpp: "TopOpeBRepBuild_Tools2d",
                           header: "TopOpeBRepBuild_Tools2d.hxx", bycopy.} = object

  TopOpeBRepBuildVertexInfo* {.importcpp: "TopOpeBRepBuild_VertexInfo",
                              header: "TopOpeBRepBuild_VertexInfo.hxx", bycopy.} = object

  TopOpeBRepBuildWireToFace* {.importcpp: "TopOpeBRepBuild_WireToFace",
                              header: "TopOpeBRepBuild_WireToFace.hxx", bycopy.} = object

  TopOpeBRepBuildIndexedDataMapOfShapeVertexInfo* = NCollectionIndexedDataMap[
      TopoDS_Shape, TopOpeBRepBuildVertexInfo, TopToolsShapeMapHasher]

  TopOpeBRepBuildListOfLoop* = NCollectionList[Handle[TopOpeBRepBuildLoop]]

  TopOpeBRepBuildListOfListOfLoop* = NCollectionList[TopOpeBRepBuildListOfLoop]

  TopOpeBRepBuildListOfPave* = NCollectionList[Handle[TopOpeBRepBuildPave]]

  TopOpeBRepBuildListOfShapeListOfShape* = NCollectionList[
      TopOpeBRepBuildShapeListOfShape]

  TopOpeBRepBuildDataMapOfShapeListOfShapeListOfShape* = NCollectionDataMap[
      TopoDS_Shape, TopOpeBRepBuildListOfShapeListOfShape, TopToolsShapeMapHasher]

  TopOpeBRepBuildArea1dBuilder* {.importcpp: "TopOpeBRepBuild_Area1dBuilder",
                                 header: "TopOpeBRepBuild_Area1dBuilder.hxx",
                                 bycopy.} = object of TopOpeBRepBuildAreaBuilder

  TopOpeBRepBuildArea2dBuilder* {.importcpp: "TopOpeBRepBuild_Area2dBuilder",
                                 header: "TopOpeBRepBuild_Area2dBuilder.hxx",
                                 bycopy.} = object of TopOpeBRepBuildAreaBuilder

  TopOpeBRepBuildArea3dBuilder* {.importcpp: "TopOpeBRepBuild_Area3dBuilder",
                                 header: "TopOpeBRepBuild_Area3dBuilder.hxx",
                                 bycopy.} = object of TopOpeBRepBuildAreaBuilder

  TopOpeBRepBuildBuilder1* {.importcpp: "TopOpeBRepBuild_Builder1",
                            header: "TopOpeBRepBuild_Builder1.hxx", bycopy.} = object of TopOpeBRepBuildBuilder

  TopOpeBRepBuildCompositeClassifier* {.importcpp: "TopOpeBRepBuild_CompositeClassifier", header: "TopOpeBRepBuild_CompositeClassifier.hxx",
                                       bycopy.} = object of TopOpeBRepBuildLoopClassifier

  TopOpeBRepBuildPaveClassifier* {.importcpp: "TopOpeBRepBuild_PaveClassifier",
                                  header: "TopOpeBRepBuild_PaveClassifier.hxx",
                                  bycopy.} = object of TopOpeBRepBuildLoopClassifier 

  TopOpeBRepBuildPaveSet* {.importcpp: "TopOpeBRepBuild_PaveSet",
                           header: "TopOpeBRepBuild_PaveSet.hxx", bycopy.} = object of TopOpeBRepBuildLoopSet 

  TopOpeBRepBuildShellFaceSet* {.importcpp: "TopOpeBRepBuild_ShellFaceSet",
                                header: "TopOpeBRepBuild_ShellFaceSet.hxx", bycopy.} = object of TopOpeBRepBuildShapeSet 

  TopOpeBRepBuildWireEdgeSet* {.importcpp: "TopOpeBRepBuild_WireEdgeSet",
                               header: "TopOpeBRepBuild_WireEdgeSet.hxx", bycopy.} = object of TopOpeBRepBuildShapeSet 

  TopOpeBRepBuildEdgeBuilder* {.importcpp: "TopOpeBRepBuild_EdgeBuilder",
                               header: "TopOpeBRepBuild_EdgeBuilder.hxx", bycopy.} = object of TopOpeBRepBuildArea1dBuilder

  TopOpeBRepBuildFaceAreaBuilder* {.importcpp: "TopOpeBRepBuild_FaceAreaBuilder", header: "TopOpeBRepBuild_FaceAreaBuilder.hxx",
                                   bycopy.} = object of TopOpeBRepBuildArea2dBuilder

  TopOpeBRepBuildShellFaceClassifier* {.importcpp: "TopOpeBRepBuild_ShellFaceClassifier", header: "TopOpeBRepBuild_ShellFaceClassifier.hxx",
                                       bycopy.} = object of TopOpeBRepBuildCompositeClassifier 

  TopOpeBRepBuildSolidAreaBuilder* {.importcpp: "TopOpeBRepBuild_SolidAreaBuilder", header: "TopOpeBRepBuild_SolidAreaBuilder.hxx",
                                    bycopy.} = object of TopOpeBRepBuildArea3dBuilder

  TopOpeBRepBuildWireEdgeClassifier* {.importcpp: "TopOpeBRepBuild_WireEdgeClassifier", header: "TopOpeBRepBuild_WireEdgeClassifier.hxx",
                                      bycopy.} = object of TopOpeBRepBuildCompositeClassifier 

  TopOpeBRepBuildHBuilder* {.importcpp: "TopOpeBRepBuild_HBuilder",
                            header: "TopOpeBRepBuild_HBuilder.hxx", bycopy.} = object of StandardTransient

  HandleTopOpeBRepBuildHBuilder* = Handle[TopOpeBRepBuildHBuilder]

  TopOpeBRepBuildLoop* {.importcpp: "TopOpeBRepBuild_Loop",
                        header: "TopOpeBRepBuild_Loop.hxx", bycopy.} = object of StandardTransient

  HandleTopOpeBRepBuildLoop* = Handle[TopOpeBRepBuildLoop]

  TopOpeBRepBuildPave* {.importcpp: "TopOpeBRepBuild_Pave",
                        header: "TopOpeBRepBuild_Pave.hxx", bycopy.} = object of TopOpeBRepBuildLoop 

  HandleTopOpeBRepBuildPave* = Handle[TopOpeBRepBuildPave]

