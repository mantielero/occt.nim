type
  MeshVS_MeshSelectionMethod* {.size: sizeof(cint),
                               importcpp: "MeshVS_MeshSelectionMethod",
                               header: "MeshVS_MeshSelectionMethod.hxx".} = enum
    MeshVS_MSM_PRECISE, MeshVS_MSM_NODES, MeshVS_MSM_BOX

