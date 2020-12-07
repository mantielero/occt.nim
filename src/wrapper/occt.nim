{.passL: "-lTKBO -lTKSTEP -lTKPrim -lTKSTEPAttr -lTKSTEP209 -lTKSTEPBase -lTKXSBase -lTKShHealing -lTKTopAlgo -lTKGeomAlgo -lTKBRep -lTKGeomBase -lTKG3d -lTKG2d -lTKMath -lTKernel", passC:"-I/usr/include/opencascade" }
#proc cnew*[T](x: T): ptr T {.importcpp: "(new '*0#@)", nodecl.}


{.push header: "Standard_Type.hxx".}
type
  #base_type* {.importcpp: "base_type".} = Standard_Transient
  #Handle_Standard_Type* {.importcpp: "Handle_Standard_Type".} = opencascade::handle<Standard_Type>
  type_instance* {.importcpp: "type_instance", byref.} = object
  Standard_Type* {.importcpp: "Standard_Type", byref.} = object
{.pop.} # header: "Standard_Type.hxx
{.push header: "Standard_TypeDef.hxx".}
type
  Standard_Integer* {.importcpp: "Standard_Integer".} = cint
  Standard_Real* {.importcpp: "Standard_Real".} = cdouble
  Standard_Boolean* {.importcpp: "Standard_Boolean".} = bool
  Standard_ShortReal* {.importcpp: "Standard_ShortReal".} = cfloat
  Standard_Character* {.importcpp: "Standard_Character".} = char
  #Standard_Byte* {.importcpp: "Standard_Byte".} = unsigned char
  Standard_Address* {.importcpp: "Standard_Address".} = pointer
  Standard_Size* {.importcpp: "Standard_Size".} = cint
  #Standard_Time* {.importcpp: "Standard_Time".} = std::time_t
  Standard_Utf8Char* {.importcpp: "Standard_Utf8Char".} = char
  #Standard_Utf8UChar* {.importcpp: "Standard_Utf8UChar".} = unsigned char
  #Standard_ExtCharacter* {.importcpp: "Standard_ExtCharacter".} = char16_t
  #Standard_Utf16Char* {.importcpp: "Standard_Utf16Char".} = char16_t
  #Standard_Utf32Char* {.importcpp: "Standard_Utf32Char".} = char32_t
  #Standard_WideChar* {.importcpp: "Standard_WideChar".} = wchar_t
  Standard_CString* {.importcpp: "Standard_CString".} = ref Standard_Character # Standard_Character *
  #Standard_ExtString* {.importcpp: "Standard_ExtString".} = Standard_ExtCharacter *
{.pop.} # header: "Standard_TypeDef.hxx
{.push header: "gp_Pnt.hxx".}
type
  gp_Pnt* {.importcpp: "gp_Pnt", byref.} = object
{.pop.} # header: "gp_Pnt.hxx
{.push header: "Standard_Transient.hxx".}
type
  #base_type* {.importcpp: "base_type".} = void
  #Handle_Standard_Transient* {.importcpp: "Handle_Standard_Transient".} = opencascade::handle<Standard_Transient>
  Standard_Transient* {.importcpp: "Standard_Transient", byref.} = object
{.pop.} # header: "Standard_Transient.hxx
{.push header: "gp_Ax2d.hxx".}
type
  gp_Ax2d* {.importcpp: "gp_Ax2d", byref.} = object
{.pop.} # header: "gp_Ax2d.hxx
{.push header: "gp_XYZ.hxx".}
type
  gp_XYZ* {.importcpp: "gp_XYZ", byref.} = object
{.pop.} # header: "gp_XYZ.hxx
{.push header: "gp.hxx".}
type
  gp* {.importcpp: "gp", byref.} = object
{.pop.} # header: "gp.hxx
{.push header: "gp_XY.hxx".}
type
  gp_XY* {.importcpp: "gp_XY", byref.} = object
{.pop.} # header: "gp_XY.hxx
{.push header: "Standard_DomainError.hxx".}
type
  #Handle_Standard_DomainError* {.importcpp: "Handle_Standard_DomainError".} = opencascade::handle<Standard_DomainError>
  #base_type* {.importcpp: "base_type".} = Standard_Failure
  Standard_DomainError* {.importcpp: "Standard_DomainError", byref.} = object
{.pop.} # header: "Standard_DomainError.hxx
{.push header: "NCollection_Vec2.hxx".}
type
  NCollection_Vec2* {.importcpp: "NCollection_Vec2", byref.} = object
{.pop.} # header: "NCollection_Vec2.hxx
{.push header: "gp_Dir.hxx".}
type
  gp_Dir* {.importcpp: "gp_Dir", byref.} = object
{.pop.} # header: "gp_Dir.hxx
{.push header: "NCollection_Vec3.hxx".}
type
  NCollection_Vec3* {.importcpp: "NCollection_Vec3", byref.} = object
{.pop.} # header: "NCollection_Vec3.hxx
{.push header: "gp_Dir2d.hxx".}
type
  gp_Dir2d* {.importcpp: "gp_Dir2d", byref.} = object
{.pop.} # header: "gp_Dir2d.hxx
#{.push header: "Standard_OStream.hxx".}
#type
#  Standard_OStream* {.importcpp: "Standard_OStream".} = std::ostream
#{.pop.} # header: "Standard_OStream.hxx
{.push header: "Standard_Handle.hxx".}
type
  #element_type* {.importcpp: "element_type".} = T
  handle* {.importcpp: "handle", byref.} = object
{.pop.} # header: "Standard_Handle.hxx
{.push header: "Standard.hxx".}
type
  Standard* {.importcpp: "Standard", byref.} = object
{.pop.} # header: "Standard.hxx
{.push header: "gp_Vec.hxx".}
type
  gp_Vec* {.importcpp: "gp_Vec", byref.} = object
{.pop.} # header: "gp_Vec.hxx
{.push header: "gp_Pnt2d.hxx".}
type
  gp_Pnt2d* {.importcpp: "gp_Pnt2d", byref.} = object
{.pop.} # header: "gp_Pnt2d.hxx
#{.push header: "Standard_SStream.hxx".}
#type
#  Standard_SStream* {.importcpp: "Standard_SStream".} = std::stringstream
#{.pop.} # header: "Standard_SStream.hxx
{.push header: "gp_Mat2d.hxx".}
type
  gp_Mat2d* {.importcpp: "gp_Mat2d", byref.} = object
{.pop.} # header: "gp_Mat2d.hxx
{.push header: "gp_VectorWithNullMagnitude.hxx".}
type
  #Handle_gp_VectorWithNullMagnitude* {.importcpp: "Handle_gp_VectorWithNullMagnitude".} = opencascade::handle<gp_VectorWithNullMagnitude>
  #base_type* {.importcpp: "base_type".} = Standard_DomainError
  gp_VectorWithNullMagnitude* {.importcpp: "gp_VectorWithNullMagnitude", byref.} = object
{.pop.} # header: "gp_VectorWithNullMagnitude.hxx
{.push header: "Standard_ConstructionError.hxx".}
type
  #Handle_Standard_ConstructionError* {.importcpp: "Handle_Standard_ConstructionError".} = opencascade::handle<Standard_ConstructionError>
  #base_type* {.importcpp: "base_type".} = Standard_DomainError
  Standard_ConstructionError* {.importcpp: "Standard_ConstructionError", byref.} = object
{.pop.} # header: "Standard_ConstructionError.hxx
{.push header: "Standard_OutOfRange.hxx".}
type
  #Handle_Standard_OutOfRange* {.importcpp: "Handle_Standard_OutOfRange".} = opencascade::handle<Standard_OutOfRange>
  #base_type* {.importcpp: "base_type".} = Standard_RangeError
  Standard_OutOfRange* {.importcpp: "Standard_OutOfRange", byref.} = object
{.pop.} # header: "Standard_OutOfRange.hxx
{.push header: "gp_Mat.hxx".}
type
  gp_Mat* {.importcpp: "gp_Mat", byref.} = object
{.pop.} # header: "gp_Mat.hxx
{.push header: "gp_Trsf.hxx".}
type
  gp_Trsf* {.importcpp: "gp_Trsf", byref.} = object
{.pop.} # header: "gp_Trsf.hxx
#{.push header: "Standard_Std.hxx".}
#type
#  type* {.importcpp: "type".} = TheType
#{.pop.} # header: "Standard_Std.hxx
{.push header: "gp_Vec2d.hxx".}
type
  gp_Vec2d* {.importcpp: "gp_Vec2d", byref.} = object
{.pop.} # header: "gp_Vec2d.hxx
{.push header: "Standard_RangeError.hxx".}
type
  #Handle_Standard_RangeError* {.importcpp: "Handle_Standard_RangeError".} = opencascade::handle<Standard_RangeError>
  #base_type* {.importcpp: "base_type".} = Standard_DomainError
  Standard_RangeError* {.importcpp: "Standard_RangeError", byref.} = object
{.pop.} # header: "Standard_RangeError.hxx
{.push header: "Standard_Failure.hxx".}
type
  #Handle_Standard_Failure* {.importcpp: "Handle_Standard_Failure".} = opencascade::handle<Standard_Failure>
  #base_type* {.importcpp: "base_type".} = Standard_Transient
  Standard_Failure* {.importcpp: "Standard_Failure", byref.} = object
{.pop.} # header: "Standard_Failure.hxx
{.push header: "gp_Trsf2d.hxx".}
type
  gp_Trsf2d* {.importcpp: "gp_Trsf2d", byref.} = object
{.pop.} # header: "gp_Trsf2d.hxx

{.push header: "gp_Ax1.hxx".}
type
  gp_Ax1* {.importcpp: "gp_Ax1", byref.} = object
{.pop.} # header: "gp_Ax1.hxx

include "Standard_Type.nim"
#include "Standard_TypeDef.nim"
include "gp_Pnt.nim"
include "Standard_Transient.nim"
include "gp_Ax2d.nim"
include "gp_XYZ.nim"
include "gp.nim"
include "gp_XY.nim"
include "Standard_DomainError.nim"
include "NCollection_Vec2.nim"
include "gp_Dir.nim"
#include "NCollection_Vec3.nim"
include "gp_Dir2d.nim"
#include "Standard_OStream.nim"
#include "Standard_Handle.nim"
include "Standard.nim"
include "gp_Vec.nim"
include "gp_Pnt2d.nim"
#include "Standard_SStream.nim"
include "gp_Mat2d.nim"
include "gp_VectorWithNullMagnitude.nim"
include "Standard_ConstructionError.nim"
include "Standard_OutOfRange.nim"
include "gp_Mat.nim"
include "gp_Trsf.nim"
#include "Standard_Std.nim"
include "gp_Vec2d.nim"
include "Standard_RangeError.nim"
include "Standard_Failure.nim"
include "gp_Trsf2d.nim"
include "gp_Ax1.nim"
