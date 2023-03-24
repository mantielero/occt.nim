# import ../gce/gce_types
# import ../gc/gc_types

type
  GCE2dMakeMirror* {.importcpp: "GCE2d_MakeMirror", header: "GCE2d_MakeMirror.hxx",
                    bycopy.} = object

  GCE2dMakeRotation* {.importcpp: "GCE2d_MakeRotation",
                      header: "GCE2d_MakeRotation.hxx", bycopy.} = object 

  GCE2dMakeScale* {.importcpp: "GCE2d_MakeScale", header: "GCE2d_MakeScale.hxx",
                   bycopy.} = object 

  GCE2dMakeTranslation* {.importcpp: "GCE2d_MakeTranslation",
                         header: "GCE2d_MakeTranslation.hxx", bycopy.} = object 

  GCE2dRoot* {.importcpp: "GCE2d_Root", header: "GCE2d_Root.hxx", bycopy, pure, inheritable.} = object 

  GCE2dMakeArcOfCircle* {.importcpp: "GCE2d_MakeArcOfCircle",
                         header: "GCE2d_MakeArcOfCircle.hxx", bycopy.} = object of GCE2dRoot 

  GCE2dMakeArcOfEllipse* {.importcpp: "GCE2d_MakeArcOfEllipse",
                          header: "GCE2d_MakeArcOfEllipse.hxx", bycopy.} = object of GCE2dRoot 

  GCE2dMakeArcOfHyperbola* {.importcpp: "GCE2d_MakeArcOfHyperbola",
                            header: "GCE2d_MakeArcOfHyperbola.hxx", bycopy.} = object of GCE2dRoot 

  GCE2dMakeArcOfParabola* {.importcpp: "GCE2d_MakeArcOfParabola",
                           header: "GCE2d_MakeArcOfParabola.hxx", bycopy.} = object of GCE2dRoot 

  GCE2dMakeCircle* {.importcpp: "GCE2d_MakeCircle", header: "GCE2d_MakeCircle.hxx",
                    bycopy.} = object of GCE2dRoot 

  GCE2dMakeEllipse* {.importcpp: "GCE2d_MakeEllipse",
                     header: "GCE2d_MakeEllipse.hxx", bycopy.} = object of GCE2dRoot 

  GCE2dMakeHyperbola* {.importcpp: "GCE2d_MakeHyperbola",
                       header: "GCE2d_MakeHyperbola.hxx", bycopy.} = object of GCE2dRoot 

  GCE2dMakeLine* {.importcpp: "GCE2d_MakeLine", header: "GCE2d_MakeLine.hxx", bycopy.} = object of GCE2dRoot 

  GCE2dMakeParabola* {.importcpp: "GCE2d_MakeParabola",
                      header: "GCE2d_MakeParabola.hxx", bycopy.} = object of GCE2dRoot 
                      #header: "GCE2d_MakeParabola.hxx", bycopy.} = object of GCE2dRoot 

                      #header: "GCE2d_MakeParabola.hxx", bycopy.} = object of GCE2dRoot 
  GCE2dMakeSegment* {.importcpp: "GCE2d_MakeSegment",
                     header: "GCE2d_MakeSegment.hxx", bycopy.} = object of GCE2dRoot 

