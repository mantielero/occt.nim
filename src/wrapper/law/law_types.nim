import ../../tkernel/standard/standard_types
type
  LawLaws* {.importcpp:"NCollection_List<Handle(Law_Function)>", header:"Law_Laws.hxx",bycopy.} = object

  LawListIteratorOfLaws* {.importcpp:"NCollection_List<Handle(Law_Function)>::Iterator", header:"Law_Laws.hxx",bycopy.} = object

  Law* {.importcpp: "Law", header: "Law.hxx", bycopy.} = object 

  LawBSplineKnotSplitting* {.importcpp: "Law_BSplineKnotSplitting",
                            header: "Law_BSplineKnotSplitting.hxx", bycopy.} = object 

  LawInterpolate* {.importcpp: "Law_Interpolate", header: "Law_Interpolate.hxx",
                   bycopy.} = object 

  LawBSpline* {.importcpp: "Law_BSpline", header: "Law_BSpline.hxx", bycopy.} = object of StandardTransient 

  HandleLawBSpline* = Handle[LawBSpline]

  LawFunction* {.importcpp: "Law_Function", header: "Law_Function.hxx", bycopy.} = object of StandardTransient

  LawConstant* {.importcpp: "Law_Constant", header: "Law_Constant.hxx", bycopy.} = object of LawFunction

  HandleLawConstant* = Handle[LawConstant]

  LawComposite* {.importcpp: "Law_Composite", header: "Law_Composite.hxx", bycopy.} = object of LawFunction 

  HandleLawComposite* = Handle[LawComposite]

  LawBSpFunc* {.importcpp: "Law_BSpFunc", header: "Law_BSpFunc.hxx", bycopy.} = object of LawFunction

  HandleLawBSpFunc* = Handle[LawBSpFunc]

  HandleLawFunction* = Handle[LawFunction]

  LawInterpol* {.importcpp: "Law_Interpol", header: "Law_Interpol.hxx", bycopy.} = object of LawBSpFunc 

  HandleLawInterpol* = Handle[LawInterpol]

  LawLinear* {.importcpp: "Law_Linear", header: "Law_Linear.hxx", bycopy.} = object of LawFunction 

  HandleLawLinear* = Handle[LawLinear]

  #LawLinear* {.importcpp: "Law_Linear", header: "Law_Linear.hxx", bycopy.} = object of LawFunction 
  LawS* {.importcpp: "Law_S", header: "Law_S.hxx", bycopy.} = object of LawBSpFunc 

  HandleLawS* = Handle[LawS]

