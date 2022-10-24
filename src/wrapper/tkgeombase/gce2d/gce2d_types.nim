type
  GCE2dMakeArcOfCircle* {.importcpp: "GCE2d_MakeArcOfCircle",
                         header: "GCE2d_MakeArcOfCircle.hxx", bycopy.} = object of GCE2dRoot ##
                                                                                      ## !
                                                                                      ## Makes
                                                                                      ## an
                                                                                      ## arc
                                                                                      ## of
                                                                                      ## circle
                                                                                      ## (TrimmedCurve
                                                                                      ## from
                                                                                      ## Geom2d)
                                                                                      ## from
                                                                                      ##
                                                                                      ## !
                                                                                      ## a
                                                                                      ## circle
                                                                                      ## between
                                                                                      ## two
                                                                                      ## parameters
                                                                                      ## Alpha1
                                                                                      ## and
                                                                                      ## Alpha2.
                                                                                      ##
                                                                                      ## !
                                                                                      ## The
                                                                                      ## two
                                                                                      ## parameters
                                                                                      ## are
                                                                                      ## angles.
                                                                                      ## The
                                                                                      ## parameters
                                                                                      ## are
                                                                                      ##
                                                                                      ## !
                                                                                      ## in
                                                                                      ## radians.
type
  GCE2dMakeArcOfEllipse* {.importcpp: "GCE2d_MakeArcOfEllipse",
                          header: "GCE2d_MakeArcOfEllipse.hxx", bycopy.} = object of GCE2dRoot ##
                                                                                        ## !
                                                                                        ## Make
                                                                                        ## an
                                                                                        ## arc
                                                                                        ## of
                                                                                        ## Ellipse
                                                                                        ## (TrimmedCurve
                                                                                        ## from
                                                                                        ## Geom2d)
                                                                                        ## from
                                                                                        ##
                                                                                        ## !
                                                                                        ## a
                                                                                        ## Ellipse
                                                                                        ## between
                                                                                        ## two
                                                                                        ## parameters
                                                                                        ## Alpha1
                                                                                        ## and
                                                                                        ## Alpha2.
type
  GCE2dMakeArcOfHyperbola* {.importcpp: "GCE2d_MakeArcOfHyperbola",
                            header: "GCE2d_MakeArcOfHyperbola.hxx", bycopy.} = object of GCE2dRoot ##
                                                                                            ## !
                                                                                            ## Makes
                                                                                            ## an
                                                                                            ## arc
                                                                                            ## of
                                                                                            ## Hyperbola
                                                                                            ## (TrimmedCurve
                                                                                            ## from
                                                                                            ## Geom2d)
                                                                                            ## from
                                                                                            ##
                                                                                            ## !
                                                                                            ## a
                                                                                            ## Hyperbola
                                                                                            ## between
                                                                                            ## two
                                                                                            ## parameters
                                                                                            ## Alpha1
                                                                                            ## and
                                                                                            ## Alpha2.
type
  GCE2dMakeArcOfParabola* {.importcpp: "GCE2d_MakeArcOfParabola",
                           header: "GCE2d_MakeArcOfParabola.hxx", bycopy.} = object of GCE2dRoot ##
                                                                                          ## !
                                                                                          ## Make
                                                                                          ## an
                                                                                          ## arc
                                                                                          ## of
                                                                                          ## Parabola
                                                                                          ## (TrimmedCurve
                                                                                          ## from
                                                                                          ## Geom2d)
                                                                                          ## from
                                                                                          ##
                                                                                          ## !
                                                                                          ## a
                                                                                          ## Parabola
                                                                                          ## between
                                                                                          ## two
                                                                                          ## parameters
                                                                                          ## Alpha1
                                                                                          ## and
                                                                                          ## Alpha2.
type
  GCE2dMakeCircle* {.importcpp: "GCE2d_MakeCircle", header: "GCE2d_MakeCircle.hxx",
                    bycopy.} = object of GCE2dRoot ## ! creates a circle from a non persistent one.
type
  GCE2dMakeEllipse* {.importcpp: "GCE2d_MakeEllipse",
                     header: "GCE2d_MakeEllipse.hxx", bycopy.} = object of GCE2dRoot ## !
                                                                              ## Creates an
                                                                              ## ellipse
                                                                              ## from a
                                                                              ## non
                                                                              ## persistent
                                                                              ## one
                                                                              ## from
                                                                              ## package gp
type
  GCE2dMakeHyperbola* {.importcpp: "GCE2d_MakeHyperbola",
                       header: "GCE2d_MakeHyperbola.hxx", bycopy.} = object of GCE2dRoot ##
                                                                                  ## !
                                                                                  ## Creates
                                                                                  ## an
                                                                                  ## Hyperbola
                                                                                  ## from
                                                                                  ## a
                                                                                  ## non
                                                                                  ## persistent
                                                                                  ## one
                                                                                  ## from
                                                                                  ## package
                                                                                  ## gp
type
  GCE2dMakeLine* {.importcpp: "GCE2d_MakeLine", header: "GCE2d_MakeLine.hxx", bycopy.} = object of GCE2dRoot ##
                                                                                                   ## !
                                                                                                   ## Creates
                                                                                                   ## a
                                                                                                   ## line
                                                                                                   ## located
                                                                                                   ## in
                                                                                                   ## 2D
                                                                                                   ## space
                                                                                                   ## with
                                                                                                   ## the
                                                                                                   ## axis
                                                                                                   ## placement
                                                                                                   ## A.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## The
                                                                                                   ## Location
                                                                                                   ## of
                                                                                                   ## A
                                                                                                   ## is
                                                                                                   ## the
                                                                                                   ## origin
                                                                                                   ## of
                                                                                                   ## the
                                                                                                   ## line.
type
  GCE2dMakeMirror* {.importcpp: "GCE2d_MakeMirror", header: "GCE2d_MakeMirror.hxx",
                    bycopy.} = object
type
  GCE2dMakeParabola* {.importcpp: "GCE2d_MakeParabola",
                      header: "GCE2d_MakeParabola.hxx", bycopy.} = object of GCE2dRoot ##
                                                                                ## !
                                                                                ## Creates
                                                                                ## a
                                                                                ## parabola
                                                                                ## from
                                                                                ## a
                                                                                ## non
                                                                                ## persistent
                                                                                ## one.
type
  GCE2dMakeRotation* {.importcpp: "GCE2d_MakeRotation",
                      header: "GCE2d_MakeRotation.hxx", bycopy.} = object ## ! Constructs a rotation through angle Angle about the center Point.
type
  GCE2dMakeScale* {.importcpp: "GCE2d_MakeScale", header: "GCE2d_MakeScale.hxx",
                   bycopy.} = object ## ! Constructs a scaling transformation with
                                  ## ! -   Point as the center of the transformation, and
                                  ## ! -   Scale as the scale factor.
type
  GCE2dMakeSegment* {.importcpp: "GCE2d_MakeSegment",
                     header: "GCE2d_MakeSegment.hxx", bycopy.} = object of GCE2dRoot ## !
                                                                              ## Make a
                                                                              ## segment of
                                                                              ## Line
                                                                              ## from
                                                                              ## the 2
                                                                              ## points
                                                                              ## <P1>
                                                                              ## and
                                                                              ## <P2>.
                                                                              ## !
                                                                              ## Status is
                                                                              ## "ConfusedPoints" if
                                                                              ## <P1>
                                                                              ## and
                                                                              ## <P2>
                                                                              ## are
                                                                              ## confused.
type
  GCE2dMakeTranslation* {.importcpp: "GCE2d_MakeTranslation",
                         header: "GCE2d_MakeTranslation.hxx", bycopy.} = object ## !
                                                                           ## Constructs a
                                                                           ## translation along the
                                                                           ## vector Vect.
type
  GCE2dRoot* {.importcpp: "GCE2d_Root", header: "GCE2d_Root.hxx", bycopy, pure, inheritable.} = object ## !
                                                                            ## Returns true if the
                                                                            ## construction is
                                                                            ## successful.
