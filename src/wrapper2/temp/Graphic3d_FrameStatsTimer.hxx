# 1 "/usr/include/opencascade/Graphic3d_FrameStatsTimer.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/Graphic3d_FrameStatsTimer.hxx"
# 18 "/usr/include/opencascade/Graphic3d_FrameStatsTimer.hxx"
enum Graphic3d_FrameStatsTimer
{
  Graphic3d_FrameStatsTimer_ElapsedFrame,
  Graphic3d_FrameStatsTimer_CpuFrame,
  Graphic3d_FrameStatsTimer_CpuCulling,
  Graphic3d_FrameStatsTimer_CpuPicking,
  Graphic3d_FrameStatsTimer_CpuDynamics,
};
enum { Graphic3d_FrameStatsTimer_NB = Graphic3d_FrameStatsTimer_CpuDynamics + 1 };
