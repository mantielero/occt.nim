type
  Prs3dTypeOfHighlight* {.size: sizeof(cint), importcpp: "Prs3d_TypeOfHighlight",
                         header: "Prs3d_TypeOfHighlight.hxx".} = enum
    Prs3dTypeOfHighlightNone = 0, Prs3dTypeOfHighlightSelected,
    Prs3dTypeOfHighlightDynamic, Prs3dTypeOfHighlightLocalSelected,
    Prs3dTypeOfHighlightLocalDynamic, Prs3dTypeOfHighlightSubIntensity,
    Prs3dTypeOfHighlightNB

