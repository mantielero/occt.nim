# PROVIDES: TopOpeBRepTool TopOpeBRepToolAncestorsTool TopOpeBRepToolBoxSort TopOpeBRepToolC2DF TopOpeBRepToolCLASSI TopOpeBRepToolConnexity TopOpeBRepToolCORRISO TopOpeBRepToolCurveTool TopOpeBRepToolFace TopOpeBRepToolFuseEdges TopOpeBRepToolGeomTool TopOpeBRepToolMakeTransition TopOpeBRepToolMkTondgE TopOpeBRepToolPurgeInternalEdges TopOpeBRepToolREGUS TopOpeBRepToolREGUW TopOpeBRepToolShapeClassifier TopOpeBRepToolShapeTool TopOpeBRepToolSolidClassifier TopOpeBRepToolTOOL
# DEPENDS:  Handle[TopOpeBRepToolHBoxTool] StandardTransient TopExpExplorer

import tkbrep/topexp/topexp_types
import tkernel/standard/standard_types
import tkbool/topopebreptool/topopebreptool_types
type
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
                                  bycopy.} = object

  TopOpeBRepToolTOOL* {.importcpp: "TopOpeBRepTool_TOOL",
                       header: "TopOpeBRepTool_TOOL.hxx", bycopy.} = object

  HandleTopOpeBRepToolHBoxTool* = Handle[TopOpeBRepToolHBoxTool]





















  TopOpeBRepToolHBoxTool* {.importcpp: "TopOpeBRepTool_HBoxTool",
                           header: "TopOpeBRepTool_HBoxTool.hxx", bycopy.} = object of StandardTransient










































  TopOpeBRepToolShapeExplorer* {.importcpp: "TopOpeBRepTool_ShapeExplorer",
                                header: "TopOpeBRepTool_ShapeExplorer.hxx", bycopy.} = object of TopExpExplorer 
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         
                                                                                                         











































