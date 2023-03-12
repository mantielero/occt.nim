# This is for generic C++ stuff

proc setPrecision*(val:int) {.cdecl,
    importcpp: "std::setprecision(@)", header:"<iomanip>".}