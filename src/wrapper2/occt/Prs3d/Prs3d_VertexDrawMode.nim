type
  Prs3dVertexDrawMode* {.size: sizeof(cint), importcpp: "Prs3d_VertexDrawMode",
                        header: "Prs3d_VertexDrawMode.hxx".} = enum
    Prs3dVDM_Isolated, Prs3dVDM_All, Prs3dVDM_Inherited

