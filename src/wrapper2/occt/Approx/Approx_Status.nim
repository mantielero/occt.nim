type
  ApproxStatus* {.size: sizeof(cint), importcpp: "Approx_Status",
                 header: "Approx_Status.hxx".} = enum
    ApproxPointsAdded, ApproxNoPointsAdded, ApproxNoApproximation

