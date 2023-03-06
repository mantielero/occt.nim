import ../graphic3d/graphic3d_types
import ../ncollection/ncollection_types
import ../standard/standard_types
import ../tcolgp/tcolgp_types
type
  StdPrsShapeTool* = object # FIXME
  Prs3dDatumAttribute* {.size: sizeof(cint), importcpp: "Prs3d_DatumAttribute",
                        header: "Prs3d_DatumAttribute.hxx".} = enum
    prs3dDA_XAxisLength = 0, prs3dDA_YAxisLength, prs3dDA_ZAxisLength,
    Prs3dDP_ShadingTubeRadiusPercent, Prs3dDP_ShadingConeRadiusPercent,
    Prs3dDP_ShadingConeLengthPercent, Prs3dDP_ShadingOriginRadiusPercent,
    Prs3dDP_ShadingNumberOfFacettes

  Prs3dDatumMode* {.size: sizeof(cint), importcpp: "Prs3d_DatumMode",
                   header: "Prs3d_DatumMode.hxx".} = enum
    Prs3dDM_WireFrame = 0, Prs3dDM_Shaded

  Prs3dDatumParts* {.size: sizeof(cint), importcpp: "Prs3d_DatumParts",
                    header: "Prs3d_DatumParts.hxx".} = enum
    Prs3dDP_Origin = 0, Prs3dDP_XAxis, Prs3dDP_YAxis, Prs3dDP_ZAxis, Prs3dDP_XArrow,
    Prs3dDP_YArrow, Prs3dDP_ZArrow, Prs3dDP_XOYAxis, Prs3dDP_YOZAxis,
    Prs3dDP_XOZAxis, Prs3dDP_None

  Prs3dDimensionArrowOrientation* {.size: sizeof(cint), importcpp: "Prs3d_DimensionArrowOrientation", header: "Prs3d_DimensionArrowOrientation.hxx".} = enum
    Prs3dDAO_Internal, Prs3dDAO_External, Prs3dDAO_Fit

  Prs3dDimensionTextHorizontalPosition* {.size: sizeof(cint),
      importcpp: "Prs3d_DimensionTextHorizontalPosition",
      header: "Prs3d_DimensionTextHorizontalPosition.hxx".} = enum
    Prs3dDTHP_Left, Prs3dDTHP_Right, Prs3dDTHP_Center, Prs3dDTHP_Fit

  Prs3dDimensionTextVerticalPosition* {.size: sizeof(cint), importcpp: "Prs3d_DimensionTextVerticalPosition", header: "Prs3d_DimensionTextVerticalPosition.hxx".} = enum
    Prs3dDTVP_Above, Prs3dDTVP_Below, Prs3dDTVP_Center

  Prs3dNListIteratorOfListOfSequenceOfPnt* {.importcpp:"Prs3d_NListOfSequenceOfPnt::Iterator", header:"Prs3d_NListIteratorOfListOfSequenceOfPnt.hxx",bycopy.} = object

  Prs3dPresentation* = Graphic3dStructure

  Prs3dShapeTool* = StdPrsShapeTool

  Prs3dTypeOfHighlight* {.size: sizeof(cint), importcpp: "Prs3d_TypeOfHighlight",
                         header: "Prs3d_TypeOfHighlight.hxx".} = enum
    Prs3dTypeOfHighlightNone = 0, 
    Prs3dTypeOfHighlightSelected, 
    Prs3dTypeOfHighlightDynamic, 
    Prs3dTypeOfHighlightLocalSelected, 
    Prs3dTypeOfHighlightLocalDynamic, 
    Prs3dTypeOfHighlightSubIntensity, 
    Prs3dTypeOfHighlightNB

  Prs3dTypeOfHLR* {.size: sizeof(cint), importcpp: "Prs3d_TypeOfHLR",
                   header: "Prs3d_TypeOfHLR.hxx".} = enum
    Prs3dTOH_NotSet, Prs3dTOH_PolyAlgo, Prs3dTOH_Algo

  Prs3dTypeOfLinePicking* {.size: sizeof(cint),
                           importcpp: "Prs3d_TypeOfLinePicking",
                           header: "Prs3d_TypeOfLinePicking.hxx".} = enum
    Prs3dTOLP_Point, Prs3dTOLP_Segment

  Prs3d* {.importcpp: "Prs3d", header: "Prs3d.hxx", bycopy.} = object 

  Prs3dArrow* {.importcpp: "Prs3d_Arrow", header: "Prs3d_Arrow.hxx", bycopy.} = object 

  Prs3dDatumAxes* {.size: sizeof(cint), importcpp: "Prs3d_DatumAxes",
                   header: "Prs3d_DatumAxes.hxx".} = enum
    prs3dDA_XAxis = 0x00000001, 
    prs3dDA_YAxis = 0x00000002, 
    prs3dDA_ZAxis = 0x00000004 

  Prs3dDimensionUnits* {.importcpp: "Prs3d_DimensionUnits",
                        header: "Prs3d_DimensionUnits.hxx", bycopy.} = object 

  Prs3dPoint*[AnyPoint; PointTool] {.importcpp: "Prs3d_Point<\'0,\'1>",
                                   header: "Prs3d_Point.hxx", bycopy.} = object

  Prs3dRoot* {.importcpp: "Prs3d_Root", header: "Prs3d_Root.hxx", bycopy.} = object of RootObj

  Prs3dText* {.importcpp: "Prs3d_Text", header: "Prs3d_Text.hxx", bycopy.} = object 

  Prs3dToolQuadric* {.importcpp: "Prs3d_ToolQuadric",
                     header: "Prs3d_ToolQuadric.hxx", bycopy.} = object of RootObj 

  Prs3dVertexDrawMode* {.size: sizeof(cint), importcpp: "Prs3d_VertexDrawMode",
                        header: "Prs3d_VertexDrawMode.hxx".} = enum
    Prs3dVDM_Isolated, Prs3dVDM_All, Prs3dVDM_Inherited

  Prs3dBasicAspect* {.importcpp: "Prs3d_BasicAspect",
                     header: "Prs3d_BasicAspect.hxx", bycopy.} = object of StandardTransient 

  HandlePrs3dBasicAspect* = Handle[Prs3dBasicAspect]

  Prs3dNListOfSequenceOfPnt* = NCollectionList[Handle[TColgpHSequenceOfPnt]]

  Prs3dBndBox* {.importcpp: "Prs3d_BndBox", header: "Prs3d_BndBox.hxx", bycopy.} = object of Prs3dRoot 

  Prs3dToolCylinder* {.importcpp: "Prs3d_ToolCylinder",
                      header: "Prs3d_ToolCylinder.hxx", bycopy.} = object of Prs3dToolQuadric 

  Prs3dToolDisk* {.importcpp: "Prs3d_ToolDisk", header: "Prs3d_ToolDisk.hxx", bycopy.} = object of Prs3dToolQuadric 

  Prs3dToolSector* {.importcpp: "Prs3d_ToolSector", header: "Prs3d_ToolSector.hxx",
                    bycopy.} = object of Prs3dToolQuadric 

  Prs3dToolSphere* {.importcpp: "Prs3d_ToolSphere", header: "Prs3d_ToolSphere.hxx",
                    bycopy.} = object of Prs3dToolQuadric 

  Prs3dToolTorus* {.importcpp: "Prs3d_ToolTorus", header: "Prs3d_ToolTorus.hxx",
                   bycopy.} = object of Prs3dToolQuadric 

  Prs3dArrowAspect* {.importcpp: "Prs3d_ArrowAspect",
                     header: "Prs3d_ArrowAspect.hxx", bycopy.} = object of Prs3dBasicAspect 

  Prs3dDatumAspect* {.importcpp: "Prs3d_DatumAspect",
                     header: "Prs3d_DatumAspect.hxx", bycopy.} = object of Prs3dBasicAspect 

  Prs3dDimensionAspect* {.importcpp: "Prs3d_DimensionAspect",
                         header: "Prs3d_DimensionAspect.hxx", bycopy.} = object of Prs3dBasicAspect 

  Prs3dDrawer* {.importcpp: "Prs3d_Drawer", header: "Prs3d_Drawer.hxx", bycopy.} = object of Graphic3dPresentationAttributes 

  HandlePrs3dDrawer* = Handle[Prs3dDrawer]

  Prs3dLineAspect* {.importcpp: "Prs3d_LineAspect", header: "Prs3d_LineAspect.hxx",
                    bycopy.} = object of Prs3dBasicAspect 

  Prs3dIsoAspect* {.importcpp: "Prs3d_IsoAspect", header: "Prs3d_IsoAspect.hxx",
                   bycopy.} = object of Prs3dLineAspect 

  Prs3dPlaneAspect* {.importcpp: "Prs3d_PlaneAspect",
                     header: "Prs3d_PlaneAspect.hxx", bycopy.} = object of Prs3dBasicAspect 

  Prs3dPointAspect* {.importcpp: "Prs3d_PointAspect",
                     header: "Prs3d_PointAspect.hxx", bycopy.} = object of Prs3dBasicAspect

  Prs3dPresentationShadow* {.importcpp: "Prs3d_PresentationShadow",
                            header: "Prs3d_PresentationShadow.hxx", bycopy.} = object of Graphic3dStructure 

  Prs3dShadingAspect* {.importcpp: "Prs3d_ShadingAspect",
                       header: "Prs3d_ShadingAspect.hxx", bycopy.} = object of Prs3dBasicAspect 

  Prs3dTextAspect* {.importcpp: "Prs3d_TextAspect", header: "Prs3d_TextAspect.hxx",
                    bycopy.} = object of Prs3dBasicAspect 

