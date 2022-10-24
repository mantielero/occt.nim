type
  STEPControlActorRead* {.importcpp: "STEPControl_ActorRead",
                         header: "STEPControl_ActorRead.hxx", bycopy.} = object of TransferActorOfTransientProcess ##
                                                                                                            ## !
type
  HandleSTEPControlActorRead* = Handle[STEPControlActorRead]                                                                                                            ## Transfers
                                                                                                            ## product
                                                                                                            ## definition
                                                                                                            ## entity
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## theUseTrsf
                                                                                                            ## -
                                                                                                            ## special
                                                                                                            ## flag
                                                                                                            ## for
                                                                                                            ## using
                                                                                                            ## Axis2Placement
                                                                                                            ## from
                                                                                                            ## ShapeRepresentation
                                                                                                            ## for
                                                                                                            ## transform
                                                                                                            ## root
                                                                                                            ## shape
type
  HandleSTEPControlActorWrite* = Handle[STEPControlActorWrite]
## ! This class performs the transfer of a Shape from TopoDS
## ! to AP203 or AP214 (CD2 or DIS)
type
  STEPControlActorWrite* {.importcpp: "STEPControl_ActorWrite",
                          header: "STEPControl_ActorWrite.hxx", bycopy.} = object of TransferActorOfFinderProcess ##
                                                                                                           ## !
                                                                                                           ## Non-manifold
                                                                                                           ## shapes
                                                                                                           ## are
                                                                                                           ## stored
                                                                                                           ## in
                                                                                                           ## NMSSR
                                                                                                           ## group
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## (NON_MANIFOLD_SURFACE_SHAPE_REPRESENTATION).
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## Use
                                                                                                           ## this
                                                                                                           ## method
                                                                                                           ## to
                                                                                                           ## get
                                                                                                           ## the
                                                                                                           ## corresponding
                                                                                                           ## NMSSR
                                                                                                           ## (or
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## to
                                                                                                           ## create
                                                                                                           ## a
                                                                                                           ## new
                                                                                                           ## one
                                                                                                           ## if
                                                                                                           ## doesn't
                                                                                                           ## exist
                                                                                                           ## yet)
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## (ssv;
                                                                                                           ## 13.11.2010)
type
  HandleSTEPControlController* = Handle[STEPControlController]
## ! defines basic controller for STEP processor
type
  STEPControlController* {.importcpp: "STEPControl_Controller",
                          header: "STEPControl_Controller.hxx", bycopy.} = object of XSControlController ##
                                                                                                  ## !
                                                                                                  ## Initializes
                                                                                                  ## the
                                                                                                  ## use
                                                                                                  ## of
                                                                                                  ## STEP
                                                                                                  ## Norm
                                                                                                  ## (the
                                                                                                  ## first
                                                                                                  ## time)
                                                                                                  ## and
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## returns
                                                                                                  ## a
                                                                                                  ## Controller
type
  STEPControlReader* {.importcpp: "STEPControl_Reader",
                      header: "STEPControl_Reader.hxx", bycopy.} = object of XSControlReader ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## a
                                                                                      ## reader
                                                                                      ## object
                                                                                      ## with
                                                                                      ## an
                                                                                      ## empty
                                                                                      ## STEP
                                                                                      ## model.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## units
                                                                                      ## for
                                                                                      ## length
                                                                                      ## ,
                                                                                      ## angle
                                                                                      ## and
                                                                                      ## solidangle
                                                                                      ## for
                                                                                      ## shape
                                                                                      ## representations
type
  STEPControlWriter* {.importcpp: "STEPControl_Writer",
                      header: "STEPControl_Writer.hxx", bycopy.} = object ## ! Creates a Writer from scratch
