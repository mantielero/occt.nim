import ../../tkernel/ncollection/ncollection_types

type
  InterfaceArray1OfFileParameter* = NCollectionArray1[InterfaceFileParameter]
type
  InterfaceArray1OfHAsciiString* = NCollectionArray1[
      Handle[TCollectionHAsciiString]]
type
  InterfaceBitMap* {.importcpp: "Interface_BitMap", header: "Interface_BitMap.hxx",
                    bycopy.} = object ## ! Creates a empty BitMap
type
  InterfaceCategory* {.importcpp: "Interface_Category",
                      header: "Interface_Category.hxx", bycopy.} = object ## ! Creates a Category, with no protocol yet
type
  HandleInterfaceCheck* = Handle[InterfaceCheck]
## ! Defines a Check, as a list of Fail or Warning Messages under
## ! a literal form, which can be empty. A Check can also bring an
## ! Entity, which is the Entity to which the messages apply
## ! (this Entity may be any Transient Object).
## !
## ! Messages can be stored in two forms : the definitive form
## ! (the only one by default), and another form, the original
## ! form, which can be different if it contains values to be
## ! inserted (integers, reals, strings)
## ! The original form can be more suitable for some operations
## ! such as counting messages
type
  InterfaceCheck* {.importcpp: "Interface_Check", header: "Interface_Check.hxx",
                   bycopy.} = object of StandardTransient ## ! Allows definition of a Sequence. Used also for Global Check
                                                     ## ! of an InterfaceModel (which stores global messages for file)
type
  InterfaceCheckIterator* {.importcpp: "Interface_CheckIterator",
                           header: "Interface_CheckIterator.hxx", bycopy.} = object ## !
                                                                               ## Creates
                                                                               ## an
                                                                               ## empty
                                                                               ## CheckIterator
type
  InterfaceCheckStatus* {.size: sizeof(cint), importcpp: "Interface_CheckStatus",
                         header: "Interface_CheckStatus.hxx".} = enum
    InterfaceCheckOK, InterfaceCheckWarning, InterfaceCheckFail, InterfaceCheckAny,
    InterfaceCheckMessage, InterfaceCheckNoFail
type
  InterfaceCheckTool* {.importcpp: "Interface_CheckTool",
                       header: "Interface_CheckTool.hxx", bycopy.} = object ## ! Creates a
                                                                       ## CheckTool, by calling the General Service Library
                                                                       ## ! and Modules, selected through a Protocol, to work on a Model
                                                                       ## ! Moreover, Protocol
                                                                       ## recognizes Unknown Entities
type
  HandleInterfaceCopyControl* = Handle[InterfaceCopyControl]
## ! This deferred class describes the services required by
## ! CopyTool to work. They are very simple and correspond
## ! basically to the management of an indexed map.
## ! But they can be provided by various classes which can
## ! control a Transfer. Each Starting Entity have at most
## ! one Result (Mapping one-one)
type
  InterfaceCopyControl* {.importcpp: "Interface_CopyControl",
                         header: "Interface_CopyControl.hxx", bycopy.} = object of StandardTransient ##
                                                                                              ## !
                                                                                              ## Clears
                                                                                              ## List
                                                                                              ## of
                                                                                              ## Copy
                                                                                              ## Results.
                                                                                              ## Gets
                                                                                              ## Ready
                                                                                              ## to
                                                                                              ## begin
                                                                                              ## another
                                                                                              ## Copy
                                                                                              ##
                                                                                              ## !
                                                                                              ## Process.
type
  HandleInterfaceCopyMap* = Handle[InterfaceCopyMap]
## ! Manages a Map for the need of single Transfers, such as Copies
## ! In such transfer, Starting Entities are read from a unique
## ! Starting Model, and each transferred Entity is bound to one
## ! and only one Result, which cannot be changed later.
type
  InterfaceCopyMap* {.importcpp: "Interface_CopyMap",
                     header: "Interface_CopyMap.hxx", bycopy.} = object of InterfaceCopyControl ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## a
                                                                                         ## CopyMap
                                                                                         ## adapted
                                                                                         ## to
                                                                                         ## work
                                                                                         ## from
                                                                                         ## a
                                                                                         ## Model
type
  InterfaceCopyTool* {.importcpp: "Interface_CopyTool",
                      header: "Interface_CopyTool.hxx", bycopy.} = object of RootObj ## ! Creates a CopyTool adapted to work from a Model. Works
                                                                     ## ! with a General Service Library, given as an argument
                                                                     ## ! Creates a new void instance (just created) of the same class
                                                                     ## ! as <entfrom>. Uses the general service
                                                                     ## GeneralModule:NewVoid
                                                                     ## ! Returns True if OK (Recognize has succeeded), False else
                                                                     ## ! (in such a case, the standard method ShallowCopy is called
                                                                     ## ! to produce <ento> from <entfrom> : hence it is not void)
                                                                     ## !
                                                                     ## ! No mapping is managed by this method
                                                                     ## ! Renews the Implied References of one already Copied Entity
type
  InterfaceDataState* {.size: sizeof(cint), importcpp: "Interface_DataState",
                       header: "Interface_DataState.hxx".} = enum
    InterfaceStateOK, InterfaceLoadWarning, InterfaceLoadFail,
    InterfaceDataWarning, InterfaceDataFail, InterfaceStateUnloaded,
    InterfaceStateUnknown
type
  HandleInterfaceEntityCluster* = Handle[InterfaceEntityCluster]
## ! Auxiliary class for EntityList. An EntityList designates an
## ! EntityCluster, which brings itself an fixed maximum count of
## ! Entities. If it is full, it gives access to another cluster
## ! ("Next"). This class is intended to give a good compromise
## ! between access time (faster than a Sequence, good for little
## ! count) and memory use (better than a Sequence in any case,
## ! overall for little count, better than an Array for a very
## ! little count. It is designed for a light management.
## ! Remark that a new Item may not be Null, because this is the
## ! criterium used for "End of List"
type
  InterfaceEntityCluster* {.importcpp: "Interface_EntityCluster",
                           header: "Interface_EntityCluster.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## an
                                                                                                  ## empty,
                                                                                                  ## non-chained,
                                                                                                  ## EntityCluster
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## True
                                                                                                  ## if
                                                                                                  ## all
                                                                                                  ## the
                                                                                                  ## set
                                                                                                  ## of
                                                                                                  ## entities
                                                                                                  ## local
                                                                                                  ## to
                                                                                                  ## a
                                                                                                  ## Cluster
                                                                                                  ## is
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## full.
                                                                                                  ## Used
                                                                                                  ## by
                                                                                                  ## EntityList.
type
  InterfaceEntityIterator* {.importcpp: "Interface_EntityIterator",
                            header: "Interface_EntityIterator.hxx", bycopy.} = object of RootObj ##
                                                                                 ## !
                                                                                 ## Defines
                                                                                 ## an
                                                                                 ## empty
                                                                                 ## iterator
                                                                                 ## (see
                                                                                 ## AddList
                                                                                 ## &
                                                                                 ## AddItem)
                                                                                 ##
                                                                                 ## !
                                                                                 ## Allows
                                                                                 ## subclasses
                                                                                 ## of
                                                                                 ## EntityIterator
                                                                                 ## to
                                                                                 ## reevaluate
                                                                                 ## an
                                                                                 ## iteration
type
  InterfaceEntityList* {.importcpp: "Interface_EntityList",
                        header: "Interface_EntityList.hxx", bycopy.} = object ## ! Creates a List as beeing empty
type
  InterfaceFileParameter* {.importcpp: "Interface_FileParameter",
                           header: "Interface_FileParameter.hxx", bycopy.} = object
type
  HandleInterfaceFileReaderData* = Handle[InterfaceFileReaderData]
## ! This class defines services which permit to access Data issued
## ! from a File, in a form which does not depend of physical
## ! format : thus, each Record has an attached ParamList (to be
## ! managed) and resulting Entity.
## !
## ! Each Interface defines its own FileReaderData : on one hand by
## ! defining deferred methods given here, on the other hand by
## ! describing literal data and their accesses, with the help of
## ! basic classes such as String, Array1OfString, etc...
## !
## ! FileReaderData is used by a FileReaderTool, which is also
## ! specific of each Norm, to read an InterfaceModel of the Norm
## ! FileReaderData inherits TShared to be accessed by Handle :
## ! this allows FileReaderTool to define more easily the specific
## ! methods, and improves memory management.
type
  InterfaceFileReaderData* {.importcpp: "Interface_FileReaderData",
                            header: "Interface_FileReaderData.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## Returns
                                                                                                    ## the
                                                                                                    ## count
                                                                                                    ## of
                                                                                                    ## registered
                                                                                                    ## records
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## That
                                                                                                    ## is,
                                                                                                    ## value
                                                                                                    ## given
                                                                                                    ## for
                                                                                                    ## Initialization
                                                                                                    ## (can
                                                                                                    ## be
                                                                                                    ## redefined)
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Initializes
                                                                                                    ## arrays
                                                                                                    ## of
                                                                                                    ## Entities
                                                                                                    ## and
                                                                                                    ## of
                                                                                                    ## ParamLists
                                                                                                    ## attached
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## to
                                                                                                    ## registered
                                                                                                    ## records
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## <nbr>
                                                                                                    ## must
                                                                                                    ## be
                                                                                                    ## the
                                                                                                    ## maximum
                                                                                                    ## number
                                                                                                    ## of
                                                                                                    ## records
                                                                                                    ## to
                                                                                                    ## get
                                                                                                    ## (no
                                                                                                    ## way
                                                                                                    ## to
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## extend
                                                                                                    ## it
                                                                                                    ## at
                                                                                                    ## run-time)
                                                                                                    ## :
                                                                                                    ## count
                                                                                                    ## entities
                                                                                                    ## and
                                                                                                    ## sub-entities
                                                                                                    ## ...
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## <npar>
                                                                                                    ## is
                                                                                                    ## the
                                                                                                    ## total
                                                                                                    ## count
                                                                                                    ## of
                                                                                                    ## parameters
                                                                                                    ## (if
                                                                                                    ## it
                                                                                                    ## is
                                                                                                    ## not
                                                                                                    ## exact,
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## it
                                                                                                    ## will
                                                                                                    ## be
                                                                                                    ## extented
                                                                                                    ## as
                                                                                                    ## necessary)
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Hence,
                                                                                                    ## to
                                                                                                    ## each
                                                                                                    ## record
                                                                                                    ## can
                                                                                                    ## be
                                                                                                    ## bound
                                                                                                    ## an
                                                                                                    ## Entity
                                                                                                    ## and
                                                                                                    ## a
                                                                                                    ## list
                                                                                                    ## of
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Parameters.
                                                                                                    ## Each
                                                                                                    ## kind
                                                                                                    ## of
                                                                                                    ## FileReaderData
                                                                                                    ## can
                                                                                                    ## add
                                                                                                    ## other
                                                                                                    ## data,
                                                                                                    ## by
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## having
                                                                                                    ## them
                                                                                                    ## in
                                                                                                    ## parallel
                                                                                                    ## (other
                                                                                                    ## arrays
                                                                                                    ## with
                                                                                                    ## same
                                                                                                    ## sizes)
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Else,
                                                                                                    ## it
                                                                                                    ## must
                                                                                                    ## manage
                                                                                                    ## binding
                                                                                                    ## between
                                                                                                    ## items
                                                                                                    ## and
                                                                                                    ## their
                                                                                                    ## data
type
  InterfaceFileReaderTool* {.importcpp: "Interface_FileReaderTool",
                            header: "Interface_FileReaderTool.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Sets
                                                                                 ## Data
                                                                                 ## to
                                                                                 ## a
                                                                                 ## FileReaderData.
                                                                                 ## Works
                                                                                 ## with
                                                                                 ## a
                                                                                 ## Protocol
                                                                                 ##
                                                                                 ## !
                                                                                 ## Constructor;
                                                                                 ## sets
                                                                                 ## default
                                                                                 ## fields
type
  InterfaceFloatWriter* {.importcpp: "Interface_FloatWriter",
                         header: "Interface_FloatWriter.hxx", bycopy.} = object ## !
                                                                           ## Creates a
                                                                           ## FloatWriter ready to work, with
                                                                           ## default
                                                                           ## options  -
                                                                           ## ! - zero
                                                                           ## suppress
                                                                           ## option is set
                                                                           ## ! - main
                                                                           ## format is set to "%E"
                                                                           ## ! -
                                                                           ## secondary
                                                                           ## format is set to "%f" for
                                                                           ## values
                                                                           ## between 0.1 and
                                                                           ## ! 1000. in
                                                                           ## absolute
                                                                           ## values
                                                                           ## ! If
                                                                           ## <chars> is given (and
                                                                           ## positive), it will
                                                                           ## produce
                                                                           ## options
                                                                           ## ! to
                                                                           ## produce this count of
                                                                           ## characters :
                                                                           ## "%<chars>f","%<chars>%E"
type
  InterfaceGeneralLib* {.importcpp: "Interface_GeneralLib",
                        header: "Interface_GeneralLib.hxx", bycopy.} = object ## ! Adds a couple
                                                                         ## (Module-Protocol) into the global
                                                                         ## definition set
                                                                         ## ! for this class of
                                                                         ## Library.
type
  HandleInterfaceGeneralModule* = Handle[InterfaceGeneralModule]
## ! This class defines general services, which must be provided
## ! for each type of Entity (i.e. of Transient Object processed
## ! by an Interface) : Shared List, Check, Copy, Delete, Category
## !
## ! To optimise processing (e.g. firstly bind an Entity to a Module
## ! then calls  Module), each recognized Entity Type corresponds
## ! to a Case Number, determined by the Protocol each class of
## ! GeneralModule belongs to.
type
  InterfaceGeneralModule* {.importcpp: "Interface_GeneralModule",
                           header: "Interface_GeneralModule.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## Specific
                                                                                                  ## filling
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## list
                                                                                                  ## of
                                                                                                  ## Entities
                                                                                                  ## shared
                                                                                                  ## by
                                                                                                  ## an
                                                                                                  ## Entity
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## <ent>,
                                                                                                  ## according
                                                                                                  ## a
                                                                                                  ## Case
                                                                                                  ## Number
                                                                                                  ## <CN>
                                                                                                  ## (formerly
                                                                                                  ## computed
                                                                                                  ## by
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## CaseNum),
                                                                                                  ## considered
                                                                                                  ## in
                                                                                                  ## the
                                                                                                  ## context
                                                                                                  ## of
                                                                                                  ## a
                                                                                                  ## Model
                                                                                                  ## <model>
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Default
                                                                                                  ## calls
                                                                                                  ## FillSharedCase
                                                                                                  ## (i.e.,
                                                                                                  ## ignores
                                                                                                  ## the
                                                                                                  ## model)
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Can
                                                                                                  ## be
                                                                                                  ## redefined
                                                                                                  ## to
                                                                                                  ## use
                                                                                                  ## the
                                                                                                  ## model
                                                                                                  ## for
                                                                                                  ## working
type
  HandleInterfaceGlobalNodeOfGeneralLib* = Handle[InterfaceGlobalNodeOfGeneralLib]
  InterfaceGlobalNodeOfGeneralLib* {.importcpp: "Interface_GlobalNodeOfGeneralLib", header: "Interface_GlobalNodeOfGeneralLib.hxx",
                                    bycopy.} = object of StandardTransient ## ! Creates an empty
                                                                      ## GlobalNode, with no Next
type
  InterfaceGlobalNodeOfGeneralLibbaseType* = StandardTransient
type
  HandleInterfaceGlobalNodeOfReaderLib* = Handle[InterfaceGlobalNodeOfReaderLib]
  InterfaceGlobalNodeOfReaderLib* {.importcpp: "Interface_GlobalNodeOfReaderLib", header: "Interface_GlobalNodeOfReaderLib.hxx",
                                   bycopy.} = object of StandardTransient ## ! Creates an empty GlobalNode, with no Next
type
  InterfaceGlobalNodeOfReaderLibbaseType* = StandardTransient
type
  InterfaceGraph* {.importcpp: "Interface_Graph", header: "Interface_Graph.hxx",
                   bycopy.} = object ## ! Creates an empty graph, ready to receive Entities from amodel
                                  ## ! Note that this way of Creation allows <me> to verify that
                                  ## ! Entities to work with are contained in <amodel>
                                  ## ! Basic Shared and Sharing lists are obtained from a General
                                  ## ! Services Library, given directly as an argument
                                  ## ! Initialize statuses and flags
                                  ## ! Performs the Evaluation of the Graph, from an initial Library,
                                  ## ! either defined through a Protocol, or given dierctly
                                  ## ! Called by the non-empty Constructors
                                  ## !
                                  ## ! Normally, gtool suffices. But if a Graph is created from a
                                  ## ! GeneralLib directly, it cannot be used
                                  ## ! If <gtool> is defined, it has priority
type
  InterfaceGraphContent* {.importcpp: "Interface_GraphContent",
                          header: "Interface_GraphContent.hxx", bycopy.} = object of InterfaceEntityIterator ##
                                                                                                      ## !
                                                                                                      ## Creates
                                                                                                      ## an
                                                                                                      ## empty
                                                                                                      ## GraphContent,
                                                                                                      ## ready
                                                                                                      ## to
                                                                                                      ## be
                                                                                                      ## filled
type
  HandleInterfaceGTool* = Handle[InterfaceGTool]
## ! GTool - General Tool for a Model
## ! Provides the functions performed by Protocol/GeneralModule for
## ! entities of a Model, and recorded in a GeneralLib
## ! Optimized : once an entity has been queried, the GeneralLib is
## ! not longer queried
## ! Shareable between several users : as a Handle
type
  InterfaceGTool* {.importcpp: "Interface_GTool", header: "Interface_GTool.hxx",
                   bycopy.} = object of StandardTransient ## ! Creates an empty, not set, GTool
type
  InterfaceHArray1OfHAsciiString* {.importcpp: "Interface_HArray1OfHAsciiString", header: "Interface_HArray1OfHAsciiString.hxx",
                                   bycopy.} = object of InterfaceArray1OfHAsciiString
type
  HandleInterfaceHGraph* = Handle[InterfaceHGraph]
## ! This class allows to store a redefinable Graph, via a Handle
## ! (usefull for an Object which can work on several successive
## ! Models, with the same general conditions)
type
  InterfaceHGraph* {.importcpp: "Interface_HGraph", header: "Interface_HGraph.hxx",
                    bycopy.} = object of StandardTransient ## ! Creates an HGraph directly from a Graph.
                                                      ## ! Remark that the starting Graph is duplicated
type
  InterfaceHSequenceOfCheck* {.importcpp: "Interface_HSequenceOfCheck",
                              header: "Interface_HSequenceOfCheck.hxx", bycopy.} = object of InterfaceSequenceOfCheck
type
  HandleInterfaceHSequenceOfCheck* = Handle[InterfaceHSequenceOfCheck]
type
  InterfaceIndexedMapOfAsciiString* = NCollectionIndexedMap[
      TCollectionAsciiString, InterfaceMapAsciiStringHasher]
type
  HandleInterfaceInterfaceModel* = Handle[InterfaceInterfaceModel]
## ! Defines an (Indexed) Set of data corresponding to a complete
## ! Transfer by a File Interface, i.e. File Header and Transient
## ! Entities (Objects) contained in a File. Contained Entities are
## ! identified in the Model by unique and consecutive Numbers.
## !
## ! In addition, a Model can attach to each entity, a specific
## ! Label according to the norm (e.g. Name for VDA, #ident for
## ! Step ...), intended to be output on a string or a stream
## ! (remark : labels are not obliged to be unique)
## !
## ! InterfaceModel itself is not Transient, it is intended to
## ! work on a set of Transient Data. The services offered are
## ! basic Listing and Identification operations on Transient
## ! Entities, storage of Error Reports, Copying.
## !
## ! Moreovere, it is possible to define and use templates. These
## ! are empty Models, from which copies can be obtained in order
## ! to be filled with effective data. This allows to record
## ! standard definitions for headers, avoiding to recreate them
## ! for each sendings, and assuring customisation of produced
## ! files for a given site.
## ! A template is attached to a name. It is possible to define a
## ! template from another one (get it, edit it then record it
## ! under another name).
## !
## ! See also Graph, ShareTool, CheckTool for more
type
  InterfaceInterfaceModel* {.importcpp: "Interface_InterfaceModel",
                            header: "Interface_InterfaceModel.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## Clears
                                                                                                    ## the
                                                                                                    ## list
                                                                                                    ## of
                                                                                                    ## entities
                                                                                                    ## (service
                                                                                                    ## WhenDelete)
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Defines
                                                                                                    ## empty
                                                                                                    ## InterfaceModel,
                                                                                                    ## ready
                                                                                                    ## to
                                                                                                    ## be
                                                                                                    ## filled
type
  InterfaceIntList* {.importcpp: "Interface_IntList",
                     header: "Interface_IntList.hxx", bycopy.} = object ## ! Creates empty IntList.
type
  HandleInterfaceIntVal* = Handle[InterfaceIntVal]
## ! An Integer through a Handle (i.e. managed as TShared)
type
  InterfaceIntVal* {.importcpp: "Interface_IntVal", header: "Interface_IntVal.hxx",
                    bycopy.} = object of StandardTransient
type
  InterfaceLineBuffer* {.importcpp: "Interface_LineBuffer",
                        header: "Interface_LineBuffer.hxx", bycopy.} = object ## ! Creates a
                                                                         ## LineBuffer with an
                                                                         ## absolute maximum size
                                                                         ## !
                                                                         ## (Default value is only to satisfy
                                                                         ## compiler
                                                                         ## requirement)
                                                                         ## !
                                                                         ## Prepares Move : Inserts Initial Blanks if
                                                                         ## required, and
                                                                         ## !
                                                                         ## determines if SetKeep can be
                                                                         ## supported (it cannot be if Length
                                                                         ## ! + Next String to get (see CanGet)
                                                                         ## overpass Max Size)
type
  InterfaceMapAsciiStringHasher* {.importcpp: "Interface_MapAsciiStringHasher",
                                  header: "Interface_MapAsciiStringHasher.hxx",
                                  bycopy.} = object ## ! Computes a hash code for the given ASCII string, in the range [1, theUpperBound]
                                                 ## ! @param theAsciiString the ASCII string which hash code is to be computed
                                                 ## ! @param theUpperBound the upper bound of the range a computing hash code must be within
                                                 ## ! @return a computed hash code, in the range [1, theUpperBound]
#proc hashCode*(theAsciiString: TCollectionAsciiString; theUpperBound: cint): cint {.
#    cdecl, importcpp: "Interface_MapAsciiStringHasher::HashCode(@)",
#    header: "Interface_MapAsciiStringHasher.hxx".}
type
  InterfaceMSG* {.importcpp: "Interface_MSG", header: "Interface_MSG.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## A
                                                                                     ## MSG
                                                                                     ## is
                                                                                     ## created
                                                                                     ## to
                                                                                     ## write
                                                                                     ## a
                                                                                     ## "functional
                                                                                     ## code"
                                                                                     ## in
                                                                                     ## conjunction
                                                                                     ##
                                                                                     ## !
                                                                                     ## with
                                                                                     ## operator
                                                                                     ## ()
                                                                                     ## attached
                                                                                     ## to
                                                                                     ## Value
                                                                                     ##
                                                                                     ## !
                                                                                     ## Then,
                                                                                     ## to
                                                                                     ## have
                                                                                     ## a
                                                                                     ## translated
                                                                                     ## message,
                                                                                     ## write
                                                                                     ## in
                                                                                     ## C++
                                                                                     ## :
                                                                                     ##
                                                                                     ## !
                                                                                     ##
                                                                                     ## !
                                                                                     ## Interface_MSG("...mykey...")
                                                                                     ## which
                                                                                     ## returns
                                                                                     ## a
                                                                                     ## CString
                                                                                     ##
                                                                                     ## !
                                                                                     ## See
                                                                                     ## also
                                                                                     ## some
                                                                                     ## help
                                                                                     ## which
                                                                                     ## follow
type
  HandleInterfaceNodeOfGeneralLib* = Handle[InterfaceNodeOfGeneralLib]
  InterfaceNodeOfGeneralLib* {.importcpp: "Interface_NodeOfGeneralLib",
                              header: "Interface_NodeOfGeneralLib.hxx", bycopy.} = object of StandardTransient ##
                                                                                                        ## !
                                                                                                        ## Creates
                                                                                                        ## an
                                                                                                        ## empty
                                                                                                        ## Node,
                                                                                                        ## with
                                                                                                        ## no
                                                                                                        ## Next
type
  InterfaceNodeOfGeneralLibbaseType* = StandardTransient
type
  HandleInterfaceNodeOfReaderLib* = Handle[InterfaceNodeOfReaderLib]
  InterfaceNodeOfReaderLib* {.importcpp: "Interface_NodeOfReaderLib",
                             header: "Interface_NodeOfReaderLib.hxx", bycopy.} = object of StandardTransient ##
                                                                                                      ## !
                                                                                                      ## Creates
                                                                                                      ## an
                                                                                                      ## empty
                                                                                                      ## Node,
                                                                                                      ## with
                                                                                                      ## no
                                                                                                      ## Next
type
  InterfaceNodeOfReaderLibbaseType* = StandardTransient
type
  HandleInterfaceParamList* = Handle[InterfaceParamList]
  InterfaceParamList* {.importcpp: "Interface_ParamList",
                       header: "Interface_ParamList.hxx", bycopy.} = object of StandardTransient ##
                                                                                          ## !
                                                                                          ## Creates
                                                                                          ## an
                                                                                          ## vector
                                                                                          ## with
                                                                                          ## size
                                                                                          ## of
                                                                                          ## memmory
                                                                                          ## blok
                                                                                          ## equal
                                                                                          ## to
                                                                                          ## theIncrement
type
  HandleInterfaceParamSet* = Handle[InterfaceParamSet]
## ! Defines an ordered set of FileParameters, in a way to be
## ! efficient as in memory requirement or in speed
type
  InterfaceParamSet* {.importcpp: "Interface_ParamSet",
                      header: "Interface_ParamSet.hxx", bycopy.} = object of StandardTransient ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## an
                                                                                        ## empty
                                                                                        ## ParamSet,
                                                                                        ## beginning
                                                                                        ## at
                                                                                        ## number
                                                                                        ## "nst"
                                                                                        ## and
                                                                                        ## of
                                                                                        ##
                                                                                        ## !
                                                                                        ## initial
                                                                                        ## reservation
                                                                                        ## "nres"
                                                                                        ## :
                                                                                        ## the
                                                                                        ## "nres"
                                                                                        ## first
                                                                                        ## parameters
                                                                                        ##
                                                                                        ## !
                                                                                        ## which
                                                                                        ## follow
                                                                                        ## "ndeb"
                                                                                        ## (included)
                                                                                        ## will
                                                                                        ## be
                                                                                        ## put
                                                                                        ## in
                                                                                        ## an
                                                                                        ## Array
                                                                                        ##
                                                                                        ## !
                                                                                        ## (a
                                                                                        ## ParamList).
                                                                                        ## The
                                                                                        ## remainders
                                                                                        ## are
                                                                                        ## set
                                                                                        ## in
                                                                                        ## Next(s)
                                                                                        ## ParamSet(s)
type
  InterfaceParamType* {.size: sizeof(cint), importcpp: "Interface_ParamType",
                       header: "Interface_ParamType.hxx".} = enum
    interfaceParamMisc, interfaceParamInteger, interfaceParamReal,
    interfaceParamIdent, interfaceParamVoid, interfaceParamText,
    interfaceParamEnum, interfaceParamLogical, interfaceParamSub,
    interfaceParamHexa, interfaceParamBinary
type
  HandleInterfaceProtocol* = Handle[InterfaceProtocol]
## ! General description of Interface Protocols. A Protocol defines
## ! a set of Entity types. This class provides also the notion of
## ! Active Protocol, as a working context, defined once then
## ! exploited by various Tools and Libraries.
## !
## ! It also gives control of type definitions. By default, types
## ! are provided by CDL, but specific implementations, or topics
## ! like multi-typing, may involve another way
type
  InterfaceProtocol* {.importcpp: "Interface_Protocol",
                      header: "Interface_Protocol.hxx", bycopy.} = object of StandardTransient ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## the
                                                                                        ## Active
                                                                                        ## Protocol,
                                                                                        ## if
                                                                                        ## defined
                                                                                        ## (else,
                                                                                        ## returns
                                                                                        ## a
                                                                                        ##
                                                                                        ## !
                                                                                        ## Null
                                                                                        ## Handle,
                                                                                        ## which
                                                                                        ## means
                                                                                        ## "no
                                                                                        ## defined
                                                                                        ## active
                                                                                        ## protocol")
type
  InterfaceReaderLib* {.importcpp: "Interface_ReaderLib",
                       header: "Interface_ReaderLib.hxx", bycopy.} = object ## ! Adds a couple
                                                                       ## (Module-Protocol) into the global
                                                                       ## definition set
                                                                       ## ! for this class of Library.
type
  HandleInterfaceReaderModule* = Handle[InterfaceReaderModule]
## ! Defines unitary operations required to read an Entity from a
## ! File (see FileReaderData, FileReaderTool), under control of
## ! a FileReaderTool. The initial creation is performed by a
## ! GeneralModule (set in GeneralLib). Then, which remains is
## ! Loading data from the FileReaderData to the Entity
## !
## ! To work, a GeneralModule has formerly recognized the Type read
## ! from FileReaderData as a positive Case Number, then the
## ! ReaderModule reads it according to this Case Number
type
  InterfaceReaderModule* {.importcpp: "Interface_ReaderModule",
                          header: "Interface_ReaderModule.hxx", bycopy.} = object of StandardTransient ##
                                                                                                ## !
                                                                                                ## Translates
                                                                                                ## the
                                                                                                ## type
                                                                                                ## of
                                                                                                ## record
                                                                                                ## <num>
                                                                                                ## in
                                                                                                ## <data>
                                                                                                ## to
                                                                                                ## a
                                                                                                ## positive
                                                                                                ##
                                                                                                ## !
                                                                                                ## Case
                                                                                                ## Number.
                                                                                                ## If
                                                                                                ## Recognition
                                                                                                ## fails,
                                                                                                ## must
                                                                                                ## return
                                                                                                ## 0
type
  HandleInterfaceReportEntity* = Handle[InterfaceReportEntity]
## ! A ReportEntity is produced to aknowledge and memorize the
## ! binding between a Check and an Entity. The Check can bring
## ! Fails (+ Warnings if any), or only Warnings. If it is empty,
## ! the Report Entity is for an Unknown Entity.
## !
## ! The ReportEntity brings : the Concerned Entity, the
## ! Check, and if the Entity is empty (Fails due to Read
## ! Errors, hence the Entity could not be loaded), a Content.
## ! The Content is itself an Transient Object, but remains in a
## ! literal form : it is an "Unknown Entity". If the Concerned
## ! Entity is itself Unknown, Concerned and Content are equal.
## !
## ! According to the Check, if it brings Fail messages,
## ! the ReportEntity is an "Error Entity", the Concerned Entity is
## ! an "Erroneous Entity". Else it is a "Correction Entity", the
## ! Concerned Entity is a "Corrected Entity". With no Check
## ! message and if Concerened and Content are equal, it reports
## ! for an "Unknown Entity".
## !
## ! Each norm must produce its own type of Unknown Entity, but can
## ! use the class UndefinedContent to brings parameters : it is
## ! enough for most of information and avoids to redefine them,
## ! only the specific part remains to be defined for each norm.
type
  InterfaceReportEntity* {.importcpp: "Interface_ReportEntity",
                          header: "Interface_ReportEntity.hxx", bycopy.} = object of StandardTransient ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## a
                                                                                                ## ReportEntity
                                                                                                ## for
                                                                                                ## an
                                                                                                ## Unknown
                                                                                                ## Entity
                                                                                                ## :
                                                                                                ## Check
                                                                                                ## is
                                                                                                ## empty,
                                                                                                ##
                                                                                                ## !
                                                                                                ## and
                                                                                                ## Concerned
                                                                                                ## equates
                                                                                                ## Content
                                                                                                ## (i.e.
                                                                                                ## the
                                                                                                ## Unknown
                                                                                                ## Entity)
type
  InterfaceSequenceOfCheck* = NCollectionSequence[Handle[InterfaceCheck]]
type
  InterfaceShareFlags* {.importcpp: "Interface_ShareFlags",
                        header: "Interface_ShareFlags.hxx", bycopy.} = object ## ! Creates a
                                                                         ## ShareFlags from a Model and builds
                                                                         ## required data
                                                                         ## ! (flags) by calling the General Service Library given as
                                                                         ## !
                                                                         ## argument <lib>
                                                                         ## !
                                                                         ## Computes flags at
                                                                         ## Creation time
                                                                         ## !
                                                                         ## !
                                                                         ## Normally, gtool
                                                                         ## suffices. But if a Graph is created from a
                                                                         ## !
                                                                         ## GeneralLib
                                                                         ## directly, it cannot be used
                                                                         ## ! If <gtool> is
                                                                         ## defined, it has
                                                                         ## priority
type
  InterfaceShareTool* {.importcpp: "Interface_ShareTool",
                       header: "Interface_ShareTool.hxx", bycopy.} = object ## ! Creates a ShareTool from a Model and builds all required data,
                                                                       ## ! by calling the General Service Library and Modules
                                                                       ## !
                                                                       ## (GeneralLib given as an argument)
type
  HandleInterfaceSignLabel* = Handle[InterfaceSignLabel]
## ! Signature to give the Label from the Model
type
  InterfaceSignLabel* {.importcpp: "Interface_SignLabel",
                       header: "Interface_SignLabel.hxx", bycopy.} = object of RootObj
type
  HandleInterfaceSignType* = Handle[InterfaceSignType]
## ! Provides the basic service to get a type name, according
## ! to a norm
## ! It can be used for other classes (general signatures ...)
type
  InterfaceSignType* {.importcpp: "Interface_SignType",
                      header: "Interface_SignType.hxx", bycopy.} = object of RootObj ##
                                                                                       ## !
                                                                                       ## Returns
                                                                                       ## an
                                                                                       ## identification
                                                                                       ## of
                                                                                       ## the
                                                                                       ## Signature
                                                                                       ## (a
                                                                                       ## word),
                                                                                       ## given
                                                                                       ## at
                                                                                       ##
                                                                                       ## !
                                                                                       ## initialization
                                                                                       ## time
                                                                                       ##
                                                                                       ## !
                                                                                       ## Specialised
                                                                                       ## to
                                                                                       ## consider
                                                                                       ## context
                                                                                       ## as
                                                                                       ## an
                                                                                       ## InterfaceModel
type
  InterfaceSTAT* {.importcpp: "Interface_STAT", header: "Interface_STAT.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## a
                                                                                        ## STAT
                                                                                        ## form.
                                                                                        ## At
                                                                                        ## start,
                                                                                        ## one
                                                                                        ## default
                                                                                        ## phase
                                                                                        ## is
                                                                                        ## defined,
                                                                                        ##
                                                                                        ## !
                                                                                        ## with
                                                                                        ## one
                                                                                        ## default
                                                                                        ## step.
                                                                                        ## Then,
                                                                                        ## it
                                                                                        ## suffises
                                                                                        ## to
                                                                                        ## start
                                                                                        ## with
                                                                                        ## a
                                                                                        ##
                                                                                        ## !
                                                                                        ## count
                                                                                        ## of
                                                                                        ## items
                                                                                        ## (and
                                                                                        ## cycles
                                                                                        ## if
                                                                                        ## several)
                                                                                        ## then
                                                                                        ## record
                                                                                        ## items,
                                                                                        ##
                                                                                        ## !
                                                                                        ## to
                                                                                        ## have
                                                                                        ## a
                                                                                        ## queryable
                                                                                        ## report.
type
  HandleInterfaceStatic* = Handle[InterfaceStatic]
## ! This class gives a way to manage meaningfull static variables,
## ! used as "global" parameters in various procedures.
## !
## ! A Static brings a specification (its type, constraints if any)
## ! and a value. Its basic form is a string, it can be specified
## ! as integer or real or enumerative string, and queried as such.
## ! Its string content, which is a Handle(HAsciiString) can be
## ! shared by other data structures, hence gives a direct on line
## ! access to its value.
## !
## ! All this description is inherited from TypedValue
## !
## ! A Static can be given an initial value, it can be filled from,
## ! either a set of Resources (an applicative feature which
## ! accesses and manages parameter files), or environment or
## ! internal definition : these define families of Static.
## ! In addition, it supports a status for reinitialisation : an
## ! initialisation procedure can ask if the value of the Static
## ! has changed from its last call, in this case does something
## ! then marks the Status "uptodate", else it does nothing.
## !
## ! Statics are named and recorded then accessed in an alphabetic
## ! dictionary
type
  InterfaceStatic* {.importcpp: "Interface_Static", header: "Interface_Static.hxx",
                    bycopy.} = object of InterfaceTypedValue ## ! Creates and records a Static, with a family and a name
                                                        ## ! family can report to a name of ressource or to a system or
                                                        ## ! internal definition. The name must be unique.
                                                        ## !
                                                        ## ! type gives the type of the parameter, default is free text
                                                        ## ! Also available : Integer, Real, Enum, Entity (i.e. Object)
                                                        ## ! More precise specifications, titles, can be given to the
                                                        ## ! Static once created
                                                        ## !
                                                        ## ! init gives an initial value. If it is not given, the Static
                                                        ## ! begin as "not set", its value is empty
type
  InterfaceStaticSatisfies* = proc (val: Handle[TCollectionHAsciiString]): bool {.
      cdecl.}
type
  HandleInterfaceTypedValue* = Handle[InterfaceTypedValue]
## ! Now strictly equivalent to TypedValue from MoniTool,
## ! except for ParamType which remains for compatibility reasons
## !
## ! This class allows to dynamically manage .. typed values, i.e.
## ! values which have an alphanumeric expression, but with
## ! controls. Such as "must be an Integer" or "Enumerative Text"
## ! etc
## !
## ! Hence, a TypedValue brings a specification (type + constraints
## ! if any) and a value. Its basic form is a string, it can be
## ! specified as integer or real or enumerative string, then
## ! queried as such.
## ! Its string content, which is a Handle(HAsciiString) can be
## ! shared by other data structures, hence gives a direct on line
## ! access to its value.
type
  InterfaceTypedValue* {.importcpp: "Interface_TypedValue",
                        header: "Interface_TypedValue.hxx", bycopy.} = object of RootObj ##
                                                                                             ## !
                                                                                             ## Creates
                                                                                             ## a
                                                                                             ## TypedValue,
                                                                                             ## with
                                                                                             ## a
                                                                                             ## name
                                                                                             ##
                                                                                             ## !
                                                                                             ##
                                                                                             ## !
                                                                                             ## type
                                                                                             ## gives
                                                                                             ## the
                                                                                             ## type
                                                                                             ## of
                                                                                             ## the
                                                                                             ## parameter,
                                                                                             ## default
                                                                                             ## is
                                                                                             ## free
                                                                                             ## text
                                                                                             ##
                                                                                             ## !
                                                                                             ## Also
                                                                                             ## available
                                                                                             ## :
                                                                                             ## Integer,
                                                                                             ## Real,
                                                                                             ## Enum,
                                                                                             ## Entity
                                                                                             ## (i.e.
                                                                                             ## Object)
                                                                                             ##
                                                                                             ## !
                                                                                             ## More
                                                                                             ## precise
                                                                                             ## specifications,
                                                                                             ## titles,
                                                                                             ## can
                                                                                             ## be
                                                                                             ## given
                                                                                             ## to
                                                                                             ## the
                                                                                             ##
                                                                                             ## !
                                                                                             ## TypedValue
                                                                                             ## once
                                                                                             ## created
                                                                                             ##
                                                                                             ## !
                                                                                             ##
                                                                                             ## !
                                                                                             ## init
                                                                                             ## gives
                                                                                             ## an
                                                                                             ## initial
                                                                                             ## value.
                                                                                             ## If
                                                                                             ## it
                                                                                             ## is
                                                                                             ## not
                                                                                             ## given,
                                                                                             ## the
                                                                                             ##
                                                                                             ## !
                                                                                             ## TypedValue
                                                                                             ## begins
                                                                                             ## as
                                                                                             ## "not
                                                                                             ## set",
                                                                                             ## its
                                                                                             ## value
                                                                                             ## is
                                                                                             ## empty
type
  HandleInterfaceUndefinedContent* = Handle[InterfaceUndefinedContent]
## ! Defines resources for an "Undefined Entity" : such an Entity
## ! is used to describe an Entity which complies with the Norm,
## ! but of an Unknown Type : hence it is kept under a literal
## ! form (avoiding to loose data). UndefinedContent offers a way
## ! to store a list of Parameters, as literals or references to
## ! other Entities
## !
## ! Each Interface must provide one "UndefinedEntity", which must
## ! have same basic description as all its types of entities :
## ! the best way would be double inheritance : on the Entity Root
## ! of the Norm and on an general "UndefinedEntity"
## !
## ! While it is not possible to do so, the UndefinedEntity of each
## ! Interface can define its own UndefinedEntity by INCLUDING
## ! (in a field) this UndefinedContent
## !
## ! Hence, for that UndefinedEntity, define a Constructor which
## ! creates this UndefinedContent, plus access methods to it
## ! (or to its data, calling methods defined here).
## !
## ! Finally, the Protocols of each norm have to Create and
## ! Recognize Unknown Entities of this norm
type
  InterfaceUndefinedContent* {.importcpp: "Interface_UndefinedContent",
                              header: "Interface_UndefinedContent.hxx", bycopy.} = object of StandardTransient ##
                                                                                                        ## !
                                                                                                        ## Defines
                                                                                                        ## an
                                                                                                        ## empty
                                                                                                        ## UndefinedContent
type
  InterfaceValueInterpret* = proc (typval: Handle[InterfaceTypedValue];
                                val: Handle[TCollectionHAsciiString]; native: bool): Handle[
      TCollectionHAsciiString] {.cdecl.}
type
  InterfaceValueSatisfies* = proc (val: Handle[TCollectionHAsciiString]): bool {.cdecl.}
type
  InterfaceVectorOfFileParameter* = NCollectionVector[InterfaceFileParameter]
