# PROVIDES: BOPAlgoCheckResult BOPAlgoMakePeriodicPeriodicityParams BOPAlgoOptions BOPAlgoSectionAttribute BOPAlgoTools BOPAlgoWireEdgeSet BOPAlgoAlgo BOPAlgoMakeConnected BOPAlgoMakePeriodic BOPAlgoArgumentAnalyzer BOPAlgoBuilderArea BOPAlgoBuilderShape BOPAlgoPaveFiller BOPAlgoShellSplitter BOPAlgoWireSplitter BOPAlgoBuilder BOPAlgoBuilderFace BOPAlgoBuilderSolid BOPAlgoCheckerSI BOPAlgoRemoveFeatures BOPAlgoCellsBuilder BOPAlgoMakerVolume BOPAlgoSection BOPAlgoToolsProvider BOPAlgoBOP BOPAlgoSplitter
# DEPENDS:

type
  BOPAlgoCheckResult* {.importcpp: "BOPAlgo_CheckResult",
                       header: "BOPAlgo_CheckResult.hxx", bycopy.} = object ## ! empty
                                                                       ## constructor

type
  BOPAlgoMakePeriodicPeriodicityParams* {.
      importcpp: "BOPAlgo_MakePeriodic::PeriodicityParams",
      header: "BOPAlgo_MakePeriodic.hxx", bycopy.} = object
    myPeriodic* {.importc: "myPeriodic".}: array[3, bool] ## !< Array of flags defining whether the shape should be
                                                     ## ! periodic in XYZ directions
    myPeriod* {.importc: "myPeriod".}: array[3, cfloat] ## !< Array of XYZ period values. Defining the period for any
                                                   ## ! direction the corresponding flag for that direction in
                                                   ## ! myPeriodic should be set to true
    myIsTrimmed* {.importc: "myIsTrimmed".}: array[3, bool] ## !< Array of flags defining whether the input shape has to be
                                                       ## ! trimmed to fit the required period in the required direction
    myPeriodFirst* {.importc: "myPeriodFirst".}: array[3, cfloat] ## !< Array of start parameters of the XYZ periods: required for trimming

type
  BOPAlgoOptions* {.importcpp: "BOPAlgo_Options", header: "BOPAlgo_Options.hxx",
                   bycopy.} = object of RootObj ## ! Empty constructor
                                  ## !@name Error reporting mechanism
                                  ## ! Adds the alert as error (fail)
                                  ## !@name Parallel processing mode
                                  ## ! Gets the global parallel mode
                                  ## !@name Fuzzy tolerance
                                  ## ! Sets the additional tolerance
                                  ## !@name Progress indicator
                                  ## ! Set the Progress Indicator object.
                                  ## !@name Usage of Oriented Bounding boxes
                                  ## ! Enables/Disables the usage of OBB
                                  ## ! Breaks the execution if the break signal
                                  ## ! is indicated by myProgressIndicator.

type
  BOPAlgoSectionAttribute* {.importcpp: "BOPAlgo_SectionAttribute",
                            header: "BOPAlgo_SectionAttribute.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Default
                                                                                 ## constructor

type
  BOPAlgoTools* {.importcpp: "BOPAlgo_Tools", header: "BOPAlgo_Tools.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Makes
                                                                                     ## the
                                                                                     ## chains
                                                                                     ## of
                                                                                     ## the
                                                                                     ## connected
                                                                                     ## elements
                                                                                     ## from
                                                                                     ## the
                                                                                     ## given
                                                                                     ## connexity
                                                                                     ## map

type
  BOPAlgoWireEdgeSet* {.importcpp: "BOPAlgo_WireEdgeSet",
                       header: "BOPAlgo_WireEdgeSet.hxx", bycopy.} = object

type
  BOPAlgoAlgo* {.importcpp: "BOPAlgo_Algo", header: "BOPAlgo_Algo.hxx", bycopy.} = object of BOPAlgoOptions ##
                                                                                                  ## !
                                                                                                  ## Default
                                                                                                  ## constructor

type
  BOPAlgoMakeConnected* {.importcpp: "BOPAlgo_MakeConnected",
                         header: "BOPAlgo_MakeConnected.hxx", bycopy.} = object of BOPAlgoOptions ##
                                                                                           ## !
                                                                                           ## @name
                                                                                           ## Constructor
                                                                                           ##
                                                                                           ## !
                                                                                           ## Empty
                                                                                           ## constructor
                                                                                           ##
                                                                                           ## !
                                                                                           ## @name
                                                                                           ## Setters
                                                                                           ## for
                                                                                           ## the
                                                                                           ## shapes
                                                                                           ## to
                                                                                           ## make
                                                                                           ## connected
                                                                                           ##
                                                                                           ## !
                                                                                           ## Sets
                                                                                           ## the
                                                                                           ## shape
                                                                                           ## for
                                                                                           ## making
                                                                                           ## them
                                                                                           ## connected.
                                                                                           ##
                                                                                           ## !
                                                                                           ## @param
                                                                                           ## theArgs
                                                                                           ## [in]
                                                                                           ## The
                                                                                           ## arguments
                                                                                           ## for
                                                                                           ## the
                                                                                           ## operation.
                                                                                           ##
                                                                                           ## !
                                                                                           ## @name
                                                                                           ## Performing
                                                                                           ## the
                                                                                           ## operations
                                                                                           ##
                                                                                           ## !
                                                                                           ## Performs
                                                                                           ## the
                                                                                           ## operation,
                                                                                           ## i.e.
                                                                                           ## makes
                                                                                           ## the
                                                                                           ## input
                                                                                           ## shapes
                                                                                           ## connected.
                                                                                           ##
                                                                                           ## !
                                                                                           ## @name
                                                                                           ## Shape
                                                                                           ## periodicity
                                                                                           ## &
                                                                                           ## repetition
                                                                                           ##
                                                                                           ## !
                                                                                           ## Makes
                                                                                           ## the
                                                                                           ## connected
                                                                                           ## shape
                                                                                           ## periodic.
                                                                                           ##
                                                                                           ## !
                                                                                           ## Repeated
                                                                                           ## calls
                                                                                           ## of
                                                                                           ## this
                                                                                           ## method
                                                                                           ## overwrite
                                                                                           ## the
                                                                                           ## previous
                                                                                           ## calls
                                                                                           ##
                                                                                           ## !
                                                                                           ## working
                                                                                           ## with
                                                                                           ## the
                                                                                           ## basis
                                                                                           ## connected
                                                                                           ## shape.
                                                                                           ##
                                                                                           ## !
                                                                                           ## @param
                                                                                           ## theParams
                                                                                           ## [in]
                                                                                           ## Periodic
                                                                                           ## options.
                                                                                           ##
                                                                                           ## !
                                                                                           ## @name
                                                                                           ## Material
                                                                                           ## transitions
                                                                                           ##
                                                                                           ## !
                                                                                           ## Returns
                                                                                           ## the
                                                                                           ## original
                                                                                           ## shapes
                                                                                           ## which
                                                                                           ## images
                                                                                           ## contain
                                                                                           ## the
                                                                                           ##
                                                                                           ## !
                                                                                           ## the
                                                                                           ## given
                                                                                           ## shape
                                                                                           ## with
                                                                                           ## FORWARD
                                                                                           ## orientation.
                                                                                           ##
                                                                                           ## !
                                                                                           ## @param
                                                                                           ## theS
                                                                                           ## [in]
                                                                                           ## The
                                                                                           ## shape
                                                                                           ## for
                                                                                           ## which
                                                                                           ## the
                                                                                           ## materials
                                                                                           ## are
                                                                                           ## necessary.
                                                                                           ##
                                                                                           ## !
                                                                                           ## @name
                                                                                           ## History
                                                                                           ## methods
                                                                                           ##
                                                                                           ## !
                                                                                           ## Returns
                                                                                           ## the
                                                                                           ## history
                                                                                           ## of
                                                                                           ## operations
                                                                                           ##
                                                                                           ## !
                                                                                           ## @name
                                                                                           ## Getting
                                                                                           ## the
                                                                                           ## result
                                                                                           ## shapes
                                                                                           ##
                                                                                           ## !
                                                                                           ## Returns
                                                                                           ## the
                                                                                           ## resulting
                                                                                           ## connected
                                                                                           ## shape
                                                                                           ##
                                                                                           ## !
                                                                                           ## @name
                                                                                           ## Clearing
                                                                                           ## the
                                                                                           ## contents
                                                                                           ## of
                                                                                           ## the
                                                                                           ## algorithm
                                                                                           ## from
                                                                                           ## previous
                                                                                           ## runs
                                                                                           ##
                                                                                           ## !
                                                                                           ## Clears
                                                                                           ## the
                                                                                           ## contents
                                                                                           ## of
                                                                                           ## the
                                                                                           ## algorithm.
                                                                                           ##
                                                                                           ## !
                                                                                           ## @name
                                                                                           ## Protected
                                                                                           ## methods
                                                                                           ## performing
                                                                                           ## the
                                                                                           ## operation
                                                                                           ##
                                                                                           ## !
                                                                                           ## Checks
                                                                                           ## the
                                                                                           ## validity
                                                                                           ## of
                                                                                           ## input
                                                                                           ## data.
                                                                                           ##
                                                                                           ## !
                                                                                           ## Returns
                                                                                           ## an
                                                                                           ## empty
                                                                                           ## list.
                                                                                           ##
                                                                                           ## !
                                                                                           ## @name
                                                                                           ## Fields
                                                                                           ##
                                                                                           ## Inputs
    ## !< Input shapes for making them connected
    ## !< Map of all BRep sub-elements of the input shapes
    ##  Tools
    ## !< Tool for making the shape periodic
    ##  Results
    ## !< Map of the materials associations
    ## ! for the border elements
    ## !< Map of origins
    ## ! (allows tracking the shape's ancestors)
    ## !< Gluing History
    ## !< Final History of shapes modifications
    ## ! (including making the shape periodic and repetitions)
    ## !< The resulting connected (glued) shape
    ## !< The resulting shape

type
  BOPAlgoMakePeriodic* {.importcpp: "BOPAlgo_MakePeriodic",
                        header: "BOPAlgo_MakePeriodic.hxx", bycopy.} = object of BOPAlgoOptions ##
                                                                                         ## !
                                                                                         ## @name
                                                                                         ## Constructor
                                                                                         ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## constructor
                                                                                         ##
                                                                                         ## !
                                                                                         ## @name
                                                                                         ## Setting
                                                                                         ## the
                                                                                         ## shape
                                                                                         ## to
                                                                                         ## make
                                                                                         ## it
                                                                                         ## periodic
                                                                                         ##
                                                                                         ## !
                                                                                         ## Sets
                                                                                         ## the
                                                                                         ## shape
                                                                                         ## to
                                                                                         ## make
                                                                                         ## it
                                                                                         ## periodic.
                                                                                         ##
                                                                                         ## !
                                                                                         ## @param
                                                                                         ## theShape
                                                                                         ## [in]
                                                                                         ## The
                                                                                         ## shape
                                                                                         ## to
                                                                                         ## make
                                                                                         ## periodic.
                                                                                         ##
                                                                                         ## !
                                                                                         ## @name
                                                                                         ## Definition
                                                                                         ## of
                                                                                         ## the
                                                                                         ## structure
                                                                                         ## to
                                                                                         ## keep
                                                                                         ## all
                                                                                         ## periodicity
                                                                                         ## parameters
                                                                                         ##
                                                                                         ## !
                                                                                         ## Structure
                                                                                         ## to
                                                                                         ## keep
                                                                                         ## all
                                                                                         ## periodicity
                                                                                         ## parameters:
                                                                                         ##
                                                                                         ## !
                                                                                         ## @name
                                                                                         ## Setters/Getters
                                                                                         ## for
                                                                                         ## periodicity
                                                                                         ## parameters
                                                                                         ## structure
                                                                                         ##
                                                                                         ## !
                                                                                         ## Sets
                                                                                         ## the
                                                                                         ## periodicity
                                                                                         ## parameters.
                                                                                         ##
                                                                                         ## !
                                                                                         ## @param
                                                                                         ## theParams
                                                                                         ## [in]
                                                                                         ## Periodicity
                                                                                         ## parameters
                                                                                         ##
                                                                                         ## !
                                                                                         ## @name
                                                                                         ## Methods
                                                                                         ## for
                                                                                         ## setting/getting
                                                                                         ## periodicity
                                                                                         ## info
                                                                                         ## using
                                                                                         ## ID
                                                                                         ## as
                                                                                         ## a
                                                                                         ## direction
                                                                                         ##
                                                                                         ## !
                                                                                         ## Sets
                                                                                         ## the
                                                                                         ## flag
                                                                                         ## to
                                                                                         ## make
                                                                                         ## the
                                                                                         ## shape
                                                                                         ## periodic
                                                                                         ## in
                                                                                         ## specified
                                                                                         ## direction:
                                                                                         ##
                                                                                         ## !
                                                                                         ## -
                                                                                         ## 0
                                                                                         ## -
                                                                                         ## X
                                                                                         ## direction;
                                                                                         ##
                                                                                         ## !
                                                                                         ## -
                                                                                         ## 1
                                                                                         ## -
                                                                                         ## Y
                                                                                         ## direction;
                                                                                         ##
                                                                                         ## !
                                                                                         ## -
                                                                                         ## 2
                                                                                         ## -
                                                                                         ## Z
                                                                                         ## direction.
                                                                                         ##
                                                                                         ## !
                                                                                         ##
                                                                                         ## !
                                                                                         ## @param
                                                                                         ## theDirectionID
                                                                                         ## [in]
                                                                                         ## The
                                                                                         ## direction's
                                                                                         ## ID;
                                                                                         ##
                                                                                         ## !
                                                                                         ## @param
                                                                                         ## theIsPeriodic
                                                                                         ## [in]
                                                                                         ## Flag
                                                                                         ## defining
                                                                                         ## periodicity
                                                                                         ## in
                                                                                         ## given
                                                                                         ## direction;
                                                                                         ##
                                                                                         ## !
                                                                                         ## @param
                                                                                         ## thePeriod
                                                                                         ## [in]
                                                                                         ## Required
                                                                                         ## period
                                                                                         ## in
                                                                                         ## given
                                                                                         ## direction.
                                                                                         ##
                                                                                         ## !
                                                                                         ## @name
                                                                                         ## Named
                                                                                         ## methods
                                                                                         ## for
                                                                                         ## setting/getting
                                                                                         ## info
                                                                                         ## about
                                                                                         ## shape's
                                                                                         ## periodicity
                                                                                         ##
                                                                                         ## !
                                                                                         ## Sets
                                                                                         ## the
                                                                                         ## flag
                                                                                         ## to
                                                                                         ## make
                                                                                         ## the
                                                                                         ## shape
                                                                                         ## periodic
                                                                                         ## in
                                                                                         ## X
                                                                                         ## direction.
                                                                                         ##
                                                                                         ## !
                                                                                         ## @param
                                                                                         ## theIsPeriodic
                                                                                         ## [in]
                                                                                         ## Flag
                                                                                         ## defining
                                                                                         ## periodicity
                                                                                         ## in
                                                                                         ## X
                                                                                         ## direction;
                                                                                         ##
                                                                                         ## !
                                                                                         ## @param
                                                                                         ## thePeriod
                                                                                         ## [in]
                                                                                         ## Required
                                                                                         ## period
                                                                                         ## in
                                                                                         ## X
                                                                                         ## direction.
                                                                                         ##
                                                                                         ## !
                                                                                         ## @name
                                                                                         ## Methods
                                                                                         ## for
                                                                                         ## setting/getting
                                                                                         ## trimming
                                                                                         ## info
                                                                                         ## taking
                                                                                         ## Direction
                                                                                         ## ID
                                                                                         ## as
                                                                                         ## a
                                                                                         ## parameter
                                                                                         ##
                                                                                         ## !
                                                                                         ## Defines
                                                                                         ## whether
                                                                                         ## the
                                                                                         ## input
                                                                                         ## shape
                                                                                         ## is
                                                                                         ## already
                                                                                         ## trimmed
                                                                                         ## in
                                                                                         ## specified
                                                                                         ## direction
                                                                                         ##
                                                                                         ## !
                                                                                         ## to
                                                                                         ## fit
                                                                                         ## the
                                                                                         ## period
                                                                                         ## in
                                                                                         ## this
                                                                                         ## direction.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Direction
                                                                                         ## is
                                                                                         ## defined
                                                                                         ## by
                                                                                         ## an
                                                                                         ## ID:
                                                                                         ##
                                                                                         ## !
                                                                                         ## -
                                                                                         ## 0
                                                                                         ## -
                                                                                         ## X
                                                                                         ## direction;
                                                                                         ##
                                                                                         ## !
                                                                                         ## -
                                                                                         ## 1
                                                                                         ## -
                                                                                         ## Y
                                                                                         ## direction;
                                                                                         ##
                                                                                         ## !
                                                                                         ## -
                                                                                         ## 2
                                                                                         ## -
                                                                                         ## Z
                                                                                         ## direction.
                                                                                         ##
                                                                                         ## !
                                                                                         ##
                                                                                         ## !
                                                                                         ## If
                                                                                         ## the
                                                                                         ## shape
                                                                                         ## is
                                                                                         ## not
                                                                                         ## trimmed
                                                                                         ## it
                                                                                         ## is
                                                                                         ## required
                                                                                         ## to
                                                                                         ## set
                                                                                         ## the
                                                                                         ## first
                                                                                         ## parameter
                                                                                         ##
                                                                                         ## !
                                                                                         ## of
                                                                                         ## the
                                                                                         ## period
                                                                                         ## in
                                                                                         ## that
                                                                                         ## direction.
                                                                                         ##
                                                                                         ## !
                                                                                         ## The
                                                                                         ## algorithm
                                                                                         ## will
                                                                                         ## make
                                                                                         ## the
                                                                                         ## shape
                                                                                         ## fit
                                                                                         ## into
                                                                                         ## the
                                                                                         ## period.
                                                                                         ##
                                                                                         ## !
                                                                                         ##
                                                                                         ## !
                                                                                         ## Before
                                                                                         ## calling
                                                                                         ## this
                                                                                         ## method,
                                                                                         ## the
                                                                                         ## shape
                                                                                         ## has
                                                                                         ## to
                                                                                         ## be
                                                                                         ## set
                                                                                         ## to
                                                                                         ## be
                                                                                         ## periodic
                                                                                         ## in
                                                                                         ## this
                                                                                         ## direction.
                                                                                         ##
                                                                                         ## !
                                                                                         ##
                                                                                         ## !
                                                                                         ## @param
                                                                                         ## theDirectionID
                                                                                         ## [in]
                                                                                         ## The
                                                                                         ## direction's
                                                                                         ## ID;
                                                                                         ##
                                                                                         ## !
                                                                                         ## @param
                                                                                         ## theIsTrimmed
                                                                                         ## [in]
                                                                                         ## The
                                                                                         ## flag
                                                                                         ## defining
                                                                                         ## trimming
                                                                                         ## of
                                                                                         ## the
                                                                                         ## shape
                                                                                         ## in
                                                                                         ## given
                                                                                         ## direction;
                                                                                         ##
                                                                                         ## !
                                                                                         ## @param
                                                                                         ## theFirst
                                                                                         ## [in]
                                                                                         ## The
                                                                                         ## first
                                                                                         ## periodic
                                                                                         ## parameter
                                                                                         ## in
                                                                                         ## the
                                                                                         ## given
                                                                                         ## direction.
                                                                                         ##
                                                                                         ## !
                                                                                         ## @name
                                                                                         ## Named
                                                                                         ## methods
                                                                                         ## for
                                                                                         ## setting/getting
                                                                                         ## trimming
                                                                                         ## info
                                                                                         ##
                                                                                         ## !
                                                                                         ## Defines
                                                                                         ## whether
                                                                                         ## the
                                                                                         ## input
                                                                                         ## shape
                                                                                         ## is
                                                                                         ## already
                                                                                         ## trimmed
                                                                                         ## in
                                                                                         ## X
                                                                                         ## direction
                                                                                         ##
                                                                                         ## !
                                                                                         ## to
                                                                                         ## fit
                                                                                         ## the
                                                                                         ## X
                                                                                         ## period.
                                                                                         ## If
                                                                                         ## the
                                                                                         ## shape
                                                                                         ## is
                                                                                         ## not
                                                                                         ## trimmed
                                                                                         ## it
                                                                                         ## is
                                                                                         ## required
                                                                                         ##
                                                                                         ## !
                                                                                         ## to
                                                                                         ## set
                                                                                         ## the
                                                                                         ## first
                                                                                         ## parameter
                                                                                         ## for
                                                                                         ## the
                                                                                         ## X
                                                                                         ## period.
                                                                                         ##
                                                                                         ## !
                                                                                         ## The
                                                                                         ## algorithm
                                                                                         ## will
                                                                                         ## make
                                                                                         ## the
                                                                                         ## shape
                                                                                         ## fit
                                                                                         ## into
                                                                                         ## the
                                                                                         ## period.
                                                                                         ##
                                                                                         ## !
                                                                                         ##
                                                                                         ## !
                                                                                         ## Before
                                                                                         ## calling
                                                                                         ## this
                                                                                         ## method,
                                                                                         ## the
                                                                                         ## shape
                                                                                         ## has
                                                                                         ## to
                                                                                         ## be
                                                                                         ## set
                                                                                         ## to
                                                                                         ## be
                                                                                         ## periodic
                                                                                         ## in
                                                                                         ## this
                                                                                         ## direction.
                                                                                         ##
                                                                                         ## !
                                                                                         ##
                                                                                         ## !
                                                                                         ## @param
                                                                                         ## theIsTrimmed
                                                                                         ## [in]
                                                                                         ## Flag
                                                                                         ## defining
                                                                                         ## whether
                                                                                         ## the
                                                                                         ## shape
                                                                                         ## is
                                                                                         ## already
                                                                                         ## trimmed
                                                                                         ##
                                                                                         ## !
                                                                                         ## in
                                                                                         ## X
                                                                                         ## direction
                                                                                         ## to
                                                                                         ## fit
                                                                                         ## the
                                                                                         ## X
                                                                                         ## period;
                                                                                         ##
                                                                                         ## !
                                                                                         ## @param
                                                                                         ## theFirst
                                                                                         ## [in]
                                                                                         ## The
                                                                                         ## first
                                                                                         ## X
                                                                                         ## periodic
                                                                                         ## parameter.
                                                                                         ##
                                                                                         ## !
                                                                                         ## @name
                                                                                         ## Performing
                                                                                         ## the
                                                                                         ## operation
                                                                                         ##
                                                                                         ## !
                                                                                         ## Makes
                                                                                         ## the
                                                                                         ## shape
                                                                                         ## periodic
                                                                                         ## in
                                                                                         ## necessary
                                                                                         ## directions
                                                                                         ##
                                                                                         ## !
                                                                                         ## @name
                                                                                         ## Using
                                                                                         ## the
                                                                                         ## algorithm
                                                                                         ## to
                                                                                         ## repeat
                                                                                         ## the
                                                                                         ## shape
                                                                                         ##
                                                                                         ## !
                                                                                         ## Performs
                                                                                         ## repetition
                                                                                         ## of
                                                                                         ## the
                                                                                         ## shape
                                                                                         ## in
                                                                                         ## specified
                                                                                         ## direction
                                                                                         ##
                                                                                         ## !
                                                                                         ## required
                                                                                         ## number
                                                                                         ## of
                                                                                         ## times.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Negative
                                                                                         ## value
                                                                                         ## of
                                                                                         ## times
                                                                                         ## means
                                                                                         ## that
                                                                                         ## the
                                                                                         ## repetition
                                                                                         ## should
                                                                                         ##
                                                                                         ## !
                                                                                         ## be
                                                                                         ## perform
                                                                                         ## in
                                                                                         ## negative
                                                                                         ## direction.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Makes
                                                                                         ## the
                                                                                         ## repeated
                                                                                         ## shape
                                                                                         ## a
                                                                                         ## base
                                                                                         ## for
                                                                                         ## following
                                                                                         ## repetitions.
                                                                                         ##
                                                                                         ## !
                                                                                         ##
                                                                                         ## !
                                                                                         ## @param
                                                                                         ## theDirectionID
                                                                                         ## [in]
                                                                                         ## The
                                                                                         ## direction's
                                                                                         ## ID;
                                                                                         ##
                                                                                         ## !
                                                                                         ## @param
                                                                                         ## theTimes
                                                                                         ## [in]
                                                                                         ## Requested
                                                                                         ## number
                                                                                         ## of
                                                                                         ## repetitions.
                                                                                         ##
                                                                                         ## !
                                                                                         ## @name
                                                                                         ## Starting
                                                                                         ## the
                                                                                         ## repetitions
                                                                                         ## over
                                                                                         ##
                                                                                         ## !
                                                                                         ## Returns
                                                                                         ## the
                                                                                         ## repeated
                                                                                         ## shape
                                                                                         ##
                                                                                         ## !
                                                                                         ## @name
                                                                                         ## Obtaining
                                                                                         ## the
                                                                                         ## result
                                                                                         ## shape
                                                                                         ##
                                                                                         ## !
                                                                                         ## Returns
                                                                                         ## the
                                                                                         ## resulting
                                                                                         ## periodic
                                                                                         ## shape
                                                                                         ##
                                                                                         ## !
                                                                                         ## @name
                                                                                         ## Getting
                                                                                         ## the
                                                                                         ## identical
                                                                                         ## shapes
                                                                                         ##
                                                                                         ## !
                                                                                         ## Returns
                                                                                         ## the
                                                                                         ## identical
                                                                                         ## shapes
                                                                                         ## for
                                                                                         ## the
                                                                                         ## given
                                                                                         ## shape
                                                                                         ## located
                                                                                         ##
                                                                                         ## !
                                                                                         ## on
                                                                                         ## the
                                                                                         ## opposite
                                                                                         ## periodic
                                                                                         ## side.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Returns
                                                                                         ## empty
                                                                                         ## list
                                                                                         ## in
                                                                                         ## case
                                                                                         ## the
                                                                                         ## shape
                                                                                         ## has
                                                                                         ## no
                                                                                         ## twin.
                                                                                         ##
                                                                                         ## !
                                                                                         ##
                                                                                         ## !
                                                                                         ## @param
                                                                                         ## theS
                                                                                         ## [in]
                                                                                         ## Shape
                                                                                         ## to
                                                                                         ## get
                                                                                         ## the
                                                                                         ## twins
                                                                                         ## for.
                                                                                         ##
                                                                                         ## !
                                                                                         ## @name
                                                                                         ## Getting
                                                                                         ## the
                                                                                         ## History
                                                                                         ## of
                                                                                         ## the
                                                                                         ## algorithm
                                                                                         ##
                                                                                         ## !
                                                                                         ## Returns
                                                                                         ## the
                                                                                         ## History
                                                                                         ## of
                                                                                         ## the
                                                                                         ## algorithm
                                                                                         ##
                                                                                         ## !
                                                                                         ## @name
                                                                                         ## Clearing
                                                                                         ## the
                                                                                         ## algorithm
                                                                                         ## from
                                                                                         ## previous
                                                                                         ## runs
                                                                                         ##
                                                                                         ## !
                                                                                         ## Clears
                                                                                         ## the
                                                                                         ## algorithm
                                                                                         ## from
                                                                                         ## previous
                                                                                         ## runs
                                                                                         ##
                                                                                         ## !
                                                                                         ## @name
                                                                                         ## Conversion
                                                                                         ## of
                                                                                         ## the
                                                                                         ## integer
                                                                                         ## to
                                                                                         ## ID
                                                                                         ## of
                                                                                         ## periodic
                                                                                         ## direction
                                                                                         ##
                                                                                         ## !
                                                                                         ## Converts
                                                                                         ## the
                                                                                         ## integer
                                                                                         ## to
                                                                                         ## ID
                                                                                         ## of
                                                                                         ## periodic
                                                                                         ## direction
                                                                                         ##
                                                                                         ## !
                                                                                         ## @name
                                                                                         ## Protected
                                                                                         ## methods
                                                                                         ## performing
                                                                                         ## the
                                                                                         ## operation
                                                                                         ##
                                                                                         ## !
                                                                                         ## Checks
                                                                                         ## the
                                                                                         ## validity
                                                                                         ## of
                                                                                         ## input
                                                                                         ## data
                                                                                         ##
                                                                                         ## !
                                                                                         ## @name
                                                                                         ## Fields
                                                                                         ##
                                                                                         ## Inputs
    ## !< Input shape to make periodic
    ## !< Periodicity parameters
    ##  Results
    ## !< Resulting periodic shape (base for repetitions)
    ## !< Resulting shape after making repetitions of the base
    ## !< XYZ repeat period
    ## !< Map of associations of the identical sub-shapes
    ## ! after repetition of the periodic shape
    ##  Twins
    ## !< Map of associations of the identical sub-shapes
    ## ! located on the opposite sides of the shape
    ##  History
    ## !< Split history - history of shapes modification
    ## ! after the split for making the shape periodic
    ## !< Final history of shapes modifications
    ## ! (to include the history of shape repetition)

type
  BOPAlgoArgumentAnalyzer* {.importcpp: "BOPAlgo_ArgumentAnalyzer",
                            header: "BOPAlgo_ArgumentAnalyzer.hxx", bycopy.} = object of BOPAlgoAlgo ##
                                                                                              ## !
                                                                                              ## empty
                                                                                              ## constructor
                                                                                              ##
                                                                                              ## !
                                                                                              ## Prepares
                                                                                              ## data;

type
  BOPAlgoBuilderArea* {.importcpp: "BOPAlgo_BuilderArea",
                       header: "BOPAlgo_BuilderArea.hxx", bycopy.} = object of BOPAlgoAlgo ##
                                                                                    ## !
                                                                                    ## Sets
                                                                                    ## the
                                                                                    ## context
                                                                                    ## for
                                                                                    ## the
                                                                                    ## algorithms
#proc setContext*(this: var BOPAlgoBuilderArea; theContext: Handle[IntToolsContext]) {.
#    cdecl, importcpp: "SetContext", header: "BOPAlgo_BuilderArea.hxx".}

type
  BOPAlgoBuilderShape* {.importcpp: "BOPAlgo_BuilderShape",
                        header: "BOPAlgo_BuilderShape.hxx", bycopy.} = object of BOPAlgoAlgo ##
                                                                                      ## !
                                                                                      ## @name
                                                                                      ## Getting
                                                                                      ## the
                                                                                      ## result
                                                                                      ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## the
                                                                                      ## result
                                                                                      ## of
                                                                                      ## algorithm
                                                                                      ##
                                                                                      ## !
                                                                                      ## @name
                                                                                      ## History
                                                                                      ## methods
                                                                                      ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## the
                                                                                      ## list
                                                                                      ## of
                                                                                      ## shapes
                                                                                      ## Modified
                                                                                      ## from
                                                                                      ## the
                                                                                      ## shape
                                                                                      ## theS.
                                                                                      ##
                                                                                      ## !
                                                                                      ## @name
                                                                                      ## Enabling/Disabling
                                                                                      ## the
                                                                                      ## history
                                                                                      ## collection.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Allows
                                                                                      ## disabling
                                                                                      ## the
                                                                                      ## history
                                                                                      ## collection
                                                                                      ##
                                                                                      ## !
                                                                                      ## @name
                                                                                      ## Constructors
                                                                                      ##
                                                                                      ## !
                                                                                      ## Empty
                                                                                      ## constructor
                                                                                      ##
                                                                                      ## !
                                                                                      ## @name
                                                                                      ## Clearing
                                                                                      ##
                                                                                      ## !
                                                                                      ## Clears
                                                                                      ## the
                                                                                      ## content
                                                                                      ## of
                                                                                      ## the
                                                                                      ## algorithm.
                                                                                      ##
                                                                                      ## !
                                                                                      ## @name
                                                                                      ## Fields
    ## !< Result of the operation
    ## !< Storer for the history shapes
    ## !< Cashed map of all arguments shapes
    ## !< Controls the history filling
    ## !< History tool

type
  BOPAlgoPaveFiller* {.importcpp: "BOPAlgo_PaveFiller",
                      header: "BOPAlgo_PaveFiller.hxx", bycopy.} = object of BOPAlgoAlgo ##
                                                                                  ## !
                                                                                  ## Fields
    ## !< Fence map of intersected faces and pave blocks
    ## !< Sub-shapes with increased tolerance during the operation
    ## !< Vertices located close to E/E or E/F intersection points
    ## ! which has already been extended to cover the real intersection
    ## ! points, and should not be extended any longer to be put
    ## ! on a section curve.
    ## !< Map to store minimal distances between shapes
    ## !  which have no real intersections

type
  BOPAlgoShellSplitter* {.importcpp: "BOPAlgo_ShellSplitter",
                         header: "BOPAlgo_ShellSplitter.hxx", bycopy.} = object of BOPAlgoAlgo ##
                                                                                        ## !
                                                                                        ## empty
                                                                                        ## constructor

                       header: "BOPAlgo_WireEdgeSet.hxx", bycopy.} = object
type
  BOPAlgoWireSplitter* {.importcpp: "BOPAlgo_WireSplitter",
                        header: "BOPAlgo_WireSplitter.hxx", bycopy.} = object of BOPAlgoAlgo


type
  BOPAlgoBuilder* {.importcpp: "BOPAlgo_Builder", header: "BOPAlgo_Builder.hxx",
                   bycopy.} = object of BOPAlgoBuilderShape ## ! Empty constructor.
                                                       ## ! @name Arguments
                                                       ## ! Adds the argument to the operation.
                                                       ## ! @name Options
                                                       ## ! Sets the flag that defines the mode of treatment.
                                                       ## ! In non-destructive mode the argument shapes are not modified. Instead
                                                       ## ! a copy of a sub-shape is created in the result if it is needed to be updated.
                                                       ## ! This flag is taken into account if internal PaveFiller is used only.
                                                       ## ! In the case of calling PerformWithFiller the corresponding flag of that PaveFiller
                                                       ## ! is in force.
                                                       ## ! @name Performing the operation
                                                       ## ! Performs the operation.
                                                       ## ! The intersection will be performed also.
                                                       ## ! @name BOPs on open solids
                                                       ## ! Builds the result shape according to the given states for the objects
                                                       ## ! and tools. These states can be unambiguously converted into the Boolean operation type.
                                                       ## ! Thus, it performs the Boolean operation on the given groups of shapes.
                                                       ## !
                                                       ## ! The result is built basing on the result of Builder operation (GF or any other).
                                                       ## ! The only condition for the Builder is that the splits of faces should be created
                                                       ## ! and classified relatively solids.
                                                       ## !
                                                       ## ! The method uses classification approach for choosing the faces which will
                                                       ## ! participate in building the result shape:
                                                       ## ! - All faces from each group having the given state for the opposite group
                                                       ## !   will be taken into result.
                                                       ## !
                                                       ## ! Such approach shows better results (in comparison with BOPAlgo_BuilderSolid approach)
                                                       ## ! when working with open solids. However, the result may not be always
                                                       ## ! correct on such data (at least, not as expected) as the correct classification
                                                       ## ! of the faces relatively open solids is not always possible and may vary
                                                       ## ! depending on the chosen classification point on the face.
                                                       ## !
                                                       ## ! History is not created for the solids in this method.
                                                       ## !
                                                       ## ! To avoid pollution of the report of Builder algorithm, there is a possibility to pass
                                                       ## ! the different report to collect the alerts of the method only. But, if the new report
                                                       ## ! is not given, the Builder report will be used.
                                                       ## ! So, even if Builder passed without any errors, but some error has been stored into its report
                                                       ## ! in this method, for the following calls the Builder report must be cleared.
                                                       ## !
                                                       ## ! The method may set the following errors:
                                                       ## ! -
                                                       ## BOPAlgo_AlertBuilderFailed - Building operation has not been performed yet or failed;
                                                       ## ! - BOPAlgo_AlertBOPNotSet - invalid BOP type is given (COMMON/FUSE/CUT/CUT21 are supported);
                                                       ## ! -
                                                       ## BOPAlgo_AlertTooFewArguments - arguments are not given;
                                                       ## ! - BOPAlgo_AlertUnknownShape - the shape is unknown for the operation.
                                                       ## !
                                                       ## ! Parameters:
                                                       ## ! @param theObjects   - The group of Objects for BOP;
                                                       ## ! @param theObjState  - State for objects faces to pass into result;
                                                       ## ! @param theTools     - The group of Tools for BOP;
                                                       ## ! @param theObjState  - State for tools faces to pass into result;
                                                       ## ! @param theReport    - The alternative report to avoid pollution of the main one.
                                                       ## ! @name History methods
                                                       ## ! Prepare information for history support.
                                                       ## ! @name Images/Origins
                                                       ## ! Returns the map of images.
                                                       ## ! @name Methods for building the result
                                                       ## ! Performs the building of the result.
                                                       ## ! The method calls the PerfromInternal1() method surrounded by a try-catch block.
                                                       ## ! @name Checking input arguments
                                                       ## ! Checks the input data.
                                                       ## ! @name Fill Images of VERTICES
                                                       ## ! Fills the images of vertices.
                                                       ## ! @name Fill Images of EDGES
                                                       ## ! Fills the images of edges.
                                                       ## ! @name Fill Images of CONTAINERS
                                                       ## ! Fills the images of containers (WIRES/SHELLS/COMPSOLID).
                                                       ## ! @name Fill Images of FACES
                                                       ## ! Fills the images of faces.
                                                       ## ! The method consists of three steps:
                                                       ## ! 1. Build the splits of faces;
                                                       ## ! 2. Find SD faces;
                                                       ## ! 3. Add internal vertices (if any) to faces.
                                                       ## ! @name Fill Images of SOLIDS
                                                       ## ! Fills the images of solids.
                                                       ## ! The method consists of four steps:
                                                       ## ! 1. Build the draft solid - just rebuild the solid using the splits of faces;
                                                       ## ! 2. Find faces from other arguments located inside the solids;
                                                       ## ! 3. Build splits of solid using the inside faces;
                                                       ## ! 4. Fill internal shapes for the splits (Wires and vertices).
                                                       ## ! @name Fill Images of COMPOUNDS
                                                       ## ! Fills the images of compounds.
                                                       ## ! @name Post treatment
                                                       ## ! Post treatment of the result of the operation.
                                                       ## ! The method checks validity of the sub-shapes of the result
                                                       ## ! and updates the tolerances to make them valid.
                                                       ## ! @name Fields
    ## !< Arguments of the operation
    ## !< Fence map providing the uniqueness of the shapes in the list of arguments
    ## !< Pave Filler - algorithm for sub-shapes intersection
    ## !< Data Structure - holder of intersection information
    ## !< Context - tool for cashing heavy algorithms such as Projectors and Classifiers
    ## !< EntryPoint - controls the deletion of the PaveFiller, which could live longer than the Builder
    ## !< Images - map of Images of the sub-shapes of arguments
    ## !< ShapesSD - map of SD Shapes
    ## !< Origins - map of Origins, back map of Images
    ## !< InParts - map of own and acquired IN faces of the arguments solids
    ## !< Safe processing option allows avoiding modification of the input shapes
    ## !< Gluing option allows speeding up the intersection of the input shapes
    ## !< Check inverted option allows disabling the check of input solids on inverted status

type
  BOPAlgoBuilderFace* {.importcpp: "BOPAlgo_BuilderFace",
                       header: "BOPAlgo_BuilderFace.hxx", bycopy.} = object of BOPAlgoBuilderArea ##
                                                                                           ## !
                                                                                           ## Collect
                                                                                           ## the
                                                                                           ## edges
                                                                                           ## that
                                                                                           ##
                                                                                           ## !
                                                                                           ## a)
                                                                                           ## are
                                                                                           ## internal
                                                                                           ##
                                                                                           ## !
                                                                                           ## b)
                                                                                           ## are
                                                                                           ## the
                                                                                           ## same
                                                                                           ## and
                                                                                           ## have
                                                                                           ## different
                                                                                           ## orientation

type
  BOPAlgoBuilderSolid* {.importcpp: "BOPAlgo_BuilderSolid",
                        header: "BOPAlgo_BuilderSolid.hxx", bycopy.} = object of BOPAlgoBuilderArea ##
                                                                                             ## !
                                                                                             ## @name
                                                                                             ## Constructors
                                                                                             ##
                                                                                             ## !
                                                                                             ## Empty
                                                                                             ## constructor
                                                                                             ##
                                                                                             ## !
                                                                                             ## @name
                                                                                             ## Performing
                                                                                             ## the
                                                                                             ## operation
                                                                                             ##
                                                                                             ## !
                                                                                             ## Performs
                                                                                             ## the
                                                                                             ## construction
                                                                                             ## of
                                                                                             ## the
                                                                                             ## solids
                                                                                             ## from
                                                                                             ## the
                                                                                             ## given
                                                                                             ## faces
                                                                                             ##
                                                                                             ## !
                                                                                             ## @name
                                                                                             ## Getting
                                                                                             ## the
                                                                                             ## bounding
                                                                                             ## boxes
                                                                                             ## of
                                                                                             ## the
                                                                                             ## created
                                                                                             ## solids
                                                                                             ##
                                                                                             ## !
                                                                                             ## For
                                                                                             ## classification
                                                                                             ## purposes
                                                                                             ## the
                                                                                             ## algorithm
                                                                                             ## builds
                                                                                             ## the
                                                                                             ## bounding
                                                                                             ## boxes
                                                                                             ##
                                                                                             ## !
                                                                                             ## for
                                                                                             ## all
                                                                                             ## created
                                                                                             ## solids.
                                                                                             ## This
                                                                                             ## method
                                                                                             ## returns
                                                                                             ## the
                                                                                             ## data
                                                                                             ## map
                                                                                             ## of
                                                                                             ## solid
                                                                                             ## -
                                                                                             ## box
                                                                                             ## pairs.
                                                                                             ##
                                                                                             ## !
                                                                                             ## @name
                                                                                             ## Protected
                                                                                             ## methods
                                                                                             ## performing
                                                                                             ## the
                                                                                             ## operation
                                                                                             ##
                                                                                             ## !
                                                                                             ## Collect
                                                                                             ## the
                                                                                             ## faces:
                                                                                             ##
                                                                                             ## !
                                                                                             ## -
                                                                                             ## with
                                                                                             ## INTERNAL
                                                                                             ## orientation;
                                                                                             ##
                                                                                             ## !
                                                                                             ## -
                                                                                             ## that
                                                                                             ## are
                                                                                             ## alone
                                                                                             ## but
                                                                                             ## given
                                                                                             ## twice
                                                                                             ## with
                                                                                             ## different
                                                                                             ## orientation.
                                                                                             ##
                                                                                             ## !
                                                                                             ## These
                                                                                             ## faces
                                                                                             ## will
                                                                                             ## be
                                                                                             ## put
                                                                                             ## into
                                                                                             ## the
                                                                                             ## map
                                                                                             ## *myShapesToAvoid*
                                                                                             ## and
                                                                                             ## will
                                                                                             ## be
                                                                                             ##
                                                                                             ## !
                                                                                             ## avoided
                                                                                             ## in
                                                                                             ## shells
                                                                                             ## construction,
                                                                                             ## but
                                                                                             ## will
                                                                                             ## be
                                                                                             ## classified
                                                                                             ## later
                                                                                             ## on.
    ##  Boxes of the produced solids

type
  BOPAlgoCheckerSI* {.importcpp: "BOPAlgo_CheckerSI",
                     header: "BOPAlgo_CheckerSI.hxx", bycopy.} = object of BOPAlgoPaveFiller

type
  BOPAlgoRemoveFeatures* {.importcpp: "BOPAlgo_RemoveFeatures",
                          header: "BOPAlgo_RemoveFeatures.hxx", bycopy.} = object of BOPAlgoBuilderShape ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## Constructors
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Empty
                                                                                                  ## constructor
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## Setting
                                                                                                  ## input
                                                                                                  ## data
                                                                                                  ## for
                                                                                                  ## the
                                                                                                  ## algorithm
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Sets
                                                                                                  ## the
                                                                                                  ## shape
                                                                                                  ## for
                                                                                                  ## processing.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theShape
                                                                                                  ## [in]
                                                                                                  ## The
                                                                                                  ## shape
                                                                                                  ## to
                                                                                                  ## remove
                                                                                                  ## the
                                                                                                  ## faces
                                                                                                  ## from.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## It
                                                                                                  ## should
                                                                                                  ## either
                                                                                                  ## be
                                                                                                  ## the
                                                                                                  ## SOLID,
                                                                                                  ## COMPSOLID
                                                                                                  ## or
                                                                                                  ## COMPOUND
                                                                                                  ## of
                                                                                                  ## Solids.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## Performing
                                                                                                  ## the
                                                                                                  ## operation
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Performs
                                                                                                  ## the
                                                                                                  ## operation
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## Clearing
                                                                                                  ## the
                                                                                                  ## contents
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## algorithm
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Clears
                                                                                                  ## the
                                                                                                  ## contents
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## algorithm
                                                                                                  ## from
                                                                                                  ## previous
                                                                                                  ## run,
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## allowing
                                                                                                  ## reusing
                                                                                                  ## it
                                                                                                  ## for
                                                                                                  ## following
                                                                                                  ## removals.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## Protected
                                                                                                  ## methods
                                                                                                  ## performing
                                                                                                  ## the
                                                                                                  ## removal
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Checks
                                                                                                  ## the
                                                                                                  ## input
                                                                                                  ## data
                                                                                                  ## on
                                                                                                  ## validity
                                                                                                  ## for
                                                                                                  ## the
                                                                                                  ## algorithm:
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## -
                                                                                                  ## The
                                                                                                  ## input
                                                                                                  ## shape
                                                                                                  ## must
                                                                                                  ## be
                                                                                                  ## either
                                                                                                  ## a
                                                                                                  ## SOLID,
                                                                                                  ## COMPSOLID
                                                                                                  ## or
                                                                                                  ## COMPOUND
                                                                                                  ## of
                                                                                                  ## Solids.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## If
                                                                                                  ## the
                                                                                                  ## input
                                                                                                  ## shape
                                                                                                  ## is
                                                                                                  ## not
                                                                                                  ## a
                                                                                                  ## solid,
                                                                                                  ## the
                                                                                                  ## method
                                                                                                  ## looks
                                                                                                  ## for
                                                                                                  ## the
                                                                                                  ## solids
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## in
                                                                                                  ## <myInputShape>
                                                                                                  ## and
                                                                                                  ## uses
                                                                                                  ## only
                                                                                                  ## them.
                                                                                                  ## All
                                                                                                  ## other
                                                                                                  ## shapes
                                                                                                  ## are
                                                                                                  ## simply
                                                                                                  ## removed.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## If
                                                                                                  ## no
                                                                                                  ## solids
                                                                                                  ## were
                                                                                                  ## found,
                                                                                                  ## the
                                                                                                  ## Error
                                                                                                  ## of
                                                                                                  ## unsupported
                                                                                                  ## type
                                                                                                  ## is
                                                                                                  ## returned.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## Fields
                                                                                                  ##
                                                                                                  ## Inputs
    ## !< Input shape
    ## !< Faces to remove
    ##  Intermediate
    ## !< List of not connected features to remove
    ## ! (each feature is a compound of faces)
    ## !< Map of all sub-shapes of the input shape

type
  BOPAlgoCellsBuilder* {.importcpp: "BOPAlgo_CellsBuilder",
                        header: "BOPAlgo_CellsBuilder.hxx", bycopy.} = object of BOPAlgoBuilder ##
                                                                                         ## !
                                                                                         ## Prepare
                                                                                         ## information
                                                                                         ## for
                                                                                         ## history
                                                                                         ## support
                                                                                         ## taking
                                                                                         ## into
                                                                                         ## account
                                                                                         ##
                                                                                         ## !
                                                                                         ## local
                                                                                         ## modification
                                                                                         ## map
                                                                                         ## of
                                                                                         ## unified
                                                                                         ## elements
                                                                                         ## -
                                                                                         ## myMapModified.
    ## !< All split parts of the arguments
    ## !< Connection map from all splits parts to the argument shapes from which they were created
    ## !< Map of assigned materials (material -> list of shape)
    ## !< Map of assigned materials (shape -> material)
    ## !< Local modification map to track unification of the splits

type
  BOPAlgoMakerVolume* {.importcpp: "BOPAlgo_MakerVolume",
                       header: "BOPAlgo_MakerVolume.hxx", bycopy.} = object of BOPAlgoBuilder ##
                                                                                       ## !
                                                                                       ## Empty
                                                                                       ## contructor.
                                                                                       ##
                                                                                       ## !
                                                                                       ## Checks
                                                                                       ## the
                                                                                       ## data.

type
  BOPAlgoSection* {.importcpp: "BOPAlgo_Section", header: "BOPAlgo_Section.hxx",
                   bycopy.} = object of BOPAlgoBuilder ## ! Empty constructor
                                                  ## ! Checks the data before performing the operation

type
  BOPAlgoToolsProvider* {.importcpp: "BOPAlgo_ToolsProvider",
                         header: "BOPAlgo_ToolsProvider.hxx", bycopy.} = object of BOPAlgoBuilder ##
                                                                                           ## !
                                                                                           ## Empty
                                                                                           ## constructor

type
  BOPAlgoBOP* {.importcpp: "BOPAlgo_BOP", header: "BOPAlgo_BOP.hxx", bycopy.} = object of BOPAlgoToolsProvider ##
                                                                                                     ## !
                                                                                                     ## Empty
                                                                                                     ## constructor

type
  BOPAlgoSplitter* {.importcpp: "BOPAlgo_Splitter", header: "BOPAlgo_Splitter.hxx",
                    bycopy.} = object of BOPAlgoToolsProvider ## ! Empty constructor
                                                         ## ! Checks the input data

