# PROVIDES: Prs3d Prs3dArrow Prs3dDatumAxes Prs3dDimensionUnits HandlePrs3dDrawer Prs3dPoint Prs3dRoot Prs3dText Prs3dToolQuadric Prs3dBndBox Prs3dToolCylinder Prs3dToolDisk Prs3dToolSector Prs3dToolSphere Prs3dToolTorus
# DEPENDS: Prs3dBasicAspect Prs3dBasicAspect Prs3dBasicAspect Graphic3dPresentationAttributes Prs3dLineAspect Prs3dBasicAspect Prs3dBasicAspect Prs3dBasicAspect Graphic3dStructure Prs3dBasicAspect Prs3dBasicAspect

type
  Prs3d* {.importcpp: "Prs3d", header: "Prs3d.hxx", bycopy.} = object ## ! draws an arrow at a given location, with respect
                                                              ## ! to a given direction.

type
  Prs3dArrow* {.importcpp: "Prs3d_Arrow", header: "Prs3d_Arrow.hxx", bycopy.} = object ## !
                                                                               ## Defines
                                                                               ## the
                                                                               ## representation
                                                                               ## of
                                                                               ## the
                                                                               ## arrow
                                                                               ## as
                                                                               ## shaded
                                                                               ## triangulation.
                                                                               ## !
                                                                               ## @param
                                                                               ## theAxis
                                                                               ## axis
                                                                               ## definition
                                                                               ## (arrow
                                                                               ## origin
                                                                               ## and
                                                                               ## direction)
                                                                               ## !
                                                                               ## @param
                                                                               ## theTubeRadius
                                                                               ## tube
                                                                               ## (cylinder)
                                                                               ## radius
                                                                               ## !
                                                                               ## @param
                                                                               ## theAxisLength
                                                                               ## overall
                                                                               ## arrow
                                                                               ## length
                                                                               ## (cylinder +
                                                                               ## cone)
                                                                               ## !
                                                                               ## @param
                                                                               ## theConeRadius
                                                                               ## cone
                                                                               ## radius
                                                                               ## (arrow
                                                                               ## tip)
                                                                               ## !
                                                                               ## @param
                                                                               ## theConeLength
                                                                               ## cone
                                                                               ## length
                                                                               ## (arrow
                                                                               ## tip)
                                                                               ## !
                                                                               ## @param
                                                                               ## theNbFacettes
                                                                               ## tessellation
                                                                               ## quality
                                                                               ## for
                                                                               ## each
                                                                               ## part

type
  Prs3dDatumAxes* {.size: sizeof(cint), importcpp: "Prs3d_DatumAxes",
                   header: "Prs3d_DatumAxes.hxx".} = enum
    prs3dDA_XAxis = 0x00000001, ## !< X axis of the datum
    prs3dDA_YAxis = 0x00000002, ## !< Y axis of the datum
    prs3dDA_ZAxis = 0x00000004 ## !< Z axis of the datum

type
  Prs3dDimensionUnits* {.importcpp: "Prs3d_DimensionUnits",
                        header: "Prs3d_DimensionUnits.hxx", bycopy.} = object ## ! Default
                                                                         ## constructor. Sets meters as default length units
                                                                         ## ! and radians as default angle units.

type
  HandlePrs3dDrawer* = Handle[Prs3dDrawer]
## ! A graphic attribute manager which governs how
## ! objects such as color, width, line thickness and deflection are displayed.
## ! A drawer includes an instance of the Aspect classes with particular default values.

type
  Prs3dPoint*[AnyPoint; PointTool] {.importcpp: "Prs3d_Point<\'0,\'1>",
                                   header: "Prs3d_Point.hxx", bycopy.} = object

type
  Prs3dRoot* {.importcpp: "Prs3d_Root", header: "Prs3d_Root.hxx", bycopy.} = object of RootObj

type
  Prs3dText* {.importcpp: "Prs3d_Text", header: "Prs3d_Text.hxx", bycopy.} = object ## !
                                                                            ## Defines the
                                                                            ## display of the
                                                                            ## text.
                                                                            ## !
                                                                            ## @param
                                                                            ## theGroup
                                                                            ## group to add
                                                                            ## primitives
                                                                            ## !
                                                                            ## @param
                                                                            ## theAspect
                                                                            ## presentation
                                                                            ## attributes
                                                                            ## !
                                                                            ## @param
                                                                            ## theText   text to draw
                                                                            ## !
                                                                            ## @param
                                                                            ## theAttachmentPoint
                                                                            ## attachment
                                                                            ## point
                                                                            ## !
                                                                            ## @return text to draw
                                                                            ## !
                                                                            ## Alias to
                                                                            ## another
                                                                            ## method
                                                                            ## Draw() for
                                                                            ## backward
                                                                            ## compatibility.

type
  Prs3dToolQuadric* {.importcpp: "Prs3d_ToolQuadric",
                     header: "Prs3d_ToolQuadric.hxx", bycopy.} = object of RootObj ## ! Return number of triangles for presentation with the given params.
                                                                   ## ! Generate primitives for 3D quadric surface presentation.
                                                                   ## ! @param theTrsf [in] optional
                                                                   ## transformation to apply
                                                                   ## ! @return generated triangulation
                                                                   ## ! Generate primitives for 3D quadric surface presentation.
                                                                   ## ! @param theArray [out] generated array of triangles
                                                                   ## ! @param
                                                                   ## theTriangulation [out] generated triangulation
                                                                   ## ! @param theTrsf [in] optional
                                                                   ## transformation to apply
                                                                   ## ! Return number of triangles in generated presentation.
    ## !< number of slices within U parameter
    ## !< number of stacks within V parameter

type
  Prs3dBndBox* {.importcpp: "Prs3d_BndBox", header: "Prs3d_BndBox.hxx", bycopy.} = object of Prs3dRoot ##
                                                                                             ## !
                                                                                             ## Computes
                                                                                             ## presentation
                                                                                             ## of
                                                                                             ## a
                                                                                             ## bounding
                                                                                             ## box.
                                                                                             ##
                                                                                             ## !
                                                                                             ## @param
                                                                                             ## thePresentation
                                                                                             ## [in]
                                                                                             ## the
                                                                                             ## presentation.
                                                                                             ##
                                                                                             ## !
                                                                                             ## @param
                                                                                             ## theBndBox
                                                                                             ## [in]
                                                                                             ## the
                                                                                             ## bounding
                                                                                             ## box.
                                                                                             ##
                                                                                             ## !
                                                                                             ## @param
                                                                                             ## theDrawer
                                                                                             ## [in]
                                                                                             ## the
                                                                                             ## drawer.
                                                                                             ##
                                                                                             ## !
                                                                                             ## Create
                                                                                             ## primitive
                                                                                             ## array
                                                                                             ## with
                                                                                             ## line
                                                                                             ## segments
                                                                                             ## for
                                                                                             ## displaying
                                                                                             ## a
                                                                                             ## box.
                                                                                             ##
                                                                                             ## !
                                                                                             ## @param
                                                                                             ## theBox
                                                                                             ## [in]
                                                                                             ## the
                                                                                             ## box
                                                                                             ## to
                                                                                             ## add
                                                                                             ##
                                                                                             ## !
                                                                                             ## Create
                                                                                             ## primitive
                                                                                             ## array
                                                                                             ## with
                                                                                             ## line
                                                                                             ## segments
                                                                                             ## for
                                                                                             ## displaying
                                                                                             ## a
                                                                                             ## box.
                                                                                             ##
                                                                                             ## !
                                                                                             ## @param
                                                                                             ## theSegments
                                                                                             ## [in]
                                                                                             ## [out]
                                                                                             ## primitive
                                                                                             ## array
                                                                                             ## to
                                                                                             ## be
                                                                                             ## filled;
                                                                                             ##
                                                                                             ## !
                                                                                             ## should
                                                                                             ## be
                                                                                             ## at
                                                                                             ## least
                                                                                             ## 8
                                                                                             ## nodes
                                                                                             ## and
                                                                                             ## 24
                                                                                             ## edges
                                                                                             ## in
                                                                                             ## size
                                                                                             ##
                                                                                             ## !
                                                                                             ## @param
                                                                                             ## theBox
                                                                                             ## [in]
                                                                                             ## the
                                                                                             ## box
                                                                                             ## to
                                                                                             ## add

type
  Prs3dToolCylinder* {.importcpp: "Prs3d_ToolCylinder",
                      header: "Prs3d_ToolCylinder.hxx", bycopy.} = object of Prs3dToolQuadric ##
                                                                                       ## !
                                                                                       ## Generate
                                                                                       ## primitives
                                                                                       ## for
                                                                                       ## 3D
                                                                                       ## quadric
                                                                                       ## surface
                                                                                       ## and
                                                                                       ## return
                                                                                       ## a
                                                                                       ## filled
                                                                                       ## array.
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theBottomRad
                                                                                       ## [in]
                                                                                       ## cylinder
                                                                                       ## bottom
                                                                                       ## radius
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theTopRad
                                                                                       ## [in]
                                                                                       ## cylinder
                                                                                       ## top
                                                                                       ## radius
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theHeight
                                                                                       ## [in]
                                                                                       ## cylinder
                                                                                       ## height
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theNbSlices
                                                                                       ## [in]
                                                                                       ## number
                                                                                       ## of
                                                                                       ## slices
                                                                                       ## within
                                                                                       ## U
                                                                                       ## parameter
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theNbStacks
                                                                                       ## [in]
                                                                                       ## number
                                                                                       ## of
                                                                                       ## stacks
                                                                                       ## within
                                                                                       ## V
                                                                                       ## parameter
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theTrsf
                                                                                       ## [in]
                                                                                       ## optional
                                                                                       ## transformation
                                                                                       ## to
                                                                                       ## apply
                                                                                       ##
                                                                                       ## !
                                                                                       ## @return
                                                                                       ## generated
                                                                                       ## triangulation
                                                                                       ##
                                                                                       ## !
                                                                                       ## Initializes
                                                                                       ## the
                                                                                       ## algorithm
                                                                                       ## creating
                                                                                       ## a
                                                                                       ## cylinder.
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theBottomRad
                                                                                       ## [in]
                                                                                       ## cylinder
                                                                                       ## bottom
                                                                                       ## radius
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theTopRad
                                                                                       ## [in]
                                                                                       ## cylinder
                                                                                       ## top
                                                                                       ## radius
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theHeight
                                                                                       ## [in]
                                                                                       ## cylinder
                                                                                       ## height
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theNbSlices
                                                                                       ## [in]
                                                                                       ## number
                                                                                       ## of
                                                                                       ## slices
                                                                                       ## within
                                                                                       ## U
                                                                                       ## parameter
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theNbStacks
                                                                                       ## [in]
                                                                                       ## number
                                                                                       ## of
                                                                                       ## stacks
                                                                                       ## within
                                                                                       ## V
                                                                                       ## parameter
                                                                                       ##
                                                                                       ## !
                                                                                       ## Computes
                                                                                       ## vertex
                                                                                       ## at
                                                                                       ## given
                                                                                       ## parameter
                                                                                       ## location
                                                                                       ## of
                                                                                       ## the
                                                                                       ## surface.
    ## !< cylinder bottom radius
    ## !< cylinder top radius
    ## !< cylinder height

type
  Prs3dToolDisk* {.importcpp: "Prs3d_ToolDisk", header: "Prs3d_ToolDisk.hxx", bycopy.} = object of Prs3dToolQuadric ##
                                                                                                          ## !
                                                                                                          ## Generate
                                                                                                          ## primitives
                                                                                                          ## for
                                                                                                          ## 3D
                                                                                                          ## quadric
                                                                                                          ## surface.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theInnerRadius
                                                                                                          ## [in]
                                                                                                          ## inner
                                                                                                          ## disc
                                                                                                          ## radius
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theOuterRadius
                                                                                                          ## [in]
                                                                                                          ## outer
                                                                                                          ## disc
                                                                                                          ## radius
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theNbSlices
                                                                                                          ## [in]
                                                                                                          ## number
                                                                                                          ## of
                                                                                                          ## slices
                                                                                                          ## within
                                                                                                          ## U
                                                                                                          ## parameter
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theNbStacks
                                                                                                          ## [in]
                                                                                                          ## number
                                                                                                          ## of
                                                                                                          ## stacks
                                                                                                          ## within
                                                                                                          ## V
                                                                                                          ## parameter
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theTrsf
                                                                                                          ## [in]
                                                                                                          ## optional
                                                                                                          ## transformation
                                                                                                          ## to
                                                                                                          ## apply
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @return
                                                                                                          ## generated
                                                                                                          ## triangulation
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Initializes
                                                                                                          ## the
                                                                                                          ## algorithm
                                                                                                          ## creating
                                                                                                          ## a
                                                                                                          ## disk.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theInnerRadius
                                                                                                          ## [in]
                                                                                                          ## inner
                                                                                                          ## disk
                                                                                                          ## radius
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theOuterRadius
                                                                                                          ## [in]
                                                                                                          ## outer
                                                                                                          ## disk
                                                                                                          ## radius
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theNbSlices
                                                                                                          ## [in]
                                                                                                          ## number
                                                                                                          ## of
                                                                                                          ## slices
                                                                                                          ## within
                                                                                                          ## U
                                                                                                          ## parameter
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theNbStacks
                                                                                                          ## [in]
                                                                                                          ## number
                                                                                                          ## of
                                                                                                          ## stacks
                                                                                                          ## within
                                                                                                          ## V
                                                                                                          ## parameter
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Computes
                                                                                                          ## vertex
                                                                                                          ## at
                                                                                                          ## given
                                                                                                          ## parameter
                                                                                                          ## location
                                                                                                          ## of
                                                                                                          ## the
                                                                                                          ## surface.
    ## !< Inner disk radius
    ## !< Outer disk radius
    ## !< Start angle in counter clockwise order
    ## !< End   angle in counter clockwise order

type
  Prs3dToolSector* {.importcpp: "Prs3d_ToolSector", header: "Prs3d_ToolSector.hxx",
                    bycopy.} = object of Prs3dToolQuadric ## ! Generate primitives for 3D quadric surface.
                                                     ## ! @param theRadius   [in] sector radius
                                                     ## ! @param theNbSlices [in] number of slices within U parameter
                                                     ## ! @param theNbStacks [in] number of stacks within V parameter
                                                     ## ! @param theTrsf     [in] optional transformation to apply
                                                     ## ! @return generated triangulation
                                                     ## ! Initializes the algorithm creating a sector (quadrant).
                                                     ## ! @param theRadius   [in] sector radius
                                                     ## ! @param theNbSlices [in] number of slices within U parameter
                                                     ## ! @param theNbStacks [in] number of stacks within V parameter
                                                     ## ! Computes vertex at given parameter location of the surface.
    ## !< sector radius

type
  Prs3dToolSphere* {.importcpp: "Prs3d_ToolSphere", header: "Prs3d_ToolSphere.hxx",
                    bycopy.} = object of Prs3dToolQuadric ## ! Generate primitives for 3D quadric surface.
                                                     ## ! @param theRadius   [in] sphere radius
                                                     ## ! @param theNbSlices [in] number of slices within U parameter
                                                     ## ! @param theNbStacks [in] number of stacks within V parameter
                                                     ## ! @param theTrsf     [in] optional transformation to apply
                                                     ## ! @return generated triangulation
                                                     ## ! Initializes the algorithm creating a sphere.
                                                     ## ! @param theRadius   [in] sphere radius
                                                     ## ! @param theNbSlices [in] number of slices within U parameter
                                                     ## ! @param theNbStacks [in] number of stacks within V parameter
                                                     ## ! Computes vertex at given parameter location of the surface.
    ## !< sphere radius

    ## !< sphere radius
type
  Prs3dToolTorus* {.importcpp: "Prs3d_ToolTorus", header: "Prs3d_ToolTorus.hxx",
                   bycopy.} = object of Prs3dToolQuadric ## ! Generate primitives for 3D quadric surface (complete torus).
                                                    ## ! @param theMajorRad [in] distance from the center of the pipe to the center of the torus
                                                    ## ! @param theMinorRad [in] radius of the pipe
                                                    ## ! @param theNbSlices [in] number of slices within U parameter
                                                    ## ! @param theNbStacks [in] number of stacks within V parameter
                                                    ## ! @param theTrsf     [in] optional transformation to apply
                                                    ## ! @return generated triangulation
                                                    ## ! Initializes the algorithm creating a complete torus.
                                                    ## ! @param theMajorRad [in] distance from the center of the pipe to the center of the torus
                                                    ## ! @param theMinorRad [in] radius of the pipe
                                                    ## ! @param theNbSlices [in] number of slices within U parameter
                                                    ## ! @param theNbStacks [in] number of stacks within V parameter
                                                    ## ! Initialisation
                                                    ## ! @param theMajorRad [in] distance from the center of the pipe to the center of the torus
                                                    ## ! @param theMinorRad [in] radius of the pipe
                                                    ## ! @param theAngle1   [in] first  angle to create a torus ring segment
                                                    ## ! @param theAngle2   [in] second angle to create a torus ring segment
                                                    ## ! @param theAngle    [in] angle to create a torus pipe segment
                                                    ## ! @param theNbSlices [in] number of slices within U parameter
                                                    ## ! @param theNbStacks [in] number of stacks within V parameter
                                                    ## ! Computes vertex at given parameter location of the surface.
    ## !< distance from the center of the pipe to the center of the torus
    ## !< radius of the pipe
    ## !< angle to create a torus pipe segment
    ## !< first angle to create a torus ring segment
    ## !< second angle to create a torus ring segment


type
  Prs3dArrowAspect* {.importcpp: "Prs3d_ArrowAspect",
                     header: "Prs3d_ArrowAspect.hxx", bycopy.} = object of Prs3dBasicAspect ##
                                                                                     ## !
                                                                                     ## Constructs
                                                                                     ## an
                                                                                     ## empty
                                                                                     ## framework
                                                                                     ## for
                                                                                     ## displaying
                                                                                     ## arrows
                                                                                     ##
                                                                                     ## !
                                                                                     ## in
                                                                                     ## representations
                                                                                     ## of
                                                                                     ## lengths.
                                                                                     ## The
                                                                                     ## lengths
                                                                                     ## displayed
                                                                                     ##
                                                                                     ## !
                                                                                     ## are
                                                                                     ## either
                                                                                     ## on
                                                                                     ## their
                                                                                     ## own
                                                                                     ## or
                                                                                     ## in
                                                                                     ## chamfers,
                                                                                     ## fillets,
                                                                                     ##
                                                                                     ## !
                                                                                     ## diameters
                                                                                     ## and
                                                                                     ## radii.

type
  Prs3dDatumAspect* {.importcpp: "Prs3d_DatumAspect",
                     header: "Prs3d_DatumAspect.hxx", bycopy.} = object of Prs3dBasicAspect ##
                                                                                     ## !
                                                                                     ## An
                                                                                     ## empty
                                                                                     ## framework
                                                                                     ## to
                                                                                     ## define
                                                                                     ## the
                                                                                     ## display
                                                                                     ## of
                                                                                     ## datums.

type
  Prs3dDimensionAspect* {.importcpp: "Prs3d_DimensionAspect",
                         header: "Prs3d_DimensionAspect.hxx", bycopy.} = object of Prs3dBasicAspect ##
                                                                                             ## !
                                                                                             ## Constructs
                                                                                             ## an
                                                                                             ## empty
                                                                                             ## framework
                                                                                             ## to
                                                                                             ## define
                                                                                             ## the
                                                                                             ## display
                                                                                             ## of
                                                                                             ## dimensions.

type
  Prs3dDrawer* {.importcpp: "Prs3d_Drawer", header: "Prs3d_Drawer.hxx", bycopy.} = object of Graphic3dPresentationAttributes ##
                                                                                                                   ## !
                                                                                                                   ## Default
                                                                                                                   ## constructor.
                                                                                                                   ##
                                                                                                                   ## !
                                                                                                                   ## @name
                                                                                                                   ## deprecated
                                                                                                                   ## methods
    ## !< the most edge continuity class (GeomAbs_Shape) to be included to face boundaries presentation, or -1 if undefined

type
  Prs3dIsoAspect* {.importcpp: "Prs3d_IsoAspect", header: "Prs3d_IsoAspect.hxx",
                   bycopy.} = object of Prs3dLineAspect ## ! Constructs a framework to define display attributes of isoparameters.
                                                   ## ! These include:
                                                   ## ! -   the color attribute aColor
                                                   ## ! -   the type of line aType
                                                   ## ! -   the width value aWidth
                                                   ## ! -   aNumber, the number of isoparameters to be   displayed.

type
  Prs3dLineAspect* {.importcpp: "Prs3d_LineAspect", header: "Prs3d_LineAspect.hxx",
                    bycopy.} = object of Prs3dBasicAspect ## ! Constructs a framework for line aspect defined by
                                                     ## ! -   the color aColor
                                                     ## ! -   the type of line aType and
                                                     ## ! -   the line thickness aWidth.
                                                     ## ! Type of line refers to whether the line is solid or dotted, for example.

type
  Prs3dPlaneAspect* {.importcpp: "Prs3d_PlaneAspect",
                     header: "Prs3d_PlaneAspect.hxx", bycopy.} = object of Prs3dBasicAspect ##
                                                                                     ## !
                                                                                     ## Constructs
                                                                                     ## an
                                                                                     ## empty
                                                                                     ## framework
                                                                                     ## for
                                                                                     ## the
                                                                                     ## display
                                                                                     ## of
                                                                                     ## planes.

type
  Prs3dPointAspect* {.importcpp: "Prs3d_PointAspect",
                     header: "Prs3d_PointAspect.hxx", bycopy.} = object of Prs3dBasicAspect

type
  Prs3dPresentationShadow* {.importcpp: "Prs3d_PresentationShadow",
                            header: "Prs3d_PresentationShadow.hxx", bycopy.} = object of Graphic3dStructure ##
                                                                                                     ## !
                                                                                                     ## Constructs
                                                                                                     ## a
                                                                                                     ## shadow
                                                                                                     ## of
                                                                                                     ## existing
                                                                                                     ## presentation
                                                                                                     ## object.

type
  Prs3dShadingAspect* {.importcpp: "Prs3d_ShadingAspect",
                       header: "Prs3d_ShadingAspect.hxx", bycopy.} = object of Prs3dBasicAspect ##
                                                                                         ## !
                                                                                         ## Constructs
                                                                                         ## an
                                                                                         ## empty
                                                                                         ## framework
                                                                                         ## to
                                                                                         ## display
                                                                                         ## shading.

type
  Prs3dTextAspect* {.importcpp: "Prs3d_TextAspect", header: "Prs3d_TextAspect.hxx",
                    bycopy.} = object of Prs3dBasicAspect ## ! Constructs an empty framework for defining display attributes of text.

