import ../tkgeombase/gc/gc_types
type
  GceErrorType* {.size: sizeof(cint), importcpp: "gce_ErrorType",
                 header: "gce_ErrorType.hxx".} = enum
    gceDone, gceConfusedPoints, gceNegativeRadius, gceColinearPoints,
    gceIntersectionError, gceNullAxis, gceNullAngle, gceNullRadius, gceInvertAxis,
    gceBadAngle, gceInvertRadius, gceNullFocusLength, gceNullVector, gceBadEquation

  GceMakeMirror* {.importcpp: "gce_MakeMirror", header: "gce_MakeMirror.hxx", bycopy.} = object

  GceMakeMirror2d* {.importcpp: "gce_MakeMirror2d", header: "gce_MakeMirror2d.hxx",
                    bycopy.} = object

  GceMakeRotation* {.importcpp: "gce_MakeRotation", header: "gce_MakeRotation.hxx",
                    bycopy.} = object 

  GceMakeRotation2d* {.importcpp: "gce_MakeRotation2d",
                      header: "gce_MakeRotation2d.hxx", bycopy.} = object 

  GceMakeScale* {.importcpp: "gce_MakeScale", header: "gce_MakeScale.hxx", bycopy.} = object 

  GceMakeScale2d* {.importcpp: "gce_MakeScale2d", header: "gce_MakeScale2d.hxx",
                   bycopy.} = object 

  GceMakeTranslation* {.importcpp: "gce_MakeTranslation",
                       header: "gce_MakeTranslation.hxx", bycopy.} = object 

  GceMakeTranslation2d* {.importcpp: "gce_MakeTranslation2d",
                         header: "gce_MakeTranslation2d.hxx", bycopy.} = object 

  GceRoot* {.importcpp: "gce_Root", header: "gce_Root.hxx", bycopy.} = object of RootObj 

  GceMakeCirc* {.importcpp: "gce_MakeCirc", header: "gce_MakeCirc.hxx", bycopy.} = object of GceRoot 

  GceMakeCirc2d* {.importcpp: "gce_MakeCirc2d", header: "gce_MakeCirc2d.hxx", bycopy.} = object of GceRoot 

  GceMakeCone* {.importcpp: "gce_MakeCone", header: "gce_MakeCone.hxx", bycopy.} = object of GceRoot 

  GceMakeCylinder* {.importcpp: "gce_MakeCylinder", header: "gce_MakeCylinder.hxx",
                    bycopy.} = object of GceRoot 

  GceMakeDir* {.importcpp: "gce_MakeDir", header: "gce_MakeDir.hxx", bycopy.} = object of GceRoot 

  GceMakeDir2d* {.importcpp: "gce_MakeDir2d", header: "gce_MakeDir2d.hxx", bycopy.} = object of GceRoot 

  GceMakeElips* {.importcpp: "gce_MakeElips", header: "gce_MakeElips.hxx", bycopy.} = object of GceRoot 

  GceMakeElips2d* {.importcpp: "gce_MakeElips2d", header: "gce_MakeElips2d.hxx",
                   bycopy.} = object of GceRoot 

  GceMakeHypr* {.importcpp: "gce_MakeHypr", header: "gce_MakeHypr.hxx", bycopy.} = object of GceRoot 

  GceMakeHypr2d* {.importcpp: "gce_MakeHypr2d", header: "gce_MakeHypr2d.hxx", bycopy.} = object of GceRoot 

  GceMakeLin* {.importcpp: "gce_MakeLin", header: "gce_MakeLin.hxx", bycopy.} = object of GceRoot 

  GceMakeLin2d* {.importcpp: "gce_MakeLin2d", header: "gce_MakeLin2d.hxx", bycopy.} = object of GceRoot 

  GceMakeParab* {.importcpp: "gce_MakeParab", header: "gce_MakeParab.hxx", bycopy.} = object of GceRoot 

  GceMakeParab2d* {.importcpp: "gce_MakeParab2d", header: "gce_MakeParab2d.hxx",
                   bycopy.} = object of GceRoot 
                   bycopy.} = object of GceRoot 

                   bycopy.} = object of GceRoot 
  GceMakePln* {.importcpp: "gce_MakePln", header: "gce_MakePln.hxx", bycopy.} = object of GceRoot 

