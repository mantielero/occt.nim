# PROVIDES:
# DEPENDS: BRepBuilderAPI_MakeShape BRepAlgoAPI_BuilderAlgo BRepAlgoAPI_Algo BOPAlgoOptions BRepAlgoAPI_BooleanOperation BRepAlgoAPI_BooleanOperation BRepAlgoAPI_Algo BRepAlgoAPI_BooleanOperation BRepAlgoAPI_BooleanOperation BRepAlgoAPI_BuilderAlgo

type
  BRepAlgoAPI_Algo* {.importcpp: "BRepAlgoAPI_Algo",
                     header: "BRepAlgoAPI_Algo.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                            ## !
                                                                                            ## Empty
                                                                                            ## constructor

type
  BRepAlgoAPI_BooleanOperation* {.importcpp: "BRepAlgoAPI_BooleanOperation",
                                 header: "BRepAlgoAPI_BooleanOperation.hxx",
                                 bycopy.} = object of BRepAlgoAPI_BuilderAlgo ## ! @name
                                                                         ## Constructors
                                                                         ## ! Empty
                                                                         ## constructor
                                                                         ## ! @name
                                                                         ## Setting/getting
                                                                         ## arguments
                                                                         ## ! Returns the first
                                                                         ## argument
                                                                         ## involved in this Boolean
                                                                         ## operation.
                                                                         ## !
                                                                         ## Obsolete
                                                                         ## ! @name
                                                                         ## Setting/Getting the type of Boolean
                                                                         ## operation
                                                                         ## ! Sets the type of Boolean
                                                                         ## operation
                                                                         ## ! @name
                                                                         ## Performing the
                                                                         ## operation
                                                                         ## !
                                                                         ## Performs the Boolean
                                                                         ## operation.
                                                                         ## ! @name
                                                                         ## Constructors
                                                                         ## !
                                                                         ## Constructor to perform Boolean
                                                                         ## operation on only two
                                                                         ## arguments.
                                                                         ## !
                                                                         ## Obsolete
                                                                         ## ! @name Fields
    ## !< Tool arguments of operation
    ## !< Type of Boolean Operation

type
  BRepAlgoAPI_BuilderAlgo* {.importcpp: "BRepAlgoAPI_BuilderAlgo",
                            header: "BRepAlgoAPI_BuilderAlgo.hxx", bycopy.} = object of BRepAlgoAPI_Algo ##
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
                                                                                                  ## Setting/Getting
                                                                                                  ## data
                                                                                                  ## for
                                                                                                  ## the
                                                                                                  ## algorithm
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Sets
                                                                                                  ## the
                                                                                                  ## arguments
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## Setting
                                                                                                  ## options
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Sets
                                                                                                  ## the
                                                                                                  ## flag
                                                                                                  ## that
                                                                                                  ## defines
                                                                                                  ## the
                                                                                                  ## mode
                                                                                                  ## of
                                                                                                  ## treatment.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## In
                                                                                                  ## non-destructive
                                                                                                  ## mode
                                                                                                  ## the
                                                                                                  ## argument
                                                                                                  ## shapes
                                                                                                  ## are
                                                                                                  ## not
                                                                                                  ## modified.
                                                                                                  ## Instead
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## a
                                                                                                  ## copy
                                                                                                  ## of
                                                                                                  ## a
                                                                                                  ## sub-shape
                                                                                                  ## is
                                                                                                  ## created
                                                                                                  ## in
                                                                                                  ## the
                                                                                                  ## result
                                                                                                  ## if
                                                                                                  ## it
                                                                                                  ## is
                                                                                                  ## needed
                                                                                                  ## to
                                                                                                  ## be
                                                                                                  ## updated.
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
                                                                                                  ## algorithm
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## Result
                                                                                                  ## simplification
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Simplification
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## result
                                                                                                  ## shape
                                                                                                  ## is
                                                                                                  ## performed
                                                                                                  ## by
                                                                                                  ## the
                                                                                                  ## means
                                                                                                  ## of
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## *ShapeUpgrade_UnifySameDomain*
                                                                                                  ## algorithm.
                                                                                                  ## The
                                                                                                  ## result
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## operation
                                                                                                  ## will
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## be
                                                                                                  ## overwritten
                                                                                                  ## with
                                                                                                  ## the
                                                                                                  ## simplified
                                                                                                  ## result.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## The
                                                                                                  ## simplification
                                                                                                  ## is
                                                                                                  ## performed
                                                                                                  ## without
                                                                                                  ## creation
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## Internal
                                                                                                  ## shapes,
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## i.e.
                                                                                                  ## shapes
                                                                                                  ## connections
                                                                                                  ## will
                                                                                                  ## never
                                                                                                  ## be
                                                                                                  ## broken.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Simplification
                                                                                                  ## is
                                                                                                  ## performed
                                                                                                  ## on
                                                                                                  ## the
                                                                                                  ## whole
                                                                                                  ## result
                                                                                                  ## shape.
                                                                                                  ## Thus,
                                                                                                  ## if
                                                                                                  ## the
                                                                                                  ## input
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## shapes
                                                                                                  ## contained
                                                                                                  ## connected
                                                                                                  ## tangent
                                                                                                  ## edges
                                                                                                  ## or
                                                                                                  ## faces
                                                                                                  ## unmodified
                                                                                                  ## during
                                                                                                  ## the
                                                                                                  ## operation
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## they
                                                                                                  ## will
                                                                                                  ## also
                                                                                                  ## be
                                                                                                  ## unified.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## After
                                                                                                  ## simplification,
                                                                                                  ## the
                                                                                                  ## History
                                                                                                  ## of
                                                                                                  ## result
                                                                                                  ## simplification
                                                                                                  ## is
                                                                                                  ## merged
                                                                                                  ## into
                                                                                                  ## the
                                                                                                  ## main
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## history
                                                                                                  ## of
                                                                                                  ## operation.
                                                                                                  ## So,
                                                                                                  ## it
                                                                                                  ## is
                                                                                                  ## taken
                                                                                                  ## into
                                                                                                  ## account
                                                                                                  ## when
                                                                                                  ## asking
                                                                                                  ## for
                                                                                                  ## Modified,
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Generated
                                                                                                  ## and
                                                                                                  ## Deleted
                                                                                                  ## shapes.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Some
                                                                                                  ## options
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## main
                                                                                                  ## operation
                                                                                                  ## are
                                                                                                  ## passed
                                                                                                  ## into
                                                                                                  ## the
                                                                                                  ## Unifier:
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## -
                                                                                                  ## Fuzzy
                                                                                                  ## tolerance
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## operation
                                                                                                  ## is
                                                                                                  ## given
                                                                                                  ## to
                                                                                                  ## the
                                                                                                  ## Unifier
                                                                                                  ## as
                                                                                                  ## the
                                                                                                  ## linear
                                                                                                  ## tolerance.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## -
                                                                                                  ## Non
                                                                                                  ## destructive
                                                                                                  ## mode
                                                                                                  ## here
                                                                                                  ## controls
                                                                                                  ## the
                                                                                                  ## safe
                                                                                                  ## input
                                                                                                  ## mode
                                                                                                  ## in
                                                                                                  ## Unifier.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theUnifyEdges
                                                                                                  ## Controls
                                                                                                  ## the
                                                                                                  ## edges
                                                                                                  ## unification.
                                                                                                  ## TRUE
                                                                                                  ## by
                                                                                                  ## default.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theUnifyFaces
                                                                                                  ## Controls
                                                                                                  ## the
                                                                                                  ## faces
                                                                                                  ## unification.
                                                                                                  ## TRUE
                                                                                                  ## by
                                                                                                  ## default.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theAngularTol
                                                                                                  ## Angular
                                                                                                  ## criteria
                                                                                                  ## for
                                                                                                  ## tangency
                                                                                                  ## of
                                                                                                  ## edges
                                                                                                  ## and
                                                                                                  ## faces.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Precision::Angular()
                                                                                                  ## by
                                                                                                  ## default.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## History
                                                                                                  ## support
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## the
                                                                                                  ## shapes
                                                                                                  ## modified
                                                                                                  ## from
                                                                                                  ## the
                                                                                                  ## shape
                                                                                                  ## <theS>.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## If
                                                                                                  ## any,
                                                                                                  ## the
                                                                                                  ## list
                                                                                                  ## will
                                                                                                  ## contain
                                                                                                  ## only
                                                                                                  ## those
                                                                                                  ## splits
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## given
                                                                                                  ## shape,
                                                                                                  ## contained
                                                                                                  ## in
                                                                                                  ## the
                                                                                                  ## result.
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
                                                                                                  ## Getting
                                                                                                  ## the
                                                                                                  ## section
                                                                                                  ## edges
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## a
                                                                                                  ## list
                                                                                                  ## of
                                                                                                  ## section
                                                                                                  ## edges.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## The
                                                                                                  ## edges
                                                                                                  ## represent
                                                                                                  ## the
                                                                                                  ## result
                                                                                                  ## of
                                                                                                  ## intersection
                                                                                                  ## between
                                                                                                  ## arguments
                                                                                                  ## of
                                                                                                  ## operation.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## Getting
                                                                                                  ## tools
                                                                                                  ## performing
                                                                                                  ## the
                                                                                                  ## job
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## the
                                                                                                  ## Intersection
                                                                                                  ## tool
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## Setting
                                                                                                  ## options
                                                                                                  ## to
                                                                                                  ## the
                                                                                                  ## Intersection
                                                                                                  ## tool
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Sets
                                                                                                  ## options
                                                                                                  ## (available
                                                                                                  ## in
                                                                                                  ## child
                                                                                                  ## classes)
                                                                                                  ## for
                                                                                                  ## the
                                                                                                  ## intersection
                                                                                                  ## tool.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Here
                                                                                                  ## it
                                                                                                  ## does
                                                                                                  ## nothing.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## Protected
                                                                                                  ## methods
                                                                                                  ## for
                                                                                                  ## shapes
                                                                                                  ## intersection
                                                                                                  ## and
                                                                                                  ## building
                                                                                                  ## result
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Intersects
                                                                                                  ## the
                                                                                                  ## given
                                                                                                  ## shapes
                                                                                                  ## with
                                                                                                  ## the
                                                                                                  ## intersection
                                                                                                  ## tool
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
                                                                                                  ## algorithm
                                                                                                  ## from
                                                                                                  ## previous
                                                                                                  ## runs
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## Fields
                                                                                                  ##
                                                                                                  ## Inputs
    ## !< Arguments of the operation
    ##  Options
    ## !< Non-destructive mode management
    ## !< Gluing mode management
    ## !< Check for inverted solids management
    ## !< Controls the history collection
    ##  Tools
    ## !< Flag to control whether the intersection
    ## ! of arguments should be performed or not
    ## !< Intersection tool performs intersection of the
    ## ! argument shapes.
    ## !< Building tool performs construction of the result
    ## ! basing on the results of intersection
    ## !< General History tool, containing all History of
    ## ! shapes modifications during the operation
    ## ! (including result simplification)
    ## !< History of result shape simplification

type
  BRepAlgoAPI_Check* {.importcpp: "BRepAlgoAPI_Check",
                      header: "BRepAlgoAPI_Check.hxx", bycopy.} = object of BOPAlgoOptions ##
                                                                                    ## !
                                                                                    ## @name
                                                                                    ## Constructors
                                                                                    ##
                                                                                    ## !
                                                                                    ## Empty
                                                                                    ## constructor.
                                                                                    ##
                                                                                    ## !
                                                                                    ## @name
                                                                                    ## Initializing
                                                                                    ## the
                                                                                    ## algorithm
                                                                                    ##
                                                                                    ## !
                                                                                    ## Initializes
                                                                                    ## the
                                                                                    ## algorithm
                                                                                    ## with
                                                                                    ## single
                                                                                    ## shape.
                                                                                    ##
                                                                                    ## !
                                                                                    ##
                                                                                    ## !
                                                                                    ## @param
                                                                                    ## theS
                                                                                    ## [in]
                                                                                    ## -
                                                                                    ## the
                                                                                    ## shape
                                                                                    ## to
                                                                                    ## check;
                                                                                    ##
                                                                                    ## !
                                                                                    ## @param
                                                                                    ## bTestSE
                                                                                    ## [in]
                                                                                    ## -
                                                                                    ## flag
                                                                                    ## which
                                                                                    ## specifies
                                                                                    ## whether
                                                                                    ## to
                                                                                    ## check
                                                                                    ## the
                                                                                    ## shape
                                                                                    ##
                                                                                    ## !
                                                                                    ## on
                                                                                    ## small
                                                                                    ## edges
                                                                                    ## or
                                                                                    ## not;
                                                                                    ## by
                                                                                    ## default
                                                                                    ## it
                                                                                    ## is
                                                                                    ## set
                                                                                    ## to
                                                                                    ## TRUE;
                                                                                    ##
                                                                                    ## !
                                                                                    ## @param
                                                                                    ## bTestSI
                                                                                    ## [in]
                                                                                    ## -
                                                                                    ## flag
                                                                                    ## which
                                                                                    ## specifies
                                                                                    ## whether
                                                                                    ## to
                                                                                    ## check
                                                                                    ## the
                                                                                    ## shape
                                                                                    ##
                                                                                    ## !
                                                                                    ## on
                                                                                    ## self-interference
                                                                                    ## or
                                                                                    ## not;
                                                                                    ## by
                                                                                    ## default
                                                                                    ## it
                                                                                    ## is
                                                                                    ## set
                                                                                    ## to
                                                                                    ## TRUE;
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
                                                                                    ## check.
                                                                                    ##
                                                                                    ## !
                                                                                    ## @name
                                                                                    ## Getting
                                                                                    ## the
                                                                                    ## results.
                                                                                    ##
                                                                                    ## !
                                                                                    ## Shows
                                                                                    ## whether
                                                                                    ## shape(s)
                                                                                    ## valid
                                                                                    ## or
                                                                                    ## not.
                                                                                    ##
                                                                                    ## !
                                                                                    ## @name
                                                                                    ## Fields
                                                                                    ##
                                                                                    ## Inputs
    ## !< The first shape
    ## !< The second shape
    ## !< Flag defining whether to look for small edges in the given shapes or not
    ## !< Flag defining whether to check the input edges on self-interference or not
    ## !< Type of Boolean operation for which the validity of input shapes should be checked
    ##  Results
    ## !< Found faulty shapes

type
  BRepAlgoAPI_Common* {.importcpp: "BRepAlgoAPI_Common",
                       header: "BRepAlgoAPI_Common.hxx", bycopy.} = object of BRepAlgoAPI_BooleanOperation ##
                                                                                                    ## !
                                                                                                    ## Empty
                                                                                                    ## constructor

type
  BRepAlgoAPI_Cut* {.importcpp: "BRepAlgoAPI_Cut", header: "BRepAlgoAPI_Cut.hxx",
                    bycopy.} = object of BRepAlgoAPI_BooleanOperation ## ! Empty constructor

type
  BRepAlgoAPI_Defeaturing* {.importcpp: "BRepAlgoAPI_Defeaturing",
                            header: "BRepAlgoAPI_Defeaturing.hxx", bycopy.} = object of BRepAlgoAPI_Algo ##
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
                                                                                                  ## features
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
                                                                                                  ## History
                                                                                                  ## Methods
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Defines
                                                                                                  ## whether
                                                                                                  ## to
                                                                                                  ## track
                                                                                                  ## the
                                                                                                  ## modification
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## shapes
                                                                                                  ## or
                                                                                                  ## not.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## Setting
                                                                                                  ## the
                                                                                                  ## algorithm
                                                                                                  ## into
                                                                                                  ## default
                                                                                                  ## state
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @name
                                                                                                  ## Fields
    ## !< Input shape to remove the features from
    ## !< Features to remove from the shape
    ## !< Defines whether to track the history of
    ## ! shapes modifications or not (true by default)
    ## !< Tool for the features removal

type
  BRepAlgoAPI_Fuse* {.importcpp: "BRepAlgoAPI_Fuse",
                     header: "BRepAlgoAPI_Fuse.hxx", bycopy.} = object of BRepAlgoAPI_BooleanOperation ##
                                                                                                ## !
                                                                                                ## Empty
                                                                                                ## constructor

type
  BRepAlgoAPI_Section* {.importcpp: "BRepAlgoAPI_Section",
                        header: "BRepAlgoAPI_Section.hxx", bycopy.} = object of BRepAlgoAPI_BooleanOperation ##
                                                                                                      ## !
                                                                                                      ## Empty
                                                                                                      ## constructor

                                                                                                      ## constructor
type
  BRepAlgoAPI_Splitter* {.importcpp: "BRepAlgoAPI_Splitter",
                         header: "BRepAlgoAPI_Splitter.hxx", bycopy.} = object of BRepAlgoAPI_BuilderAlgo ##
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
                                                                                                   ## Setters/Getters
                                                                                                   ## for
                                                                                                   ## the
                                                                                                   ## Tools
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## Sets
                                                                                                   ## the
                                                                                                   ## Tool
                                                                                                   ## arguments
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
                                                                                                   ## Split
                                                                                                   ## operation.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## Performs
                                                                                                   ## the
                                                                                                   ## intersection
                                                                                                   ## of
                                                                                                   ## the
                                                                                                   ## argument
                                                                                                   ## shapes
                                                                                                   ## (both
                                                                                                   ## objects
                                                                                                   ## and
                                                                                                   ## tools)
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## and
                                                                                                   ## splits
                                                                                                   ## objects
                                                                                                   ## by
                                                                                                   ## the
                                                                                                   ## tools.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## @name
                                                                                                   ## Fields
    ## !< Tool arguments of the operation


