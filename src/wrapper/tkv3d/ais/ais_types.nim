type
  AIS_AnimationProgress* {.importcpp: "AIS_AnimationProgress",
                          header: "AIS_Animation.hxx", bycopy.} = object
    pts* {.importc: "Pts".}: cfloat ## !< global presentation timestamp
    localPts* {.importc: "LocalPts".}: cfloat ## !< presentation within current animation
    localNormalized* {.importc: "LocalNormalized".}: cfloat ## !< normalized position within current animation within 0..1 range
type
  HandleAIS_Animation* = Handle[AIS_Animation]
## ! Class represents a basic animation class.
## ! AIS_Animation can be used as:
## !
## ! - Animation Implementor
## !   Sub-classes should override method AIS_Animation::update() to perform specific animation.
## !   AIS package provides limited number of such animation atoms - classes AIS_AnimationObject and AIS_AnimationCamera, which could be enough for defining a simple animation.
## !   In general case, application is expected defining own AIS_Animation sub-classes implementing application-specific animation logic
## !   (e.g. another interpolation or another kind of transformations - like color transition and others).
## !   The basic conception of AIS_Animation::update() is defining an exact scene state for the current presentation timestamp,
## !   providing a smooth and continuous animation well defined at any time step and in any direction.
## !   So that a time difference between two sequential drawn Viewer frames can vary from frame to frame without visual artifacts,
## !   increasing rendering framerate would not lead to animation being executed too fast
## !   and low framerate (on slow hardware) would not lead to animation played longer than defined duration.
## !   Hence, implementation should avoid usage of incremental step logic or should apply it very carefully.
## !
## ! - Animation Container
## !   AIS_Animation (no sub-classing) can be used to aggregate a sequence of Animation items (children).
## !   Each children should be defined with its own duration and start time (presentation timestamp).
## !   It is possible defining collection of nested AIS_Animation items, so that within each container level
## !   children define start playback time relative to its holder.
## !
## ! - Animation playback Controller
## !   It is suggested that application would define a single AIS_Animation instance (optional sub-classing) for controlling animation playback as whole.
## !   Such controller should be filled in by other AIS_Animation as children objects,
## !   and will be managed by application by calling StartTimer(), UpdateTimer() and IsStopped() methods.
## !
## ! Note, that AIS_Animation::StartTimer() defines a timer calculating an elapsed time, not a multimedia timer executing Viewer updates at specific intervals!
## ! Application should avoid using implicit and immediate Viewer updates to ensure that AIS_Animation::UpdateTimer() is called before each redrawing of a Viewer content.
## ! Redrawing logic should be also managed at application level for managing a smooth animation
## ! (by defining a multimedia timer provided by used GUI framework executing updates at desired framerate, or as continuous redraws in loop).
type
  AIS_Animation* {.importcpp: "AIS_Animation", header: "AIS_Animation.hxx", bycopy.} = object of StandardTransient ##
                                                                                                         ## !
                                                                                                         ## Creates
                                                                                                         ## empty
                                                                                                         ## animation.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## @return
                                                                                                         ## start
                                                                                                         ## time
                                                                                                         ## of
                                                                                                         ## the
                                                                                                         ## animation
                                                                                                         ## in
                                                                                                         ## the
                                                                                                         ## timeline
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Start
                                                                                                         ## animation
                                                                                                         ## with
                                                                                                         ## internally
                                                                                                         ## defined
                                                                                                         ## timer
                                                                                                         ## instance.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Calls
                                                                                                         ## ::Start()
                                                                                                         ## internally.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Note,
                                                                                                         ## that
                                                                                                         ## this
                                                                                                         ## method
                                                                                                         ## initializes
                                                                                                         ## a
                                                                                                         ## timer
                                                                                                         ## calculating
                                                                                                         ## an
                                                                                                         ## elapsed
                                                                                                         ## time
                                                                                                         ## (presentation
                                                                                                         ## timestamps
                                                                                                         ## within
                                                                                                         ## AIS_Animation::UpdateTimer()),
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## not
                                                                                                         ## a
                                                                                                         ## multimedia
                                                                                                         ## timer
                                                                                                         ## executing
                                                                                                         ## Viewer
                                                                                                         ## updates
                                                                                                         ## at
                                                                                                         ## specific
                                                                                                         ## intervals!
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Viewer
                                                                                                         ## redrawing
                                                                                                         ## should
                                                                                                         ## be
                                                                                                         ## managed
                                                                                                         ## at
                                                                                                         ## application
                                                                                                         ## level,
                                                                                                         ## so
                                                                                                         ## that
                                                                                                         ## AIS_Animation::UpdateTimer()
                                                                                                         ## is
                                                                                                         ## called
                                                                                                         ## once
                                                                                                         ## right
                                                                                                         ## before
                                                                                                         ## each
                                                                                                         ## redrawing
                                                                                                         ## of
                                                                                                         ## a
                                                                                                         ## Viewer
                                                                                                         ## content.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## @param
                                                                                                         ## theStartPts
                                                                                                         ## starting
                                                                                                         ## timer
                                                                                                         ## position
                                                                                                         ## (presentation
                                                                                                         ## timestamp)
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## @param
                                                                                                         ## thePlaySpeed
                                                                                                         ## playback
                                                                                                         ## speed
                                                                                                         ## (1.0
                                                                                                         ## means
                                                                                                         ## normal
                                                                                                         ## speed)
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## @param
                                                                                                         ## theToUpdate
                                                                                                         ## flag
                                                                                                         ## to
                                                                                                         ## update
                                                                                                         ## defined
                                                                                                         ## animations
                                                                                                         ## to
                                                                                                         ## specified
                                                                                                         ## start
                                                                                                         ## position
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## @param
                                                                                                         ## theToStopTimer
                                                                                                         ## flag
                                                                                                         ## to
                                                                                                         ## pause
                                                                                                         ## timer
                                                                                                         ## at
                                                                                                         ## the
                                                                                                         ## starting
                                                                                                         ## position
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Start
                                                                                                         ## animation.
                                                                                                         ## This
                                                                                                         ## method
                                                                                                         ## changes
                                                                                                         ## status
                                                                                                         ## of
                                                                                                         ## the
                                                                                                         ## animation
                                                                                                         ## to
                                                                                                         ## Started.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## This
                                                                                                         ## status
                                                                                                         ## defines
                                                                                                         ## whether
                                                                                                         ## animation
                                                                                                         ## is
                                                                                                         ## to
                                                                                                         ## be
                                                                                                         ## performed
                                                                                                         ## in
                                                                                                         ## the
                                                                                                         ## timeline
                                                                                                         ## or
                                                                                                         ## not.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## @param
                                                                                                         ## theToUpdate
                                                                                                         ## call
                                                                                                         ## Update()
                                                                                                         ## method
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Process
                                                                                                         ## one
                                                                                                         ## step
                                                                                                         ## of
                                                                                                         ## the
                                                                                                         ## animation
                                                                                                         ## according
                                                                                                         ## to
                                                                                                         ## the
                                                                                                         ## input
                                                                                                         ## time
                                                                                                         ## progress,
                                                                                                         ## including
                                                                                                         ## all
                                                                                                         ## children.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Calls
                                                                                                         ## also
                                                                                                         ## ::update()
                                                                                                         ## to
                                                                                                         ## update
                                                                                                         ## own
                                                                                                         ## animation.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Defines
                                                                                                         ## animation
                                                                                                         ## state.
    ## !< animation name
    ## !< sequence of child animations
    ## !< animation state - started, stopped of paused
    ## !< time of start in the timeline
    ## !< duration of animation excluding children
    ## !< duration of animation including children
type
  AIS_AnimationCamera* {.importcpp: "AIS_AnimationCamera",
                        header: "AIS_AnimationCamera.hxx", bycopy.} = object of AIS_Animation ##
                                                                                       ## !
                                                                                       ## Main
                                                                                       ## constructor.
                                                                                       ##
                                                                                       ## !
                                                                                       ## Update
                                                                                       ## the
                                                                                       ## progress.
    ## !< view to setup camera
    ## !< starting camera position
    ## !< end camera position
type
  AIS_AnimationObject* {.importcpp: "AIS_AnimationObject",
                        header: "AIS_AnimationObject.hxx", bycopy.} = object of AIS_Animation ##
                                                                                       ## !
                                                                                       ## Constructor
                                                                                       ## with
                                                                                       ## initialization.
                                                                                       ##
                                                                                       ## !
                                                                                       ## Note
                                                                                       ## that
                                                                                       ## start/end
                                                                                       ## transformations
                                                                                       ## specify
                                                                                       ## exactly
                                                                                       ## local
                                                                                       ## transformation
                                                                                       ## of
                                                                                       ## the
                                                                                       ## object,
                                                                                       ##
                                                                                       ## !
                                                                                       ## not
                                                                                       ## the
                                                                                       ## transformation
                                                                                       ## to
                                                                                       ## be
                                                                                       ## applied
                                                                                       ## to
                                                                                       ## existing
                                                                                       ## local
                                                                                       ## transformation.
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theAnimationName
                                                                                       ## animation
                                                                                       ## identifier
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theContext
                                                                                       ## interactive
                                                                                       ## context
                                                                                       ## where
                                                                                       ## object
                                                                                       ## have
                                                                                       ## been
                                                                                       ## displayed
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theObject
                                                                                       ## object
                                                                                       ## to
                                                                                       ## apply
                                                                                       ## local
                                                                                       ## transformation
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theTrsfStart
                                                                                       ## local
                                                                                       ## transformation
                                                                                       ## at
                                                                                       ## the
                                                                                       ## start
                                                                                       ## of
                                                                                       ## animation
                                                                                       ## (e.g.
                                                                                       ## theObject->LocalTransformation())
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theTrsfEnd
                                                                                       ## local
                                                                                       ## transformation
                                                                                       ## at
                                                                                       ## the
                                                                                       ## end
                                                                                       ## of
                                                                                       ## animation
                                                                                       ##
                                                                                       ## !
                                                                                       ## Update
                                                                                       ## the
                                                                                       ## progress.
    ## !< context where object is displayed
    ## !< presentation object to set location
    ## !< interpolation tool
type
  HandleAIS_AttributeFilter* = Handle[AIS_AttributeFilter]
## ! Selects Interactive Objects, which have the desired width or color.
## ! The filter questions each Interactive Object in local
## ! context to determine whether it has an non-null
## ! owner, and if so, whether it has the required color
## ! and width attributes. If the object returns true in each
## ! case, it is kept. If not, it is rejected.
## ! This filter is used only in an open local context.
## ! In the Collector viewer, you can only locate
## ! Interactive Objects, which answer positively to the
## ! filters, which are in position when a local context is open.
type
  AIS_AttributeFilter* {.importcpp: "AIS_AttributeFilter",
                        header: "AIS_AttributeFilter.hxx", bycopy.} = object of SelectMgrFilter ##
                                                                                         ## !
                                                                                         ## Constructs
                                                                                         ## an
                                                                                         ## empty
                                                                                         ## attribute
                                                                                         ## filter
                                                                                         ## object.
                                                                                         ##
                                                                                         ## !
                                                                                         ## This
                                                                                         ## filter
                                                                                         ## object
                                                                                         ## determines
                                                                                         ## whether
                                                                                         ## selectable
                                                                                         ##
                                                                                         ## !
                                                                                         ## interactive
                                                                                         ## objects
                                                                                         ## have
                                                                                         ## a
                                                                                         ## non-null
                                                                                         ## owner.
type
  AIS_Axis* {.importcpp: "AIS_Axis", header: "AIS_Axis.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                              ## !
                                                                                              ## Initializes
                                                                                              ## the
                                                                                              ## line
                                                                                              ## aComponent
type
  HandleAIS_BadEdgeFilter* = Handle[AIS_BadEdgeFilter]
## ! A Class
type
  AIS_BadEdgeFilter* {.importcpp: "AIS_BadEdgeFilter",
                      header: "AIS_BadEdgeFilter.hxx", bycopy.} = object of SelectMgrFilter ##
                                                                                     ## !
                                                                                     ## Constructs
                                                                                     ## an
                                                                                     ## empty
                                                                                     ## filter
                                                                                     ## object
                                                                                     ## for
                                                                                     ## bad
                                                                                     ## edges.
type
  HandleAIS_C0RegularityFilter* = Handle[AIS_C0RegularityFilter]
  AIS_C0RegularityFilter* {.importcpp: "AIS_C0RegularityFilter",
                           header: "AIS_C0RegularityFilter.hxx", bycopy.} = object of SelectMgrFilter
type
  AIS_CameraFrustum* {.importcpp: "AIS_CameraFrustum",
                      header: "AIS_CameraFrustum.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                           ## !
                                                                                           ## Selection
                                                                                           ## modes
                                                                                           ## supported
                                                                                           ## by
                                                                                           ## this
                                                                                           ## object
                                                                                           ##
                                                                                           ## !
                                                                                           ## Constructs
                                                                                           ## camera
                                                                                           ## frustum
                                                                                           ## with
                                                                                           ## default
                                                                                           ## configuration.
                                                                                           ##
                                                                                           ## !
                                                                                           ## Computes
                                                                                           ## presentation
                                                                                           ## of
                                                                                           ## camera
                                                                                           ## frustum.
                                                                                           ##
                                                                                           ## !
                                                                                           ## Fills
                                                                                           ## triangles
                                                                                           ## primitive
                                                                                           ## array
                                                                                           ## for
                                                                                           ## camera
                                                                                           ## frustum
                                                                                           ## filling.
    ## !< Array of points
    ## !< Triangles for camera frustum filling
    ## !< Segments for camera frustum borders
  AIS_CameraFrustumSelectionMode* {.size: sizeof(cint), importcpp: "AIS_CameraFrustum::SelectionMode",
                                   header: "AIS_CameraFrustum.hxx".} = enum
    SelectionModeEdges = 0,     ## !< detect by edges (default)
    SelectionModeVolume = 1     ## !< detect by volume
type
  AIS_Circle* {.importcpp: "AIS_Circle", header: "AIS_Circle.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                                    ## !
                                                                                                    ## Initializes
                                                                                                    ## this
                                                                                                    ## algorithm
                                                                                                    ## for
                                                                                                    ## constructing
                                                                                                    ## AIS
                                                                                                    ## circle
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## datums
                                                                                                    ## initializes
                                                                                                    ## the
                                                                                                    ## circle
                                                                                                    ## aCircle
type
  AIS_ColoredDrawer* {.importcpp: "AIS_ColoredDrawer",
                      header: "AIS_ColoredDrawer.hxx", bycopy.} = object of Prs3dDrawer ##
                                                                                 ## !
                                                                                 ## Default
                                                                                 ## constructor.
                                                                                 ##
                                                                                 ## !
                                                                                 ## @name
                                                                                 ## list
                                                                                 ## of
                                                                                 ## overridden
                                                                                 ## properties
    myIsHidden* {.importc: "myIsHidden".}: bool
    myHasOwnMaterial* {.importc: "myHasOwnMaterial".}: bool
    myHasOwnColor* {.importc: "myHasOwnColor".}: bool
    myHasOwnTransp* {.importc: "myHasOwnTransp".}: bool
    myHasOwnWidth* {.importc: "myHasOwnWidth".}: bool
type
  AIS_ColoredShape* {.importcpp: "AIS_ColoredShape",
                     header: "AIS_ColoredShape.hxx", bycopy.} = object of AIS_Shape ## !
                                                                             ## Default
                                                                             ## constructor
                                                                             ## !
                                                                             ## @name
                                                                             ## sub-shape
                                                                             ## aspects
                                                                             ## !
                                                                             ## Customize
                                                                             ## properties of
                                                                             ## specified
                                                                             ## sub-shape.
                                                                             ## ! The
                                                                             ## shape
                                                                             ## will be
                                                                             ## stored in the map but
                                                                             ## ignored, if it is not
                                                                             ## sub-shape of
                                                                             ## main
                                                                             ## Shape!
                                                                             ## !
                                                                             ## This
                                                                             ## method can be
                                                                             ## used to
                                                                             ## mark
                                                                             ## sub-shapes
                                                                             ## with
                                                                             ## customizable
                                                                             ## properties.
                                                                             ## !
                                                                             ## @name
                                                                             ## global
                                                                             ## aspects
                                                                             ## !
                                                                             ## Setup
                                                                             ## color of
                                                                             ## entire
                                                                             ## shape.
                                                                             ## !
                                                                             ## Removes the
                                                                             ## setting for
                                                                             ## transparency in the
                                                                             ## reconstructed
                                                                             ## compound
                                                                             ## shape.
                                                                             ## !
                                                                             ## @name
                                                                             ## override
                                                                             ## presentation
                                                                             ## computation
                                                                             ## !
                                                                             ## Compute
                                                                             ## presentation
                                                                             ## considering
                                                                             ## sub-shape
                                                                             ## color
                                                                             ## map.
                                                                             ## !
                                                                             ## Recursive
                                                                             ## function to map
                                                                             ## shapes.
                                                                             ## !
                                                                             ## @param
                                                                             ## theParentDrawer   the
                                                                             ## drawer to be
                                                                             ## used for
                                                                             ## undetailed
                                                                             ## shapes
                                                                             ## (default
                                                                             ## colors)
                                                                             ## !
                                                                             ## @param
                                                                             ## theShapeToParse   the
                                                                             ## subshape to be
                                                                             ## recursively
                                                                             ## parsed
                                                                             ## !
                                                                             ## @param
                                                                             ## theShapeDrawerMap
                                                                             ## shapes map
                                                                             ## Subshape (in the
                                                                             ## base
                                                                             ## shape) ->
                                                                             ## Drawer
                                                                             ## !
                                                                             ## @param
                                                                             ## theParentType     the
                                                                             ## parent
                                                                             ## subshape
                                                                             ## type
                                                                             ## !
                                                                             ## @param
                                                                             ## theIsParentClosed
                                                                             ## flag
                                                                             ## indicating
                                                                             ## that
                                                                             ## specified
                                                                             ## shape is
                                                                             ## part of
                                                                             ## closed
                                                                             ## Solid
                                                                             ## !
                                                                             ## @param
                                                                             ## theDrawerOpenedShapePerType the
                                                                             ## array of
                                                                             ## shape
                                                                             ## types to
                                                                             ## fill
                                                                             ## !
                                                                             ## @param
                                                                             ## theDrawerClosedFaces        the map for
                                                                             ## closed
                                                                             ## faces
                                                                             ## !
                                                                             ## Extract
                                                                             ## myShapeColors map
                                                                             ## (KeyshapeColored ->
                                                                             ## Color) to
                                                                             ## subshapes map
                                                                             ## (Subshape ->
                                                                             ## Color).
                                                                             ## !
                                                                             ## This
                                                                             ## needed
                                                                             ## when
                                                                             ## colored
                                                                             ## shape is not
                                                                             ## part of
                                                                             ## BaseShape
                                                                             ## (but
                                                                             ## subshapes
                                                                             ## are) and
                                                                             ## actually
                                                                             ## container for
                                                                             ## subshapes.
type
  HandleAIS_ColorScale* = Handle[AIS_ColorScale]
## ! Class for drawing a custom color scale.
## !
## ! The color scale consists of rectangular color bar (composed of fixed
## ! number of color intervals), optional labels, and title.
## ! The labels can be positioned either at the boundaries of the intervals,
## ! or at the middle of each interval.
## ! Colors and labels can be either defined automatically or set by the user.
## ! Automatic labels are calculated from numerical limits of the scale,
## ! its type (logarithmic or plain), and formatted by specified format string.
type
  AIS_ColorScale* {.importcpp: "AIS_ColorScale", header: "AIS_ColorScale.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                                                ## !
                                                                                                                ## Calculate
                                                                                                                ## color
                                                                                                                ## according
                                                                                                                ## passed
                                                                                                                ## value;
                                                                                                                ## returns
                                                                                                                ## true
                                                                                                                ## if
                                                                                                                ## value
                                                                                                                ## is
                                                                                                                ## in
                                                                                                                ## range
                                                                                                                ## or
                                                                                                                ## false,
                                                                                                                ## if
                                                                                                                ## isn't
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## Default
                                                                                                                ## constructor.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## Returns
                                                                                                                ## the
                                                                                                                ## width
                                                                                                                ## of
                                                                                                                ## text.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## @param
                                                                                                                ## theText
                                                                                                                ## [in]
                                                                                                                ## the
                                                                                                                ## text
                                                                                                                ## of
                                                                                                                ## which
                                                                                                                ## to
                                                                                                                ## calculate
                                                                                                                ## width.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## Return
                                                                                                                ## true
                                                                                                                ## if
                                                                                                                ## specified
                                                                                                                ## display
                                                                                                                ## mode
                                                                                                                ## is
                                                                                                                ## supported.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## Returns
                                                                                                                ## the
                                                                                                                ## size
                                                                                                                ## of
                                                                                                                ## color
                                                                                                                ## scale.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## @param
                                                                                                                ## theWidth
                                                                                                                ## [out]
                                                                                                                ## the
                                                                                                                ## width
                                                                                                                ## of
                                                                                                                ## color
                                                                                                                ## scale.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## @param
                                                                                                                ## theHeight
                                                                                                                ## [out]
                                                                                                                ## the
                                                                                                                ## height
                                                                                                                ## of
                                                                                                                ## color
                                                                                                                ## scale.
    ## !< values range - minimal value
    ## !< values range - maximal value
    ## !< HLS color corresponding to minimum value
    ## !< HLS color corresponding to maximum value
    ## !< optional title string
    ## !< sprintf() format for generating label from value
    ## !< number of intervals
    ## !< color type
    ## !< label type
    ## !< at border
    ## !< flag indicating reversed order
    ## !< flag indicating logarithmic scale
    ## !< flag indicating smooth transition between the colors
    ## !< sequence of custom colors
    ## !< sequence of custom text labels
    ## !< label position relative to the color scale
    ## !< title position
    ## !< left   position
    ## !< bottom position
    ## !< color scale breadth
    ## !< height of the color scale
    ## !< extra spacing between element
    ## !< label font height
type
  AIS_ConnectedInteractive* {.importcpp: "AIS_ConnectedInteractive",
                             header: "AIS_ConnectedInteractive.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                                         ## !
                                                                                                         ## Disconnects
                                                                                                         ## the
                                                                                                         ## previous
                                                                                                         ## view
                                                                                                         ## and
                                                                                                         ## sets
                                                                                                         ## highlight
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## mode
                                                                                                         ## to
                                                                                                         ## 0.
                                                                                                         ## This
                                                                                                         ## highlights
                                                                                                         ## the
                                                                                                         ## wireframe
                                                                                                         ## presentation
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## aTypeOfPresentation3d.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Top_AllView
                                                                                                         ## deactivates
                                                                                                         ## hidden
                                                                                                         ## line
                                                                                                         ## removal.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Calculates
                                                                                                         ## the
                                                                                                         ## view
                                                                                                         ## aPresentation
                                                                                                         ## and
                                                                                                         ## its
                                                                                                         ## updates.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## The
                                                                                                         ## latter
                                                                                                         ## are
                                                                                                         ## managed
                                                                                                         ## by
                                                                                                         ## aPresentationManager.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## The
                                                                                                         ## display
                                                                                                         ## mode
                                                                                                         ## aMode
                                                                                                         ## is
                                                                                                         ## 0
                                                                                                         ## by
                                                                                                         ## default.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## this
                                                                                                         ## method
                                                                                                         ## is
                                                                                                         ## redefined
                                                                                                         ## virtual;
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## when
                                                                                                         ## the
                                                                                                         ## instance
                                                                                                         ## is
                                                                                                         ## connected
                                                                                                         ## to
                                                                                                         ## another
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## InteractiveObject,this
                                                                                                         ## method
                                                                                                         ## doesn't
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## compute
                                                                                                         ## anything,
                                                                                                         ## but
                                                                                                         ## just
                                                                                                         ## uses
                                                                                                         ## the
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## presentation
                                                                                                         ## of
                                                                                                         ## this
                                                                                                         ## last
                                                                                                         ## object,
                                                                                                         ## with
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## a
                                                                                                         ## transformation
                                                                                                         ## if
                                                                                                         ## there's
                                                                                                         ## one
                                                                                                         ## stored.
type
  HandleAIS_ExclusionFilter* = Handle[AIS_ExclusionFilter]
## ! A framework to reject or to accept only objects of
## ! given types and/or signatures.
## ! Objects are stored, and the stored objects - along
## ! with the flag settings - are used to define the filter.
## ! Objects to be filtered are compared with the stored
## ! objects added to the filter, and are accepted or
## ! rejected according to the exclusion flag setting.
## ! -   Exclusion flag on
## ! -   the function IsOk answers true for all objects,
## ! except those of the types and signatures stored
## ! in the filter framework
## ! -   Exclusion flag off
## ! -   the funciton IsOk answers true for all objects
## ! which have the same type and signature as the stored ones.
type
  AIS_ExclusionFilter* {.importcpp: "AIS_ExclusionFilter",
                        header: "AIS_ExclusionFilter.hxx", bycopy.} = object of SelectMgrFilter ##
                                                                                         ## !
                                                                                         ## Constructs
                                                                                         ## an
                                                                                         ## empty
                                                                                         ## exclusion
                                                                                         ## filter
                                                                                         ## object
                                                                                         ## defined
                                                                                         ## by
                                                                                         ##
                                                                                         ## !
                                                                                         ## the
                                                                                         ## flag
                                                                                         ## setting
                                                                                         ## ExclusionFlagOn.
                                                                                         ##
                                                                                         ## !
                                                                                         ## By
                                                                                         ## default,
                                                                                         ## the
                                                                                         ## flag
                                                                                         ## is
                                                                                         ## set
                                                                                         ## to
                                                                                         ## true.
type
  HandleAIS_GlobalStatus* = Handle[AIS_GlobalStatus]
## ! Stores  information  about objects in graphic context:
## ! - Status Of Display : in the main viewer
## ! hidden in the main viewer
## ! - Displayed Modes
## ! - Active Selection Modes
## ! - is the Interactive Object Current ?
## ! - Layer Index
type
  AIS_GlobalStatus* {.importcpp: "AIS_GlobalStatus",
                     header: "AIS_GlobalStatus.hxx", bycopy.} = object of StandardTransient
type
  AIS_GraphicTool* {.importcpp: "AIS_GraphicTool", header: "AIS_GraphicTool.hxx",
                    bycopy.} = object
type
  AIS_InteractiveContext* {.importcpp: "AIS_InteractiveContext",
                           header: "AIS_InteractiveContext.hxx", bycopy.} = object of StandardTransient ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## object
                                                                                                 ## display
                                                                                                 ## management
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Constructs
                                                                                                 ## the
                                                                                                 ## interactive
                                                                                                 ## context
                                                                                                 ## object
                                                                                                 ## defined
                                                                                                 ## by
                                                                                                 ## the
                                                                                                 ## principal
                                                                                                 ## viewer
                                                                                                 ## MainViewer.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## highlighting
                                                                                                 ## management
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Returns
                                                                                                 ## highlight
                                                                                                 ## style
                                                                                                 ## settings.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## object
                                                                                                 ## presence
                                                                                                 ## management
                                                                                                 ## (View
                                                                                                 ## affinity,
                                                                                                 ## Layer,
                                                                                                 ## Priority)
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Returns
                                                                                                 ## the
                                                                                                 ## display
                                                                                                 ## priority
                                                                                                 ## of
                                                                                                 ## the
                                                                                                 ## Object.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## Display
                                                                                                 ## Mode
                                                                                                 ## management
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Returns
                                                                                                 ## the
                                                                                                 ## Display
                                                                                                 ## Mode
                                                                                                 ## setting
                                                                                                 ## to
                                                                                                 ## be
                                                                                                 ## used
                                                                                                 ## by
                                                                                                 ## default.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## object
                                                                                                 ## local
                                                                                                 ## transformation
                                                                                                 ## management
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Puts
                                                                                                 ## the
                                                                                                 ## location
                                                                                                 ## on
                                                                                                 ## the
                                                                                                 ## initial
                                                                                                 ## graphic
                                                                                                 ## representation
                                                                                                 ## and
                                                                                                 ## the
                                                                                                 ## selection
                                                                                                 ## for
                                                                                                 ## the
                                                                                                 ## Object.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## mouse
                                                                                                 ## picking
                                                                                                 ## logic
                                                                                                 ## (detection
                                                                                                 ## and
                                                                                                 ## dynamic
                                                                                                 ## highlighting
                                                                                                 ## of
                                                                                                 ## entities
                                                                                                 ## under
                                                                                                 ## cursor)
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Setup
                                                                                                 ## pixel
                                                                                                 ## tolerance
                                                                                                 ## for
                                                                                                 ## MoveTo()
                                                                                                 ## operation.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @sa
                                                                                                 ## MoveTo().
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## iteration
                                                                                                 ## through
                                                                                                 ## detected
                                                                                                 ## entities
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Initialization
                                                                                                 ## for
                                                                                                 ## iteration
                                                                                                 ## through
                                                                                                 ## mouse-detected
                                                                                                 ## objects
                                                                                                 ## in
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## interactive
                                                                                                 ## context
                                                                                                 ## or
                                                                                                 ## in
                                                                                                 ## local
                                                                                                 ## context
                                                                                                 ## if
                                                                                                 ## it
                                                                                                 ## is
                                                                                                 ## opened.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @sa
                                                                                                 ## DetectedCurrentOwner()/MoreDetected()/NextDetected().
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## Selection
                                                                                                 ## management
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Sets
                                                                                                 ## the
                                                                                                 ## graphic
                                                                                                 ## basic
                                                                                                 ## aspect
                                                                                                 ## to
                                                                                                 ## the
                                                                                                 ## current
                                                                                                 ## presentation
                                                                                                 ## of
                                                                                                 ## ALL
                                                                                                 ## selected
                                                                                                 ## objects.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## immediate
                                                                                                 ## mode
                                                                                                 ## rendering
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## initializes
                                                                                                 ## the
                                                                                                 ## list
                                                                                                 ## of
                                                                                                 ## presentations
                                                                                                 ## to
                                                                                                 ## be
                                                                                                 ## displayed
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## returns
                                                                                                 ## False
                                                                                                 ## if
                                                                                                 ## no
                                                                                                 ## local
                                                                                                 ## context
                                                                                                 ## is
                                                                                                 ## opened.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## management
                                                                                                 ## of
                                                                                                 ## active
                                                                                                 ## Selection
                                                                                                 ## Modes
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Activates
                                                                                                 ## or
                                                                                                 ## deactivates
                                                                                                 ## the
                                                                                                 ## selection
                                                                                                 ## mode
                                                                                                 ## for
                                                                                                 ## specified
                                                                                                 ## object.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Has
                                                                                                 ## no
                                                                                                 ## effect
                                                                                                 ## if
                                                                                                 ## selection
                                                                                                 ## mode
                                                                                                 ## was
                                                                                                 ## already
                                                                                                 ## active/deactivated.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @param
                                                                                                 ## theObj
                                                                                                 ## object
                                                                                                 ## to
                                                                                                 ## activate/deactivate
                                                                                                 ## selection
                                                                                                 ## mode
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @param
                                                                                                 ## theMode
                                                                                                 ## selection
                                                                                                 ## mode
                                                                                                 ## to
                                                                                                 ## activate/deactivate;
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## deactivation
                                                                                                 ## of
                                                                                                 ## -1
                                                                                                 ## selection
                                                                                                 ## mode
                                                                                                 ## will
                                                                                                 ## effectively
                                                                                                 ## deactivate
                                                                                                 ## all
                                                                                                 ## selection
                                                                                                 ## modes;
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## activation
                                                                                                 ## of
                                                                                                 ## -1
                                                                                                 ## selection
                                                                                                 ## mode
                                                                                                 ## with
                                                                                                 ## AIS_SelectionModesConcurrency_Single
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## will
                                                                                                 ## deactivate
                                                                                                 ## all
                                                                                                 ## selection
                                                                                                 ## modes,
                                                                                                 ## and
                                                                                                 ## will
                                                                                                 ## has
                                                                                                 ## no
                                                                                                 ## effect
                                                                                                 ## otherwise
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @param
                                                                                                 ## theToActivate
                                                                                                 ## activation/deactivation
                                                                                                 ## flag
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @param
                                                                                                 ## theConcurrency
                                                                                                 ## specifies
                                                                                                 ## how
                                                                                                 ## to
                                                                                                 ## handle
                                                                                                 ## already
                                                                                                 ## activated
                                                                                                 ## selection
                                                                                                 ## modes;
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## default
                                                                                                 ## value
                                                                                                 ## (AIS_SelectionModesConcurrency_Multiple)
                                                                                                 ## means
                                                                                                 ## active
                                                                                                 ## selection
                                                                                                 ## modes
                                                                                                 ## should
                                                                                                 ## be
                                                                                                 ## left
                                                                                                 ## as
                                                                                                 ## is,
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## AIS_SelectionModesConcurrency_Single
                                                                                                 ## can
                                                                                                 ## be
                                                                                                 ## used
                                                                                                 ## if
                                                                                                 ## only
                                                                                                 ## one
                                                                                                 ## selection
                                                                                                 ## mode
                                                                                                 ## is
                                                                                                 ## expected
                                                                                                 ## to
                                                                                                 ## be
                                                                                                 ## active
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## and
                                                                                                 ## AIS_SelectionModesConcurrency_GlobalOrLocal
                                                                                                 ## can
                                                                                                 ## be
                                                                                                 ## used
                                                                                                 ## if
                                                                                                 ## either
                                                                                                 ## AIS_InteractiveObject::GlobalSelectionMode()
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## or
                                                                                                 ## any
                                                                                                 ## combination
                                                                                                 ## of
                                                                                                 ## Local
                                                                                                 ## selection
                                                                                                 ## modes
                                                                                                 ## is
                                                                                                 ## acceptable;
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## this
                                                                                                 ## value
                                                                                                 ## is
                                                                                                 ## considered
                                                                                                 ## only
                                                                                                 ## if
                                                                                                 ## theToActivate
                                                                                                 ## set
                                                                                                 ## to
                                                                                                 ## TRUE
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @param
                                                                                                 ## theIsForce
                                                                                                 ## when
                                                                                                 ## set
                                                                                                 ## to
                                                                                                 ## TRUE,
                                                                                                 ## the
                                                                                                 ## display
                                                                                                 ## status
                                                                                                 ## will
                                                                                                 ## be
                                                                                                 ## ignored
                                                                                                 ## while
                                                                                                 ## activating
                                                                                                 ## selection
                                                                                                 ## mode
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## Selection
                                                                                                 ## Filters
                                                                                                 ## management
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @return
                                                                                                 ## the
                                                                                                 ## context
                                                                                                 ## selection
                                                                                                 ## filter
                                                                                                 ## type.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## common
                                                                                                 ## properties
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Returns
                                                                                                 ## the
                                                                                                 ## default
                                                                                                 ## attribute
                                                                                                 ## manager.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## This
                                                                                                 ## contains
                                                                                                 ## all
                                                                                                 ## the
                                                                                                 ## color
                                                                                                 ## and
                                                                                                 ## line
                                                                                                 ## attributes
                                                                                                 ## which
                                                                                                 ## can
                                                                                                 ## be
                                                                                                 ## used
                                                                                                 ## by
                                                                                                 ## interactive
                                                                                                 ## objects
                                                                                                 ## which
                                                                                                 ## do
                                                                                                 ## not
                                                                                                 ## have
                                                                                                 ## their
                                                                                                 ## own
                                                                                                 ## attributes.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## debug
                                                                                                 ## visualization
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Visualization
                                                                                                 ## of
                                                                                                 ## sensitives
                                                                                                 ## -
                                                                                                 ## for
                                                                                                 ## debugging
                                                                                                 ## purposes!
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## common
                                                                                                 ## object
                                                                                                 ## display
                                                                                                 ## attributes
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Sets
                                                                                                 ## the
                                                                                                 ## graphic
                                                                                                 ## attributes
                                                                                                 ## of
                                                                                                 ## the
                                                                                                 ## interactive
                                                                                                 ## object,
                                                                                                 ## such
                                                                                                 ## as
                                                                                                 ## visualization
                                                                                                 ## mode,
                                                                                                 ## color,
                                                                                                 ## and
                                                                                                 ## material.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## trihedron
                                                                                                 ## display
                                                                                                 ## attributes
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Sets
                                                                                                 ## the
                                                                                                 ## size
                                                                                                 ## aSize
                                                                                                 ## of
                                                                                                 ## the
                                                                                                 ## trihedron.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Is
                                                                                                 ## used
                                                                                                 ## to
                                                                                                 ## change
                                                                                                 ## the
                                                                                                 ## default
                                                                                                 ## value
                                                                                                 ## 100
                                                                                                 ## mm
                                                                                                 ## for
                                                                                                 ## display
                                                                                                 ## of
                                                                                                 ## trihedra.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Use
                                                                                                 ## of
                                                                                                 ## this
                                                                                                 ## function
                                                                                                 ## in
                                                                                                 ## one
                                                                                                 ## of
                                                                                                 ## your
                                                                                                 ## own
                                                                                                 ## interactive
                                                                                                 ## objects
                                                                                                 ## requires
                                                                                                 ## a
                                                                                                 ## call
                                                                                                 ## to
                                                                                                 ## the
                                                                                                 ## Compute
                                                                                                 ## function
                                                                                                 ## of
                                                                                                 ## the
                                                                                                 ## new
                                                                                                 ## class.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## This
                                                                                                 ## will
                                                                                                 ## recalculate
                                                                                                 ## the
                                                                                                 ## presentation
                                                                                                 ## for
                                                                                                 ## every
                                                                                                 ## trihedron
                                                                                                 ## displayed.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## plane
                                                                                                 ## display
                                                                                                 ## attributes
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Sets
                                                                                                 ## the
                                                                                                 ## plane
                                                                                                 ## size
                                                                                                 ## defined
                                                                                                 ## by
                                                                                                 ## the
                                                                                                 ## length
                                                                                                 ## in
                                                                                                 ## the
                                                                                                 ## X
                                                                                                 ## direction
                                                                                                 ## XSize
                                                                                                 ## and
                                                                                                 ## that
                                                                                                 ## in
                                                                                                 ## the
                                                                                                 ## Y
                                                                                                 ## direction
                                                                                                 ## YSize.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## tessellation
                                                                                                 ## deviation
                                                                                                 ## properties
                                                                                                 ## for
                                                                                                 ## automatic
                                                                                                 ## triangulation
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Sets
                                                                                                 ## the
                                                                                                 ## deviation
                                                                                                 ## coefficient
                                                                                                 ## theCoefficient.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Drawings
                                                                                                 ## of
                                                                                                 ## curves
                                                                                                 ## or
                                                                                                 ## patches
                                                                                                 ## are
                                                                                                 ## made
                                                                                                 ## with
                                                                                                 ## respect
                                                                                                 ## to
                                                                                                 ## a
                                                                                                 ## maximal
                                                                                                 ## chordal
                                                                                                 ## deviation.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## A
                                                                                                 ## Deviation
                                                                                                 ## coefficient
                                                                                                 ## is
                                                                                                 ## used
                                                                                                 ## in
                                                                                                 ## the
                                                                                                 ## shading
                                                                                                 ## display
                                                                                                 ## mode.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## The
                                                                                                 ## shape
                                                                                                 ## is
                                                                                                 ## seen
                                                                                                 ## decomposed
                                                                                                 ## into
                                                                                                 ## triangles.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## These
                                                                                                 ## are
                                                                                                 ## used
                                                                                                 ## to
                                                                                                 ## calculate
                                                                                                 ## reflection
                                                                                                 ## of
                                                                                                 ## light
                                                                                                 ## from
                                                                                                 ## the
                                                                                                 ## surface
                                                                                                 ## of
                                                                                                 ## the
                                                                                                 ## object.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## The
                                                                                                 ## triangles
                                                                                                 ## are
                                                                                                 ## formed
                                                                                                 ## from
                                                                                                 ## chords
                                                                                                 ## of
                                                                                                 ## the
                                                                                                 ## curves
                                                                                                 ## in
                                                                                                 ## the
                                                                                                 ## shape.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## The
                                                                                                 ## deviation
                                                                                                 ## coefficient
                                                                                                 ## theCoefficient
                                                                                                 ## gives
                                                                                                 ## the
                                                                                                 ## highest
                                                                                                 ## value
                                                                                                 ## of
                                                                                                 ## the
                                                                                                 ## angle
                                                                                                 ## with
                                                                                                 ## which
                                                                                                 ## a
                                                                                                 ## chord
                                                                                                 ## can
                                                                                                 ## deviate
                                                                                                 ## from
                                                                                                 ## a
                                                                                                 ## tangent
                                                                                                 ## to
                                                                                                 ## a
                                                                                                 ## curve.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## If
                                                                                                 ## this
                                                                                                 ## limit
                                                                                                 ## is
                                                                                                 ## reached,
                                                                                                 ## a
                                                                                                 ## new
                                                                                                 ## triangle
                                                                                                 ## is
                                                                                                 ## begun.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## This
                                                                                                 ## deviation
                                                                                                 ## is
                                                                                                 ## absolute
                                                                                                 ## and
                                                                                                 ## is
                                                                                                 ## set
                                                                                                 ## through
                                                                                                 ## the
                                                                                                 ## method:
                                                                                                 ## SetMaximalChordialDeviation.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## The
                                                                                                 ## default
                                                                                                 ## value
                                                                                                 ## is
                                                                                                 ## 0.001.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## In
                                                                                                 ## drawing
                                                                                                 ## shapes,
                                                                                                 ## however,
                                                                                                 ## you
                                                                                                 ## are
                                                                                                 ## allowed
                                                                                                 ## to
                                                                                                 ## ask
                                                                                                 ## for
                                                                                                 ## a
                                                                                                 ## relative
                                                                                                 ## deviation.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## This
                                                                                                 ## deviation
                                                                                                 ## will
                                                                                                 ## be:
                                                                                                 ## SizeOfObject
                                                                                                 ## *
                                                                                                 ## DeviationCoefficient.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## HLR
                                                                                                 ## (Hidden
                                                                                                 ## Line
                                                                                                 ## Removal)
                                                                                                 ## display
                                                                                                 ## attributes
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Initializes
                                                                                                 ## hidden
                                                                                                 ## line
                                                                                                 ## aspect
                                                                                                 ## in
                                                                                                 ## the
                                                                                                 ## default
                                                                                                 ## drawing
                                                                                                 ## tool,
                                                                                                 ## or
                                                                                                 ## Drawer.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## The
                                                                                                 ## default
                                                                                                 ## values
                                                                                                 ## are:
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Color:
                                                                                                 ## Quantity_NOC_YELLOW
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Type
                                                                                                 ## of
                                                                                                 ## line:
                                                                                                 ## Aspect_TOL_DASH
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Width:
                                                                                                 ## 1.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## iso-line
                                                                                                 ## display
                                                                                                 ## attributes
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Sets
                                                                                                 ## the
                                                                                                 ## number
                                                                                                 ## of
                                                                                                 ## U
                                                                                                 ## and
                                                                                                 ## V
                                                                                                 ## isoparameters
                                                                                                 ## displayed.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Updates
                                                                                                 ## the
                                                                                                 ## view
                                                                                                 ## of
                                                                                                 ## the
                                                                                                 ## current
                                                                                                 ## object
                                                                                                 ## in
                                                                                                 ## open
                                                                                                 ## context.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Objects
                                                                                                 ## selected
                                                                                                 ## when
                                                                                                 ## there
                                                                                                 ## is
                                                                                                 ## no
                                                                                                 ## open
                                                                                                 ## local
                                                                                                 ## context
                                                                                                 ## are
                                                                                                 ## called
                                                                                                 ## current
                                                                                                 ## objects;
                                                                                                 ## those
                                                                                                 ## selected
                                                                                                 ## in
                                                                                                 ## open
                                                                                                 ## local
                                                                                                 ## context,
                                                                                                 ## selected
                                                                                                 ## objects.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## sub-intensity
                                                                                                 ## management
                                                                                                 ## (deprecated)
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Sub-intensity
                                                                                                 ## allows
                                                                                                 ## temporary
                                                                                                 ## highlighting
                                                                                                 ## of
                                                                                                 ## particular
                                                                                                 ## objects
                                                                                                 ## with
                                                                                                 ## specified
                                                                                                 ## color
                                                                                                 ## in
                                                                                                 ## a
                                                                                                 ## manner
                                                                                                 ## of
                                                                                                 ## selection
                                                                                                 ## highlight,
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## but
                                                                                                 ## without
                                                                                                 ## actual
                                                                                                 ## selection
                                                                                                 ## (e.g.,
                                                                                                 ## global
                                                                                                 ## status
                                                                                                 ## and
                                                                                                 ## owner's
                                                                                                 ## selection
                                                                                                 ## state
                                                                                                 ## will
                                                                                                 ## not
                                                                                                 ## be
                                                                                                 ## updated).
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## The
                                                                                                 ## method
                                                                                                 ## returns
                                                                                                 ## the
                                                                                                 ## color
                                                                                                 ## of
                                                                                                 ## such
                                                                                                 ## highlighting.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## By
                                                                                                 ## default,
                                                                                                 ## it
                                                                                                 ## is
                                                                                                 ## Quantity_NOC_GRAY40.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## internal
                                                                                                 ## methods
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## internal
                                                                                                 ## fields
    ## !< context filter (the content active filters
    ## !  can be applied with AND or OR operation)
    ## !< picking strategy to be applied within MoveTo()
type
  AIS_InteractiveObject* {.importcpp: "AIS_InteractiveObject",
                          header: "AIS_InteractiveObject.hxx", bycopy.} = object of SelectMgrSelectableObject ##
                                                                                                       ## !
                                                                                                       ## Returns
                                                                                                       ## the
                                                                                                       ## kind
                                                                                                       ## of
                                                                                                       ## Interactive
                                                                                                       ## Object;
                                                                                                       ## AIS_KOI_None
                                                                                                       ## by
                                                                                                       ## default.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## Returns
                                                                                                       ## the
                                                                                                       ## context
                                                                                                       ## pointer
                                                                                                       ## to
                                                                                                       ## the
                                                                                                       ## interactive
                                                                                                       ## context.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## The
                                                                                                       ## TypeOfPresention3d
                                                                                                       ## means
                                                                                                       ## that
                                                                                                       ## the
                                                                                                       ## interactive
                                                                                                       ## object
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## may
                                                                                                       ## have
                                                                                                       ## a
                                                                                                       ## presentation
                                                                                                       ## dependant
                                                                                                       ## of
                                                                                                       ## the
                                                                                                       ## view
                                                                                                       ## of
                                                                                                       ## Display.
    ## !< pointer to Interactive Context, where object is currently displayed; @sa SetContext()
    ## !< application-specific owner object
type
  AIS_Line* {.importcpp: "AIS_Line", header: "AIS_Line.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                              ## !
                                                                                              ## Initializes
                                                                                              ## the
                                                                                              ## line
                                                                                              ## aLine.
type
  AIS_ManipulatorObjectSequence* {.importcpp: "AIS_ManipulatorObjectSequence",
                                  header: "AIS_Manipulator.hxx", bycopy.} = object of NCollectionSequence[
      Handle[AIS_InteractiveObject]]
type
  HandleAIS_ManipulatorObjectSequence* = Handle[AIS_ManipulatorObjectSequence]
  HandleAIS_ManipulatorObjectSequenceAIS_Manipulator* = Handle[AIS_Manipulator]
## ! Interactive object class to manipulate local transformation of another interactive
## ! object or a group of objects via mouse.
## ! It manages three types of manipulations in 3D space:
## ! - translation through axis
## ! - scaling within axis
## ! - rotation around axis
## ! To enable one of this modes, selection mode (from 1 to 3) is to be activated.
## ! There are three orthogonal transformation axes defined by position property of
## ! the manipulator. Particular transformation mode can be disabled for each
## ! of the axes or all of them. Furthermore each of the axes can be hidden or
## ! made visible.
## ! The following steps demonstrate how to attach, configure and use manipulator
## ! for an interactive object:
## ! Step 1. Create manipulator object and adjust it appearance:
## ! @code
## ! Handle(AIS_Manipulator) aManipulator = new AIS_Manipulator();
## ! aManipulator->SetPart (0, AIS_Manipulator::Scaling, Standard_False);
## ! aManipulator->SetPart (1, AIS_Manipulator::Rotation, Standard_False);
## ! // Attach manipulator to already displayed object and manage manipulation modes
## ! aManipulator->AttachToObject (anAISObject);
## ! aManipulator->EnableMode (AIS_Manipulator::Translation);
## ! aManipulator->EnableMode (AIS_Manipulator::Rotation);
## ! aManipulator->EnableMode (AIS_Manipulator::Scaling);
## ! @endcode
## ! Note that you can enable only one manipulation mode but have all visual parts displayed.
## ! This code allows you to view manipulator and select its manipulation parts.
## ! Note that manipulator activates mode on part selection.
## ! If this mode is activated, no selection will be performed for manipulator.
## ! It can be activated with highlighting. To enable this:
## ! @code
## ! aManipulator->SetModeActivationOnDetection (Standard_True);
## ! @endcode
## ! Step 2. To perform transformation of object use next code in your event processing chain:
## ! @code
## ! // catch mouse button down event
## ! if (aManipulator->HasActiveMode())
## ! {
## !   aManipulator->StartTransform (anXPix, anYPix, aV3dView);
## ! }
## ! ...
## ! // or track mouse move event
## ! if (aManipulator->HasActiveMode())
## ! {
## !   aManipulator->Transform (anXPix, anYPix, aV3dView);
## !   aV3dView->Redraw();
## ! }
## ! ...
## ! // or catch mouse button up event (apply) or escape event (cancel)
## ! aManipulator->StopTransform(/*Standard_Boolean toApply*/);
## ! @endcode
## ! Step 3. To deactivate current manipulation mode use:
## ! @code aManipulator->DeactivateCurrentMode();
## ! @endcode
## ! Step 4. To detach manipulator from object use:
## ! @code
## ! aManipulator->Detach();
## ! @endcode
## ! The last method erases manipulator object.
type
  AIS_Manipulator* {.importcpp: "AIS_Manipulator", header: "AIS_Manipulator.hxx",
                    bycopy.} = object of AIS_InteractiveObject ## ! Constructs a manipulator object with default placement and all parts to be displayed.
                                                          ## ! Drag object in the viewer.
                                                          ## ! @param theCtx      [in] interactive context
                                                          ## ! @param theView     [in] active View
                                                          ## ! @param theOwner    [in] the owner of detected entity
                                                          ## ! @param theDragFrom [in] drag start point
                                                          ## ! @param theDragTo   [in] drag end point
                                                          ## ! @param theAction   [in] drag action
                                                          ## ! @return FALSE if object rejects dragging action (e.g. AIS_DragAction_Start)
                                                          ## ! @name Configuration of graphical transformations
                                                          ## ! Enable or disable zoom persistence mode for the manipulator. With
                                                          ## ! this mode turned on the presentation will keep fixed screen size.
                                                          ## ! @warning when turned on this option overrides transform persistence
                                                          ## ! properties and local transformation to achieve necessary visual effect.
                                                          ## ! @warning revise use of AdjustSize argument of of \sa AttachToObjects method
                                                          ## ! when enabling zoom persistence.
                                                          ## ! @name Setters for parameters
                                                          ## ! Behavior settings to be applied when performing transformation:
                                                          ## ! - FollowTranslation - whether the manipulator will be moved together with an object.
                                                          ## ! - FollowRotation - whether the manipulator will be rotated together with an object.
                                                          ## ! @name Presentation computation
                                                          ## ! Fills presentation.
                                                          ## ! @note Manipulator presentation does not use display mode and for all modes has the same presentation.
                                                          ## ! @name Auxiliary classes to fill presentation with proper primitives
                                                          ## ! @name Fields for interactive transformation. Fields only for internal needs. They do not have public interface.
    ## !< Tree axes of the manipulator.
    ## !< Visual part displaying the center sphere of the manipulator.
    ## !< Position of the manipulator object. it displays its location and position of its axes.
    ## !< Index of active axis.
    ## !< Name of active manipulation mode.
    ## !< Manual activation of modes (not on parts selection).
    ## !< Zoom persistence mode activation.
    ## !< Behavior settings applied on manipulator when transforming an object.
    ## !< Owning object transformation for start. It is used internally.
    ## !< Shows if transformation is processed (sequential calls of Transform()).
    ## ! Start position of manipulator.
    ## ! 3d point corresponding to start mouse pick.
    ## ! Previous value of angle during rotation.
    ## ! Aspect used to color current detected part and current selected part.
    ## ! Aspect used to color sector part when it's selected.
type
  AIS_ManipulatorOptionsForAttach* {.importcpp: "AIS_Manipulator::OptionsForAttach",
                                    header: "AIS_Manipulator.hxx", bycopy.} = object
    adjustPosition* {.importc: "AdjustPosition".}: bool
    adjustSize* {.importc: "AdjustSize".}: bool
    enableModes* {.importc: "EnableModes".}: bool
type
  AIS_ManipulatorBehaviorOnTransform* {.importcpp: "AIS_Manipulator::BehaviorOnTransform",
                                       header: "AIS_Manipulator.hxx", bycopy.} = object
    followTranslation* {.importc: "FollowTranslation".}: bool
    followRotation* {.importc: "FollowRotation".}: bool
    followDragging* {.importc: "FollowDragging".}: bool
type
  HandleAIS_ManipulatorOwner* = Handle[AIS_ManipulatorOwner]
## ! Entity owner for selection management of AIS_Manipulator object.
type
  AIS_ManipulatorOwner* {.importcpp: "AIS_ManipulatorOwner",
                         header: "AIS_ManipulatorOwner.hxx", bycopy.} = object of SelectMgrEntityOwner
    ## !< index of manipulator axis.
    ## !< manipulation (highlight) mode.
type
  AIS_MediaPlayer* {.importcpp: "AIS_MediaPlayer", header: "AIS_MediaPlayer.hxx",
                    bycopy.} = object of AIS_InteractiveObject ## ! Empty constructor.
                                                          ## ! Accept only display mode 0.
                                                          ## ! Update frame size.
type
  AIS_MouseGesture* {.size: sizeof(cint), importcpp: "AIS_MouseGesture",
                     header: "AIS_MouseGesture.hxx".} = enum
    aIS_MouseGestureNONE,     ## !< no active gesture
                         ##
    aIS_MouseGestureSelectRectangle, ## !< rectangular selection;
                                    ## !  press button to start, move mouse to define rectangle, release to finish
    aIS_MouseGestureSelectLasso, ## !< polygonal selection;
                                ## !  press button to start, move mouse to define polygonal path, release to finish
                                ##
    aIS_MouseGestureZoom,     ## !< view zoom gesture;
                         ## !  move mouse left to zoom-out, and to the right to zoom-in
    aIS_MouseGestureZoomWindow, ## !< view zoom by window gesture;
                               ## !  press button to start, move mouse to define rectangle, release to finish
    aIS_MouseGesturePan,      ## !< view panning gesture
    aIS_MouseGestureRotateOrbit, ## !< orbit rotation gesture
    aIS_MouseGestureRotateView ## !< view  rotation gesture
## ! Map defining mouse gestures.
type
  AIS_MultipleConnectedInteractive* {.importcpp: "AIS_MultipleConnectedInteractive", header: "AIS_MultipleConnectedInteractive.hxx",
                                     bycopy.} = object of AIS_InteractiveObject ## !
                                                                           ## Initializes the
                                                                           ## Interactive
                                                                           ## Object with
                                                                           ## multiple
                                                                           ## !
                                                                           ## connections to
                                                                           ## AIS_Interactive
                                                                           ## objects.
                                                                           ##  short
                                                                           ## aliases to
                                                                           ## Connect()
                                                                           ## method
                                                                           ## !
                                                                           ## Establishes the
                                                                           ## connection
                                                                           ## between the
                                                                           ## Connected
                                                                           ## Interactive
                                                                           ## Object,
                                                                           ## theInteractive, and its
                                                                           ## reference.
                                                                           ## !
                                                                           ## Copies local
                                                                           ## transformation and
                                                                           ## transformation
                                                                           ## persistence mode from
                                                                           ## theInteractive.
                                                                           ## !
                                                                           ## @return
                                                                           ## created
                                                                           ## instance
                                                                           ## object
                                                                           ## (AIS_ConnectedInteractive or
                                                                           ## AIS_MultipleConnectedInteractive)
                                                                           ## ! this
                                                                           ## method is
                                                                           ## redefined
                                                                           ## virtual;
                                                                           ## ! when the
                                                                           ## instance is
                                                                           ## connected to
                                                                           ## another
                                                                           ## !
                                                                           ## InteractiveObject,this
                                                                           ## method
                                                                           ## doesn't
                                                                           ## !
                                                                           ## compute
                                                                           ## anything, but just uses the
                                                                           ## !
                                                                           ## presentation of this last
                                                                           ## object, with
                                                                           ## ! a
                                                                           ## transformation if
                                                                           ## there's one
                                                                           ## stored.
                                                                           ## !
                                                                           ## Computes the
                                                                           ## selection for whole
                                                                           ## subtree in scene
                                                                           ## hierarchy.
type
  AIS_NavigationMode* {.size: sizeof(cint), importcpp: "AIS_NavigationMode",
                       header: "AIS_NavigationMode.hxx".} = enum
    aIS_NavigationModeOrbit,  ## !< orbit rotation
    aIS_NavigationModeFirstPersonFlight, ## !< flight rotation (first person)
    aIS_NavigationModeFirstPersonWalk ## !< walking mode (first person)
type
  AIS_Plane* {.importcpp: "AIS_Plane", header: "AIS_Plane.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                                 ## !
                                                                                                 ## initializes
                                                                                                 ## the
                                                                                                 ## plane
                                                                                                 ## aComponent.
                                                                                                 ## If
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## the
                                                                                                 ## mode
                                                                                                 ## aCurrentMode
                                                                                                 ## equals
                                                                                                 ## true,
                                                                                                 ## the
                                                                                                 ## drawing
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## tool,
                                                                                                 ## "Drawer"
                                                                                                 ## is
                                                                                                 ## not
                                                                                                 ## initialized.
type
  AIS_PlaneTrihedron* {.importcpp: "AIS_PlaneTrihedron",
                       header: "AIS_PlaneTrihedron.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                             ## !
                                                                                             ## Initializes
                                                                                             ## the
                                                                                             ## plane
                                                                                             ## aPlane.
                                                                                             ## The
                                                                                             ## plane
                                                                                             ## trihedron
                                                                                             ## is
                                                                                             ##
                                                                                             ## !
                                                                                             ## constructed
                                                                                             ## from
                                                                                             ## this
                                                                                             ## and
                                                                                             ## an
                                                                                             ## axis.
type
  AIS_Point* {.importcpp: "AIS_Point", header: "AIS_Point.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                                 ## !
                                                                                                 ## Initializes
                                                                                                 ## the
                                                                                                 ## point
                                                                                                 ## aComponent
                                                                                                 ## from
                                                                                                 ## which
                                                                                                 ## the
                                                                                                 ## point
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## datum
                                                                                                 ## will
                                                                                                 ## be
                                                                                                 ## built.
type
  AIS_PointCloud* {.importcpp: "AIS_PointCloud", header: "AIS_PointCloud.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                                                ## !
                                                                                                                ## Display
                                                                                                                ## modes
                                                                                                                ## supported
                                                                                                                ## by
                                                                                                                ## this
                                                                                                                ## Point
                                                                                                                ## Cloud
                                                                                                                ## object
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## Constructor.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## Get
                                                                                                                ## the
                                                                                                                ## points
                                                                                                                ## array.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## Method
                                                                                                                ## might
                                                                                                                ## be
                                                                                                                ## overridden
                                                                                                                ## to
                                                                                                                ## fill
                                                                                                                ## in
                                                                                                                ## points
                                                                                                                ## array
                                                                                                                ## dynamically
                                                                                                                ## from
                                                                                                                ## application
                                                                                                                ## data
                                                                                                                ## structures.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## @return
                                                                                                                ## the
                                                                                                                ## array
                                                                                                                ## of
                                                                                                                ## points
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## Setup
                                                                                                                ## custom
                                                                                                                ## color.
                                                                                                                ## Affects
                                                                                                                ## presentation
                                                                                                                ## only
                                                                                                                ## when
                                                                                                                ## no
                                                                                                                ## per-point
                                                                                                                ## color
                                                                                                                ## attribute
                                                                                                                ## has
                                                                                                                ## been
                                                                                                                ## assigned.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## Prepare
                                                                                                                ## presentation
                                                                                                                ## for
                                                                                                                ## this
                                                                                                                ## object.
    ## !< points array for presentation
    ## !< bounding box for presentation
  AIS_PointCloudDisplayMode* {.size: sizeof(cint),
                              importcpp: "AIS_PointCloud::DisplayMode",
                              header: "AIS_PointCloud.hxx".} = enum
    DM_Points = 0,              ## !< display as normal points, default presentation
    DM_BndBox = 2
type
  AIS_PointCloudSelectionMode* {.size: sizeof(cint),
                                importcpp: "AIS_PointCloud::SelectionMode",
                                header: "AIS_PointCloud.hxx".} = enum
    SM_Points = 0,              ## !< detected by points
    SM_SubsetOfPoints = 1,      ## !< detect point(s) within Point Cloud rather than object as whole
    SM_BndBox = 2               ## !< detected by bounding box
type
  HandleAIS_PointCloud* = Handle[AIS_PointCloud]
## ! Custom owner for highlighting selected points.
type
  AIS_PointCloudOwner* {.importcpp: "AIS_PointCloudOwner",
                        header: "AIS_PointCloud.hxx", bycopy.} = object of SelectMgrEntityOwner ##
                                                                                         ## !
                                                                                         ## Main
                                                                                         ## constructor.
    ## !< last detected points
    ## !< selected points
type
  AIS_RotationMode* {.size: sizeof(cint), importcpp: "AIS_RotationMode",
                     header: "AIS_RotationMode.hxx".} = enum
    aIS_RotationModeBndBoxActive, ## !< default OCCT rotation
    aIS_RotationModePickLast, ## !< rotate around last picked point
    aIS_RotationModePickCenter, ## !< rotate around point at the center of window
    aIS_RotationModeCameraAt, ## !< rotate around camera center
    aIS_RotationModeBndBoxScene ## !< rotate around scene center
type
  HandleAIS_RubberBand* = Handle[AIS_RubberBand]
## ! Presentation for drawing rubber band selection.
## ! It supports rectangle and polygonal selection.
## ! It is constructed in 2d overlay.
## ! Default configaration is built without filling.
## ! For rectangle selection use SetRectangle() method.
## ! For polygonal selection use AddPoint() and GetPoints() methods.
type
  AIS_RubberBand* {.importcpp: "AIS_RubberBand", header: "AIS_RubberBand.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                                                ## !
                                                                                                                ## Constructs
                                                                                                                ## rubber
                                                                                                                ## band
                                                                                                                ## with
                                                                                                                ## default
                                                                                                                ## configuration:
                                                                                                                ## empty
                                                                                                                ## filling
                                                                                                                ## and
                                                                                                                ## white
                                                                                                                ## solid
                                                                                                                ## lines.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## @warning
                                                                                                                ## It
                                                                                                                ## binds
                                                                                                                ## this
                                                                                                                ## object
                                                                                                                ## with
                                                                                                                ## Graphic3d_ZLayerId_TopOSD
                                                                                                                ## layer.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## Computes
                                                                                                                ## presentation
                                                                                                                ## of
                                                                                                                ## rubber
                                                                                                                ## band.
    ## !< Array of screen points
    ## !< Triangles for rubber band filling
    ## !< Polylines for rubber band borders
    ## !< automatic closing of rubber-band flag
type
  AIS_Selection* {.importcpp: "AIS_Selection", header: "AIS_Selection.hxx", bycopy.} = object of StandardTransient ##
                                                                                                         ## !
                                                                                                         ## creates
                                                                                                         ## a
                                                                                                         ## new
                                                                                                         ## selection.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Start
                                                                                                         ## iteration
                                                                                                         ## through
                                                                                                         ## selected
                                                                                                         ## objects.
type
  AIS_Shape* {.importcpp: "AIS_Shape", header: "AIS_Shape.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                                 ## !
                                                                                                 ## Initializes
                                                                                                 ## construction
                                                                                                 ## of
                                                                                                 ## the
                                                                                                 ## shape
                                                                                                 ## shap
                                                                                                 ## from
                                                                                                 ## wires,
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## edges
                                                                                                 ## and
                                                                                                 ## vertices.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## @name
                                                                                                 ## methods
                                                                                                 ## to
                                                                                                 ## alter
                                                                                                 ## texture
                                                                                                 ## mapping
                                                                                                 ## properties
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Return
                                                                                                 ## texture
                                                                                                 ## repeat
                                                                                                 ## UV
                                                                                                 ## values;
                                                                                                 ## (1,
                                                                                                 ## 1)
                                                                                                 ## by
                                                                                                 ## default.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Compute
                                                                                                 ## normal
                                                                                                 ## presentation.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Compute
                                                                                                 ## HLR
                                                                                                 ## presentation
                                                                                                 ## for
                                                                                                 ## specified
                                                                                                 ## shape.
    ## !< shape to display
    ## !< cached bounding box of the shape
    ## !< UV origin vector for generating texture coordinates
    ## !< UV repeat vector for generating texture coordinates
    ## !< UV scale  vector for generating texture coordinates
    ## !< if TRUE, then bounding box should be recomputed
type
  HandleAIS_SignatureFilter* = Handle[AIS_SignatureFilter]
## ! Selects Interactive Objects through their signatures
## ! and types. The signature provides an
## ! additional   characterization of an object's type, and
## ! takes the form of an index. The filter questions each
## ! Interactive Object in local context to determine
## ! whether it has an non-null owner, and if so, whether
## ! it has the desired signature. If the object returns true
## ! in each case, it is kept. If not, it is rejected.
## ! By default, the   interactive object has a None   type
## ! and a signature of 0. If you want to give a particular
## ! type and signature to your Interactive Object, you
## ! must redefine two virtual methods:   Type and Signature.
## ! This filter is only used in an open local contexts.
## ! In the Collector viewer, you can only locate
## ! Interactive Objects which answer positively to the
## ! positioned filters when a local context is open.
## ! Warning
## ! Some signatures have already been used by standard
## ! objects delivered in AIS. These include:
## ! -   signature 0 - Shape
## ! -   signature 1 - Point
## ! -   signature 2 - Axis
## ! -   signature 3 - Trihedron
## ! -   signature 4 - PlaneTrihedron
## ! -   signature 5 - Line
## ! -   signature 6 - Circle
## ! -   signature 7 - Plane
type
  AIS_SignatureFilter* {.importcpp: "AIS_SignatureFilter",
                        header: "AIS_SignatureFilter.hxx", bycopy.} = object of AIS_TypeFilter ##
                                                                                        ## !
                                                                                        ## Initializes
                                                                                        ## the
                                                                                        ## signature
                                                                                        ## filter,
                                                                                        ## adding
                                                                                        ## the
                                                                                        ## signature
                                                                                        ##
                                                                                        ## !
                                                                                        ## specification,
                                                                                        ## aGivenSignature,
                                                                                        ## to
                                                                                        ## that
                                                                                        ## for
                                                                                        ## type,
                                                                                        ##
                                                                                        ## !
                                                                                        ## aGivenKind,
                                                                                        ## in
                                                                                        ## AIS_TypeFilter.
type
  AIS_TextLabel* {.importcpp: "AIS_TextLabel", header: "AIS_TextLabel.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                                             ## !
                                                                                                             ## Default
                                                                                                             ## constructor
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## Compute
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## CASCADE
                                                                                                             ## RTTI
type
  AIS_TexturedShape* {.importcpp: "AIS_TexturedShape",
                      header: "AIS_TexturedShape.hxx", bycopy.} = object of AIS_Shape ## !
                                                                               ## @name
                                                                               ## main
                                                                               ## methods
                                                                               ## !
                                                                               ## Initializes
                                                                               ## the
                                                                               ## textured
                                                                               ## shape.
                                                                               ## !
                                                                               ## @name
                                                                               ## methods
                                                                               ## to
                                                                               ## alter
                                                                               ## texture
                                                                               ## mapping
                                                                               ## properties
                                                                               ## !
                                                                               ## Use
                                                                               ## this
                                                                               ## method
                                                                               ## to
                                                                               ## display
                                                                               ## the
                                                                               ## textured
                                                                               ## shape
                                                                               ## without
                                                                               ## recomputing
                                                                               ## the
                                                                               ## whole
                                                                               ## presentation.
                                                                               ## !
                                                                               ## Use
                                                                               ## this
                                                                               ## method
                                                                               ## when
                                                                               ## ONLY
                                                                               ## the
                                                                               ## texture
                                                                               ## content
                                                                               ## has
                                                                               ## been
                                                                               ## changed.
                                                                               ## !
                                                                               ## If
                                                                               ## other
                                                                               ## parameters
                                                                               ## (ie:
                                                                               ## scale
                                                                               ## factors,
                                                                               ## texture
                                                                               ## origin,
                                                                               ## texture
                                                                               ## repeat...)
                                                                               ## have
                                                                               ## changed,
                                                                               ## the
                                                                               ## whole
                                                                               ## presentation
                                                                               ## has
                                                                               ## to
                                                                               ## be
                                                                               ## recomputed:
                                                                               ## !
                                                                               ## @code
                                                                               ## !
                                                                               ## if
                                                                               ## (myShape->DisplayMode()
                                                                               ## ==
                                                                               ## 3)
                                                                               ## ! {
                                                                               ## !
                                                                               ## myAISContext->RecomputePrsOnly
                                                                               ## (myShape);
                                                                               ## ! }
                                                                               ## !
                                                                               ## else
                                                                               ## ! {
                                                                               ## !
                                                                               ## myAISContext->SetDisplayMode
                                                                               ## (myShape,
                                                                               ## 3,
                                                                               ## Standard_False);
                                                                               ## !
                                                                               ## myAISContext->Display
                                                                               ## (myShape,
                                                                               ## Standard_True);
                                                                               ## ! }
                                                                               ## !
                                                                               ## @endcode
                                                                               ## !
                                                                               ## @name
                                                                               ## overridden
                                                                               ## methods
                                                                               ## !
                                                                               ## Compute
                                                                               ## presentation
                                                                               ## with
                                                                               ## texture
                                                                               ## mapping
                                                                               ## support.
                                                                               ## !
                                                                               ## @name
                                                                               ## presentation
                                                                               ## fields
                                                                               ## !
                                                                               ## @name
                                                                               ## texture
                                                                               ## source
                                                                               ## fields
                                                                               ## !
                                                                               ## @name
                                                                               ## texture
                                                                               ## mapping
                                                                               ## properties
type
  HandleAIS_Triangulation* = Handle[AIS_Triangulation]
## ! Interactive object that draws data from  Poly_Triangulation, optionally with colors associated
## ! with each triangulation vertex. For maximum efficiency colors are represented as 32-bit integers
## ! instead of classic Quantity_Color values.
## ! Interactive selection of triangles and vertices is not yet implemented.
type
  AIS_Triangulation* {.importcpp: "AIS_Triangulation",
                      header: "AIS_Triangulation.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                           ## !
                                                                                           ## Constructs
                                                                                           ## the
                                                                                           ## Triangulation
                                                                                           ## display
                                                                                           ## object
type
  AIS_Trihedron* {.importcpp: "AIS_Trihedron", header: "AIS_Trihedron.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                                             ## !
                                                                                                             ## Initializes
                                                                                                             ## a
                                                                                                             ## trihedron
                                                                                                             ## entity.
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## Method
                                                                                                             ## which
                                                                                                             ## clear
                                                                                                             ## all
                                                                                                             ## selected
                                                                                                             ## owners
                                                                                                             ## belonging
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## to
                                                                                                             ## this
                                                                                                             ## selectable
                                                                                                             ## object
                                                                                                             ## (
                                                                                                             ## for
                                                                                                             ## fast
                                                                                                             ## presentation
                                                                                                             ## draw
                                                                                                             ## ).
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## Compute
                                                                                                             ## trihedron
                                                                                                             ## presentation.
                                                                                                             ##
                                                                                                             ## !
                                                                                                             ## Creates
                                                                                                             ## a
                                                                                                             ## sensitive
                                                                                                             ## entity
                                                                                                             ## for
                                                                                                             ## the
                                                                                                             ## datum
                                                                                                             ## part
                                                                                                             ## that
                                                                                                             ## will
                                                                                                             ## be
                                                                                                             ## used
                                                                                                             ## in
                                                                                                             ## selection
                                                                                                             ## owner
                                                                                                             ## creation.
type
  AIS_TrihedronOwner* {.importcpp: "AIS_TrihedronOwner",
                       header: "AIS_TrihedronOwner.hxx", bycopy.} = object of SelectMgrEntityOwner ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## an
                                                                                            ## owner
                                                                                            ## of
                                                                                            ## AIS_Trihedron
                                                                                            ## object.
    ## !< part of datum selected
type
  HandleAIS_TypeFilter* = Handle[AIS_TypeFilter]
## ! Selects Interactive Objects through their types. The
## ! filter questions each Interactive Object in local context
## ! to determine whether it has an non-null owner, and if
## ! so, whether it is of the desired type. If the object
## ! returns true in each case, it is kept. If not, it is rejected.
## ! By default, the   interactive object has a None   type
## ! and a signature of 0. A filter for type specifies a
## ! choice of type out of a range at any level enumerated
## ! for type or kind. The choice could be for kind of
## ! interactive object, of dimension, of unit, or type of axis,
## ! plane or attribute.
## ! If you want to give a particular type and signature to
## ! your Interactive Object, you must redefine two virtual
## ! methods:   Type and Signature.
## ! This filter is used in both Neutral Point and open local contexts.
## ! In the Collector viewer, you can only locate
## ! Interactive Objects which answer positively to the
## ! positioned filters when a local context is open.
## ! Warning
## ! When you close a local context, all temporary
## ! interactive objects are deleted, all selection modes
## ! concerning the context are cancelled, and all content
## ! filters are emptied.
type
  AIS_TypeFilter* {.importcpp: "AIS_TypeFilter", header: "AIS_TypeFilter.hxx", bycopy.} = object of SelectMgrFilter ##
                                                                                                          ## !
                                                                                                          ## Initializes
                                                                                                          ## filter
                                                                                                          ## for
                                                                                                          ## type,
                                                                                                          ## aGivenKind.
type
  AIS_ViewController* {.importcpp: "AIS_ViewController",
                       header: "AIS_ViewController.hxx", bycopy.} = object ## ! Empty
                                                                      ## constructor.
                                                                      ## ! @name global parameters
                                                                      ## ! Return camera rotation mode,
                                                                      ## AIS_RotationMode_BndBoxActive by default.
                                                                      ## ! @name keyboard input
                                                                      ## ! Return keyboard state.
                                                                      ## ! @name mouse input
                                                                      ## ! Return map defining mouse gestures.
                                                                      ## ! @name
                                                                      ## multi-touch input
                                                                      ## ! Return scale factor for adjusting tolerances for starting
                                                                      ## multi-touch gestures; 1.0 by default
                                                                      ## ! This scale factor is expected to be computed from touch screen
                                                                      ## resolution.
                                                                      ## ! @name 3d mouse input
                                                                      ## ! Return
                                                                      ## acceleration ratio for
                                                                      ## translation event; 2.0 by default.
                                                                      ## ! Return event time (e.g. current time).
                                                                      ## ! Callback called by
                                                                      ## handleMoveTo() on Selection in 3D Viewer.
                                                                      ## ! This method is expected to be called from rendering thread.
                                                                      ## ! Handle hot-keys defining new camera
                                                                      ## orientation
                                                                      ## (Aspect_VKey_ViewTop and similar keys).
                                                                      ## ! Default
                                                                      ## implementation starts an animated
                                                                      ## transaction from the current to the target camera
                                                                      ## orientation, when specific action key was pressed.
                                                                      ## ! This method is expected to be called from rendering thread.
                                                                      ## ! Perform XR input.
                                                                      ## ! This method is expected to be called from rendering thread.
                                                                      ## ! Flush buffers.
                                                                      ## ! @name XR input variables
                                                                      ## ! @name keyboard input variables
                                                                      ## ! @name mouse input variables
                                                                      ## ! @name
                                                                      ## multi-touch input variables
                                                                      ## ! @name 3d mouse input variables
                                                                      ## ! @name
                                                                      ## rotation/panning transient state variables
    ## !< buffer for UI thread
    ## !< buffer for rendering thread
    ## !< timer for timestamping events
    ## !< last fetched events timer value for computing delta/progress
    ## !< flag indicating that another frame should be drawn right after this one
    ## !< minimal camera distance for zoom operation
    ## !< rotation mode
    ## !< navigation mode (orbit rotation / first person)
    ## !< mouse input acceleration ratio in First Person mode
    ## !< Orbit rotation acceleration ratio
    ## !< option displaying panning  anchor point
    ## !< option displaying rotation center point
    ## !< force camera up orientation within AIS_NavigationMode_Orbit rotation mode
    ## !< flag inverting pitch direction while processing Aspect_VKey_NavLookUp/Aspect_VKey_NavLookDown
    ## !< enable z-rotation two-touches gesture; FALSE by default
    ## !< enable rotation; TRUE by default
    ## !< enable panning; TRUE by default
    ## !< enable zooming; TRUE by default
    ## !< enable ZFocus change; TRUE by default
    ## !< enable dynamic highlight on mouse move; TRUE by default
    ## !< enable dragging object; TRUE by default
    ## !< project picked point to ray while zooming at point, TRUE by default
    ## !< project picked point to ray while rotating around point; TRUE by default
    ## !< normal walking speed, in m/s; 1.5 by default
    ## !< walking speed relative to scene bounding box; 0.1 by default
    ## !< active thrust value
    ## !< flag indicating active thrust
    ## !< view animation
    ## !< Rubber-band presentation
    ## !< detected owner of currently dragged object
    ## !< currently dragged object
    ## !< previous position of MoveTo event in 3D viewer
    ## !< flag for restoring Computed mode after rotation
    ## !< array of XR tracked devices presentations
    ## !< temporary camera
    ## !< color of teleport laser
    ## !< color of picking  laser
    ## !< active hand for teleport
    ## !< active hand for picking objects
    ## !< vibration on picking teleport destination
    ## !< vibration on dynamic highlighting
    ## !< vibration on selection
    ## !< last picking depth for left  hand
    ## !< last picking depth for right hand
    ## !< discrete turn angle for XR trackpad
    ## !< flag to display auxiliary tracked XR devices
    ## !< flag to display XR hands
    ## !< keyboard state
    ## !< mouse click threshold in pixels; 3 by default
    ## !< double click interval in seconds; 0.4 by default
    ## !< distance ratio for mapping mouse scroll event to zoom; 15.0 by default
    ## !< map defining mouse gestures
    ## !< initiated mouse gesture (by pressing mouse button)
    ## !< flag indicating view idle rotation state
    ## !< last mouse position
    ## !< mouse position where active gesture was been initiated
    ## !< gesture progress
    ## !< timer for handling double-click event
    ## !< counter for handling double-click event
    ## !< active mouse buttons
    ## !< active key modifiers passed with last mouse event
    ## !< index of mouse button pressed alone (>0)
    ## !< queue stop dragging even with at next mouse unclick
    ## !< tolerance scale factor; 1.0 by default
    ## !< threshold for starting one-touch rotation     gesture in pixels;  6 by default
    ## !< threshold for starting two-touch Z-rotation   gesture in radians; 2 degrees by default
    ## !< threshold for starting two-touch panning      gesture in pixels;  4 by default
    ## !< threshold for starting two-touch zoom (pitch) gesture in pixels;  6 by default
    ## !< distance ratio for mapping two-touch zoom (pitch) gesture from pixels to zoom; 0.13 by default
    ## !< map of active touches
    ## !< touch coordinates at the moment of starting panning  gesture
    ## !< touch coordinates at the moment of starting rotating gesture
    ## !< number of touches within previous gesture flush to track gesture changes
    ## !< flag indicating that new anchor  point should be picked for starting panning    gesture
    ## !< flag indicating that new gravity point should be picked for starting rotation   gesture
    ## !< flag indicating that new gravity point should be picked for starting Z-rotation gesture
    ## !< cached button state
    ## !< ignore  3d mouse rotation axes
    ## !< reverse 3d mouse rotation axes
    ## !< acceleration ratio for translation event
    ## !< acceleration ratio for rotation event
    ## !< quadric acceleration
    ## !< anchor point presentation (Graphic3d_ZLayerId_Top)
    ## !< anchor point presentation (Graphic3d_ZLayerId_Topmost)
    ## !< active panning anchor point
    ## !< active rotation center of gravity
    ## !< camera Up    direction at the beginning of rotation
    ## !< camera View  direction at the beginning of rotation
    ## !< camera Eye    position at the beginning of rotation
    ## !< camera Center position at the beginning of rotation
    ## !< vector from rotation gravity point to camera Center at the beginning of rotation
    ## !< vector from rotation gravity point to camera Eye    at the beginning of rotation
    ## !< camera yaw pitch roll at the beginning of rotation
type
  AIS_ViewCube* {.importcpp: "AIS_ViewCube", header: "AIS_ViewCube.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                                          ## !
                                                                                                          ## Return
                                                                                                          ## TRUE
                                                                                                          ## if
                                                                                                          ## specified
                                                                                                          ## orientation
                                                                                                          ## belongs
                                                                                                          ## to
                                                                                                          ## box
                                                                                                          ## side.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Empty
                                                                                                          ## constructor.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Set
                                                                                                          ## default
                                                                                                          ## visual
                                                                                                          ## attributes
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @name
                                                                                                          ## Geometry
                                                                                                          ## management
                                                                                                          ## API
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @return
                                                                                                          ## size
                                                                                                          ## (width
                                                                                                          ## and
                                                                                                          ## height)
                                                                                                          ## of
                                                                                                          ## View
                                                                                                          ## cube
                                                                                                          ## sides;
                                                                                                          ## 100
                                                                                                          ## by
                                                                                                          ## default.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @name
                                                                                                          ## Style
                                                                                                          ## management
                                                                                                          ## API
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Return
                                                                                                          ## shading
                                                                                                          ## style
                                                                                                          ## of
                                                                                                          ## box
                                                                                                          ## sides.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Set
                                                                                                          ## new
                                                                                                          ## value
                                                                                                          ## of
                                                                                                          ## color
                                                                                                          ## for
                                                                                                          ## the
                                                                                                          ## whole
                                                                                                          ## object.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theColor
                                                                                                          ## [in]
                                                                                                          ## input
                                                                                                          ## color
                                                                                                          ## value.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @name
                                                                                                          ## animation
                                                                                                          ## methods
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Return
                                                                                                          ## duration
                                                                                                          ## of
                                                                                                          ## animation
                                                                                                          ## in
                                                                                                          ## seconds;
                                                                                                          ## 0.5
                                                                                                          ## sec
                                                                                                          ## by
                                                                                                          ## default
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Perform
                                                                                                          ## internal
                                                                                                          ## single
                                                                                                          ## step
                                                                                                          ## of
                                                                                                          ## animation.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @return
                                                                                                          ## FALSE
                                                                                                          ## if
                                                                                                          ## animation
                                                                                                          ## has
                                                                                                          ## been
                                                                                                          ## finished
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @name
                                                                                                          ## protected
                                                                                                          ## virtual
                                                                                                          ## API
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Method
                                                                                                          ## that
                                                                                                          ## is
                                                                                                          ## called
                                                                                                          ## after
                                                                                                          ## one
                                                                                                          ## step
                                                                                                          ## of
                                                                                                          ## transformation.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @name
                                                                                                          ## Presentation
                                                                                                          ## computation
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Return
                                                                                                          ## TRUE
                                                                                                          ## for
                                                                                                          ## supported
                                                                                                          ## display
                                                                                                          ## mode.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @name
                                                                                                          ## Auxiliary
                                                                                                          ## classes
                                                                                                          ## to
                                                                                                          ## fill
                                                                                                          ## presentation
                                                                                                          ## with
                                                                                                          ## proper
                                                                                                          ## primitives
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Create
                                                                                                          ## triangulation
                                                                                                          ## for
                                                                                                          ## a
                                                                                                          ## box
                                                                                                          ## part
                                                                                                          ## -
                                                                                                          ## for
                                                                                                          ## presentation
                                                                                                          ## and
                                                                                                          ## selection
                                                                                                          ## purposes.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theTris
                                                                                                          ## [in,out]
                                                                                                          ## triangulation
                                                                                                          ## to
                                                                                                          ## fill,
                                                                                                          ## or
                                                                                                          ## NULL
                                                                                                          ## to
                                                                                                          ## return
                                                                                                          ## size
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theNbNodes
                                                                                                          ## [in,out]
                                                                                                          ## should
                                                                                                          ## be
                                                                                                          ## incremented
                                                                                                          ## by
                                                                                                          ## a
                                                                                                          ## number
                                                                                                          ## of
                                                                                                          ## nodes
                                                                                                          ## defining
                                                                                                          ## this
                                                                                                          ## triangulation
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theNbTris
                                                                                                          ## [in,out]
                                                                                                          ## should
                                                                                                          ## be
                                                                                                          ## incremented
                                                                                                          ## by
                                                                                                          ## a
                                                                                                          ## number
                                                                                                          ## of
                                                                                                          ## triangles
                                                                                                          ## defining
                                                                                                          ## this
                                                                                                          ## triangulation
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theDir
                                                                                                          ## [in]
                                                                                                          ## part
                                                                                                          ## to
                                                                                                          ## define
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Create
                                                                                                          ## triangulation
                                                                                                          ## for
                                                                                                          ## a
                                                                                                          ## rectangle
                                                                                                          ## with
                                                                                                          ## round
                                                                                                          ## corners.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theTris
                                                                                                          ## [in,out]
                                                                                                          ## triangulation
                                                                                                          ## to
                                                                                                          ## fill,
                                                                                                          ## or
                                                                                                          ## NULL
                                                                                                          ## to
                                                                                                          ## return
                                                                                                          ## size
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theNbNodes
                                                                                                          ## [in,out]
                                                                                                          ## should
                                                                                                          ## be
                                                                                                          ## incremented
                                                                                                          ## by
                                                                                                          ## a
                                                                                                          ## number
                                                                                                          ## of
                                                                                                          ## nodes
                                                                                                          ## defining
                                                                                                          ## this
                                                                                                          ## triangulation
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theNbTris
                                                                                                          ## [in,out]
                                                                                                          ## should
                                                                                                          ## be
                                                                                                          ## incremented
                                                                                                          ## by
                                                                                                          ## a
                                                                                                          ## number
                                                                                                          ## of
                                                                                                          ## triangles
                                                                                                          ## defining
                                                                                                          ## this
                                                                                                          ## triangulation
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theSize
                                                                                                          ## [in]
                                                                                                          ## rectangle
                                                                                                          ## dimensions
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theRadius
                                                                                                          ## [in]
                                                                                                          ## radius
                                                                                                          ## at
                                                                                                          ## corners
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @param
                                                                                                          ## theTrsf
                                                                                                          ## [in]
                                                                                                          ## transformation
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Trivial
                                                                                                          ## hasher
                                                                                                          ## to
                                                                                                          ## avoid
                                                                                                          ## ambiguity
                                                                                                          ## with
                                                                                                          ## enumeration
                                                                                                          ## type.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## @name
                                                                                                          ## Animation
                                                                                                          ## options
    ## !< map with box side labels
    ## !< map with axes labels
    ## !< style for box edges
    ## !< style for box corner
    ## !< size of box side, length of one axis
    ## !< minimal size of box edge
    ## !< gap between box side and box edge
    ## !< box facet extension
    ## !< Padding between box and axes
    ## !< radius of axes of the trihedron; 1.0 by default
    ## !< radius of cone of axes of the trihedron; 3.0 by default
    ## !< radius of sphere (central point) of the trihedron; 4.0 by default
    ## !< minimal size of box corner
    ## !< relative round radius within [0; 0.5] range
    ## !< trihedron visibility
    ## !< box edges visibility
    ## !< box corners (vertices) visibility
    ## !< flag indicating that application expects Y-up viewer orientation instead of Z-up
    ## !< Camera animation object
    ## !< Start state of view camera
    ## !< End state of view camera
    ## !< start animation automatically on click
    ## !< fixed-loop animation
    ## !< fit selected or fit entire scene
    ## !< always reset camera up direction to default
type
  AIS_ViewCubeOwner* {.importcpp: "AIS_ViewCubeOwner", header: "AIS_ViewCube.hxx",
                      bycopy.} = object of SelectMgrEntityOwner ## ! Main constructor.
    ## !< new orientation to set
type
  AIS_ViewSelectionTool* {.size: sizeof(cint), importcpp: "AIS_ViewSelectionTool",
                          header: "AIS_ViewInputBuffer.hxx".} = enum
    AIS_ViewSelectionToolPicking, ## !< pick to select
    AIS_ViewSelectionToolRubberBand, ## !< rubber-band to select
    AIS_ViewSelectionToolPolygon, ## !< polyline to select
    AIS_ViewSelectionToolZoomWindow ## !< zoom-in window (no selection)
## ! Input buffer type.
type
  AIS_ViewInputBufferType* {.size: sizeof(cint),
                            importcpp: "AIS_ViewInputBufferType",
                            header: "AIS_ViewInputBuffer.hxx".} = enum
    AIS_ViewInputBufferTypeUI, ## !< input buffer for filling from UI thread
    AIS_ViewInputBufferTypeGL ## !< input buffer accessible  from GL thread
## ! Auxiliary structure defining viewer events
type
  AIS_ViewInputBuffer* {.importcpp: "AIS_ViewInputBuffer",
                        header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    isNewGesture* {.importc: "IsNewGesture".}: bool ## !< transition from one action to another
    zoomActions* {.importc: "ZoomActions".}: NCollectionSequence[AspectScrollDelta] ## !< the queue with zoom actions
  AIS_ViewInputBufferOrientation* {.importcpp: "AIS_ViewInputBuffer::_orientation",
                                   header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    toFitAll* {.importc: "ToFitAll".}: bool ## !< perform FitAll operation
    toSetViewOrient* {.importc: "ToSetViewOrient".}: bool ## !< set new view orientation
    viewOrient* {.importc: "ViewOrient".}: V3dTypeOfOrientation ## !< new view orientation
type
  AIS_ViewInputBufferHighlighting* {.importcpp: "AIS_ViewInputBuffer::_highlighting",
                                    header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    toHilight* {.importc: "ToHilight".}: bool ## !< perform dynamic highlighting at specified point
    point* {.importc: "Point".}: Graphic3dVec2i ## !< the new point for dynamic highlighting
type
  AIS_ViewInputBufferSelection* {.importcpp: "AIS_ViewInputBuffer::_selection",
                                 header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    tool* {.importc: "Tool".}: AIS_ViewSelectionTool ## !< perform selection
    isXOR* {.importc: "IsXOR".}: bool ## !< perform shift selection
    points* {.importc: "Points".}: NCollectionSequence[Graphic3dVec2i] ## !< the points for selection
    toApplyTool* {.importc: "ToApplyTool".}: bool ## !< apply rubber-band selection tool
type
  AIS_ViewInputBufferPanningParams* {.importcpp: "AIS_ViewInputBuffer::_panningParams",
                                     header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    toStart* {.importc: "ToStart".}: bool ## !< start panning
    pointStart* {.importc: "PointStart".}: Graphic3dVec2i ## !< panning start point
    toPan* {.importc: "ToPan".}: bool ## !< perform panning
    delta* {.importc: "Delta".}: Graphic3dVec2i ## !< panning delta
type
  AIS_ViewInputBufferDraggingParams* {.importcpp: "AIS_ViewInputBuffer::_draggingParams",
                                      header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    toStart* {.importc: "ToStart".}: bool ## !< start dragging
    toStop* {.importc: "ToStop".}: bool ## !< stop  dragging
    toAbort* {.importc: "ToAbort".}: bool ## !< abort dragging (restore previous position)
    pointStart* {.importc: "PointStart".}: Graphic3dVec2i ## !< drag start point
    pointTo* {.importc: "PointTo".}: Graphic3dVec2i ## !< drag end point
type
  AIS_ViewInputBufferOrbitRotation* {.importcpp: "AIS_ViewInputBuffer::_orbitRotation",
                                     header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    toStart* {.importc: "ToStart".}: bool ## !< start orbit rotation
    pointStart* {.importc: "PointStart".}: Graphic3dVec2d ## !< orbit rotation start point
    toRotate* {.importc: "ToRotate".}: bool ## !< perform orbit rotation
    pointTo* {.importc: "PointTo".}: Graphic3dVec2d ## !< orbit rotation end point
type
  AIS_ViewInputBufferViewRotation* {.importcpp: "AIS_ViewInputBuffer::_viewRotation",
                                    header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    toStart* {.importc: "ToStart".}: bool ## !< start view rotation
    pointStart* {.importc: "PointStart".}: Graphic3dVec2d ## !< view rotation start point
    toRotate* {.importc: "ToRotate".}: bool ## !< perform view rotation
    pointTo* {.importc: "PointTo".}: Graphic3dVec2d ## !< view rotation end point
type
  AIS_ViewInputBufferZrotateParams* {.importcpp: "AIS_ViewInputBuffer::_zrotateParams",
                                     header: "AIS_ViewInputBuffer.hxx", bycopy.} = object
    point* {.importc: "Point".}: Graphic3dVec2i ## !< Z rotation start point
    angle* {.importc: "Angle".}: cdouble ## !< Z rotation angle
    toRotate* {.importc: "ToRotate".}: bool ## !< start Z rotation
type
  AIS_WalkTranslation* {.size: sizeof(cint), importcpp: "AIS_WalkTranslation",
                        header: "AIS_WalkDelta.hxx".} = enum
    AIS_WalkTranslationForward = 0, ## !< translation delta, Forward walk
    AIS_WalkTranslationSide,  ## !< translation delta, Side walk
    AIS_WalkTranslationUp     ## !< translation delta, Up walk
## ! Walking rotation components.
type
  AIS_WalkRotation* {.size: sizeof(cint), importcpp: "AIS_WalkRotation",
                     header: "AIS_WalkDelta.hxx".} = enum
    AIS_WalkRotationYaw = 0,    ## !< yaw   rotation angle
    AIS_WalkRotationPitch,    ## !< pitch rotation angle
    AIS_WalkRotationRoll      ## !< roll  rotation angle
## ! Walking value.
type
  AIS_WalkPart* {.importcpp: "AIS_WalkPart", header: "AIS_WalkDelta.hxx", bycopy.} = object
    value* {.importc: "Value".}: cfloat ## !< value
    pressure* {.importc: "Pressure".}: cfloat ## !< key pressure
    duration* {.importc: "Duration".}: cfloat ## !< duration
                                          ## ! Return TRUE if delta is empty.
type
  AIS_WalkDelta* {.importcpp: "AIS_WalkDelta", header: "AIS_WalkDelta.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Empty
                                                                                      ## constructor.
type
  AIS_XRTrackedDevice* {.importcpp: "AIS_XRTrackedDevice",
                        header: "AIS_XRTrackedDevice.hxx", bycopy.} = object of AIS_InteractiveObject ##
                                                                                               ## !
                                                                                               ## Main
                                                                                               ## constructor.
                                                                                               ##
                                                                                               ## !
                                                                                               ## Returns
                                                                                               ## true
                                                                                               ## for
                                                                                               ## 0
                                                                                               ## mode.
                                                                                               ##
                                                                                               ## !
                                                                                               ## Texture
                                                                                               ## holder.
