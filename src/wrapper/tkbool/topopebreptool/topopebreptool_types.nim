import ../../tkbrep/topods/topods_types
import ../../tkbrep/brep/brep_types
import ../../tkmath/bnd/bnd_types
import ../../tkbrep/toptools/toptools_types
import ../../tkernel/ncollection/ncollection_types
import ../../tkernel/standard/standard_types
import ../../tkbrep/topexp/topexp_types

type
  BRepClass3dSolidClassifier* = object # FIXME

  TopOpeBRepToolDataMapIteratorOfDataMapOfOrientedShapeC2DF* {.importcpp:"NCollection_DataMap<TopoDS_Shape,TopOpeBRepTool_C2DF,TopTools_OrientedShapeMapHasher>::Iterator", header:"TopOpeBRepTool_DataMapOfOrientedShapeC2DF.hxx", bycopy.} = object

  TopOpeBRepToolDataMapIteratorOfDataMapOfShapeface* {.importcpp:"NCollection_DataMap<TopoDS_Shape,TopOpeBRepTool_face,TopTools_ShapeMapHasher>::Iterator", header:"TopOpeBRepTool_DataMapOfShapeface.hxx", bycopy.} = object

  TopOpeBRepToolDataMapIteratorOfDataMapOfShapeListOfC2DF* {.importcpp:"NCollection_DataMap<TopoDS_Shape,TopOpeBRepTool_ListOfC2DF,TopTools_ShapeMapHasher>::Iterator", header:"TopOpeBRepTool_DataMapOfShapeListOfC2DF.hxx", bycopy.} = object

  TopOpeBRepToolListIteratorOfListOfC2DF* {.importcpp:"NCollection_List<TopOpeBRepTool_C2DF>::Iterator", header:"TopOpeBRepTool_ListOfC2DF.hxx", bycopy.} = object

  TopOpeBRepToolOutCurveType* {.size: sizeof(cint),
                               importcpp: "TopOpeBRepTool_OutCurveType",
                               header: "TopOpeBRepTool_OutCurveType.hxx".} = enum
    topOpeBRepToolBSPLINE1, topOpeBRepToolAPPROX, topOpeBRepToolINTERPOL

  TopOpeBRepToolPlos* = ptr TopToolsListOfShape

  TopOpeBRepToolPShapeClassifier* = ptr TopOpeBRepToolShapeClassifier

  TopOpeBRepToolPSoClassif* = ptr BRepClass3dSolidClassifier

  TopOpeBRepTool* {.importcpp: "TopOpeBRepTool", header: "TopOpeBRepTool.hxx", bycopy.} = object 

  TopOpeBRepToolAncestorsTool* {.importcpp: "TopOpeBRepTool_AncestorsTool",
                                header: "TopOpeBRepTool_AncestorsTool.hxx", bycopy.} = object 

  TopOpeBRepToolBoxSort* {.importcpp: "TopOpeBRepTool_BoxSort",
                          header: "TopOpeBRepTool_BoxSort.hxx", bycopy.} = object

  TopOpeBRepToolC2DF* {.importcpp: "TopOpeBRepTool_C2DF",
                       header: "TopOpeBRepTool_C2DF.hxx", bycopy.} = object

  TopOpeBRepToolCLASSI* {.importcpp: "TopOpeBRepTool_CLASSI",
                         header: "TopOpeBRepTool_CLASSI.hxx", bycopy.} = object

  TopOpeBRepToolConnexity* {.importcpp: "TopOpeBRepTool_connexity",
                            header: "TopOpeBRepTool_connexity.hxx", bycopy.} = object

  TopOpeBRepToolCORRISO* {.importcpp: "TopOpeBRepTool_CORRISO",
                          header: "TopOpeBRepTool_CORRISO.hxx", bycopy.} = object

  TopOpeBRepToolCurveTool* {.importcpp: "TopOpeBRepTool_CurveTool",
                            header: "TopOpeBRepTool_CurveTool.hxx", bycopy.} = object

  TopOpeBRepToolFace* {.importcpp: "TopOpeBRepTool_face",
                       header: "TopOpeBRepTool_face.hxx", bycopy.} = object

  TopOpeBRepToolFuseEdges* {.importcpp: "TopOpeBRepTool_FuseEdges",
                            header: "TopOpeBRepTool_FuseEdges.hxx", bycopy.} = object 

  TopOpeBRepToolGeomTool* {.importcpp: "TopOpeBRepTool_GeomTool",
                           header: "TopOpeBRepTool_GeomTool.hxx", bycopy.} = object 

  TopOpeBRepToolMakeTransition* {.importcpp: "TopOpeBRepTool_makeTransition",
                                 header: "TopOpeBRepTool_makeTransition.hxx",
                                 bycopy.} = object

  TopOpeBRepToolMkTondgE* {.importcpp: "TopOpeBRepTool_mkTondgE",
                           header: "TopOpeBRepTool_mkTondgE.hxx", bycopy.} = object

  TopOpeBRepToolPurgeInternalEdges* {.importcpp: "TopOpeBRepTool_PurgeInternalEdges", header: "TopOpeBRepTool_PurgeInternalEdges.hxx",
                                     bycopy.} = object 

  TopOpeBRepToolREGUS* {.importcpp: "TopOpeBRepTool_REGUS",
                        header: "TopOpeBRepTool_REGUS.hxx", bycopy.} = object

  TopOpeBRepToolREGUW* {.importcpp: "TopOpeBRepTool_REGUW",
                        header: "TopOpeBRepTool_REGUW.hxx", bycopy.} = object

  TopOpeBRepToolShapeClassifier* {.importcpp: "TopOpeBRepTool_ShapeClassifier",
                                  header: "TopOpeBRepTool_ShapeClassifier.hxx",
                                  bycopy.} = object

  TopOpeBRepToolShapeTool* {.importcpp: "TopOpeBRepTool_ShapeTool",
                            header: "TopOpeBRepTool_ShapeTool.hxx", bycopy.} = object 

  TopOpeBRepToolSolidClassifier* {.importcpp: "TopOpeBRepTool_SolidClassifier",
                                  header: "TopOpeBRepTool_SolidClassifier.hxx",
                                  bycopy.} = object
                                  #bycopy.} = object

  TopOpeBRepToolTOOL* {.importcpp: "TopOpeBRepTool_TOOL",
                       header: "TopOpeBRepTool_TOOL.hxx", bycopy.} = object

  TopOpeBRepToolDataMapOfOrientedShapeC2DF* = NCollectionDataMap[TopoDS_Shape,
      TopOpeBRepToolC2DF, TopToolsOrientedShapeMapHasher]

  TopOpeBRepToolDataMapOfShapeface* = NCollectionDataMap[TopoDS_Shape,
      TopOpeBRepToolFace, TopToolsShapeMapHasher]

  TopOpeBRepToolIndexedDataMapOfShapeBox* = NCollectionIndexedDataMap[
      TopoDS_Shape, BndBox, TopToolsOrientedShapeMapHasher]

  TopOpeBRepToolIndexedDataMapOfShapeBox2d* = NCollectionIndexedDataMap[
      TopoDS_Shape, BndBox2d, TopToolsOrientedShapeMapHasher]

  TopOpeBRepToolIndexedDataMapOfShapeconnexity* = NCollectionIndexedDataMap[
      TopoDS_Shape, TopOpeBRepToolConnexity, TopToolsShapeMapHasher]

  TopOpeBRepToolIndexedDataMapOfSolidClassifier* = NCollectionIndexedDataMap[
      TopoDS_Shape, BRepClass3dSolidClassifier, TopToolsShapeMapHasher]

  TopOpeBRepToolListOfC2DF* = NCollectionList[TopOpeBRepToolC2DF]

  TopOpeBRepToolDataMapOfShapeListOfC2DF* = NCollectionDataMap[TopoDS_Shape,
      TopOpeBRepToolListOfC2DF, TopToolsShapeMapHasher]

  TopOpeBRepToolHBoxTool* {.importcpp: "TopOpeBRepTool_HBoxTool",
                           header: "TopOpeBRepTool_HBoxTool.hxx", bycopy.} = object of StandardTransient
                           #header: "TopOpeBRepTool_HBoxTool.hxx", bycopy.} = object of StandardTransient

  HandleTopOpeBRepToolHBoxTool* = Handle[TopOpeBRepToolHBoxTool]

                           #header: "TopOpeBRepTool_HBoxTool.hxx", bycopy.} = object of StandardTransient
  TopOpeBRepToolShapeExplorer* {.importcpp: "TopOpeBRepTool_ShapeExplorer",
                                header: "TopOpeBRepTool_ShapeExplorer.hxx", bycopy.} = object of TopExpExplorer 

