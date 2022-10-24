type
  PrsMgrPresentationManager3d* = PrsMgrPresentationManager
## ! A framework to supply the Graphic3d structure of the object to be presented.
## ! On the first display request, this structure is created by calling the appropriate algorithm and retaining this framework for further display.
## ! This abstract framework is inherited in Application Interactive Services (AIS), notably by AIS_InteractiveObject.
## ! Consequently, 3D presentation should be handled by the relevant daughter classes and their member functions in AIS.
## ! This is particularly true in the creation of new interactive objects.
## !
## ! Key interface methods to be implemented by every Selectable Object:
## ! - AcceptDisplayMode() accepting display modes implemented by this object;
## ! - Compute() computing presentation for the given display mode index.
## !
## ! Warning! Methods managing standard attributes (SetColor(), SetWidth(), SetMaterial()) have different meaning for objects of different type (or no meaning at all).
## ! Sub-classes might override these methods to modify Prs3d_Drawer or class properties providing a convenient short-cut depending on application needs.
## ! For more sophisticated configuring, Prs3d_Drawer should be modified directly, while short-cuts might be left unimplemented.
type
  PrsMgrPresentableObject* {.importcpp: "PrsMgr_PresentableObject",
                            header: "PrsMgr_PresentableObject.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## Return
                                                                                                    ## presentations.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @name
                                                                                                    ## presentation
                                                                                                    ## attributes
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Returns
                                                                                                    ## the
                                                                                                    ## attributes
                                                                                                    ## settings.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @name
                                                                                                    ## object
                                                                                                    ## transformation
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Returns
                                                                                                    ## Transformation
                                                                                                    ## Persistence
                                                                                                    ## defining
                                                                                                    ## a
                                                                                                    ## special
                                                                                                    ## Local
                                                                                                    ## Coordinate
                                                                                                    ## system
                                                                                                    ## where
                                                                                                    ## this
                                                                                                    ## presentable
                                                                                                    ## object
                                                                                                    ## is
                                                                                                    ## located
                                                                                                    ## or
                                                                                                    ## NULL
                                                                                                    ## handle
                                                                                                    ## if
                                                                                                    ## not
                                                                                                    ## defined.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Position
                                                                                                    ## of
                                                                                                    ## the
                                                                                                    ## object
                                                                                                    ## having
                                                                                                    ## Transformation
                                                                                                    ## Persistence
                                                                                                    ## is
                                                                                                    ## mutable
                                                                                                    ## and
                                                                                                    ## depends
                                                                                                    ## on
                                                                                                    ## camera
                                                                                                    ## position.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## The
                                                                                                    ## same
                                                                                                    ## applies
                                                                                                    ## to
                                                                                                    ## a
                                                                                                    ## bounding
                                                                                                    ## box
                                                                                                    ## of
                                                                                                    ## the
                                                                                                    ## object.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @sa
                                                                                                    ## Graphic3d_TransformPers
                                                                                                    ## class
                                                                                                    ## description
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @name
                                                                                                    ## clipping
                                                                                                    ## planes
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Get
                                                                                                    ## clip
                                                                                                    ## planes.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @return
                                                                                                    ## set
                                                                                                    ## of
                                                                                                    ## previously
                                                                                                    ## added
                                                                                                    ## clip
                                                                                                    ## planes
                                                                                                    ## for
                                                                                                    ## all
                                                                                                    ## display
                                                                                                    ## mode
                                                                                                    ## presentations.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @name
                                                                                                    ## parent/children
                                                                                                    ## properties
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Returns
                                                                                                    ## parent
                                                                                                    ## of
                                                                                                    ## current
                                                                                                    ## object
                                                                                                    ## in
                                                                                                    ## scene
                                                                                                    ## hierarchy.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @name
                                                                                                    ## interface
                                                                                                    ## methods
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Protected
                                                                                                    ## empty
                                                                                                    ## constructor.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @name
                                                                                                    ## simplified
                                                                                                    ## presentation
                                                                                                    ## properties
                                                                                                    ## API
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Enables
                                                                                                    ## or
                                                                                                    ## disables
                                                                                                    ## on-triangulation
                                                                                                    ## build
                                                                                                    ## of
                                                                                                    ## isolines
                                                                                                    ## according
                                                                                                    ## to
                                                                                                    ## the
                                                                                                    ## flag
                                                                                                    ## given.
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## @name
                                                                                                    ## deprecated
                                                                                                    ## methods
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## gives
                                                                                                    ## the
                                                                                                    ## list
                                                                                                    ## of
                                                                                                    ## modes
                                                                                                    ## which
                                                                                                    ## are
                                                                                                    ## flagged
                                                                                                    ## "to
                                                                                                    ## be
                                                                                                    ## updated".
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Recomputes
                                                                                                    ## all
                                                                                                    ## presentations
                                                                                                    ## of
                                                                                                    ## the
                                                                                                    ## object.
    ## !< pointer to the parent object
    ## !< list of presentations
    ## !< sequence of object-specific clipping planes
    ## !< main presentation attributes
    ## !< (optional) custom presentation attributes for highlighting selected object
    ## !< (optional) custom presentation attributes for highlighting detected object
    ## !< transformation persistence
    ## !< local transformation relative to parent object
    ## !< absolute transformation of this object (combined parents + local transformations)
    ## !< transformation of parent object (combined for all parents)
    ## !< list of children
    ## !< inversion of absolute transformation (combined parents + local transformations)
    ## !< presentation type
    ## !< current facing model
    ## !< custom width value
    ## !< own color flag
    ## !< own material flag
    ## !< infinite flag
    ## !< mutable flag
    ## !< flag indicating if object should have own presentations
    ## !< flag indicating if visual state (display/erase/color) should be propagated to all children
type
  HandlePrsMgrPresentation* = Handle[PrsMgrPresentation]
  PrsMgrPresentation* {.importcpp: "PrsMgr_Presentation",
                       header: "PrsMgr_Presentation.hxx", bycopy.} = object of Graphic3dStructure ##
                                                                                           ## !
                                                                                           ## Destructor
                                                                                           ##
                                                                                           ## !
                                                                                           ## Main
                                                                                           ## constructor.
type
  HandlePrsMgrPresentationManager* = Handle[PrsMgrPresentationManager]
## ! A framework to manage 3D displays, graphic entities and their updates.
## ! Used in the AIS package (Application Interactive Services), to enable the advanced user to define the
## ! default display mode of a new interactive object which extends the list of signatures and types.
## ! Definition of new display types is handled by calling the presentation algorithms provided by the StdPrs package.
type
  PrsMgrPresentationManager* {.importcpp: "PrsMgr_PresentationManager",
                              header: "PrsMgr_PresentationManager.hxx", bycopy.} = object of StandardTransient ##
                                                                                                        ## !
                                                                                                        ## Creates
                                                                                                        ## a
                                                                                                        ## framework
                                                                                                        ## to
                                                                                                        ## manage
                                                                                                        ## displays
                                                                                                        ## and
                                                                                                        ## graphic
                                                                                                        ## entities
                                                                                                        ## with
                                                                                                        ## the
                                                                                                        ## 3D
                                                                                                        ## view
                                                                                                        ## theStructureManager.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Removes
                                                                                                        ## a
                                                                                                        ## presentation
                                                                                                        ## of
                                                                                                        ## the
                                                                                                        ## presentable
                                                                                                        ## object
                                                                                                        ## thePrsObject
                                                                                                        ## to
                                                                                                        ## this
                                                                                                        ## framework.
                                                                                                        ## thePrsObject
                                                                                                        ## has
                                                                                                        ## the
                                                                                                        ## display
                                                                                                        ## mode
                                                                                                        ## theMode.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Handles
                                                                                                        ## the
                                                                                                        ## structures
                                                                                                        ## from
                                                                                                        ## <myImmediateList>
                                                                                                        ## and
                                                                                                        ## displays
                                                                                                        ## it
                                                                                                        ## separating
                                                                                                        ## view-dependent
                                                                                                        ## structures
                                                                                                        ## and
                                                                                                        ## taking
                                                                                                        ## into
                                                                                                        ## account
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## structure
                                                                                                        ## visibility
                                                                                                        ## by
                                                                                                        ## setting
                                                                                                        ## proper
                                                                                                        ## affinity.
