type
  GeomAbsJoinType* {.size: sizeof(cint), importcpp: "GeomAbs_JoinType",
                    header: "GeomAbs_JoinType.hxx".} = enum
    GeomAbsArc, GeomAbsTangent, GeomAbsIntersection

