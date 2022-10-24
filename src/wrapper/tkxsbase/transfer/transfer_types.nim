type
  HandleTransferActorDispatch* = Handle[TransferActorDispatch]
## ! This class allows to work with a TransferDispatch, i.e. to
## ! transfer entities from a data set to another one defined by
## ! the same interface norm, with the following features :
## ! - ActorDispatch itself acts as a default actor, i.e. it copies
## ! entities with the general service Copy, as CopyTool does
## ! - it allows to add other actors for specific ways of transfer,
## ! which may include data modifications, conversions ...
## ! - and other features from TransferDispatch (such as mapping
## ! other than one-one)
type
  TransferActorDispatch* {.importcpp: "Transfer_ActorDispatch",
                          header: "Transfer_ActorDispatch.hxx", bycopy.} = object of TransferActorOfTransientProcess ##
                                                                                                              ## !
                                                                                                              ## Creates
                                                                                                              ## an
                                                                                                              ## ActorDispatch
                                                                                                              ## from
                                                                                                              ## a
                                                                                                              ## Model.
                                                                                                              ## Works
                                                                                                              ## with
                                                                                                              ## a
                                                                                                              ## General
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## Service
                                                                                                              ## Library,
                                                                                                              ## given
                                                                                                              ## as
                                                                                                              ## an
                                                                                                              ## Argument
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## This
                                                                                                              ## causes
                                                                                                              ## TransferDispatch
                                                                                                              ## and
                                                                                                              ## its
                                                                                                              ## TransientProcess
                                                                                                              ## to
                                                                                                              ## be
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## created,
                                                                                                              ## with
                                                                                                              ## default
                                                                                                              ## actor
                                                                                                              ## <me>
type
  HandleTransferActorOfFinderProcess* = Handle[TransferActorOfFinderProcess]
## ! The original class was renamed. Compatibility only
## !
## ! ModeTrans : a simple way of transmitting a transfer mode from
## ! a user. To be interpreted for each norm
type
  TransferActorOfFinderProcess* {.importcpp: "Transfer_ActorOfFinderProcess",
                                 header: "Transfer_ActorOfFinderProcess.hxx",
                                 bycopy.} = object of TransferActorOfProcessForFinder
type
  HandleTransferActorOfProcessForFinder* = Handle[TransferActorOfProcessForFinder]
  TransferActorOfProcessForFinder* {.importcpp: "Transfer_ActorOfProcessForFinder", header: "Transfer_ActorOfProcessForFinder.hxx",
                                    bycopy.} = object of StandardTransient
type
  HandleTransferActorOfProcessForTransient* = Handle[
      TransferActorOfProcessForTransient]
  TransferActorOfProcessForTransient* {.importcpp: "Transfer_ActorOfProcessForTransient", header: "Transfer_ActorOfProcessForTransient.hxx",
                                       bycopy.} = object of StandardTransient
type
  HandleTransferActorOfTransientProcess* = Handle[TransferActorOfTransientProcess]
## ! The original class was renamed. Compatibility only
type
  TransferActorOfTransientProcess* {.importcpp: "Transfer_ActorOfTransientProcess", header: "Transfer_ActorOfTransientProcess.hxx",
                                    bycopy.} = object of TransferActorOfProcessForTransient
type
  HandleTransferBinder* = Handle[TransferBinder]
## ! A Binder is an auxiliary object to Map the Result of the
## ! Transfer of a given Object : it records the Result of the
## ! Unitary Transfer (Resulting Object), status of progress and
## ! error (if any) of the Process
## !
## ! The class Binder itself makes no definition for the Result :
## ! it is defined by sub-classes : it can be either Simple (and
## ! has to be typed : see generic class SimpleBinder) or Multiple
## ! (see class MultipleBinder).
## !
## ! In principle, for a Transfer in progress, Result cannot be
## ! accessed : this would cause an exception raising.
## ! This is controlled by the value if StatusResult : if it is
## ! "Used", the Result cannot be changed. This status is normally
## ! controlled by TransferProcess but can be directly (see method
## ! SetAlreadyUsed)
## !
## ! Checks can be completed by a record of cases, as string which
## ! can be used as codes, but not to be printed
## !
## ! In addition to the Result, a Binder can bring a list of
## ! Attributes, which are additional data, each of them has a name
type
  TransferBinder* {.importcpp: "Transfer_Binder", header: "Transfer_Binder.hxx",
                   bycopy.} = object of StandardTransient ## ! Merges basic data (Check, ExecStatus) from another Binder but
                                                     ## ! keeps its result. Used when a binder is replaced by another
                                                     ## ! one, this allows to keep messages
                                                     ## ! Sets fields at initial values
                                                     ## ! Called by AddResult, to keep unicity of each item in the list
type
  HandleTransferBinderOfTransientInteger* = Handle[
      TransferBinderOfTransientInteger]
## ! This type of Binder allows to attach as result, besides a
## ! Transient Object, an Integer Value, which can be an Index
## ! in the Object if it defines a List, for instance
## !
## ! This Binder is otherwise a kind of SimpleBinderOfTransient,
## ! i.e. its basic result (for iterators, etc) is the Transient
type
  TransferBinderOfTransientInteger* {.importcpp: "Transfer_BinderOfTransientInteger", header: "Transfer_BinderOfTransientInteger.hxx",
                                     bycopy.} = object of TransferSimpleBinderOfTransient ##
                                                                                     ## !
                                                                                     ## Creates
                                                                                     ## an
                                                                                     ## empty
                                                                                     ## BinderOfTransientInteger;
                                                                                     ## Default
                                                                                     ## value
                                                                                     ## for
                                                                                     ##
                                                                                     ## !
                                                                                     ## the
                                                                                     ## integer
                                                                                     ## part
                                                                                     ## is
                                                                                     ## zero
type
  TransferDataInfo* {.importcpp: "Transfer_DataInfo",
                     header: "Transfer_DataInfo.hxx", bycopy.} = object ## ! Returns the Type attached to an object
                                                                   ## ! Here, the Dynamic Type of a Transient. Null Type if unknown
type
  HandleTransferDispatchControl* = Handle[TransferDispatchControl]
## ! This is an auxiliary class for TransferDispatch, which allows
## ! to record simple copies, as CopyControl from Interface, but
## ! based on a TransientProcess. Hence, it allows in addition
## ! more actions (such as recording results of adaptations)
type
  TransferDispatchControl* {.importcpp: "Transfer_DispatchControl",
                            header: "Transfer_DispatchControl.hxx", bycopy.} = object of InterfaceCopyControl ##
                                                                                                       ## !
                                                                                                       ## Creates
                                                                                                       ## the
                                                                                                       ## DispatchControl,
                                                                                                       ## ready
                                                                                                       ## for
                                                                                                       ## use
type
  HandleTransferFinder* = Handle[TransferFinder]
## ! a Finder allows to map any kind of object as a Key for a Map.
## ! This works by defining, for a Hash Code, that of the real Key,
## ! not of the Finder which acts only as an intermediate.
## ! When a Map asks for the HashCode of a Finder, this one returns
## ! the code it has determined at creation time
type
  TransferFinder* {.importcpp: "Transfer_Finder", header: "Transfer_Finder.hxx",
                   bycopy.} = object of StandardTransient ## ! Returns the HashCode which has been stored by SetHashCode
                                                     ## ! (remark that HashCode could be deferred then be defined by
                                                     ## ! sub-classes, the result is the same)
                                                     ## ! Stores the HashCode which corresponds to the Value given to
                                                     ## ! create the Mapper
type
  HandleTransferFinderProcess* = Handle[TransferFinderProcess]
## ! Adds specific features to the generic definition :
## ! PrintTrace is adapted
type
  TransferFinderProcess* {.importcpp: "Transfer_FinderProcess",
                          header: "Transfer_FinderProcess.hxx", bycopy.} = object of TransferProcessForFinder ##
                                                                                                       ## !
                                                                                                       ## Sets
                                                                                                       ## FinderProcess
                                                                                                       ## at
                                                                                                       ## initial
                                                                                                       ## state,
                                                                                                       ## with
                                                                                                       ## an
                                                                                                       ## initial
                                                                                                       ## size
type
  TransferFindHasher* {.importcpp: "Transfer_FindHasher",
                       header: "Transfer_FindHasher.hxx", bycopy.} = object ## ! Returns hash code for the given finder, in the range [1,
                                                                       ## theUpperBound].
                                                                       ## ! Asks the finder its hash code, then
                                                                       ## transforms it to be in the required range
                                                                       ## ! @param theFinder the finder which hash code is to be computed
                                                                       ## ! @param
                                                                       ## theUpperBound the upper bound of the range a computing hash code must be within
                                                                       ## ! @return a computed hash code, in the range [1,
                                                                       ## theUpperBound]
type
  TransferHSequenceOfBinder* {.importcpp: "Transfer_HSequenceOfBinder",
                              header: "Transfer_HSequenceOfBinder.hxx", bycopy.} = object of TransferSequenceOfBinder
type
  TransferHSequenceOfFinder* {.importcpp: "Transfer_HSequenceOfFinder",
                              header: "Transfer_HSequenceOfFinder.hxx", bycopy.} = object of TransferSequenceOfFinder
type
  TransferIteratorOfProcessForFinder* {.importcpp: "Transfer_IteratorOfProcessForFinder", header: "Transfer_IteratorOfProcessForFinder.hxx",
                                       bycopy.} = object of TransferTransferIterator ##
                                                                                ## !
                                                                                ## Creates
                                                                                ## an
                                                                                ## empty
                                                                                ## Iterator
                                                                                ##
                                                                                ## !
                                                                                ## if
                                                                                ## withstarts
                                                                                ## is
                                                                                ## True,
                                                                                ## each
                                                                                ## Binder
                                                                                ## to
                                                                                ## be
                                                                                ## iterated
                                                                                ## will
                                                                                ##
                                                                                ## !
                                                                                ## be
                                                                                ## associated
                                                                                ## to
                                                                                ## its
                                                                                ## corresponding
                                                                                ## Starting
                                                                                ## Object
type
  TransferIteratorOfProcessForTransient* {.
      importcpp: "Transfer_IteratorOfProcessForTransient",
      header: "Transfer_IteratorOfProcessForTransient.hxx", bycopy.} = object of TransferTransferIterator ##
                                                                                                   ## !
                                                                                                   ## Creates
                                                                                                   ## an
                                                                                                   ## empty
                                                                                                   ## Iterator
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## if
                                                                                                   ## withstarts
                                                                                                   ## is
                                                                                                   ## True,
                                                                                                   ## each
                                                                                                   ## Binder
                                                                                                   ## to
                                                                                                   ## be
                                                                                                   ## iterated
                                                                                                   ## will
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## be
                                                                                                   ## associated
                                                                                                   ## to
                                                                                                   ## its
                                                                                                   ## corresponding
                                                                                                   ## Starting
                                                                                                   ## Object
type
  HandleTransferMapContainer* = Handle[TransferMapContainer]
  TransferMapContainer* {.importcpp: "Transfer_MapContainer",
                         header: "Transfer_MapContainer.hxx", bycopy.} = object of StandardTransient
type
  HandleTransferMultipleBinder* = Handle[TransferMultipleBinder]
## ! Allows direct binding between a starting Object and the Result
## ! of its transfer, when it can be made of several Transient
## ! Objects. Compared to a Transcriptor, it has no Transfer Action
## !
## ! Result is a list of Transient Results. Unique Result is not
## ! available : SetResult is redefined to start the list on the
## ! first call, and refuse the other times.
## !
## ! rr
## !
## ! Remark : MultipleBinder itself is intended to be created and
## ! filled by TransferProcess itself (method Bind). In particular,
## ! conflicts between Unique (Standard) result and Multiple result
## ! are avoided through management made by TransferProcess.
## !
## ! Also, a Transcriptor (with an effective Transfer Method) which
## ! can produce a Multiple Result, may be defined as a sub-class
## ! of MultipleBinder by redefining method Transfer.
type
  TransferMultipleBinder* {.importcpp: "Transfer_MultipleBinder",
                           header: "Transfer_MultipleBinder.hxx", bycopy.} = object of TransferBinder ##
                                                                                               ## !
                                                                                               ## normal
                                                                                               ## standard
                                                                                               ## constructor,
                                                                                               ## creates
                                                                                               ## an
                                                                                               ## empty
                                                                                               ## MultipleBinder
type
  HandleTransferProcessForFinder* = Handle[TransferProcessForFinder]
  TransferProcessForFinder* {.importcpp: "Transfer_ProcessForFinder",
                             header: "Transfer_ProcessForFinder.hxx", bycopy.} = object of StandardTransient ##
                                                                                                      ## !
                                                                                                      ## Sets
                                                                                                      ## TransferProcess
                                                                                                      ## at
                                                                                                      ## initial
                                                                                                      ## state.
                                                                                                      ## Gives
                                                                                                      ## an
                                                                                                      ## Initial
                                                                                                      ## size
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## (indicative)
                                                                                                      ## for
                                                                                                      ## the
                                                                                                      ## Map
                                                                                                      ## when
                                                                                                      ## known
                                                                                                      ## (default
                                                                                                      ## is
                                                                                                      ## 10000).
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Sets
                                                                                                      ## default
                                                                                                      ## trace
                                                                                                      ## file
                                                                                                      ## as
                                                                                                      ## a
                                                                                                      ## printer
                                                                                                      ## and
                                                                                                      ## default
                                                                                                      ## trace
                                                                                                      ## level
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## (see
                                                                                                      ## Message_TraceFile).
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Same
                                                                                                      ## as
                                                                                                      ## Find
                                                                                                      ## but
                                                                                                      ## stores
                                                                                                      ## the
                                                                                                      ## last
                                                                                                      ## access
                                                                                                      ## to
                                                                                                      ## the
                                                                                                      ## map,
                                                                                                      ## for
                                                                                                      ## a
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## faster
                                                                                                      ## access
                                                                                                      ## on
                                                                                                      ## next
                                                                                                      ## calls
                                                                                                      ## (as
                                                                                                      ## Bind
                                                                                                      ## does
                                                                                                      ## too)
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Considers
                                                                                                      ## a
                                                                                                      ## category
                                                                                                      ## number,
                                                                                                      ## by
                                                                                                      ## default
                                                                                                      ## 0
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## C++
                                                                                                      ## :
                                                                                                      ## return
                                                                                                      ## const
                                                                                                      ## &
type
  HandleTransferProcessForTransient* = Handle[TransferProcessForTransient]
## ! Manages Transfer of Transient Objects. Produces also
## ! ActorOfTransientProcess       (deferred class),
## ! IteratorOfTransientProcess    (for Results),
## ! TransferMapOfTransientProcess (internally used)
## ! Normally uses as TransientProcess, which adds some specifics
type
  TransferProcessForTransient* {.importcpp: "Transfer_ProcessForTransient",
                                header: "Transfer_ProcessForTransient.hxx", bycopy.} = object of StandardTransient ##
                                                                                                            ## !
                                                                                                            ## Sets
                                                                                                            ## TransferProcess
                                                                                                            ## at
                                                                                                            ## initial
                                                                                                            ## state.
                                                                                                            ## Gives
                                                                                                            ## an
                                                                                                            ## Initial
                                                                                                            ## size
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## (indicative)
                                                                                                            ## for
                                                                                                            ## the
                                                                                                            ## Map
                                                                                                            ## when
                                                                                                            ## known
                                                                                                            ## (default
                                                                                                            ## is
                                                                                                            ## 10000).
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## Sets
                                                                                                            ## default
                                                                                                            ## trace
                                                                                                            ## file
                                                                                                            ## as
                                                                                                            ## a
                                                                                                            ## printer
                                                                                                            ## and
                                                                                                            ## default
                                                                                                            ## trace
                                                                                                            ## level
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## (see
                                                                                                            ## Message_TraceFile).
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## Same
                                                                                                            ## as
                                                                                                            ## Find
                                                                                                            ## but
                                                                                                            ## stores
                                                                                                            ## the
                                                                                                            ## last
                                                                                                            ## access
                                                                                                            ## to
                                                                                                            ## the
                                                                                                            ## map,
                                                                                                            ## for
                                                                                                            ## a
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## faster
                                                                                                            ## access
                                                                                                            ## on
                                                                                                            ## next
                                                                                                            ## calls
                                                                                                            ## (as
                                                                                                            ## Bind
                                                                                                            ## does
                                                                                                            ## too)
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## Considers
                                                                                                            ## a
                                                                                                            ## category
                                                                                                            ## number,
                                                                                                            ## by
                                                                                                            ## default
                                                                                                            ## 0
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## C++
                                                                                                            ## :
                                                                                                            ## return
                                                                                                            ## const
                                                                                                            ## &
type
  HandleTransferResultFromModel* = Handle[TransferResultFromModel]
## ! ResultFromModel is used to store a final result stored in a
## ! TransientProcess, respectfully to its structuration in scopes
## ! by using a set of ResultFromTransient
## ! Hence, it can be regarded as a passive equivalent of the
## ! stored data in the TransientProcess, while an Iterator gives
## ! a flat view of it.
## !
## ! A ResultFromModel is intended to be attached to the transfer
## ! of one entity (typically root entity but it is not mandatory)
## !
## ! It is then possible to :
## ! - Create and fill a ResultFromModel from a TransientProcess,
## ! by designating a starting entity
## ! - Fill back the TransientProcess from a ResultFromModel, as it
## ! were filled by the operation which filled it the first time
type
  TransferResultFromModel* {.importcpp: "Transfer_ResultFromModel",
                            header: "Transfer_ResultFromModel.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## Creates
                                                                                                    ## a
                                                                                                    ## ResultFromModel,
                                                                                                    ## empty
type
  HandleTransferResultFromTransient* = Handle[TransferResultFromTransient]
## ! This class, in conjunction with ResultFromModel, allows to
## ! record the result of a transfer initially stored in a
## ! TransientProcess.
## !
## ! A ResultFromTransient records a couple (Transient,Binder for
## ! the result and checks) plus a list of "sub-results", which
## ! have been recorded in the TrabsientProcess, under scope
## ! attached to the starting transient.
type
  TransferResultFromTransient* {.importcpp: "Transfer_ResultFromTransient",
                                header: "Transfer_ResultFromTransient.hxx", bycopy.} = object of StandardTransient ##
                                                                                                            ## !
                                                                                                            ## Creates
                                                                                                            ## a
                                                                                                            ## ResultFromTransient,
                                                                                                            ## empty
type
  HandleTransferSimpleBinderOfTransient* = Handle[TransferSimpleBinderOfTransient]
## ! An adapted instantiation of SimpleBinder for Transient Result,
## ! i.e. ResultType can be computed from the Result itself,
## ! instead of being static
type
  TransferSimpleBinderOfTransient* {.importcpp: "Transfer_SimpleBinderOfTransient", header: "Transfer_SimpleBinderOfTransient.hxx",
                                    bycopy.} = object of TransferBinder ## ! Creates an empty
                                                                   ## SimpleBinderOfTransient
                                                                   ## ! Returns True if a starting object is bound with SEVERAL
                                                                   ## ! results : Here, returns allways False
                                                                   ## ! See Binder itself
type
  TransferTransferDispatch* {.importcpp: "Transfer_TransferDispatch",
                             header: "Transfer_TransferDispatch.hxx", bycopy.} = object of InterfaceCopyTool ##
                                                                                                      ## !
                                                                                                      ## Creates
                                                                                                      ## a
                                                                                                      ## TransferDispatch
                                                                                                      ## from
                                                                                                      ## a
                                                                                                      ## Model.
                                                                                                      ## Works
                                                                                                      ## with
                                                                                                      ## a
                                                                                                      ## General
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Service
                                                                                                      ## Library,
                                                                                                      ## given
                                                                                                      ## as
                                                                                                      ## an
                                                                                                      ## Argument
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## A
                                                                                                      ## TransferDispatch
                                                                                                      ## is
                                                                                                      ## created
                                                                                                      ## as
                                                                                                      ## a
                                                                                                      ## CopyTool
                                                                                                      ## in
                                                                                                      ## which
                                                                                                      ## the
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Control
                                                                                                      ## is
                                                                                                      ## set
                                                                                                      ## to
                                                                                                      ## TransientProcess
type
  TransferTransferInput* {.importcpp: "Transfer_TransferInput",
                          header: "Transfer_TransferInput.hxx", bycopy.} = object ## !
                                                                             ## Creates a
                                                                             ## TransferInput
                                                                             ## ready to use
type
  TransferTransferIterator* {.importcpp: "Transfer_TransferIterator",
                             header: "Transfer_TransferIterator.hxx", bycopy.} = object of RootObj ##
                                                                                   ## !
                                                                                   ## Creates
                                                                                   ## an
                                                                                   ## empty
                                                                                   ## Iterator
type
  TransferTransferOutput* {.importcpp: "Transfer_TransferOutput",
                           header: "Transfer_TransferOutput.hxx", bycopy.} = object ## !
                                                                               ## Creates a
                                                                               ## TransferOutput
                                                                               ## ready
                                                                               ## to
                                                                               ## use,
                                                                               ## with a
                                                                               ## TransientProcess
type
  HandleTransferTransientListBinder* = Handle[TransferTransientListBinder]
## ! This binder binds several (a list of) Transients with a starting
## ! entity, when this entity itself corresponds to a simple list
## ! of Transients. Each part is not seen as a sub-result of an
## ! independant componant, but as an item of a built-in list
type
  TransferTransientListBinder* {.importcpp: "Transfer_TransientListBinder",
                                header: "Transfer_TransientListBinder.hxx", bycopy.} = object of TransferBinder
type
  HandleTransferTransientMapper* = Handle[TransferTransientMapper]
  TransferTransientMapper* {.importcpp: "Transfer_TransientMapper",
                            header: "Transfer_TransientMapper.hxx", bycopy.} = object of TransferFinder ##
                                                                                                 ## !
                                                                                                 ## Creates
                                                                                                 ## a
                                                                                                 ## Mapper
                                                                                                 ## with
                                                                                                 ## a
                                                                                                 ## Value.
                                                                                                 ## This
                                                                                                 ## Value
                                                                                                 ## can
                                                                                                 ## then
                                                                                                 ## not
                                                                                                 ## be
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## changed.
                                                                                                 ## It
                                                                                                 ## is
                                                                                                 ## used
                                                                                                 ## by
                                                                                                 ## the
                                                                                                 ## Hasher
                                                                                                 ## to
                                                                                                 ## compute
                                                                                                 ## the
                                                                                                 ## HashCode,
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## which
                                                                                                 ## will
                                                                                                 ## then
                                                                                                 ## be
                                                                                                 ## stored
                                                                                                 ## for
                                                                                                 ## an
                                                                                                 ## immediate
                                                                                                 ## reading.
type
  HandleTransferTransientProcess* = Handle[TransferTransientProcess]
## ! Adds specific features to the generic definition :
## ! TransientProcess is intended to work from an InterfaceModel
## ! to a set of application objects.
## !
## ! Hence, some informations about starting entities can be gotten
## ! from the model : for Trace, CheckList, Integrity Status
type
  TransferTransientProcess* {.importcpp: "Transfer_TransientProcess",
                             header: "Transfer_TransientProcess.hxx", bycopy.} = object of TransferProcessForTransient ##
                                                                                                                ## !
                                                                                                                ## Sets
                                                                                                                ## TransientProcess
                                                                                                                ## at
                                                                                                                ## initial
                                                                                                                ## state,
                                                                                                                ## with
                                                                                                                ## an
                                                                                                                ## initial
                                                                                                                ## size
type
  HandleTransferVoidBinder* = Handle[TransferVoidBinder]
## ! a VoidBinder is used to bind a starting item with a status,
## ! error or warning messages, but no result
## ! It is interpreted by TransferProcess, which admits a
## ! VoidBinder to be over-written, and copies its check to the
## ! new Binder
type
  TransferVoidBinder* {.importcpp: "Transfer_VoidBinder",
                       header: "Transfer_VoidBinder.hxx", bycopy.} = object of TransferBinder ##
                                                                                       ## !
                                                                                       ## a
                                                                                       ## VoidBinder
                                                                                       ## is
                                                                                       ## not
                                                                                       ## Multiple
                                                                                       ## (Remark
                                                                                       ## :
                                                                                       ## it
                                                                                       ## is
                                                                                       ## not
                                                                                       ## Simple
                                                                                       ## too)
                                                                                       ##
                                                                                       ## !
                                                                                       ## But
                                                                                       ## it
                                                                                       ## can
                                                                                       ## bring
                                                                                       ## next
                                                                                       ## results
                                                                                       ## ...
