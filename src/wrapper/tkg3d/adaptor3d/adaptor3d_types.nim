type
  Adaptor3dCurve* {.importcpp: "Adaptor3d_Curve", header: "Adaptor3d_Curve.hxx",
                   bycopy.} = object of RootObj
type
  Adaptor3dCurveOnSurface* {.importcpp: "Adaptor3d_CurveOnSurface",
                            header: "Adaptor3d_CurveOnSurface.hxx", bycopy.} = object of Adaptor3dCurve
type
  HandleAdaptor3dHCurve* = Handle[Adaptor3dHCurve]
## ! Root class for 3D curves manipulated by handles, on
## ! which geometric algorithms work.
## ! An adapted curve is an interface between the
## ! services provided by a curve and those required of
## ! the curve by algorithms which use it.
## ! Two derived concrete classes are provided:
## ! - GeomAdaptor_HCurve for a curve from the Geom package
## ! - Adaptor3d_HCurveOnSurface for a curve lying
## ! on a surface from the Geom package.
type
  Adaptor3dHCurve* {.importcpp: "Adaptor3d_HCurve", header: "Adaptor3d_HCurve.hxx",
                    bycopy.} = object of StandardTransient ## ! Returns a pointer to the Curve inside the HCurve.
type
  HandleAdaptor3dHCurveOnSurface* = Handle[Adaptor3dHCurveOnSurface]
  Adaptor3dHCurveOnSurface* {.importcpp: "Adaptor3d_HCurveOnSurface",
                             header: "Adaptor3d_HCurveOnSurface.hxx", bycopy.} = object of Adaptor3dHCurve ##
                                                                                                    ## !
                                                                                                    ## Creates
                                                                                                    ## an
                                                                                                    ## empty
                                                                                                    ## GenHCurve.
type
  HandleAdaptor3dHIsoCurve* = Handle[Adaptor3dHIsoCurve]
  Adaptor3dHIsoCurve* {.importcpp: "Adaptor3d_HIsoCurve",
                       header: "Adaptor3d_HIsoCurve.hxx", bycopy.} = object of Adaptor3dHCurve ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## an
                                                                                        ## empty
                                                                                        ## GenHCurve.
type
  HandleAdaptor3dHSurface* = Handle[Adaptor3dHSurface]
## ! Root class for surfaces manipulated by handles, on
## ! which geometric algorithms work.
## ! An adapted surface is an interface between the
## ! services provided by a surface and those required of
## ! the surface by algorithms which use it.
## ! A derived concrete class is provided:
## ! GeomAdaptor_HSurface for a surface from the Geom package.
type
  Adaptor3dHSurface* {.importcpp: "Adaptor3d_HSurface",
                      header: "Adaptor3d_HSurface.hxx", bycopy.} = object of StandardTransient ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## a
                                                                                        ## reference
                                                                                        ## to
                                                                                        ## the
                                                                                        ## Surface
                                                                                        ## inside
                                                                                        ## the
                                                                                        ## HSurface.
type
  Adaptor3dHSurfaceTool* {.importcpp: "Adaptor3d_HSurfaceTool",
                          header: "Adaptor3d_HSurfaceTool.hxx", bycopy.} = object
type
  HandleAdaptor3dHVertex* = Handle[Adaptor3dHVertex]
  Adaptor3dHVertex* {.importcpp: "Adaptor3d_HVertex",
                     header: "Adaptor3d_HVertex.hxx", bycopy.} = object of StandardTransient
type
  Adaptor3dInterFunc* {.importcpp: "Adaptor3d_InterFunc",
                       header: "Adaptor3d_InterFunc.hxx", bycopy.} = object of MathFunctionWithDerivative ##
                                                                                                   ## !
                                                                                                   ## build
                                                                                                   ## the
                                                                                                   ## function
                                                                                                   ## U(t)=FixVal
                                                                                                   ## if
                                                                                                   ## Fix
                                                                                                   ## =1
                                                                                                   ## or
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## V(t)=FixVal
                                                                                                   ## if
                                                                                                   ## Fix=2
type
  Adaptor3dIsoCurve* {.importcpp: "Adaptor3d_IsoCurve",
                      header: "Adaptor3d_IsoCurve.hxx", bycopy.} = object of Adaptor3dCurve ##
                                                                                     ## !
                                                                                     ## The
                                                                                     ## iso
                                                                                     ## is
                                                                                     ## set
                                                                                     ## to
                                                                                     ## NoneIso.
type
  Adaptor3dSurface* {.importcpp: "Adaptor3d_Surface",
                     header: "Adaptor3d_Surface.hxx", bycopy.} = object of RootObj
type
  HandleAdaptor3dTopolTool* = Handle[Adaptor3dTopolTool]
## ! This class provides a default topological tool,
## ! based on the Umin,Vmin,Umax,Vmax of an HSurface
## ! from Adaptor3d.
## ! All methods and fields may be redefined when
## ! inheriting from this class.
## ! This class is used to instantiate algorithmes
## ! as Intersection, outlines,...
type
  Adaptor3dTopolTool* {.importcpp: "Adaptor3d_TopolTool",
                       header: "Adaptor3d_TopolTool.hxx", bycopy.} = object of StandardTransient
