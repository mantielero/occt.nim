type
  Adaptor2dCurve2d* {.importcpp: "Adaptor2d_Curve2d",
                     header: "Adaptor2d_Curve2d.hxx", bycopy.} = object of RootObj
type
  HandleAdaptor2dHCurve2d* = Handle[Adaptor2dHCurve2d]
## ! Root class for 2D curves manipulated by handles, on
## ! which geometric algorithms work.
## ! An adapted curve is an interface between the
## ! services provided by a curve, and those required of
## ! the curve by algorithms, which use it.
## ! A derived specific class is provided:
## ! Geom2dAdaptor_HCurve for a curve from the Geom2d package.
type
  Adaptor2dHCurve2d* {.importcpp: "Adaptor2d_HCurve2d",
                      header: "Adaptor2d_HCurve2d.hxx", bycopy.} = object of StandardTransient ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## a
                                                                                        ## reference
                                                                                        ## to
                                                                                        ## the
                                                                                        ## Curve2d
                                                                                        ## inside
                                                                                        ## the
                                                                                        ## HCurve2d.
type
  HandleAdaptor2dHLine2d* = Handle[Adaptor2dHLine2d]
  Adaptor2dHLine2d* {.importcpp: "Adaptor2d_HLine2d",
                     header: "Adaptor2d_HLine2d.hxx", bycopy.} = object of Adaptor2dHCurve2d ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## an
                                                                                      ## empty
                                                                                      ## GenHCurve2d.
type
  HandleAdaptor2dHOffsetCurve* = Handle[Adaptor2dHOffsetCurve]
  Adaptor2dHOffsetCurve* {.importcpp: "Adaptor2d_HOffsetCurve",
                          header: "Adaptor2d_HOffsetCurve.hxx", bycopy.} = object of Adaptor2dHCurve2d ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## an
                                                                                                ## empty
                                                                                                ## GenHCurve2d.
type
  Adaptor2dLine2d* {.importcpp: "Adaptor2d_Line2d", header: "Adaptor2d_Line2d.hxx",
                    bycopy.} = object of Adaptor2dCurve2d
type
  Adaptor2dOffsetCurve* {.importcpp: "Adaptor2d_OffsetCurve",
                         header: "Adaptor2d_OffsetCurve.hxx", bycopy.} = object of Adaptor2dCurve2d ##
                                                                                             ## !
                                                                                             ## The
                                                                                             ## Offset
                                                                                             ## is
                                                                                             ## set
                                                                                             ## to
                                                                                             ## 0.
