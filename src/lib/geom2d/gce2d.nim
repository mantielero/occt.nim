# import ../../wrapper
# import ../../wrapper
# import ../../wrapper

# Create segment
# proc segment*(p1: gp_Pnt2d; p2: gp_Pnt2d): Handle[GCE2dMakeSegment] {.cdecl,
#     importcpp: "new GCE2d_MakeSegment(@)", header: "GCE2d_MakeSegment.hxx".}

# converter toHandleGeom2dTrimmedCurve*(hdl: Handle[GCE2dMakeSegment]): Handle[Geom2dTrimmedCurve] {.
#     noSideEffect, cdecl,
#     importcpp: "(Handle_Geom2d_TrimmedCurve)(*#)", header: "GCE2d_MakeSegment.hxx".}