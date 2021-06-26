# /usr/include/opencascade/gp_VectorWithNullMagnitude.hxx --> occt/tkMath/gp/gp_VectorWithNullMagnitude.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerGpvectorwithnullmagnitude = "/usr/include/opencascade/gp_VectorWithNullMagnitude.hxx"
discard "forward decl of gp_VectorWithNullMagnitude"
discard "forward decl of gp_VectorWithNullMagnitude"
type
  HandleGpVectorWithNullMagnitude* = Handle[GpVectorWithNullMagnitude]
  GpVectorWithNullMagnitude* {.importcpp: "gp_VectorWithNullMagnitude",
                              header: headerGpvectorwithnullmagnitude, bycopy.} = object of StandardDomainError


proc constructGpVectorWithNullMagnitude*(): GpVectorWithNullMagnitude {.
    constructor, importcpp: "gp_VectorWithNullMagnitude(@)",
    header: headerGpvectorwithnullmagnitude.}
proc constructGpVectorWithNullMagnitude*(theMessage: StandardCString): GpVectorWithNullMagnitude {.
    constructor, importcpp: "gp_VectorWithNullMagnitude(@)",
    header: headerGpvectorwithnullmagnitude.}
proc `raise`*(theMessage: StandardCString = "") {.
    importcpp: "gp_VectorWithNullMagnitude::Raise(@)",
    header: headerGpvectorwithnullmagnitude.}
proc `raise`*(theMessage: var StandardSStream) {.
    importcpp: "gp_VectorWithNullMagnitude::Raise(@)",
    header: headerGpvectorwithnullmagnitude.}
proc newInstance*(theMessage: StandardCString = ""): Handle[GpVectorWithNullMagnitude] {.
    importcpp: "gp_VectorWithNullMagnitude::NewInstance(@)",
    header: headerGpvectorwithnullmagnitude.}
type
  GpVectorWithNullMagnitudebaseType* = StandardDomainError

proc getTypeName*(): cstring {.importcpp: "gp_VectorWithNullMagnitude::get_type_name(@)",
                            header: headerGpvectorwithnullmagnitude.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "gp_VectorWithNullMagnitude::get_type_descriptor(@)",
    header: headerGpvectorwithnullmagnitude.}
proc dynamicType*(this: GpVectorWithNullMagnitude): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: headerGpvectorwithnullmagnitude.}