type
  Graphic3dTypeOfPrimitiveArray* {.size: sizeof(cint),
                                  importcpp: "Graphic3d_TypeOfPrimitiveArray",
                                  header: "Graphic3d_TypeOfPrimitiveArray.hxx".} = enum
    Graphic3dTOPA_UNDEFINED, Graphic3dTOPA_POINTS, Graphic3dTOPA_SEGMENTS,
    Graphic3dTOPA_POLYLINES, Graphic3dTOPA_TRIANGLES,
    Graphic3dTOPA_TRIANGLESTRIPS, Graphic3dTOPA_TRIANGLEFANS,
    Graphic3dTOPA_LINES_ADJACENCY, Graphic3dTOPA_LINE_STRIP_ADJACENCY,
    Graphic3dTOPA_TRIANGLES_ADJACENCY, Graphic3dTOPA_TRIANGLE_STRIP_ADJACENCY,
    Graphic3dTOPA_QUADRANGLES, Graphic3dTOPA_QUADRANGLESTRIPS,
    Graphic3dTOPA_POLYGONS

