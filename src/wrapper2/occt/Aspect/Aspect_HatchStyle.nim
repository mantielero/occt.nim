type
  AspectHatchStyle* {.size: sizeof(cint), importcpp: "Aspect_HatchStyle",
                     header: "Aspect_HatchStyle.hxx".} = enum
    AspectHS_SOLID = 0, AspectHS_GRID_DIAGONAL = 1, AspectHS_GRID_DIAGONAL_WIDE = 2,
    AspectHS_GRID = 3, AspectHS_GRID_WIDE = 4, AspectHS_DIAGONAL_45 = 5,
    AspectHS_DIAGONAL_135 = 6, AspectHS_HORIZONTAL = 7, AspectHS_VERTICAL = 8,
    AspectHS_DIAGONAL_45WIDE = 9, AspectHS_DIAGONAL_135WIDE = 10,
    AspectHS_HORIZONTAL_WIDE = 11, AspectHS_VERTICAL_WIDE = 12, AspectHS_NB = 13

