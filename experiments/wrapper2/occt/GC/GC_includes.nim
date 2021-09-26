{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}
{.experimental: "callOperator".}
import ../gp/gp_includes


# Constructors and methods
proc constructor_handle<T>*(): handle {.constructor,importcpp: "handle<T>", header:"Standard_Handle.hxx".}
  ## Empty constructor

proc constructor_handle<T>*(thePtr: T *): handle {.constructor,importcpp: "handle<T>(@)", header:"Standard_Handle.hxx".}
  ## Constructor from pointer to new object

proc constructor_handle<T>*(theHandle: handle<T>): handle {.constructor,importcpp: "handle<T>(@)", header:"Standard_Handle.hxx".}
  ## Copy constructor

proc constructor_handle<T>*(theHandle: var handle<T> &): handle {.constructor,importcpp: "handle<T>(@)", header:"Standard_Handle.hxx".}
  ## Move constructor
  ## 



include GC_MakeArcOfCircle
include GC_MakeArcOfEllipse
include GC_MakeArcOfHyperbola
include GC_MakeArcOfParabola
include GC_MakeCircle
include GC_MakeConicalSurface
include GC_MakeCylindricalSurface
include GC_MakeEllipse
include GC_MakeHyperbola
include GC_MakeLine
include GC_MakeMirror
include GC_MakePlane
include GC_MakeRotation
include GC_MakeScale
include GC_MakeSegment
include GC_MakeTranslation
include GC_MakeTrimmedCone
include GC_MakeTrimmedCylinder
include GC_Root


