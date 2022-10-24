# PROVIDES: V3d V3dImageDumpOptions HandleV3dPlane V3dTypeOfOrientation HandleV3dView
# DEPENDS: Graphic3dCLight AspectCircularGrid V3dPositionLight StandardTransient V3dPositionLight Graphic3dCLight AspectRectangularGrid V3dPositionLight StandardTransient StandardTransient StandardTransient

type
  V3d* {.importcpp: "V3d", header: "V3d.hxx", bycopy.} = object ## ! Determines the orientation vector corresponding to the predefined orientation type.

type
  V3dImageDumpOptions* {.importcpp: "V3d_ImageDumpOptions",
                        header: "V3d_ImageDumpOptions.hxx", bycopy.} = object ## ! Default
                                                                         ## constructor.
    width* {.importc: "Width".}: cint ## !< width  of image dump to allocate an image, 0 by default (meaning that image should be already allocated)
    height* {.importc: "Height".}: cint ## !< height of image dump to allocate an image, 0 by default (meaning that image should be already allocated)
    bufferType* {.importc: "BufferType".}: Graphic3dBufferType ## !< which buffer to dump (color / depth), Graphic3d_BT_RGB by default
    stereoOptions* {.importc: "StereoOptions".}: V3dStereoDumpOptions ## !< dumping stereoscopic camera, V3d_SDO_MONO by default (middle-point monographic projection)
    tileSize* {.importc: "TileSize".}: cint ## !< the view dimension limited for tiled dump, 0 by default (automatic tiling depending on hardware capabilities)
    toAdjustAspect* {.importc: "ToAdjustAspect".}: bool ## !< flag to override active view aspect ratio by (Width / Height) defined for image dump (TRUE by default)

type
  HandleV3dPlane* = Handle[V3dPlane]
## ! Obsolete clip plane presentation class.
## ! Ported on new core of Graphic3d_ClipPlane approach.
## ! Please access Graphic3d_ClipPlane via ClipPlane() method
## ! to use it for standard clipping workflow.
## ! Example of use:
## ! @code
## !
## ! Handle(V3d_Plane) aPlane (0, 1, 0, -20);
## ! Handle(V3d_View) aView;
## ! aView->AddClipPlane (aPlane->ClipPlane());
## !
## ! aPlane->Display (aView);
## ! aPlane->SetPlane (0, 1, 0, -30);
## ! aView->RemoveClipPlane (aPlane->ClipPlane());
## !
## ! @endcode
## ! Use interface of this class to modify plane equation synchronously
## ! with clipping equation.

type
  V3dTypeOfOrientation* {.size: sizeof(cint), importcpp: "V3d_TypeOfOrientation",
                         header: "V3d_TypeOfOrientation.hxx".} = enum
    v3dXpos,                  ## !< (+Y+Z) view
    v3dYpos,                  ## !< (-X+Z) view
    v3dZpos,                  ## !< (+X+Y) view
    v3dXneg,                  ## !< (-Y+Z) view
    v3dYneg,                  ## !< (+X+Z) view
    v3dZneg,                  ## !< (+X-Y) view
    v3dXposYpos, v3dXposZpos, v3dYposZpos, v3dXnegYneg, v3dXnegYpos, v3dXnegZneg,
    v3dXnegZpos, v3dYnegZneg, v3dYnegZpos, v3dXposYneg, v3dXposZneg, v3dYposZneg,
    v3dXposYposZpos, v3dXposYnegZpos, v3dXposYposZneg, v3dXnegYposZpos,
    v3dXposYnegZneg, v3dXnegYposZneg, v3dXnegYnegZpos, v3dXnegYnegZneg ##  +Z-up +Y-forward convention

type
  HandleV3dView* = Handle[V3dView]
## ! Defines the application object VIEW for the
## ! VIEWER application.
## ! The methods of this class allow the editing
## ! and inquiring the parameters linked to the view.
## ! Provides a set of services common to all types of view.
## ! Warning: The default parameters are defined by the class
## ! Viewer (Example : SetDefaultViewSize()).
## ! Certain methods are mouse oriented, and it is
## ! necessary to know the difference between the start and
## ! the continuation of this gesture in putting the method
## ! into operation.
## ! Example : Shifting the eye-view along the screen axes.
## !
## ! View->Move(10.,20.,0.,True)     (Starting motion)
## ! View->Move(15.,-5.,0.,False)    (Next motion)

type
  V3dAmbientLight* {.importcpp: "V3d_AmbientLight", header: "V3d_AmbientLight.hxx",
                    bycopy.} = object of Graphic3dCLight ## ! Constructs an ambient light source in the viewer.
                                                    ## ! The default Color of this light source is WHITE.

type
  V3dCircularGrid* {.importcpp: "V3d_CircularGrid", header: "V3d_CircularGrid.hxx",
                    bycopy.} = object of AspectCircularGrid ## ! Custom Graphic3d_Structure implementation.

type
  V3dDirectionalLight* {.importcpp: "V3d_DirectionalLight",
                        header: "V3d_DirectionalLight.hxx", bycopy.} = object of V3dPositionLight ##
                                                                                           ## !
                                                                                           ## Creates
                                                                                           ## a
                                                                                           ## directional
                                                                                           ## light
                                                                                           ## source
                                                                                           ## in
                                                                                           ## the
                                                                                           ## viewer.

type
  V3dPlane* {.importcpp: "V3d_Plane", header: "V3d_Plane.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## a
                                                                                            ## clipping
                                                                                            ## plane
                                                                                            ## from
                                                                                            ## plane
                                                                                            ## coefficients.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Updates
                                                                                            ## the
                                                                                            ## the
                                                                                            ## plane
                                                                                            ## representation.
    ## !< clip plane implementation.

type
  V3dPositionalLight* {.importcpp: "V3d_PositionalLight",
                       header: "V3d_PositionalLight.hxx", bycopy.} = object of V3dPositionLight ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## an
                                                                                         ## isolated
                                                                                         ## light
                                                                                         ## source
                                                                                         ## in
                                                                                         ## the
                                                                                         ## viewer
                                                                                         ## with
                                                                                         ## default
                                                                                         ## attenuation
                                                                                         ## factors
                                                                                         ## (1.0,
                                                                                         ## 0.0).

type
  V3dPositionLight* {.importcpp: "V3d_PositionLight",
                     header: "V3d_PositionLight.hxx", bycopy.} = object of Graphic3dCLight ##
                                                                                    ## !
                                                                                    ## Protected
                                                                                    ## constructor.
## using statement
## using statement

type
  V3dRectangularGrid* {.importcpp: "V3d_RectangularGrid",
                       header: "V3d_RectangularGrid.hxx", bycopy.} = object of AspectRectangularGrid ##
                                                                                              ## !
                                                                                              ## Custom
                                                                                              ## Graphic3d_Structure
                                                                                              ## implementation.

type
  V3dSpotLight* {.importcpp: "V3d_SpotLight", header: "V3d_SpotLight.hxx", bycopy.} = object of V3dPositionLight ##
                                                                                                       ## !
                                                                                                       ## Creates
                                                                                                       ## a
                                                                                                       ## light
                                                                                                       ## source
                                                                                                       ## of
                                                                                                       ## the
                                                                                                       ## Spot
                                                                                                       ## type
                                                                                                       ## in
                                                                                                       ## the
                                                                                                       ## viewer
                                                                                                       ## with
                                                                                                       ## default
                                                                                                       ## attenuation
                                                                                                       ## factors
                                                                                                       ## (1.0,
                                                                                                       ## 0.0),
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## concentration
                                                                                                       ## factor
                                                                                                       ## 1.0
                                                                                                       ## and
                                                                                                       ## spot
                                                                                                       ## angle
                                                                                                       ## 30
                                                                                                       ## degrees.

type
  V3dTrihedron* {.importcpp: "V3d_Trihedron", header: "V3d_Trihedron.hxx", bycopy.} = object of StandardTransient ##
                                                                                                        ## !
                                                                                                        ## Creates
                                                                                                        ## a
                                                                                                        ## default
                                                                                                        ## trihedron.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Fills
                                                                                                        ## Graphic3d_Group.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Custom
                                                                                                        ## Graphic3d_Structure
                                                                                                        ## implementation.

type
  V3dView* {.importcpp: "V3d_View", header: "V3d_View.hxx", bycopy.} = object of StandardTransient ##
                                                                                         ## !
                                                                                         ## Initializes
                                                                                         ## the
                                                                                         ## view.
                                                                                         ##
                                                                                         ## !
                                                                                         ## @name
                                                                                         ## deprecated
                                                                                         ## methods
                                                                                         ##
                                                                                         ## !
                                                                                         ## Returns
                                                                                         ## True
                                                                                         ## if
                                                                                         ## One
                                                                                         ## light
                                                                                         ## more
                                                                                         ## can
                                                                                         ## be
                                                                                         ##
                                                                                         ## !
                                                                                         ## activated
                                                                                         ## in
                                                                                         ## this
                                                                                         ## View.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Modifies
                                                                                         ## the
                                                                                         ## aspect
                                                                                         ## ratio
                                                                                         ## of
                                                                                         ## the
                                                                                         ## camera
                                                                                         ## when
                                                                                         ##
                                                                                         ## !
                                                                                         ## the
                                                                                         ## associated
                                                                                         ## window
                                                                                         ## is
                                                                                         ## defined
                                                                                         ## or
                                                                                         ## resized.

                                                                                         ## resized.
type
  V3dViewer* {.importcpp: "V3d_Viewer", header: "V3d_Viewer.hxx", byref, pure,inheritable.} = object of StandardTransient ##
                                                                                               ## !
                                                                                               ## Create
                                                                                               ## a
                                                                                               ## Viewer
                                                                                               ## with
                                                                                               ## the
                                                                                               ## given
                                                                                               ## graphic
                                                                                               ## driver
                                                                                               ## and
                                                                                               ## with
                                                                                               ## default
                                                                                               ## parameters:
                                                                                               ##
                                                                                               ## !
                                                                                               ## -
                                                                                               ## View
                                                                                               ## orientation:
                                                                                               ## V3d_XposYnegZpos
                                                                                               ##
                                                                                               ## !
                                                                                               ## -
                                                                                               ## View
                                                                                               ## background:
                                                                                               ## Quantity_NOC_GRAY30
                                                                                               ##
                                                                                               ## !
                                                                                               ## -
                                                                                               ## Shading
                                                                                               ## model:
                                                                                               ## V3d_GOURAUD
                                                                                               ##
                                                                                               ## !
                                                                                               ## Return
                                                                                               ## a
                                                                                               ## list
                                                                                               ## of
                                                                                               ## active
                                                                                               ## views.
                                                                                               ##
                                                                                               ## !
                                                                                               ## Return
                                                                                               ## a
                                                                                               ## list
                                                                                               ## of
                                                                                               ## defined
                                                                                               ## views.
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## lights
                                                                                               ## management
                                                                                               ##
                                                                                               ## !
                                                                                               ## Defines
                                                                                               ## default
                                                                                               ## lights:
                                                                                               ##
                                                                                               ## !
                                                                                               ## positional-light
                                                                                               ## 0.3
                                                                                               ## 0.
                                                                                               ## 0.
                                                                                               ##
                                                                                               ## !
                                                                                               ## directional-light
                                                                                               ## V3d_XnegYposZpos
                                                                                               ##
                                                                                               ## !
                                                                                               ## directional-light
                                                                                               ## V3d_XnegYneg
                                                                                               ##
                                                                                               ## !
                                                                                               ## ambient-light
                                                                                               ##
                                                                                               ## !
                                                                                               ## Return
                                                                                               ## a
                                                                                               ## list
                                                                                               ## of
                                                                                               ## defined
                                                                                               ## lights.
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## objects
                                                                                               ## management
                                                                                               ##
                                                                                               ## !
                                                                                               ## Erase
                                                                                               ## all
                                                                                               ## Objects
                                                                                               ## in
                                                                                               ## All
                                                                                               ## the
                                                                                               ## views.
                                                                                               ##
                                                                                               ## !
                                                                                               ## returns
                                                                                               ## true
                                                                                               ## if
                                                                                               ## the
                                                                                               ## computed
                                                                                               ## mode
                                                                                               ## can
                                                                                               ## be
                                                                                               ## used.
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## privileged
                                                                                               ## plane
                                                                                               ## management
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## grid
                                                                                               ## management
                                                                                               ##
                                                                                               ## !
                                                                                               ## Activates
                                                                                               ## the
                                                                                               ## grid
                                                                                               ## in
                                                                                               ## all
                                                                                               ## views
                                                                                               ## of
                                                                                               ## <me>.
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## deprecated
                                                                                               ## methods
                                                                                               ##
                                                                                               ## !
                                                                                               ## Returns
                                                                                               ## the
                                                                                               ## default
                                                                                               ## background
                                                                                               ## colour.
#proc newV3dViewer*(theDriver: Handle[Graphic3dGraphicDriver]): V3dViewer {.cdecl,
#    constructor, importcpp: "V3d_Viewer(@)", header: "V3d_Viewer.hxx".}


