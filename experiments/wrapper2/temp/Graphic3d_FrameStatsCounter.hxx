# 1 "/usr/include/opencascade/Graphic3d_FrameStatsCounter.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/Graphic3d_FrameStatsCounter.hxx"
# 18 "/usr/include/opencascade/Graphic3d_FrameStatsCounter.hxx"
enum Graphic3d_FrameStatsCounter
{

  Graphic3d_FrameStatsCounter_NbLayers = 0,
  Graphic3d_FrameStatsCounter_NbStructs,
  Graphic3d_FrameStatsCounter_EstimatedBytesGeom,
  Graphic3d_FrameStatsCounter_EstimatedBytesFbos,
  Graphic3d_FrameStatsCounter_EstimatedBytesTextures,


  Graphic3d_FrameStatsCounter_NbLayersNotCulled,
  Graphic3d_FrameStatsCounter_NbStructsNotCulled,
  Graphic3d_FrameStatsCounter_NbGroupsNotCulled,
  Graphic3d_FrameStatsCounter_NbElemsNotCulled,
  Graphic3d_FrameStatsCounter_NbElemsFillNotCulled,
  Graphic3d_FrameStatsCounter_NbElemsLineNotCulled,
  Graphic3d_FrameStatsCounter_NbElemsPointNotCulled,
  Graphic3d_FrameStatsCounter_NbElemsTextNotCulled,
  Graphic3d_FrameStatsCounter_NbTrianglesNotCulled,
  Graphic3d_FrameStatsCounter_NbLinesNotCulled,
  Graphic3d_FrameStatsCounter_NbPointsNotCulled,



  Graphic3d_FrameStatsCounter_NbLayersImmediate,
  Graphic3d_FrameStatsCounter_NbStructsImmediate,
  Graphic3d_FrameStatsCounter_NbGroupsImmediate,
  Graphic3d_FrameStatsCounter_NbElemsImmediate,
  Graphic3d_FrameStatsCounter_NbElemsFillImmediate,
  Graphic3d_FrameStatsCounter_NbElemsLineImmediate,
  Graphic3d_FrameStatsCounter_NbElemsPointImmediate,
  Graphic3d_FrameStatsCounter_NbElemsTextImmediate,
  Graphic3d_FrameStatsCounter_NbTrianglesImmediate,
  Graphic3d_FrameStatsCounter_NbLinesImmediate,
  Graphic3d_FrameStatsCounter_NbPointsImmediate,
};
enum
{
  Graphic3d_FrameStatsCounter_NB = Graphic3d_FrameStatsCounter_NbPointsImmediate + 1,
  Graphic3d_FrameStatsCounter_SCENE_LOWER = Graphic3d_FrameStatsCounter_NbLayers,
  Graphic3d_FrameStatsCounter_SCENE_UPPER = Graphic3d_FrameStatsCounter_EstimatedBytesTextures,
  Graphic3d_FrameStatsCounter_RENDERED_LOWER = Graphic3d_FrameStatsCounter_NbLayersNotCulled,
  Graphic3d_FrameStatsCounter_RENDERED_UPPER = Graphic3d_FrameStatsCounter_NbPointsNotCulled,
  Graphic3d_FrameStatsCounter_IMMEDIATE_LOWER = Graphic3d_FrameStatsCounter_NbLayersImmediate,
  Graphic3d_FrameStatsCounter_IMMEDIATE_UPPER = Graphic3d_FrameStatsCounter_NbPointsImmediate,
};
