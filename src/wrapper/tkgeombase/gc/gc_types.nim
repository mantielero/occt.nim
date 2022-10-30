# PROVIDES: MakeMirror MakeRotation MakeScale MakeTranslation Root
# DEPENDS: Root Root Root Root Root Root Root Root Root Root Root Root Root Root

type
  MakeMirror* {.importcpp: "GC_MakeMirror", header: "GC_MakeMirror.hxx", bycopy.} = object

  MakeRotation* {.importcpp: "GC_MakeRotation", header: "GC_MakeRotation.hxx", bycopy.} = object 

  MakeScale* {.importcpp: "GC_MakeScale", header: "GC_MakeScale.hxx", bycopy.} = object 

  MakeTranslation* {.importcpp: "GC_MakeTranslation",
                    header: "GC_MakeTranslation.hxx", bycopy.} = object 

  Root* {.importcpp: "GC_Root", header: "GC_Root.hxx", bycopy.} = object of RootObj 

  MakeArcOfCircle* {.importcpp: "GC_MakeArcOfCircle",
                    header: "GC_MakeArcOfCircle.hxx", bycopy.} = object of Root 

  MakeArcOfEllipse* {.importcpp: "GC_MakeArcOfEllipse",
                     header: "GC_MakeArcOfEllipse.hxx", bycopy.} = object of Root 

  MakeArcOfHyperbola* {.importcpp: "GC_MakeArcOfHyperbola",
                       header: "GC_MakeArcOfHyperbola.hxx", bycopy.} = object of Root 

  MakeArcOfParabola* {.importcpp: "GC_MakeArcOfParabola",
                      header: "GC_MakeArcOfParabola.hxx", bycopy.} = object of Root 

  MakeCircle* {.importcpp: "GC_MakeCircle", header: "GC_MakeCircle.hxx", bycopy.} = object of Root 

  MakeConicalSurface* {.importcpp: "GC_MakeConicalSurface",
                       header: "GC_MakeConicalSurface.hxx", bycopy.} = object of Root 

  MakeCylindricalSurface* {.importcpp: "GC_MakeCylindricalSurface",
                           header: "GC_MakeCylindricalSurface.hxx", bycopy.} = object of Root 

  MakeEllipse* {.importcpp: "GC_MakeEllipse", header: "GC_MakeEllipse.hxx", bycopy.} = object of Root 

  MakeHyperbola* {.importcpp: "GC_MakeHyperbola", header: "GC_MakeHyperbola.hxx",
                  bycopy.} = object of Root 

  MakeLine* {.importcpp: "GC_MakeLine", header: "GC_MakeLine.hxx", bycopy.} = object of Root 

  MakePlane* {.importcpp: "GC_MakePlane", header: "GC_MakePlane.hxx", bycopy.} = object of Root 

  MakeSegment* {.importcpp: "GC_MakeSegment", header: "GC_MakeSegment.hxx", bycopy.} = object of Root 

  MakeTrimmedCone* {.importcpp: "GC_MakeTrimmedCone",
                    header: "GC_MakeTrimmedCone.hxx", bycopy.} = object of Root 

                    header: "GC_MakeTrimmedCone.hxx", bycopy.} = object of Root 
  MakeTrimmedCylinder* {.importcpp: "GC_MakeTrimmedCylinder",
                        header: "GC_MakeTrimmedCylinder.hxx", bycopy.} = object of Root 


