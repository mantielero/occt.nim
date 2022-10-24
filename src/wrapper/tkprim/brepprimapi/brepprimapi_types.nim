# PROVIDES:
# DEPENDS: BRepBuilderAPI_MakeShape BRepPrimAPI_MakeOneAxis BRepPrimAPI_MakeOneAxis BRepBuilderAPI_MakeShape BRepBuilderAPI_MakeShape BRepPrimAPI_MakeSweep BRepPrimAPI_MakeSweep BRepPrimAPI_MakeOneAxis BRepPrimAPI_MakeOneAxis BRepBuilderAPI_MakeShape BRepPrimAPI_MakeOneAxis BRepBuilderAPI_MakeShape

type
  BRepPrimAPI_MakeBox* {.importcpp: "BRepPrimAPI_MakeBox",
                        header: "BRepPrimAPI_MakeBox.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                  ## !
                                                                                                  ## Default
                                                                                                  ## constructor

type
  BRepPrimAPI_MakeCone* {.importcpp: "BRepPrimAPI_MakeCone",
                         header: "BRepPrimAPI_MakeCone.hxx", bycopy.} = object of BRepPrimAPI_MakeOneAxis ##
                                                                                                   ## !
                                                                                                   ## Make
                                                                                                   ## a
                                                                                                   ## cone.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## @param
                                                                                                   ## R1
                                                                                                   ## [in]
                                                                                                   ## cone
                                                                                                   ## bottom
                                                                                                   ## radius,
                                                                                                   ## may
                                                                                                   ## be
                                                                                                   ## null
                                                                                                   ## (z
                                                                                                   ## =
                                                                                                   ## 0)
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## @param
                                                                                                   ## R2
                                                                                                   ## [in]
                                                                                                   ## cone
                                                                                                   ## top
                                                                                                   ## radius,
                                                                                                   ## may
                                                                                                   ## be
                                                                                                   ## null
                                                                                                   ## (z
                                                                                                   ## =
                                                                                                   ## H)
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## @param
                                                                                                   ## H
                                                                                                   ## [in]
                                                                                                   ## cone
                                                                                                   ## height

type
  BRepPrimAPI_MakeCylinder* {.importcpp: "BRepPrimAPI_MakeCylinder",
                             header: "BRepPrimAPI_MakeCylinder.hxx", bycopy.} = object of BRepPrimAPI_MakeOneAxis ##
                                                                                                           ## !
                                                                                                           ## Make
                                                                                                           ## a
                                                                                                           ## cylinder.
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## @param
                                                                                                           ## R
                                                                                                           ## [in]
                                                                                                           ## cylinder
                                                                                                           ## radius
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## @param
                                                                                                           ## H
                                                                                                           ## [in]
                                                                                                           ## cylinder
                                                                                                           ## height

type
  BRepPrimAPI_MakeHalfSpace* {.importcpp: "BRepPrimAPI_MakeHalfSpace",
                              header: "BRepPrimAPI_MakeHalfSpace.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                              ## !
                                                                                                              ## Make
                                                                                                              ## a
                                                                                                              ## HalfSpace
                                                                                                              ## defined
                                                                                                              ## with
                                                                                                              ## a
                                                                                                              ## Face
                                                                                                              ## and
                                                                                                              ## a
                                                                                                              ## Point.

type
  BRepPrimAPI_MakeOneAxis* {.importcpp: "BRepPrimAPI_MakeOneAxis",
                            header: "BRepPrimAPI_MakeOneAxis.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                          ## !
                                                                                                          ## The
                                                                                                          ## inherited
                                                                                                          ## commands
                                                                                                          ## should
                                                                                                          ## provide
                                                                                                          ## the
                                                                                                          ## algorithm.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Returned
                                                                                                          ## as
                                                                                                          ## a
                                                                                                          ## pointer.

type
  BRepPrimAPI_MakePrism* {.importcpp: "BRepPrimAPI_MakePrism",
                          header: "BRepPrimAPI_MakePrism.hxx", bycopy.} = object of BRepPrimAPI_MakeSweep ##
                                                                                                   ## !
                                                                                                   ## Builds
                                                                                                   ## the
                                                                                                   ## prism
                                                                                                   ## of
                                                                                                   ## base
                                                                                                   ## S
                                                                                                   ## and
                                                                                                   ## vector
                                                                                                   ## V.
                                                                                                   ## If
                                                                                                   ## C
                                                                                                   ## is
                                                                                                   ## true,
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## S
                                                                                                   ## is
                                                                                                   ## copied.
                                                                                                   ## If
                                                                                                   ## Canonize
                                                                                                   ## is
                                                                                                   ## true
                                                                                                   ## then
                                                                                                   ## generated
                                                                                                   ## surfaces
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## are
                                                                                                   ## attempted
                                                                                                   ## to
                                                                                                   ## be
                                                                                                   ## canonized
                                                                                                   ## in
                                                                                                   ## simple
                                                                                                   ## types

type
  BRepPrimAPI_MakeRevol* {.importcpp: "BRepPrimAPI_MakeRevol",
                          header: "BRepPrimAPI_MakeRevol.hxx", bycopy.} = object of BRepPrimAPI_MakeSweep ##
                                                                                                   ## !
                                                                                                   ## Builds
                                                                                                   ## the
                                                                                                   ## Revol
                                                                                                   ## of
                                                                                                   ## base
                                                                                                   ## S,
                                                                                                   ## axis
                                                                                                   ## A
                                                                                                   ## and
                                                                                                   ## angle
                                                                                                   ## D.
                                                                                                   ## If
                                                                                                   ## C
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## is
                                                                                                   ## true,
                                                                                                   ## S
                                                                                                   ## is
                                                                                                   ## copied.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## Checks
                                                                                                   ## possibilities
                                                                                                   ## of
                                                                                                   ## producing
                                                                                                   ## self-intersection
                                                                                                   ## surface
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## returns
                                                                                                   ## true
                                                                                                   ## if
                                                                                                   ## all
                                                                                                   ## surfaces
                                                                                                   ## are
                                                                                                   ## valid

type
  BRepPrimAPI_MakeRevolution* {.importcpp: "BRepPrimAPI_MakeRevolution",
                               header: "BRepPrimAPI_MakeRevolution.hxx", bycopy.} = object of BRepPrimAPI_MakeOneAxis ##
                                                                                                               ## !
                                                                                                               ## Make
                                                                                                               ## a
                                                                                                               ## revolution
                                                                                                               ## body
                                                                                                               ## by
                                                                                                               ## rotating
                                                                                                               ## a
                                                                                                               ## curve
                                                                                                               ## around
                                                                                                               ## Z.

type
  BRepPrimAPI_MakeSphere* {.importcpp: "BRepPrimAPI_MakeSphere",
                           header: "BRepPrimAPI_MakeSphere.hxx", bycopy.} = object of BRepPrimAPI_MakeOneAxis ##
                                                                                                       ## !
                                                                                                       ## Make
                                                                                                       ## a
                                                                                                       ## sphere.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## @param
                                                                                                       ## R
                                                                                                       ## [in]
                                                                                                       ## sphere
                                                                                                       ## radius

type
  BRepPrimAPI_MakeSweep* {.importcpp: "BRepPrimAPI_MakeSweep",
                          header: "BRepPrimAPI_MakeSweep.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                      ## !
                                                                                                      ## Returns
                                                                                                      ## the
                                                                                                      ## TopoDS
                                                                                                      ## Shape
                                                                                                      ## of
                                                                                                      ## the
                                                                                                      ## bottom
                                                                                                      ## of
                                                                                                      ## the
                                                                                                      ## sweep.

type
  BRepPrimAPI_MakeTorus* {.importcpp: "BRepPrimAPI_MakeTorus",
                          header: "BRepPrimAPI_MakeTorus.hxx", bycopy.} = object of BRepPrimAPI_MakeOneAxis ##
                                                                                                     ## !
                                                                                                     ## Make
                                                                                                     ## a
                                                                                                     ## torus.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## @param
                                                                                                     ## R1
                                                                                                     ## [in]
                                                                                                     ## distance
                                                                                                     ## from
                                                                                                     ## the
                                                                                                     ## center
                                                                                                     ## of
                                                                                                     ## the
                                                                                                     ## pipe
                                                                                                     ## to
                                                                                                     ## the
                                                                                                     ## center
                                                                                                     ## of
                                                                                                     ## the
                                                                                                     ## torus
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## @param
                                                                                                     ## R2
                                                                                                     ## [in]
                                                                                                     ## radius
                                                                                                     ## of
                                                                                                     ## the
                                                                                                     ## pipe

                                                                                                     ## pipe
type
  BRepPrimAPI_MakeWedge* {.importcpp: "BRepPrimAPI_MakeWedge",
                          header: "BRepPrimAPI_MakeWedge.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                      ## !
                                                                                                      ## Make
                                                                                                      ## a
                                                                                                      ## STEP
                                                                                                      ## right
                                                                                                      ## angular
                                                                                                      ## wedge.
                                                                                                      ## (ltx
                                                                                                      ## >=
                                                                                                      ## 0)


