# PROVIDES: LawLaws LawListIteratorOfLaws Law LawBSplineKnotSplitting LawInterpolate
# DEPENDS:  Handle[LawBSpFunc]  Handle[LawBSpline]  Handle[LawComposite]  Handle[LawConstant]  Handle[LawFunction]  Handle[LawInterpol]  Handle[LawLinear]  Handle[LawS] LawFunction StandardTransient LawFunction LawFunction StandardTransient LawBSpFunc LawFunction LawBSpFunc

import tkgeomalgo/law/law_types
import tkernel/standard/standard_types
type
  LawLaws* {.importcpp:"NCollection_List<Handle(Law_Function)>", header:"Law_Laws.hxx",bycopy.} = object

  LawListIteratorOfLaws* {.importcpp:"NCollection_List<Handle(Law_Function)>::Iterator", header:"Law_Laws.hxx",bycopy.} = object

  Law* {.importcpp: "Law", header: "Law.hxx", bycopy.} = object 

  LawBSplineKnotSplitting* {.importcpp: "Law_BSplineKnotSplitting",
                            header: "Law_BSplineKnotSplitting.hxx", bycopy.} = object 

  LawInterpolate* {.importcpp: "Law_Interpolate", header: "Law_Interpolate.hxx",
                   bycopy.} = object 

  HandleLawBSpFunc* = Handle[LawBSpFunc]

  HandleLawBSpline* = Handle[LawBSpline]

  HandleLawComposite* = Handle[LawComposite]

  HandleLawConstant* = Handle[LawConstant]

  HandleLawFunction* = Handle[LawFunction]

  HandleLawInterpol* = Handle[LawInterpol]

  HandleLawLinear* = Handle[LawLinear]

  HandleLawS* = Handle[LawS]

  LawBSpFunc* {.importcpp: "Law_BSpFunc", header: "Law_BSpFunc.hxx", bycopy.} = object of LawFunction

  LawBSpline* {.importcpp: "Law_BSpline", header: "Law_BSpline.hxx", bycopy.} = object of StandardTransient 

  LawComposite* {.importcpp: "Law_Composite", header: "Law_Composite.hxx", bycopy.} = object of LawFunction 

  LawConstant* {.importcpp: "Law_Constant", header: "Law_Constant.hxx", bycopy.} = object of LawFunction

  LawFunction* {.importcpp: "Law_Function", header: "Law_Function.hxx", bycopy.} = object of StandardTransient

  LawInterpol* {.importcpp: "Law_Interpol", header: "Law_Interpol.hxx", bycopy.} = object of LawBSpFunc 

  LawLinear* {.importcpp: "Law_Linear", header: "Law_Linear.hxx", bycopy.} = object of LawFunction 

  LawLinear* {.importcpp: "Law_Linear", header: "Law_Linear.hxx", bycopy.} = object of LawFunction 
  LawS* {.importcpp: "Law_S", header: "Law_S.hxx", bycopy.} = object of LawBSpFunc 


