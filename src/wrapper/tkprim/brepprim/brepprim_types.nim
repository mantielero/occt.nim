# PROVIDES: BRepPrimBuilder BRepPrimFaceBuilder BRepPrimGWedge BRepPrimOneAxis BRepPrimRevolution BRepPrimWedge BRepPrimCone BRepPrimCylinder BRepPrimSphere BRepPrimTorus
# DEPENDS:

type
  BRepPrimBuilder* {.importcpp: "BRepPrim_Builder", header: "BRepPrim_Builder.hxx",
                    bycopy.} = object ## ! Creates an empty, useless  Builder. Necesseray for
                                   ## ! compilation.

type
  BRepPrimFaceBuilder* {.importcpp: "BRepPrim_FaceBuilder",
                        header: "BRepPrim_FaceBuilder.hxx", bycopy.} = object

type
  BRepPrimGWedge* {.importcpp: "BRepPrim_GWedge", header: "BRepPrim_GWedge.hxx",
                   bycopy.} = object of RootObj ## ! Default constructor

type
  BRepPrimOneAxis* {.importcpp: "BRepPrim_OneAxis", header: "BRepPrim_OneAxis.hxx",
                    bycopy.} = object of RootObj ## ! The MeridianOffset is added  to the  parameters on
                                   ## ! the meridian curve and  to  the  V values  of  the
                                   ## ! pcurves. This is  used for the sphere for example,
                                   ## ! to give a range on the meridian  edge which is not
                                   ## ! VMin, VMax.
                                   ## ! Creates a OneAxis algorithm.  <B> is used to build
                                   ## ! the Topology. The angle defaults to 2*PI.

type
  BRepPrimRevolution* {.importcpp: "BRepPrim_Revolution",
                       header: "BRepPrim_Revolution.hxx", bycopy.} = object of BRepPrimOneAxis ##
                                                                                        ## !
                                                                                        ## Create
                                                                                        ## a
                                                                                        ## revolution
                                                                                        ## body
                                                                                        ## <M>
                                                                                        ## is
                                                                                        ## the
                                                                                        ## meridian
                                                                                        ## nd
                                                                                        ##
                                                                                        ## !
                                                                                        ## must
                                                                                        ## be
                                                                                        ## in
                                                                                        ## the
                                                                                        ## XZ
                                                                                        ## plane
                                                                                        ## of
                                                                                        ## <A>.
                                                                                        ## <PM>
                                                                                        ## is
                                                                                        ## the
                                                                                        ##
                                                                                        ## !
                                                                                        ## meridian
                                                                                        ## in
                                                                                        ## the
                                                                                        ## XZ
                                                                                        ## plane.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Create
                                                                                        ## a
                                                                                        ## revolution
                                                                                        ## body.
                                                                                        ## The
                                                                                        ## meridian
                                                                                        ## is
                                                                                        ## set
                                                                                        ##
                                                                                        ## !
                                                                                        ## later.
                                                                                        ## Reserved
                                                                                        ## for
                                                                                        ## derivated
                                                                                        ## classes.

    ## !< radius of the pipe
type
  BRepPrimWedge* {.importcpp: "BRepPrim_Wedge", header: "BRepPrim_Wedge.hxx", bycopy.} = object of BRepPrimGWedge ##
                                                                                                        ## !
                                                                                                        ## Default
                                                                                                        ## constructor


type
  BRepPrimCone* {.importcpp: "BRepPrim_Cone", header: "BRepPrim_Cone.hxx", bycopy.} = object of BRepPrimRevolution ##
                                                                                                         ## !
                                                                                                         ## the
                                                                                                         ## STEP
                                                                                                         ## definition
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Angle
                                                                                                         ## =
                                                                                                         ## semi-angle
                                                                                                         ## of
                                                                                                         ## the
                                                                                                         ## cone
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Position
                                                                                                         ## :
                                                                                                         ## the
                                                                                                         ## coordinate
                                                                                                         ## system
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Height
                                                                                                         ## :
                                                                                                         ## height
                                                                                                         ## of
                                                                                                         ## the
                                                                                                         ## cone.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Radius
                                                                                                         ## :
                                                                                                         ## radius
                                                                                                         ## of
                                                                                                         ## truncated
                                                                                                         ## face
                                                                                                         ## at
                                                                                                         ## z
                                                                                                         ## =
                                                                                                         ## 0
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## The
                                                                                                         ## apex
                                                                                                         ## is
                                                                                                         ## on
                                                                                                         ## z
                                                                                                         ## <
                                                                                                         ## 0
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Errors
                                                                                                         ## :
                                                                                                         ## Height
                                                                                                         ## <
                                                                                                         ## Resolution
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Angle
                                                                                                         ## <
                                                                                                         ## Resolution
                                                                                                         ## /
                                                                                                         ## Height
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Angle
                                                                                                         ## >
                                                                                                         ## PI/2
                                                                                                         ## -
                                                                                                         ## Resolution
                                                                                                         ## /
                                                                                                         ## Height

type
  BRepPrimCylinder* {.importcpp: "BRepPrim_Cylinder",
                     header: "BRepPrim_Cylinder.hxx", bycopy.} = object of BRepPrimRevolution ##
                                                                                       ## !
                                                                                       ## the
                                                                                       ## STEP
                                                                                       ## definition
                                                                                       ##
                                                                                       ## !
                                                                                       ## Position
                                                                                       ## :
                                                                                       ## center
                                                                                       ## of
                                                                                       ## a
                                                                                       ## Face
                                                                                       ## and
                                                                                       ## Axis
                                                                                       ##
                                                                                       ## !
                                                                                       ## Radius
                                                                                       ## :
                                                                                       ## radius
                                                                                       ## of
                                                                                       ## cylinder
                                                                                       ##
                                                                                       ## !
                                                                                       ## Height
                                                                                       ## :
                                                                                       ## distance
                                                                                       ## between
                                                                                       ## faces
                                                                                       ##
                                                                                       ## !
                                                                                       ## on
                                                                                       ## positive
                                                                                       ## side
                                                                                       ##
                                                                                       ## !
                                                                                       ##
                                                                                       ## !
                                                                                       ## Errors
                                                                                       ## :
                                                                                       ## Height
                                                                                       ## <
                                                                                       ## Resolution
                                                                                       ##
                                                                                       ## !
                                                                                       ## Radius
                                                                                       ## <
                                                                                       ## Resolution
    ## !< cylinder radius

type
  BRepPrimSphere* {.importcpp: "BRepPrim_Sphere", header: "BRepPrim_Sphere.hxx",
                   bycopy.} = object of BRepPrimRevolution ## ! Creates a Sphere at  origin with  Radius. The axes
                                                      ## ! of the sphere are the  reference axes. An error is
                                                      ## ! raised if the radius is < Resolution.

type
  BRepPrimTorus* {.importcpp: "BRepPrim_Torus", header: "BRepPrim_Torus.hxx", bycopy.} = object of BRepPrimRevolution ##
                                                                                                            ## !
                                                                                                            ## the
                                                                                                            ## STEP
                                                                                                            ## definition
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## Position
                                                                                                            ## :
                                                                                                            ## center
                                                                                                            ## and
                                                                                                            ## axes
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## Major,
                                                                                                            ## Minor
                                                                                                            ## :
                                                                                                            ## Radii
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## Errors
                                                                                                            ## :
                                                                                                            ## Major
                                                                                                            ## <
                                                                                                            ## Resolution
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## Minor
                                                                                                            ## <
                                                                                                            ## Resolution
    ## !< distance from the center of the pipe to the center of the torus
    ## !< radius of the pipe

