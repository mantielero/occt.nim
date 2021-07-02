type
  ApproxParametrizationType* {.size: sizeof(cint),
                              importcpp: "Approx_ParametrizationType",
                              header: "Approx_ParametrizationType.hxx".} = enum
    ApproxChordLength, ApproxCentripetal, ApproxIsoParametric

