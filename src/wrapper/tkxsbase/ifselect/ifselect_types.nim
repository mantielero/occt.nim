type
  IFSelect* {.importcpp: "IFSelect", header: "IFSelect.hxx", bycopy.} = object ## ! Saves the state of a
                                                                       ## WorkSession from IFSelect, by using a
                                                                       ## !
                                                                       ## SessionFile from IFSelect. Returns True if Done, False in
                                                                       ## ! case of Error on Writing. <file> gives the name of the File
                                                                       ## ! to be produced (this avoids to export the class
                                                                       ## SessionFile).
type
  HandleIFSelectAct* = Handle[IFSelectAct]
## ! Act gives a simple way to define and add functions to be ran
## ! from a SessionPilot, as follows :
## !
## ! Define a function as
## ! static IFSelect_RetStatus myfunc
## ! (const Standard_CString name,
## ! const Handle(IFSelect_SessionPilot)& pilot)
## ! { ... }
## ! When ran, it receives the exact name (string) of the called
## ! function, and the SessionPilot which brings other infos
## !
## ! Add it by
## ! IFSelect_Act::AddFunc (name,help,myfunc);
## ! for a normal function, or
## ! IFSelect_Act::AddFSet (name,help,myfunc);
## ! for a function which is intended to create a control item
## ! name and help are given as CString
## !
## ! Then, it is available for run
type
  IFSelectAct* {.importcpp: "IFSelect_Act", header: "IFSelect_Act.hxx", bycopy.} = object of IFSelectActivator ##
                                                                                                     ## !
                                                                                                     ## Creates
                                                                                                     ## an
                                                                                                     ## Act
                                                                                                     ## with
                                                                                                     ## a
                                                                                                     ## name,
                                                                                                     ## help
                                                                                                     ## and
                                                                                                     ## a
                                                                                                     ## function
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## mode
                                                                                                     ## (Add
                                                                                                     ## or
                                                                                                     ## AddSet)
                                                                                                     ## is
                                                                                                     ## given
                                                                                                     ## when
                                                                                                     ## recording
type
  HandleIFSelectActivator* = Handle[IFSelectActivator]
## ! Defines the general frame for working with a SessionPilot.
## ! Each Activator treats a set of Commands. Commands are given as
## ! alphanumeric strings. They can be of two main forms :
## ! - classic, to list, evaluate, enrich the session (by itself) :
## ! no specific remark, its complete execution must be described
## ! - creation of a new item : instead of creatinf it plus adding
## ! it to the session (which is a classic way), it is possible
## ! to create it and make it recorded by the SessionPilot :
## ! then, the Pilot will add it to the session; this way allows
## ! the Pilot to manage itself named items
## !
## ! In order to make easier the use of Activator, this class
## ! provides a simple way to Select an Actor for a Command :
## ! each sub-class of SectionActor defines the command titles it
## ! recognizes, plus attaches a Number, unique for this sub-class,
## ! to each distinct command title.
## !
## ! Each time an action is required, the corresponding Number
## ! can then be given to help the selection of the action to do.
## !
## ! The result of an Execution must indicate if it is worth to be
## ! recorded or not : see method Do
type
  IFSelectActivator* {.importcpp: "IFSelect_Activator",
                      header: "IFSelect_Activator.hxx", bycopy.} = object of StandardTransient ##
                                                                                        ## !
                                                                                        ## Records,
                                                                                        ## in
                                                                                        ## a
                                                                                        ## Dictionary
                                                                                        ## available
                                                                                        ## for
                                                                                        ## all
                                                                                        ## the
                                                                                        ## Activators,
                                                                                        ##
                                                                                        ## !
                                                                                        ## the
                                                                                        ## command
                                                                                        ## title
                                                                                        ## an
                                                                                        ## Activator
                                                                                        ## can
                                                                                        ## process,
                                                                                        ## attached
                                                                                        ## with
                                                                                        ##
                                                                                        ## !
                                                                                        ## its
                                                                                        ## number,
                                                                                        ## proper
                                                                                        ## for
                                                                                        ## this
                                                                                        ## Activator
                                                                                        ##
                                                                                        ## !
                                                                                        ## <mode>
                                                                                        ## allows
                                                                                        ## to
                                                                                        ## distinguish
                                                                                        ## various
                                                                                        ## execution
                                                                                        ## modes
                                                                                        ##
                                                                                        ## !
                                                                                        ## 0:
                                                                                        ## default
                                                                                        ## mode;
                                                                                        ## 1
                                                                                        ## :
                                                                                        ## for
                                                                                        ## xset
                                                                                        ##
                                                                                        ## !
                                                                                        ## Sets
                                                                                        ## the
                                                                                        ## default
                                                                                        ## values
type
  HandleIFSelectAppliedModifiers* = Handle[IFSelectAppliedModifiers]
## ! This class allows to memorize and access to the modifiers
## ! which are to be applied to a file. To each modifier, is bound
## ! a list of integers (optionnal) : if this list is absent, the
## ! modifier applies to all the file. Else, it applies to the
## ! entities designated by these numbers in the produced file.
## !
## ! To record a modifier, and a possible list of entity numbers
## ! to be applied on :
## ! AddModif (amodifier);
## ! loop on  AddNum (anumber);
## !
## ! To query it,  Count gives the count of recorded modifiers,
## ! then for each one :
## ! Item (numodif, amodifier, entcount);
## ! IsForAll ()  -> can be called, if True, applies on the whole file
## !
## ! for (i = 1; i <= entcount; i ++)
## ! nument = ItemNum (i);  -> return an entity number
type
  IFSelectAppliedModifiers* {.importcpp: "IFSelect_AppliedModifiers",
                             header: "IFSelect_AppliedModifiers.hxx", bycopy.} = object of StandardTransient ##
                                                                                                      ## !
                                                                                                      ## Creates
                                                                                                      ## an
                                                                                                      ## AppliedModifiers,
                                                                                                      ## ready
                                                                                                      ## to
                                                                                                      ## record
                                                                                                      ## up
                                                                                                      ## to
                                                                                                      ## <nbmax>
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## modifiers,
                                                                                                      ## on
                                                                                                      ## a
                                                                                                      ## model
                                                                                                      ## of
                                                                                                      ## <nbent>
                                                                                                      ## entities
type
  HandleIFSelectBasicDumper* = Handle[IFSelectBasicDumper]
## ! BasicDumper takes into account, for SessionFile, all the
## ! classes defined in the package IFSelect : Selections,
## ! Dispatches (there is no Modifier)
type
  IFSelectBasicDumper* {.importcpp: "IFSelect_BasicDumper",
                        header: "IFSelect_BasicDumper.hxx", bycopy.} = object of IFSelectSessionDumper ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## a
                                                                                                ## BasicDumper
                                                                                                ## and
                                                                                                ## puts
                                                                                                ## it
                                                                                                ## into
                                                                                                ## the
                                                                                                ## Library
                                                                                                ## of
                                                                                                ## Dumper
type
  HandleIFSelectCheckCounter* = Handle[IFSelectCheckCounter]
## ! A CheckCounter allows to see a CheckList (i.e. CheckIterator)
## ! not per entity, its messages, but per message, the entities
## ! attached (count and list). Because many messages can be
## ! repeated if they are due to systematic errors
type
  IFSelectCheckCounter* {.importcpp: "IFSelect_CheckCounter",
                         header: "IFSelect_CheckCounter.hxx", bycopy.} = object of IFSelectSignatureList ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## a
                                                                                                  ## CheckCounter,
                                                                                                  ## empty
                                                                                                  ## ready
                                                                                                  ## to
                                                                                                  ## work
type
  IFSelectContextModif* {.importcpp: "IFSelect_ContextModif",
                         header: "IFSelect_ContextModif.hxx", bycopy.} = object ## !
                                                                           ## Prepares a
                                                                           ## ContextModif with these
                                                                           ## informations :
                                                                           ## ! - the graph
                                                                           ## established from
                                                                           ## original model
                                                                           ## (target
                                                                           ## passed
                                                                           ## !
                                                                           ## directly to
                                                                           ## Modifier)
                                                                           ## ! - the
                                                                           ## CopyTool which
                                                                           ## detains the
                                                                           ## CopyControl, which maps
                                                                           ## !
                                                                           ## starting (in
                                                                           ## original) and
                                                                           ## result (in
                                                                           ## target)
                                                                           ## entities
                                                                           ## ! - an
                                                                           ## optional file name (for file
                                                                           ## output)
                                                                           ## !
                                                                           ## ! Such a
                                                                           ## ContextModif is
                                                                           ## considered to be
                                                                           ## applied on all
                                                                           ## !
                                                                           ## transferred
                                                                           ## entities (no
                                                                           ## filter
                                                                           ## active)
type
  IFSelectContextWrite* {.importcpp: "IFSelect_ContextWrite",
                         header: "IFSelect_ContextWrite.hxx", bycopy.} = object ## !
                                                                           ## Prepares a
                                                                           ## ContextWrite with these
                                                                           ## informations :
                                                                           ## ! - the model which is to be
                                                                           ## written
                                                                           ## ! - the
                                                                           ## protocol to be used
                                                                           ## ! - the
                                                                           ## filename
                                                                           ## ! - an
                                                                           ## object
                                                                           ## AppliedModifiers to work. It gives a list of
                                                                           ## !
                                                                           ## FileModifiers to be ran, and for each one it can give
                                                                           ## ! a
                                                                           ## restricted list of
                                                                           ## entities (in the
                                                                           ## model), else all
                                                                           ## ! the model is
                                                                           ## considered
type
  HandleIFSelectDispatch* = Handle[IFSelectDispatch]
## ! This class allows to describe how a set of Entities has to be
## ! dispatched into resulting Packets : a Packet is a sub-set of
## ! the initial set of entities.
## !
## ! Thus, it can generate zero, one, or more Packets according
## ! input set and criterium of dispatching. And it can let apart
## ! some entities : it is the Remainder, which can be recovered
## ! by a specific Selection (RemainderFromDispatch).
## !
## ! Depending of sub-classes, a Dispatch can potentially generate
## ! a limited or not count of packet, and a remainder or none.
## !
## ! The input set is read from a specified Selection, attached to
## ! the Dispatch : the Final Selection of the Dispatch. The input
## ! is the Unique Root Entities list of the Final Selection
type
  IFSelectDispatch* {.importcpp: "IFSelect_Dispatch",
                     header: "IFSelect_Dispatch.hxx", bycopy.} = object of StandardTransient ##
                                                                                      ## !
                                                                                      ## Sets
                                                                                      ## a
                                                                                      ## Root
                                                                                      ## Name
                                                                                      ## as
                                                                                      ## an
                                                                                      ## HAsciiString
                                                                                      ##
                                                                                      ## !
                                                                                      ## To
                                                                                      ## reset
                                                                                      ## it,
                                                                                      ## give
                                                                                      ## a
                                                                                      ## Null
                                                                                      ## Handle
                                                                                      ## (then,
                                                                                      ## a
                                                                                      ## ShareOut
                                                                                      ## will
                                                                                      ## have
                                                                                      ##
                                                                                      ## !
                                                                                      ## to
                                                                                      ## define
                                                                                      ## the
                                                                                      ## Default
                                                                                      ## Root
                                                                                      ## Name)
type
  HandleIFSelectDispGlobal* = Handle[IFSelectDispGlobal]
## ! A DispGlobal gathers all the input Entities into only one
## ! global Packet
type
  IFSelectDispGlobal* {.importcpp: "IFSelect_DispGlobal",
                       header: "IFSelect_DispGlobal.hxx", bycopy.} = object of IFSelectDispatch ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## a
                                                                                         ## DispGlobal
type
  HandleIFSelectDispPerCount* = Handle[IFSelectDispPerCount]
## ! A DispPerCount gathers all the input Entities into one or
## ! several Packets, each containing a defined count of Entity
## ! This count is a Parameter of the DispPerCount, given as an
## ! IntParam, thus allowing external control of its Value
type
  IFSelectDispPerCount* {.importcpp: "IFSelect_DispPerCount",
                         header: "IFSelect_DispPerCount.hxx", bycopy.} = object of IFSelectDispatch ##
                                                                                             ## !
                                                                                             ## Creates
                                                                                             ## a
                                                                                             ## DispPerCount
                                                                                             ## with
                                                                                             ## no
                                                                                             ## Count
                                                                                             ## (default
                                                                                             ## value
                                                                                             ## 1)
type
  HandleIFSelectDispPerFiles* = Handle[IFSelectDispPerFiles]
## ! A DispPerFiles produces a determined count of Packets from the
## ! input Entities. It divides, as equally as possible, the input
## ! list into a count of files. This count is the parameter of the
## ! DispPerFiles. If the input list has less than this count, of
## ! course there will be one packet per input entity.
## ! This count is a Parameter of the DispPerFiles, given as an
## ! IntParam, thus allowing external control of its Value
type
  IFSelectDispPerFiles* {.importcpp: "IFSelect_DispPerFiles",
                         header: "IFSelect_DispPerFiles.hxx", bycopy.} = object of IFSelectDispatch ##
                                                                                             ## !
                                                                                             ## Creates
                                                                                             ## a
                                                                                             ## DispPerFiles
                                                                                             ## with
                                                                                             ## no
                                                                                             ## Count
                                                                                             ## (default
                                                                                             ## value
                                                                                             ## 1
                                                                                             ## file)
type
  HandleIFSelectDispPerOne* = Handle[IFSelectDispPerOne]
## ! A DispPerOne gathers all the input Entities into as many
## ! Packets as there Root Entities from the Final Selection,
## ! that is, one Packet per Entity
type
  IFSelectDispPerOne* {.importcpp: "IFSelect_DispPerOne",
                       header: "IFSelect_DispPerOne.hxx", bycopy.} = object of IFSelectDispatch ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## a
                                                                                         ## DispPerOne
type
  HandleIFSelectDispPerSignature* = Handle[IFSelectDispPerSignature]
## ! A DispPerSignature sorts input Entities according to a
## ! Signature : it works with a SignCounter to do this.
type
  IFSelectDispPerSignature* {.importcpp: "IFSelect_DispPerSignature",
                             header: "IFSelect_DispPerSignature.hxx", bycopy.} = object of IFSelectDispatch ##
                                                                                                     ## !
                                                                                                     ## Creates
                                                                                                     ## a
                                                                                                     ## DispPerSignature
                                                                                                     ## with
                                                                                                     ## no
                                                                                                     ## SignCounter
                                                                                                     ## (by
                                                                                                     ## default,
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## produces
                                                                                                     ## only
                                                                                                     ## one
                                                                                                     ## packet)
type
  HandleIFSelectEditForm* = Handle[IFSelectEditForm]
## ! An EditForm is the way to apply an Editor on an Entity or on
## ! the Model
## ! It gives read-only or read-write access, with or without undo
## !
## ! It can be complete (all the values of the Editor are present)
## ! or partial (a sub-list of these value are present)
## ! Anyway, all references to Number (argument <num>) refer to
## ! Number of Value for the Editor
## ! While references to Rank are for rank in the EditForm, which
## ! may differ if it is not Complete
## ! Two methods give the correspondance between this Number and
## ! the Rank in the EditForm : RankFromNumber and NumberFromRank
type
  IFSelectEditForm* {.importcpp: "IFSelect_EditForm",
                     header: "IFSelect_EditForm.hxx", bycopy.} = object of StandardTransient ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## a
                                                                                      ## complete
                                                                                      ## EditForm
                                                                                      ## from
                                                                                      ## an
                                                                                      ## Editor
                                                                                      ##
                                                                                      ## !
                                                                                      ## A
                                                                                      ## specific
                                                                                      ## Label
                                                                                      ## can
                                                                                      ## be
                                                                                      ## given
type
  HandleIFSelectEditor* = Handle[IFSelectEditor]
## ! An Editor defines a set of values and a way to edit them, on
## ! an entity or on the model (e.g. on its header)
## !
## ! Each Value is controlled by a TypedValue, with a number (it is
## ! an Integer) and a name under two forms (complete and short)
## ! and an edit mode
type
  IFSelectEditor* {.importcpp: "IFSelect_Editor", header: "IFSelect_Editor.hxx",
                   bycopy.} = object of StandardTransient ## ! Sets a Typed Value for a given ident and short name, with an
                                                     ## ! Edit Mode
                                                     ## ! Prepares the list of Typed Values (gives its count)
                                                     ## ! This count can be tuned later, to a LOWER value, this allows
                                                     ## ! to initialize with a "maximum reservation" then cut the extra
type
  IFSelectFunctions* {.importcpp: "IFSelect_Functions",
                      header: "IFSelect_Functions.hxx", bycopy.} = object ## ! Takes the name of an entity, either as argument, or (if <name>
                                                                     ## ! is empty) on keybord, and returns the entity
                                                                     ## ! name can be a label or a number (in
                                                                     ## alphanumeric), it is
                                                                     ## ! searched by
                                                                     ## NumberFromLabel from
                                                                     ## WorkSession.
                                                                     ## ! If <name> doesn't match en entity, a Null Handle is returned
type
  HandleIFSelectGeneralModifier* = Handle[IFSelectGeneralModifier]
## ! This class gives a frame for Actions which modify the effect
## ! of a Dispatch, i.e. :
## ! By Selections and Dispatches, an original Model can be
## ! splitted into one or more "target" Models : these Models
## ! contain Entities copied from the original one (that is, a
## ! part of it). Basically, these dispatched Entities are copied
## ! as identical to their original counterparts. Also the copied
## ! Models reproduce the Header of the original one.
## !
## ! Modifiers allow to change this copied content : this is the
## ! way to be used for any kind of alterations, adaptations ...
## ! They are exploited by a ModelCopier, which firstly performs
## ! the copy operation described by Dispatches, then invokes the
## ! Modifiers to work on the result.
## !
## ! Each GeneralModifier can be attached to :
## ! - all the Models produced
## ! - a Dispatch (it will be applied to all the Models obtained
## ! from this Dispatch) designated by its Ident in a ShareOut
## ! - in addition, to a Selection (facultative) : this adds a
## ! criterium, the Modifier is invoked on a produced Model only
## ! if this Model contains an Entity copied from one of the
## ! Entities designated by this Selection.
## ! (for special Modifiers from IFAdapt, while they must work on
## ! definite Entities, this Selection is mandatory to run)
## !
## ! Remark : this class has no action attached, it only provides
## ! a frame to work on criteria. Then, sub-classes will define
## ! their kind of action, which can be applied at a precise step
## ! of the production of a File : see Modifier, and in the
## ! package IFAdapt, EntityModifier and EntityCopier
type
  IFSelectGeneralModifier* {.importcpp: "IFSelect_GeneralModifier",
                            header: "IFSelect_GeneralModifier.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## Returns
                                                                                                    ## True
                                                                                                    ## if
                                                                                                    ## this
                                                                                                    ## modifier
                                                                                                    ## may
                                                                                                    ## change
                                                                                                    ## the
                                                                                                    ## graph
                                                                                                    ## of
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## dependences
                                                                                                    ## (aknowledged
                                                                                                    ## at
                                                                                                    ## creation
                                                                                                    ## time)
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## Sets
                                                                                                    ## the
                                                                                                    ## Modifier
                                                                                                    ## criteria
                                                                                                    ## to
                                                                                                    ## default
                                                                                                    ## Values
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## (i.e.
                                                                                                    ## "always
                                                                                                    ## applies")
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## <maychangegraph>
                                                                                                    ## must
                                                                                                    ## be
                                                                                                    ## provided
                                                                                                    ## at
                                                                                                    ## creation
                                                                                                    ## time,
                                                                                                    ## to
                                                                                                    ## :
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## -
                                                                                                    ## False
                                                                                                    ## if
                                                                                                    ## this
                                                                                                    ## GeneralModifier
                                                                                                    ## surely
                                                                                                    ## lets
                                                                                                    ## the
                                                                                                    ## graph
                                                                                                    ## of
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## dependencies
                                                                                                    ## unchanged
                                                                                                    ## (NO
                                                                                                    ## edition
                                                                                                    ## of
                                                                                                    ## any
                                                                                                    ## reference,
                                                                                                    ## BUT
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## also
                                                                                                    ## NO
                                                                                                    ## entity
                                                                                                    ## added
                                                                                                    ## or
                                                                                                    ## replaced
                                                                                                    ## or
                                                                                                    ## removed)
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## -
                                                                                                    ## True
                                                                                                    ## if
                                                                                                    ## there
                                                                                                    ## is
                                                                                                    ## a
                                                                                                    ## possibility
                                                                                                    ## of
                                                                                                    ## changing
                                                                                                    ## the
                                                                                                    ## graph
                                                                                                    ## of
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## dependencies
                                                                                                    ## when
                                                                                                    ## this
                                                                                                    ## modifier
                                                                                                    ## is
                                                                                                    ## applied
type
  HandleIFSelectGraphCounter* = Handle[IFSelectGraphCounter]
## ! A GraphCounter computes values to be sorted with the help of
## ! a Graph. I.E. not from a Signature
## !
## ! The default GraphCounter works with an Applied Selection (a
## ! SelectDeduct), the value is the count of selected entities
## ! from each input entities)
type
  IFSelectGraphCounter* {.importcpp: "IFSelect_GraphCounter",
                         header: "IFSelect_GraphCounter.hxx", bycopy.} = object of IFSelectSignCounter ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## a
                                                                                                ## GraphCounter,
                                                                                                ## without
                                                                                                ## applied
                                                                                                ## selection
type
  IFSelectHSeqOfSelection* {.importcpp: "IFSelect_HSeqOfSelection",
                            header: "IFSelect_HSeqOfSelection.hxx", bycopy.} = object of IFSelectTSeqOfSelection
type
  HandleIFSelectIntParam* = Handle[IFSelectIntParam]
## ! This class simply allows to access an Integer value through a
## ! Handle, as a String can be (by using HString).
## ! Hence, this value can be accessed : read and modified, without
## ! passing through the specific object which detains it. Thus,
## ! parameters of a Selection or a Dispatch (according its type)
## ! can be controlled directly from the ShareOut which contains them
## !
## ! Additionnaly, an IntParam can be bound to a Static.
## ! Remember that for a String, binding is immediate, because the
## ! string value of a Static is a HAsciiString, it then suffices
## ! to get its Handle.
## ! For an Integer, an IntParam can designate (by its name) a
## ! Static : each time its value is required or set, the Static
## ! is aknowledged
type
  IFSelectIntParam* {.importcpp: "IFSelect_IntParam",
                     header: "IFSelect_IntParam.hxx", bycopy.} = object of StandardTransient ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## an
                                                                                      ## IntParam.
                                                                                      ## Initial
                                                                                      ## value
                                                                                      ## is
                                                                                      ## set
                                                                                      ## to
                                                                                      ## zer
type
  HandleIFSelectListEditor* = Handle[IFSelectListEditor]
## ! A ListEditor is an auxiliary operator for Editor/EditForm
## ! I.E. it works on parameter values expressed as strings
## !
## ! For a parameter which is a list, it may not be edited in once
## ! by just setting a new value (as a string)
## !
## ! Firstly, a list can be long (and tedious to be accessed flat)
## ! then requires a better way of accessing
## !
## ! Moreover, not only its VALUES may be changed (SetValue), but
## ! also its LENGTH : items may be added or removed ...
## !
## ! Hence, the way of editing a parameter as a list is :
## ! - edit it separately, with the help of a ListEditor
## ! - it remains possible to prepare a new list of values apart
## ! - then give the new list in once to the EditForm
## !
## ! An EditList is produced by the Editor, with a basic definition
## ! This definition (brought by this class) can be redefined
## ! Hence the Editor may produce a specific ListEditor as needed
type
  IFSelectListEditor* {.importcpp: "IFSelect_ListEditor",
                       header: "IFSelect_ListEditor.hxx", bycopy.} = object of StandardTransient ##
                                                                                          ## !
                                                                                          ## Creates
                                                                                          ## a
                                                                                          ## ListEditor
                                                                                          ## with
                                                                                          ## absolutely
                                                                                          ## no
                                                                                          ## constraint
type
  HandleIFSelectModelCopier* = Handle[IFSelectModelCopier]
## ! This class performs the Copy operations involved by the
## ! description of a ShareOut (evaluated by a ShareOutResult)
## ! plus, if there are, the Modifications on the results, with
## ! the help of Modifiers. Each Modifier can work on one or more
## ! resulting packets, accoding its criteria : it operates on a
## ! Model once copied and filled with the content of the packet.
## !
## ! Modifiers can be :
## ! - Model Modifiers, inheriting from the specific class Modifier
## ! able to run on the content of a Model (header or entities),
## ! activated by the ModelCopier itself
## ! - File Modifiers, inheriting directly from GeneralModifier,
## ! intended to be activated under the control of a WorkLibrary,
## ! once the Model has been produced (i.e. to act on output
## ! format, or other specific file features)
## !
## ! The Copy operations can be :
## ! - immediately put to files : for each packet, a Model is
## ! created and filled, then the file is output, at that's all
## ! - memorized : for each packet, a Model is created and filled,
## ! it is memorized with the corresponding file name.
## ! it is possible to query the result of memorization (list of
## ! produced Models and their file names)
## ! -> it is also possible to send it into the files :
## ! once files are written, the result is cleared
## !
## ! In addition, a list of really written files is managed :
## ! A first call to BeginSentFiles clears the list and commands,
## ! either to begin a new list, or to stop recording it. A call
## ! to SentFiles returns the list (if recording has been required)
## ! This list allows to globally exploit the set of produced files
## !
## ! Remark : For operations which concern specific Entities, see
## ! also in package IFAdapt : a sub-class of ModelCopier allows
## ! to work with EntityModifier, in addition to Modifier itself
## ! which still applies to a whole copied Model.
type
  IFSelectModelCopier* {.importcpp: "IFSelect_ModelCopier",
                        header: "IFSelect_ModelCopier.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## an
                                                                                            ## empty
                                                                                            ## ModelCopier
                                                                                            ##
                                                                                            ## !
                                                                                            ## Internal
                                                                                            ## routine
                                                                                            ## which
                                                                                            ## does
                                                                                            ## the
                                                                                            ## effective
                                                                                            ## Copy.
                                                                                            ## It
                                                                                            ## allows
                                                                                            ## to
                                                                                            ##
                                                                                            ## !
                                                                                            ## work,
                                                                                            ## either
                                                                                            ## with
                                                                                            ## a
                                                                                            ## standard
                                                                                            ## CopyTool,
                                                                                            ## or
                                                                                            ## a
                                                                                            ## specialised
                                                                                            ## one
                                                                                            ##
                                                                                            ## !
                                                                                            ## Copying
                                                                                            ## itself
                                                                                            ## is
                                                                                            ## done
                                                                                            ## by
                                                                                            ## <WL>
                                                                                            ## which
                                                                                            ## uses
                                                                                            ## a
                                                                                            ## CopyTool
type
  HandleIFSelectModifEditForm* = Handle[IFSelectModifEditForm]
## ! This modifier applies an EditForm on the entities selected
type
  IFSelectModifEditForm* {.importcpp: "IFSelect_ModifEditForm",
                          header: "IFSelect_ModifEditForm.hxx", bycopy.} = object of IFSelectModifier ##
                                                                                               ## !
                                                                                               ## Creates
                                                                                               ## a
                                                                                               ## ModifEditForm.
                                                                                               ## It
                                                                                               ## may
                                                                                               ## not
                                                                                               ## change
                                                                                               ## the
                                                                                               ## graph
type
  HandleIFSelectModifier* = Handle[IFSelectModifier]
## ! This class gives a frame for Actions which can work globally
## ! on a File once completely defined (i.e. afterwards)
## !
## ! Remark : if no Selection is set as criterium, the Modifier is
## ! set to work and should consider all the content of the Model
## ! produced.
type
  IFSelectModifier* {.importcpp: "IFSelect_Modifier",
                     header: "IFSelect_Modifier.hxx", bycopy.} = object of IFSelectGeneralModifier ##
                                                                                            ## !
                                                                                            ## This
                                                                                            ## deferred
                                                                                            ## method
                                                                                            ## defines
                                                                                            ## the
                                                                                            ## action
                                                                                            ## specific
                                                                                            ## to
                                                                                            ## each
                                                                                            ## class
                                                                                            ##
                                                                                            ## !
                                                                                            ## of
                                                                                            ## Modifier.
                                                                                            ## It
                                                                                            ## is
                                                                                            ## called
                                                                                            ## by
                                                                                            ## a
                                                                                            ## ModelCopier,
                                                                                            ## once
                                                                                            ## the
                                                                                            ## Model
                                                                                            ##
                                                                                            ## !
                                                                                            ## generated
                                                                                            ## and
                                                                                            ## filled.
                                                                                            ## ModelCopier
                                                                                            ## has
                                                                                            ## already
                                                                                            ## checked
                                                                                            ## the
                                                                                            ##
                                                                                            ## !
                                                                                            ## criteria
                                                                                            ## (Dispatch,
                                                                                            ## Model
                                                                                            ## Rank,
                                                                                            ## Selection)
                                                                                            ## before
                                                                                            ## calling
                                                                                            ## it.
                                                                                            ##
                                                                                            ## !
                                                                                            ##
                                                                                            ## !
                                                                                            ## <ctx>
                                                                                            ## detains
                                                                                            ## informations
                                                                                            ## about
                                                                                            ## original
                                                                                            ## data
                                                                                            ## and
                                                                                            ## selection.
                                                                                            ##
                                                                                            ## !
                                                                                            ## The
                                                                                            ## result
                                                                                            ## of
                                                                                            ## copying,
                                                                                            ## on
                                                                                            ## which
                                                                                            ## modifications
                                                                                            ## are
                                                                                            ## to
                                                                                            ## be
                                                                                            ## done,
                                                                                            ##
                                                                                            ## !
                                                                                            ## is
                                                                                            ## <target>.
                                                                                            ##
                                                                                            ## !
                                                                                            ## <TC>
                                                                                            ## allows
                                                                                            ## to
                                                                                            ## run
                                                                                            ## additional
                                                                                            ## copies
                                                                                            ## as
                                                                                            ## required
                                                                                            ##
                                                                                            ## !
                                                                                            ##
                                                                                            ## !
                                                                                            ## In
                                                                                            ## case
                                                                                            ## of
                                                                                            ## Error,
                                                                                            ## use
                                                                                            ## methods
                                                                                            ## CCheck
                                                                                            ## from
                                                                                            ## the
                                                                                            ## ContextModif
                                                                                            ##
                                                                                            ## !
                                                                                            ## to
                                                                                            ## aknowledge
                                                                                            ## an
                                                                                            ## entity
                                                                                            ## Check
                                                                                            ## or
                                                                                            ## a
                                                                                            ## Global
                                                                                            ## Check
                                                                                            ## with
                                                                                            ## messages
                                                                                            ##
                                                                                            ## !
                                                                                            ## Calls
                                                                                            ## inherited
                                                                                            ## Initialize,
                                                                                            ## transmits
                                                                                            ## to
                                                                                            ## it
                                                                                            ## the
                                                                                            ## information
                                                                                            ##
                                                                                            ## !
                                                                                            ## <maychangegraph>
type
  HandleIFSelectModifReorder* = Handle[IFSelectModifReorder]
## ! This modifier reorders a whole model from its roots, i.e.
## ! according to <rootlast> status, it considers each of its
## ! roots, then it orders all its shared entities at any level,
## ! the result begins by the lower level entities ... ends by
## ! the roots.
type
  IFSelectModifReorder* {.importcpp: "IFSelect_ModifReorder",
                         header: "IFSelect_ModifReorder.hxx", bycopy.} = object of IFSelectModifier ##
                                                                                             ## !
                                                                                             ## Creates
                                                                                             ## a
                                                                                             ## ModifReorder.
                                                                                             ## It
                                                                                             ## may
                                                                                             ## change
                                                                                             ## the
                                                                                             ## graph
                                                                                             ## (it
                                                                                             ## does
                                                                                             ## !)
                                                                                             ##
                                                                                             ## !
                                                                                             ## If
                                                                                             ## <rootlast>
                                                                                             ## is
                                                                                             ## True
                                                                                             ## (D),
                                                                                             ## roots
                                                                                             ## are
                                                                                             ## set
                                                                                             ## at
                                                                                             ## the
                                                                                             ## end
                                                                                             ## of
                                                                                             ## packets
                                                                                             ##
                                                                                             ## !
                                                                                             ## Else,
                                                                                             ## they
                                                                                             ## are
                                                                                             ## set
                                                                                             ## at
                                                                                             ## beginning
                                                                                             ## (as
                                                                                             ## done
                                                                                             ## by
                                                                                             ## AddWithRefs)
type
  HandleIFSelectPacketList* = Handle[IFSelectPacketList]
## ! This class gives a simple way to return then consult a
## ! list of packets, determined from the content of a Model,
## ! by various criteria.
## !
## ! It allows to describe several lists with entities from a
## ! given model, possibly more than one list knowing every entity,
## ! and to determine the remaining list (entities in no lists) and
## ! the duplications (with their count).
type
  IFSelectPacketList* {.importcpp: "IFSelect_PacketList",
                       header: "IFSelect_PacketList.hxx", bycopy.} = object of StandardTransient ##
                                                                                          ## !
                                                                                          ## Creates
                                                                                          ## a
                                                                                          ## PackList,
                                                                                          ## empty,
                                                                                          ## ready
                                                                                          ## to
                                                                                          ## receive
                                                                                          ## entities
                                                                                          ## from
                                                                                          ## a
                                                                                          ##
                                                                                          ## !
                                                                                          ## given
                                                                                          ## Model
type
  HandleIFSelectParamEditor* = Handle[IFSelectParamEditor]
## ! A ParamEditor gives access for edition to a list of TypedValue
## ! (i.e. of Static too)
## ! Its definition is made of the TypedValue to edit themselves,
## ! and can add some constants, which can then be displayed but
## ! not changed (for instance, system name, processor version ...)
## !
## ! I.E. it gives a way of editing or at least displaying
## ! parameters as global
type
  IFSelectParamEditor* {.importcpp: "IFSelect_ParamEditor",
                        header: "IFSelect_ParamEditor.hxx", bycopy.} = object of IFSelectEditor ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## a
                                                                                         ## ParamEditor,
                                                                                         ## empty,
                                                                                         ## with
                                                                                         ## a
                                                                                         ## maximum
                                                                                         ## count
                                                                                         ## of
                                                                                         ## params
                                                                                         ##
                                                                                         ## !
                                                                                         ## (default
                                                                                         ## is
                                                                                         ## 100)
                                                                                         ##
                                                                                         ## !
                                                                                         ## And
                                                                                         ## a
                                                                                         ## label,
                                                                                         ## by
                                                                                         ## default
                                                                                         ## it
                                                                                         ## will
                                                                                         ## be
                                                                                         ## "Param
                                                                                         ## Editor"
type
  HandleIFSelectSelectAnyList* = Handle[IFSelectSelectAnyList]
## ! A SelectAnyList kind Selection selects a List of an Entity, as
## ! well as this Entity contains some. A List contains sub-entities
## ! as one per Item, or several (for instance if an Entity binds
## ! couples of sub-entities, each item is one of these couples).
## ! Remark that only Entities are taken into account (neither
## ! Reals, nor Strings, etc...)
## !
## ! To define the list on which to work, SelectAnyList has two
## ! deferred methods : NbItems (which gives the length of the
## ! list), FillResult (which fills an EntityIterator). They are
## ! intended to get a List in an Entity of the required Type (and
## ! consider that list is empty if Entity has not required Type)
## !
## ! In addition, remark that some types of Entity define more than
## ! one list in each instance : a given sub-class of SelectAnyList
## ! must be attached to one list
## !
## ! SelectAnyList keeps or rejects a sub-set of the list,
## ! that is the Items of which rank in the list is in a given
## ! range (for instance form 2nd to 6th, etc...)
## ! Range is defined by two Integer values. In order to allow
## ! external control of them, these values are not directly
## ! defined as fields, but accessed through IntParams, that is,
## ! referenced as Transient (Handle) objects
## !
## ! Warning : the Input can be any kind of Selection, BUT its
## ! RootResult must have zero (empty) or one Entity maximum
type
  IFSelectSelectAnyList* {.importcpp: "IFSelect_SelectAnyList",
                          header: "IFSelect_SelectAnyList.hxx", bycopy.} = object of IFSelectSelectDeduct ##
                                                                                                   ## !
                                                                                                   ## Keeps
                                                                                                   ## Input
                                                                                                   ## Entity,
                                                                                                   ## as
                                                                                                   ## having
                                                                                                   ## required
                                                                                                   ## type.
                                                                                                   ## It
                                                                                                   ## works
                                                                                                   ## by
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## keeping
                                                                                                   ## in
                                                                                                   ## <iter>,
                                                                                                   ## only
                                                                                                   ## suitable
                                                                                                   ## Entities
                                                                                                   ## (SelectType
                                                                                                   ## can
                                                                                                   ## be
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## used).
                                                                                                   ## Called
                                                                                                   ## by
                                                                                                   ## RootResult
                                                                                                   ## (which
                                                                                                   ## waits
                                                                                                   ## for
                                                                                                   ## ONE
                                                                                                   ## ENTITY
                                                                                                   ## MAX)
type
  HandleIFSelectSelectAnyType* = Handle[IFSelectSelectAnyType]
## ! A SelectAnyType sorts the Entities of which the Type is Kind
## ! of a given Type : this Type for Match is specific of each
## ! class of SelectAnyType
type
  IFSelectSelectAnyType* {.importcpp: "IFSelect_SelectAnyType",
                          header: "IFSelect_SelectAnyType.hxx", bycopy.} = object of IFSelectSelectExtract ##
                                                                                                    ## !
                                                                                                    ## Returns
                                                                                                    ## the
                                                                                                    ## Type
                                                                                                    ## which
                                                                                                    ## has
                                                                                                    ## to
                                                                                                    ## be
                                                                                                    ## matched
                                                                                                    ## for
                                                                                                    ## select
type
  HandleIFSelectSelectBase* = Handle[IFSelectSelectBase]
## ! SelectBase works directly from an InterfaceModel : it is the
## ! first base for other Selections.
type
  IFSelectSelectBase* {.importcpp: "IFSelect_SelectBase",
                       header: "IFSelect_SelectBase.hxx", bycopy.} = object of IFSelectSelection ##
                                                                                          ## !
                                                                                          ## Puts
                                                                                          ## in
                                                                                          ## an
                                                                                          ## Iterator
                                                                                          ## the
                                                                                          ## Selections
                                                                                          ## from
                                                                                          ## which
                                                                                          ## "me"
                                                                                          ## depends
                                                                                          ##
                                                                                          ## !
                                                                                          ## This
                                                                                          ## list
                                                                                          ## is
                                                                                          ## empty
                                                                                          ## for
                                                                                          ## all
                                                                                          ## SelectBase
                                                                                          ## type
                                                                                          ## Selections
type
  HandleIFSelectSelectCombine* = Handle[IFSelectSelectCombine]
## ! A SelectCombine type Selection defines algebraic operations
## ! between results of several Selections
## ! It is a deferred class : sub-classes will have to define
## ! precise what operator is to be applied
type
  IFSelectSelectCombine* {.importcpp: "IFSelect_SelectCombine",
                          header: "IFSelect_SelectCombine.hxx", bycopy.} = object of IFSelectSelection ##
                                                                                                ## !
                                                                                                ## Returns
                                                                                                ## the
                                                                                                ## count
                                                                                                ## of
                                                                                                ## Input
                                                                                                ## Selections
                                                                                                ##
                                                                                                ## !
                                                                                                ## Defines
                                                                                                ## an
                                                                                                ## empty
                                                                                                ## SelectCombine
type
  HandleIFSelectSelectControl* = Handle[IFSelectSelectControl]
## ! A SelectControl kind Selection works with two input Selections
## ! in a dissymmetric way : the Main Input which gives an input
## ! list of Entities, to be processed, and the Second Input which
## ! gives another list, to be used to filter the main input.
## !
## ! e.g. : SelectDiff retains the items of the Main Input which
## ! are not in the Control Input (which acts as Diff Input)
## ! or a specific selection which retains Entities from the Main
## ! Input if and only if they are concerned by an entity from
## ! the Control Input (such as Views in IGES, etc...)
## !
## ! The way RootResult and Label are produced are at charge of
## ! each sub-class
type
  IFSelectSelectControl* {.importcpp: "IFSelect_SelectControl",
                          header: "IFSelect_SelectControl.hxx", bycopy.} = object of IFSelectSelection ##
                                                                                                ## !
                                                                                                ## Returns
                                                                                                ## the
                                                                                                ## Main
                                                                                                ## Input
                                                                                                ## Selection
type
  HandleIFSelectSelectDeduct* = Handle[IFSelectSelectDeduct]
## ! A SelectDeduct determines a list of Entities from an Input
## ! Selection, by a computation : Output list is not obliged to be
## ! a sub-list of Input list
## ! (for more specific, see SelectExtract for filtered sub-lists,
## ! and SelectExplore for recurcive exploration)
## !
## ! A SelectDeduct may use an alternate input for one shot
## ! This allows to use an already existing definition, by
## ! overloading the input selection by an alternate list,
## ! already defined, for one use :
## ! If this alternate list is set, InputResult queries it instead
## ! of calling the input selection, then clears it immediately
type
  IFSelectSelectDeduct* {.importcpp: "IFSelect_SelectDeduct",
                         header: "IFSelect_SelectDeduct.hxx", bycopy.} = object of IFSelectSelection ##
                                                                                              ## !
                                                                                              ## Defines
                                                                                              ## or
                                                                                              ## Changes
                                                                                              ## the
                                                                                              ## Input
                                                                                              ## Selection
type
  HandleIFSelectSelectDiff* = Handle[IFSelectSelectDiff]
## ! A SelectDiff keeps the entities from a Selection, the Main
## ! Input, which are not listed by the Second Input
type
  IFSelectSelectDiff* {.importcpp: "IFSelect_SelectDiff",
                       header: "IFSelect_SelectDiff.hxx", bycopy.} = object of IFSelectSelectControl ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## an
                                                                                              ## empty
                                                                                              ## SelectDiff
                                                                                              ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## always
                                                                                              ## True,
                                                                                              ## because
                                                                                              ## RootResult
                                                                                              ## gives
                                                                                              ## a
                                                                                              ## Unique
                                                                                              ## list
type
  HandleIFSelectSelectEntityNumber* = Handle[IFSelectSelectEntityNumber]
## ! A SelectEntityNumber gets in an InterfaceModel (through a
## ! Graph), the Entity which has a specified Number (its rank of
## ! adding into the Model) : there can be zero (if none) or one.
## ! The Number is not directly defined as an Integer, but as a
## ! Parameter, which can be externally controled
type
  IFSelectSelectEntityNumber* {.importcpp: "IFSelect_SelectEntityNumber",
                               header: "IFSelect_SelectEntityNumber.hxx", bycopy.} = object of IFSelectSelectBase ##
                                                                                                           ## !
                                                                                                           ## Creates
                                                                                                           ## a
                                                                                                           ## SelectEntityNumber,
                                                                                                           ## initially
                                                                                                           ## with
                                                                                                           ## no
                                                                                                           ## specified
                                                                                                           ## Number
type
  HandleIFSelectSelectErrorEntities* = Handle[IFSelectSelectErrorEntities]
## ! A SelectErrorEntities sorts the Entities which are qualified
## ! as "Error" (their Type has not been recognized) during reading
## ! a File. This does not concern Entities which are syntactically
## ! correct, but with incorrect data (for integrity constraints).
type
  IFSelectSelectErrorEntities* {.importcpp: "IFSelect_SelectErrorEntities",
                                header: "IFSelect_SelectErrorEntities.hxx", bycopy.} = object of IFSelectSelectExtract ##
                                                                                                                ## !
                                                                                                                ## Creates
                                                                                                                ## a
                                                                                                                ## SelectErrorEntities
type
  HandleIFSelectSelectExplore* = Handle[IFSelectSelectExplore]
## ! A SelectExplore determines from an input list of Entities,
## ! a list obtained by a way of exploration. This implies the
## ! possibility of recursive exploration : the output list is
## ! itself reused as input, etc...
## ! Examples : Shared Entities, can be considered at one level
## ! (immediate shared) or more, or max level
## !
## ! Then, for each input entity, if it is not rejected, it can be
## ! either taken itself, or explored : it then produces a list.
## ! According to a level, either the produced lists or taken
## ! entities give the result (level one), or lists are themselves
## ! considered and for each item, is it taken or explored.
## !
## ! Remark that rejection is just a safety : normally, an input
## ! entity is, either taken itself, or explored
## ! A maximum level can be specified. Else, the process continues
## ! until all entities have been either taken or rejected
type
  IFSelectSelectExplore* {.importcpp: "IFSelect_SelectExplore",
                          header: "IFSelect_SelectExplore.hxx", bycopy.} = object of IFSelectSelectDeduct ##
                                                                                                   ## !
                                                                                                   ## Returns
                                                                                                   ## the
                                                                                                   ## required
                                                                                                   ## exploring
                                                                                                   ## level
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## Initializes
                                                                                                   ## a
                                                                                                   ## SelectExplore
                                                                                                   ## :
                                                                                                   ## the
                                                                                                   ## level
                                                                                                   ## must
                                                                                                   ## be
                                                                                                   ## specified
                                                                                                   ## on
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## starting.
                                                                                                   ## 0
                                                                                                   ## means
                                                                                                   ## all
                                                                                                   ## levels,
                                                                                                   ## 1
                                                                                                   ## means
                                                                                                   ## level
                                                                                                   ## one
                                                                                                   ## only,
                                                                                                   ## etc...
type
  HandleIFSelectSelectExtract* = Handle[IFSelectSelectExtract]
## ! A SelectExtract determines a list of Entities from an Input
## ! Selection, as a sub-list of the Input Result
## ! It works by applying a sort criterium on each Entity of the
## ! Input. This criterium can be applied Direct to Pick Items
## ! (default case) or Reverse to Remove Item
## !
## ! Basic features (the unique Input) are inherited from SelectDeduct
type
  IFSelectSelectExtract* {.importcpp: "IFSelect_SelectExtract",
                          header: "IFSelect_SelectExtract.hxx", bycopy.} = object of IFSelectSelectDeduct ##
                                                                                                   ## !
                                                                                                   ## Returns
                                                                                                   ## True
                                                                                                   ## if
                                                                                                   ## Sort
                                                                                                   ## criterium
                                                                                                   ## is
                                                                                                   ## Direct,
                                                                                                   ## False
                                                                                                   ## if
                                                                                                   ## Reverse
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## Initializes
                                                                                                   ## a
                                                                                                   ## SelectExtract
                                                                                                   ## :
                                                                                                   ## enforces
                                                                                                   ## the
                                                                                                   ## sort
                                                                                                   ## to
                                                                                                   ## be
                                                                                                   ## Direct
type
  HandleIFSelectSelectFlag* = Handle[IFSelectSelectFlag]
## ! A SelectFlag queries a flag noted in the bitmap of the Graph.
## ! The Flag is designated by its Name. Flag Names are defined
## ! by Work Session and, as necessary, other functional objects
## !
## ! WorkSession from IFSelect defines flag "Incorrect"
## ! Objects which control application running define some others
type
  IFSelectSelectFlag* {.importcpp: "IFSelect_SelectFlag",
                       header: "IFSelect_SelectFlag.hxx", bycopy.} = object of IFSelectSelectExtract ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## a
                                                                                              ## Select
                                                                                              ## Flag,
                                                                                              ## to
                                                                                              ## query
                                                                                              ## a
                                                                                              ## flag
                                                                                              ## designated
                                                                                              ## by
                                                                                              ## its
                                                                                              ## name
type
  HandleIFSelectSelectIncorrectEntities* = Handle[IFSelectSelectIncorrectEntities]
## ! A SelectIncorrectEntities sorts the Entities which have been
## ! noted as Incorrect in the Graph of the Session
## ! (flag "Incorrect")
## ! It can find a result only if ComputeCheck has formerly been
## ! called on the WorkSession. Else, its result will be empty.
type
  IFSelectSelectIncorrectEntities* {.importcpp: "IFSelect_SelectIncorrectEntities", header: "IFSelect_SelectIncorrectEntities.hxx",
                                    bycopy.} = object of IFSelectSelectFlag ## ! Creates a
                                                                       ## SelectIncorrectEntities
                                                                       ## ! i.e. a
                                                                       ## SelectFlag("Incorrect")
type
  HandleIFSelectSelectInList* = Handle[IFSelectSelectInList]
## ! A SelectInList kind Selection selects a List of an Entity,
## ! which is composed of single Entities
## ! To know the list on which to work, SelectInList has two
## ! deferred methods : NbItems (inherited from SelectAnyList) and
## ! ListedEntity (which gives an item as an Entity) which must be
## ! defined to get a List in an Entity of the required Type (and
## ! consider that list is empty if Entity has not required Type)
## !
## ! As for SelectAnyList, if a type of Entity defines several
## ! lists, a given sub-class of SelectInList is attached on one
type
  IFSelectSelectInList* {.importcpp: "IFSelect_SelectInList",
                         header: "IFSelect_SelectInList.hxx", bycopy.} = object of IFSelectSelectAnyList ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## an
                                                                                                  ## Entity,
                                                                                                  ## given
                                                                                                  ## its
                                                                                                  ## rank
                                                                                                  ## in
                                                                                                  ## the
                                                                                                  ## list
type
  HandleIFSelectSelectIntersection* = Handle[IFSelectSelectIntersection]
## ! A SelectIntersection filters the Entities issued from several
## ! other Selections as Intersection of results : "AND" operator
type
  IFSelectSelectIntersection* {.importcpp: "IFSelect_SelectIntersection",
                               header: "IFSelect_SelectIntersection.hxx", bycopy.} = object of IFSelectSelectCombine ##
                                                                                                              ## !
                                                                                                              ## Creates
                                                                                                              ## an
                                                                                                              ## empty
                                                                                                              ## SelectIntersection
type
  HandleIFSelectSelection* = Handle[IFSelectSelection]
## ! A Selection allows to define a set of Interface Entities.
## ! Entities to be put on an output file should be identified in
## ! a way as independant from such or such execution as possible.
## ! This permits to handle comprehensive criteria, and to replay
## ! them when a new variant of an input file has to be processed.
## !
## ! Its input can be, either an Interface Model (the very source),
## ! or another-other Selection(s) or any other ouput. All list
## ! computations start from an input Graph (from IFGraph)
type
  IFSelectSelection* {.importcpp: "IFSelect_Selection",
                      header: "IFSelect_Selection.hxx", bycopy.} = object of StandardTransient ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## the
                                                                                        ## list
                                                                                        ## of
                                                                                        ## selected
                                                                                        ## entities,
                                                                                        ## computed
                                                                                        ## from
                                                                                        ## Input
                                                                                        ##
                                                                                        ## !
                                                                                        ## given
                                                                                        ## as
                                                                                        ## a
                                                                                        ## Graph.
                                                                                        ## Specific
                                                                                        ## to
                                                                                        ## each
                                                                                        ## class
                                                                                        ## of
                                                                                        ## Selection
                                                                                        ##
                                                                                        ## !
                                                                                        ## Note
                                                                                        ## that
                                                                                        ## uniqueness
                                                                                        ## of
                                                                                        ## each
                                                                                        ## entity
                                                                                        ## is
                                                                                        ## not
                                                                                        ## required
                                                                                        ## here
                                                                                        ##
                                                                                        ## !
                                                                                        ## This
                                                                                        ## method
                                                                                        ## can
                                                                                        ## raise
                                                                                        ## an
                                                                                        ## exception
                                                                                        ## as
                                                                                        ## necessary
                                                                                        ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## True
                                                                                        ## if
                                                                                        ## RootResult
                                                                                        ## guarantees
                                                                                        ## uniqueness
                                                                                        ## for
                                                                                        ## each
                                                                                        ##
                                                                                        ## !
                                                                                        ## Entity.
                                                                                        ## Called
                                                                                        ## by
                                                                                        ## UniqueResult.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Default
                                                                                        ## answer
                                                                                        ## is
                                                                                        ## False.
                                                                                        ## Can
                                                                                        ## be
                                                                                        ## redefined.
type
  IFSelectSelectionIterator* {.importcpp: "IFSelect_SelectionIterator",
                              header: "IFSelect_SelectionIterator.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Creates
                                                                                     ## an
                                                                                     ## empty
                                                                                     ## iterator,
                                                                                     ## ready
                                                                                     ## to
                                                                                     ## be
                                                                                     ## filled
type
  HandleIFSelectSelectModelEntities* = Handle[IFSelectSelectModelEntities]
## ! A SelectModelEntities gets all the Entities of an
## ! InterfaceModel.
type
  IFSelectSelectModelEntities* {.importcpp: "IFSelect_SelectModelEntities",
                                header: "IFSelect_SelectModelEntities.hxx", bycopy.} = object of IFSelectSelectBase ##
                                                                                                             ## !
                                                                                                             ## Creates
                                                                                                             ## a
                                                                                                             ## SelectModelRoot
type
  HandleIFSelectSelectModelRoots* = Handle[IFSelectSelectModelRoots]
## ! A SelectModelRoots gets all the Root Entities of an
## ! InterfaceModel. Remember that a "Root Entity" is defined as
## ! having no Sharing Entity (if there is a Loop between Entities,
## ! none of them can be a "Root").
type
  IFSelectSelectModelRoots* {.importcpp: "IFSelect_SelectModelRoots",
                             header: "IFSelect_SelectModelRoots.hxx", bycopy.} = object of IFSelectSelectBase ##
                                                                                                       ## !
                                                                                                       ## Creates
                                                                                                       ## a
                                                                                                       ## SelectModelRoot
type
  HandleIFSelectSelectPointed* = Handle[IFSelectSelectPointed]
## ! This type of Selection is intended to describe a direct
## ! selection without an explicit criterium, for instance the
## ! result of picking viewed entities on a graphic screen
## !
## ! It can also be used to provide a list as internal alternate
## ! input : this use implies to clear the list once queried
type
  IFSelectSelectPointed* {.importcpp: "IFSelect_SelectPointed",
                          header: "IFSelect_SelectPointed.hxx", bycopy.} = object of IFSelectSelectBase ##
                                                                                                 ## !
                                                                                                 ## Creates
                                                                                                 ## a
                                                                                                 ## SelectPointed
type
  HandleIFSelectSelectRange* = Handle[IFSelectSelectRange]
## ! A SelectRange keeps or rejects a sub-set of the input set,
## ! that is the Entities of which rank in the iteration list
## ! is in a given range (for instance form 2nd to 6th, etc...)
type
  IFSelectSelectRange* {.importcpp: "IFSelect_SelectRange",
                        header: "IFSelect_SelectRange.hxx", bycopy.} = object of IFSelectSelectExtract ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## a
                                                                                                ## SelectRange.
                                                                                                ## Default
                                                                                                ## is
                                                                                                ## Take
                                                                                                ## all
                                                                                                ## the
                                                                                                ## input
                                                                                                ## list
type
  HandleIFSelectSelectRootComps* = Handle[IFSelectSelectRootComps]
## ! A SelectRootComps sorts the Entities which are part of Strong
## ! Componants, local roots of a set of Entities : they can be
## ! Single Componants (containing one Entity) or Cycles
## ! This class gives a more secure result than SelectRoots (which
## ! considers only Single Componants) but is longer to work : it
## ! can be used when there can be or there are cycles in a Model
## ! For each cycle, one Entity is given arbitrarily
## ! Reject works as for SelectRoots : Strong Componants defined in
## ! the input list which are not local roots are given
type
  IFSelectSelectRootComps* {.importcpp: "IFSelect_SelectRootComps",
                            header: "IFSelect_SelectRootComps.hxx", bycopy.} = object of IFSelectSelectExtract ##
                                                                                                        ## !
                                                                                                        ## Creates
                                                                                                        ## a
                                                                                                        ## SelectRootComps
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Returns
                                                                                                        ## True,
                                                                                                        ## RootResult
                                                                                                        ## assuring
                                                                                                        ## uniqueness
type
  HandleIFSelectSelectRoots* = Handle[IFSelectSelectRoots]
## ! A SelectRoots sorts the Entities which are local roots of a
## ! set of Entities (not shared by other Entities inside this set,
## ! even if they are shared by other Entities outside it)
type
  IFSelectSelectRoots* {.importcpp: "IFSelect_SelectRoots",
                        header: "IFSelect_SelectRoots.hxx", bycopy.} = object of IFSelectSelectExtract ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## a
                                                                                                ## SelectRoots
                                                                                                ##
                                                                                                ## !
                                                                                                ## Returns
                                                                                                ## True,
                                                                                                ## because
                                                                                                ## RootResult
                                                                                                ## assures
                                                                                                ## uniqueness
type
  HandleIFSelectSelectSent* = Handle[IFSelectSelectSent]
## ! This class returns entities according sending to a file
## ! Once a model has been loaded, further sendings are recorded
## ! as status in the graph (for each value, a count of sendings)
## !
## ! Hence, it is possible to query entities : sent ones (at least
## ! once), non-sent (i.e. remaining) ones, duplicated ones, etc...
## !
## ! This selection performs this query
type
  IFSelectSelectSent* {.importcpp: "IFSelect_SelectSent",
                       header: "IFSelect_SelectSent.hxx", bycopy.} = object of IFSelectSelectExtract ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## a
                                                                                              ## SelectSent
                                                                                              ## :
                                                                                              ##
                                                                                              ## !
                                                                                              ## sentcount
                                                                                              ## =
                                                                                              ## 0
                                                                                              ## ->
                                                                                              ## remaining
                                                                                              ## (non-sent)
                                                                                              ## entities
                                                                                              ##
                                                                                              ## !
                                                                                              ## sentcount
                                                                                              ## =
                                                                                              ## 1,
                                                                                              ## atleast
                                                                                              ## =
                                                                                              ## True
                                                                                              ## (D)
                                                                                              ## ->
                                                                                              ## sent
                                                                                              ## (at
                                                                                              ## least
                                                                                              ## once)
                                                                                              ##
                                                                                              ## !
                                                                                              ## sentcount
                                                                                              ## =
                                                                                              ## 2,
                                                                                              ## atleast
                                                                                              ## =
                                                                                              ## True
                                                                                              ## ->
                                                                                              ## duplicated
                                                                                              ## (sent
                                                                                              ## least
                                                                                              ## twice)
                                                                                              ##
                                                                                              ## !
                                                                                              ## etc...
                                                                                              ##
                                                                                              ## !
                                                                                              ## sentcount
                                                                                              ## =
                                                                                              ## 1,
                                                                                              ## atleast
                                                                                              ## =
                                                                                              ## False
                                                                                              ## ->
                                                                                              ## sent
                                                                                              ## just
                                                                                              ## once
                                                                                              ## (non-dupl.d)
                                                                                              ##
                                                                                              ## !
                                                                                              ## sentcount
                                                                                              ## =
                                                                                              ## 2,
                                                                                              ## atleast
                                                                                              ## =
                                                                                              ## False
                                                                                              ## ->
                                                                                              ## sent
                                                                                              ## just
                                                                                              ## twice
                                                                                              ##
                                                                                              ## !
                                                                                              ## etc...
type
  HandleIFSelectSelectShared* = Handle[IFSelectSelectShared]
## ! A SelectShared selects Entities which are directly Shared
## ! by the Entities of the Input list
type
  IFSelectSelectShared* {.importcpp: "IFSelect_SelectShared",
                         header: "IFSelect_SelectShared.hxx", bycopy.} = object of IFSelectSelectDeduct ##
                                                                                                 ## !
                                                                                                 ## Creates
                                                                                                 ## a
                                                                                                 ## SelectShared;
type
  HandleIFSelectSelectSharing* = Handle[IFSelectSelectSharing]
## ! A SelectSharing selects Entities which directly Share (Level
## ! One) the Entities of the Input list
## ! Remark : if an Entity of the Input List directly shares
## ! another one, it is of course present in the Result List
type
  IFSelectSelectSharing* {.importcpp: "IFSelect_SelectSharing",
                          header: "IFSelect_SelectSharing.hxx", bycopy.} = object of IFSelectSelectDeduct ##
                                                                                                   ## !
                                                                                                   ## Creates
                                                                                                   ## a
                                                                                                   ## SelectSharing;
type
  HandleIFSelectSelectSignature* = Handle[IFSelectSelectSignature]
## ! A SelectSignature sorts the Entities on a Signature Matching.
## ! The signature to match is given at creation time. Also, the
## ! required match is given at creation time : exact (IsEqual) or
## ! contains (the Type's Name must contain the criterium Text)
## !
## ! Remark that no more interpretation is done, it is an
## ! alpha-numeric signature : for instance, DynamicType is matched
## ! as such, super-types are not considered
## !
## ! Also, numeric (integer) comparisons are supported : an item
## ! can be <val ou <=val or >val or >=val , val being an Integer
## !
## ! A SelectSignature may also be created from a SignCounter,
## ! which then just gives its LastValue as SignatureValue
type
  IFSelectSelectSignature* {.importcpp: "IFSelect_SelectSignature",
                            header: "IFSelect_SelectSignature.hxx", bycopy.} = object of IFSelectSelectExtract ##
                                                                                                        ## !
                                                                                                        ## Creates
                                                                                                        ## a
                                                                                                        ## SelectSignature
                                                                                                        ## with
                                                                                                        ## its
                                                                                                        ## Signature
                                                                                                        ## and
                                                                                                        ## its
                                                                                                        ## Text
                                                                                                        ## to
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Match.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## <exact>
                                                                                                        ## if
                                                                                                        ## True
                                                                                                        ## requires
                                                                                                        ## exact
                                                                                                        ## match,
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## if
                                                                                                        ## False
                                                                                                        ## requires
                                                                                                        ## <signtext>
                                                                                                        ## to
                                                                                                        ## be
                                                                                                        ## contained
                                                                                                        ## in
                                                                                                        ## the
                                                                                                        ## Signature
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## of
                                                                                                        ## the
                                                                                                        ## entity
                                                                                                        ## (default
                                                                                                        ## is
                                                                                                        ## "exact")
type
  HandleIFSelectSelectSignedShared* = Handle[IFSelectSelectSignedShared]
## ! In the graph, explore the Shareds of the input entities,
## ! until it encounters some which match a given Signature
## ! (for a limited level, filters the returned list)
## ! By default, fitted for any level
type
  IFSelectSelectSignedShared* {.importcpp: "IFSelect_SelectSignedShared",
                               header: "IFSelect_SelectSignedShared.hxx", bycopy.} = object of IFSelectSelectExplore ##
                                                                                                              ## !
                                                                                                              ## Creates
                                                                                                              ## a
                                                                                                              ## SelectSignedShared,
                                                                                                              ## defaulted
                                                                                                              ## for
                                                                                                              ## any
                                                                                                              ## level
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## with
                                                                                                              ## a
                                                                                                              ## given
                                                                                                              ## Signature
                                                                                                              ## and
                                                                                                              ## text
                                                                                                              ## to
                                                                                                              ## match
type
  HandleIFSelectSelectSignedSharing* = Handle[IFSelectSelectSignedSharing]
## ! In the graph, explore the sharings of the input entities,
## ! until it encounters some which match a given Signature
## ! (for a limited level, filters the returned list)
## ! By default, fitted for any level
type
  IFSelectSelectSignedSharing* {.importcpp: "IFSelect_SelectSignedSharing",
                                header: "IFSelect_SelectSignedSharing.hxx", bycopy.} = object of IFSelectSelectExplore ##
                                                                                                                ## !
                                                                                                                ## Creates
                                                                                                                ## a
                                                                                                                ## SelectSignedSharing,
                                                                                                                ## defaulted
                                                                                                                ## for
                                                                                                                ## any
                                                                                                                ## level
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## with
                                                                                                                ## a
                                                                                                                ## given
                                                                                                                ## Signature
                                                                                                                ## and
                                                                                                                ## text
                                                                                                                ## to
                                                                                                                ## match
type
  HandleIFSelectSelectSuite* = Handle[IFSelectSelectSuite]
## ! A SelectSuite can describe a suite of SelectDeduct as a unique
## ! one : in other words, it can be seen as a "macro selection"
## !
## ! It works by applying each of its items (which is a
## ! SelectDeduct) on the result computed by the previous one
## ! (by using Alternate Input)
## !
## ! But each of these Selections used as items may be used
## ! independently, it will then give its own result
## !
## ! Hence, SelectSuite gives a way of defining a new Selection
## ! from existing ones, without having to do copies or saves
type
  IFSelectSelectSuite* {.importcpp: "IFSelect_SelectSuite",
                        header: "IFSelect_SelectSuite.hxx", bycopy.} = object of IFSelectSelectDeduct ##
                                                                                               ## !
                                                                                               ## Creates
                                                                                               ## an
                                                                                               ## empty
                                                                                               ## SelectSuite
type
  HandleIFSelectSelectType* = Handle[IFSelectSelectType]
## ! A SelectType keeps or rejects Entities of which the Type
## ! is Kind of a given Cdl Type
type
  IFSelectSelectType* {.importcpp: "IFSelect_SelectType",
                       header: "IFSelect_SelectType.hxx", bycopy.} = object of IFSelectSelectAnyType ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## a
                                                                                              ## SelectType.
                                                                                              ## Default
                                                                                              ## is
                                                                                              ## no
                                                                                              ## filter
type
  HandleIFSelectSelectUnion* = Handle[IFSelectSelectUnion]
## ! A SelectUnion cumulates the Entities issued from several other
## ! Selections (union of results : "OR" operator)
type
  IFSelectSelectUnion* {.importcpp: "IFSelect_SelectUnion",
                        header: "IFSelect_SelectUnion.hxx", bycopy.} = object of IFSelectSelectCombine ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## an
                                                                                                ## empty
                                                                                                ## SelectUnion
type
  HandleIFSelectSelectUnknownEntities* = Handle[IFSelectSelectUnknownEntities]
## ! A SelectUnknownEntities sorts the Entities which are qualified
## ! as "Unknown" (their Type has not been recognized)
type
  IFSelectSelectUnknownEntities* {.importcpp: "IFSelect_SelectUnknownEntities",
                                  header: "IFSelect_SelectUnknownEntities.hxx",
                                  bycopy.} = object of IFSelectSelectExtract ## ! Creates a
                                                                        ## SelectUnknownEntities
type
  HandleIFSelectSessionDumper* = Handle[IFSelectSessionDumper]
## ! A SessionDumper is called by SessionFile. It takes into
## ! account a set of classes (such as Selections, Dispatches ...).
## ! SessionFile writes the Type (as defined by cdl) of each Item
## ! and its general Parameters. It manages the names of the Items.
## !
## ! A SessionDumper must be able to Write the Parameters which are
## ! own of each Item it takes into account, given its Class, then
## ! to Recognize the Type and Read its Own Parameters to create
## ! an Item of this Type with these own Parameters.
## !
## ! Then, there must be defined one sub-type of SessionDumper per
## ! consistent set of classes (e.g. a package).
## !
## ! By Own Parameters, understand Parameters given at Creation Time
## ! if there are, or specific of a given class, apart from those
## ! defined at superclass levels (e.g. Final Selection for a
## ! Dispatch, Input Selection for a SelectExtract or SelectDeduct,
## ! Direct Status for a SelectExtract, etc...).
## !
## ! The Parameters are those stored in a WorkSession, they can be
## ! of Types : IntParam, HAsciiString (for TextParam), Selection,
## ! Dispatch.
## !
## ! SessionDumpers are organized in a Library which is used by
## ! SessionFile. They are put at Creation Time in this Library.
type
  IFSelectSessionDumper* {.importcpp: "IFSelect_SessionDumper",
                          header: "IFSelect_SessionDumper.hxx", bycopy.} = object of StandardTransient ##
                                                                                                ## !
                                                                                                ## Returns
                                                                                                ## the
                                                                                                ## First
                                                                                                ## item
                                                                                                ## of
                                                                                                ## the
                                                                                                ## Library
                                                                                                ## of
                                                                                                ## Dumper.
                                                                                                ## The
                                                                                                ## Next
                                                                                                ## ones
                                                                                                ##
                                                                                                ## !
                                                                                                ## are
                                                                                                ## then
                                                                                                ## obtained
                                                                                                ## by
                                                                                                ## Next
                                                                                                ## on
                                                                                                ## the
                                                                                                ## returned
                                                                                                ## items
                                                                                                ##
                                                                                                ## !
                                                                                                ## The
                                                                                                ## Initialization
                                                                                                ## puts
                                                                                                ## a
                                                                                                ## just
                                                                                                ## created
                                                                                                ## SessionDumper
                                                                                                ## in
                                                                                                ## the
                                                                                                ##
                                                                                                ## !
                                                                                                ## Library
                                                                                                ## of
                                                                                                ## SessionDumper.
                                                                                                ## Then,
                                                                                                ## it
                                                                                                ## suffices
                                                                                                ## to
                                                                                                ## create
                                                                                                ## once
                                                                                                ##
                                                                                                ## !
                                                                                                ## a
                                                                                                ## SessionDumper
                                                                                                ## to
                                                                                                ## fill
                                                                                                ## the
                                                                                                ## Library
                                                                                                ## with
                                                                                                ## it
type
  IFSelectSessionFile* {.importcpp: "IFSelect_SessionFile",
                        header: "IFSelect_SessionFile.hxx", bycopy.} = object ## ! Creates a
                                                                         ## SessionFile, ready to read Files in order to load
                                                                         ## ! them into a given
                                                                         ## WorkSession.
                                                                         ## ! The
                                                                         ## following Read
                                                                         ## Operations must then be called.
                                                                         ## ! It is also
                                                                         ## possible to perform a Write, which
                                                                         ## produces a
                                                                         ## !
                                                                         ## complete File of all the content of the
                                                                         ## WorkSession.
type
  HandleIFSelectSessionPilot* = Handle[IFSelectSessionPilot]
## ! A SessionPilot is intended to make easier the use of a
## ! WorkSession. It receives commands, under alphanumeric form,
## ! then calls a library of Activators to interprete and run them.
## !
## ! Then, WorkSession just records data required to work :
## ! Rules for Selection, Dispatch ... ; File Data (InterfaceModel
## ! and results of Evaluations and Transfer as required).
## ! SessionPilot records and works with alphanumeric commands and
## ! their results (under a very simple form). It calls a list of
## ! Activators to perform the actions.
## !
## ! A Command can have several forms :
## ! - classic execution, to list, evaluate, or enrich the session
## ! - command which creates a new item (a Selection for instance)
## ! such a command should not add it to the session, but make it
## ! recorded by the Pilot (method RecordItem). The Pilot will
## ! add the item in the session, with no name
## ! -> such a command may be called :
## ! - directly, it will add an item with no name
## ! - by command xset, in the following form :
## ! xset name command ...  calls the command and adds the item
## ! to the session under the specified name (if not yet known)
## !
## ! Thus, to a specific Norm or way of working, only Activators
## ! change. A specific Initialisation can be done by starting
## ! with a specific set of commands.
## !
## ! In addition, SessionPilot is a sub-type of Activator, to
## ! recognize some built-in commands : exit/x, help/?, control of
## ! command line, and commands xstep xset ... See method Do
## !
## ! At least, empty lines and comment lines (beginning by '#')
## ! are skipped (comment lines are display if read from file)
type
  IFSelectSessionPilot* {.importcpp: "IFSelect_SessionPilot",
                         header: "IFSelect_SessionPilot.hxx", bycopy.} = object of IFSelectActivator ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## an
                                                                                              ## empty
                                                                                              ## SessionPilot,
                                                                                              ## with
                                                                                              ## a
                                                                                              ## prompt
                                                                                              ## which
                                                                                              ## will
                                                                                              ## be
                                                                                              ##
                                                                                              ## !
                                                                                              ## displayed
                                                                                              ## on
                                                                                              ## querying
                                                                                              ## commands.
                                                                                              ## If
                                                                                              ## not
                                                                                              ## precised
                                                                                              ## (""),
                                                                                              ## this
                                                                                              ##
                                                                                              ## !
                                                                                              ## prompt
                                                                                              ## is
                                                                                              ## set
                                                                                              ## to
                                                                                              ## "Test-XSTEP>"
type
  HandleIFSelectShareOut* = Handle[IFSelectShareOut]
## ! This class gathers the informations required to produce one or
## ! several file(s) from the content of an InterfaceModel (passing
## ! through the creation of intermediate Models).
## !
## ! It can correspond to a complete Divide up of a set of Entities
## ! intended to be exhaustive and to limit duplications. Or to a
## ! simple Extraction of some Entities, in order to work on them.
## !
## ! A ShareOut is composed of a list of Dispatches.
## ! To Each Dispatch in the ShareOut, is bound an Id. Number
## ! This Id. Number allows to identify a Display inside the
## ! ShareOut in a stable way (for instance, to attach file names)
## !
## ! ShareOut can be seen as a "passive" description, activated
## ! through a ShareOutResult, which gives the InterfaceModel on
## ! which to work, as a unique source. Thus it is easy to change
## ! it without coherence problems
## !
## ! Services about it are provided by the class ShareOutResult
## ! which is a service class : simulation (list of files and of
## ! entities per file; "forgotten" entities; duplicated entities),
## ! exploitation (generation of derivated Models, each of them
## ! generating an output file)
type
  IFSelectShareOut* {.importcpp: "IFSelect_ShareOut",
                     header: "IFSelect_ShareOut.hxx", bycopy.} = object of StandardTransient ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## an
                                                                                      ## empty
                                                                                      ## ShareOut
type
  IFSelectShareOutResult* {.importcpp: "IFSelect_ShareOutResult",
                           header: "IFSelect_ShareOutResult.hxx", bycopy.} = object ## !
                                                                               ## Creates a
                                                                               ## ShareOutResult
                                                                               ## from a
                                                                               ## ShareOut,
                                                                               ## to
                                                                               ## work
                                                                               ## on a
                                                                               ## Model
                                                                               ## !
                                                                               ## (without
                                                                               ## any
                                                                               ## more
                                                                               ## precision;
                                                                               ## uses
                                                                               ## Active
                                                                               ## Protocol)
type
  HandleIFSelectSignAncestor* = Handle[IFSelectSignAncestor]
  IFSelectSignAncestor* {.importcpp: "IFSelect_SignAncestor",
                         header: "IFSelect_SignAncestor.hxx", bycopy.} = object of IFSelectSignType
type
  HandleIFSelectSignature* = Handle[IFSelectSignature]
## ! Signature provides the basic service used by the classes
## ! SelectSignature and Counter (i.e. Name, Value), which is :
## ! - for an entity in a model, give a characteristic string, its
## ! signature
## ! This string has not to be unique in the model, but gives a
## ! value for such or such important feature.
## ! Exemples : Dynamic Type; Category; etc
type
  IFSelectSignature* {.importcpp: "IFSelect_Signature",
                      header: "IFSelect_Signature.hxx", bycopy.} = object of InterfaceSignType ##
                                                                                        ## !
                                                                                        ## Sets
                                                                                        ## the
                                                                                        ## information
                                                                                        ## data
                                                                                        ## to
                                                                                        ## tell
                                                                                        ## "integer
                                                                                        ## cases"
                                                                                        ## with
                                                                                        ##
                                                                                        ## !
                                                                                        ## possible
                                                                                        ## min
                                                                                        ## and
                                                                                        ## max
                                                                                        ## values
                                                                                        ##
                                                                                        ## !
                                                                                        ## To
                                                                                        ## be
                                                                                        ## called
                                                                                        ## when
                                                                                        ## creating
                                                                                        ##
                                                                                        ## !
                                                                                        ## Initializes
                                                                                        ## a
                                                                                        ## Signature
                                                                                        ## with
                                                                                        ## its
                                                                                        ## name
type
  HandleIFSelectSignatureList* = Handle[IFSelectSignatureList]
## ! A SignatureList is given as result from a Counter (any kind)
## ! It gives access to a list of signatures, with counts, and
## ! optionally with list of corresponding entities
## !
## ! It can also be used only to give a signature, through SignOnly
## ! Mode. This can be useful for a specific counter (used in a
## ! Selection), while it remains better to use a Signature
## ! whenever possible
type
  IFSelectSignatureList* {.importcpp: "IFSelect_SignatureList",
                          header: "IFSelect_SignatureList.hxx", bycopy.} = object of StandardTransient ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## a
                                                                                                ## SignatureList.
                                                                                                ## If
                                                                                                ## <withlist>
                                                                                                ## is
                                                                                                ## True,
                                                                                                ## entities
                                                                                                ## will
                                                                                                ##
                                                                                                ## !
                                                                                                ## be
                                                                                                ## not
                                                                                                ## only
                                                                                                ## counted
                                                                                                ## per
                                                                                                ## signature,
                                                                                                ## but
                                                                                                ## also
                                                                                                ## listed.
type
  HandleIFSelectSignCategory* = Handle[IFSelectSignCategory]
## ! This Signature returns the Category of an entity, as recorded
## ! in the model
type
  IFSelectSignCategory* {.importcpp: "IFSelect_SignCategory",
                         header: "IFSelect_SignCategory.hxx", bycopy.} = object of IFSelectSignature ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## a
                                                                                              ## SignCategory
type
  HandleIFSelectSignCounter* = Handle[IFSelectSignCounter]
## ! SignCounter gives the frame to count signatures associated
## ! with entities, deducted from them. Ex.: their Dynamic Type.
## !
## ! It can sort a set of Entities according a signature, i.e. :
## ! - list of different values found for this Signature
## ! - for each one, count and list of entities
## ! Results are returned as a SignatureList, which can be queried
## ! on the count (list of strings, count per signature, or list of
## ! entities per signature)
## !
## ! A SignCounter can be filled, either directly from lists, or
## ! from the result of a Selection : hence, its content can be
## ! automatically recomputed as desired
## !
## ! SignCounter works by using a Signature in its method AddSign
## !
## ! Methods can be redefined to, either
## ! - directly compute the value without a Signature
## ! - compute the value in the context of a Graph
type
  IFSelectSignCounter* {.importcpp: "IFSelect_SignCounter",
                        header: "IFSelect_SignCounter.hxx", bycopy.} = object of IFSelectSignatureList ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## a
                                                                                                ## SignCounter,
                                                                                                ## without
                                                                                                ## proper
                                                                                                ## Signature
                                                                                                ##
                                                                                                ## !
                                                                                                ## If
                                                                                                ## <withmap>
                                                                                                ## is
                                                                                                ## True
                                                                                                ## (default),
                                                                                                ## added
                                                                                                ## entities
                                                                                                ## are
                                                                                                ## counted
                                                                                                ##
                                                                                                ## !
                                                                                                ## only
                                                                                                ## if
                                                                                                ## they
                                                                                                ## are
                                                                                                ## not
                                                                                                ## yet
                                                                                                ## recorded
                                                                                                ## in
                                                                                                ## the
                                                                                                ## map
                                                                                                ##
                                                                                                ## !
                                                                                                ## Map
                                                                                                ## control
                                                                                                ## can
                                                                                                ## be
                                                                                                ## set
                                                                                                ## off
                                                                                                ## if
                                                                                                ## the
                                                                                                ## input
                                                                                                ## garantees
                                                                                                ## uniqueness
                                                                                                ##
                                                                                                ## !
                                                                                                ## of
                                                                                                ## data
                                                                                                ##
                                                                                                ## !
                                                                                                ## <withlist>
                                                                                                ## is
                                                                                                ## transmitted
                                                                                                ## to
                                                                                                ## SignatureList
                                                                                                ## (option
                                                                                                ## to
                                                                                                ## list
                                                                                                ##
                                                                                                ## !
                                                                                                ## entities,
                                                                                                ## not
                                                                                                ## only
                                                                                                ## to
                                                                                                ## count
                                                                                                ## them).
type
  HandleIFSelectSignMultiple* = Handle[IFSelectSignMultiple]
## ! Multiple Signature : ordered list of other Signatures
## ! It concatenates on a same line the result of its sub-items
## ! separated by sets of 3 blanks
## ! It is possible to define tabulations between sub-items
## ! Moreover, match rules are specific
type
  IFSelectSignMultiple* {.importcpp: "IFSelect_SignMultiple",
                         header: "IFSelect_SignMultiple.hxx", bycopy.} = object of IFSelectSignature ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## an
                                                                                              ## empty
                                                                                              ## SignMultiple
                                                                                              ## with
                                                                                              ## a
                                                                                              ## Name
                                                                                              ##
                                                                                              ## !
                                                                                              ## This
                                                                                              ## name
                                                                                              ## should
                                                                                              ## take
                                                                                              ## expected
                                                                                              ## tabulations
                                                                                              ## into
                                                                                              ## account
type
  HandleIFSelectSignType* = Handle[IFSelectSignType]
## ! This Signature returns the cdl Type of an entity, under two
## ! forms :
## ! - complete dynamic type (package and class)
## ! - class type, without package name
type
  IFSelectSignType* {.importcpp: "IFSelect_SignType",
                     header: "IFSelect_SignType.hxx", bycopy.} = object of IFSelectSignature ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## a
                                                                                      ## SignType
                                                                                      ##
                                                                                      ## !
                                                                                      ## <nopk>
                                                                                      ## false
                                                                                      ## (D)
                                                                                      ## :
                                                                                      ## complete
                                                                                      ## dynamic
                                                                                      ## type
                                                                                      ## (name
                                                                                      ## =
                                                                                      ## Dynamic
                                                                                      ## Type)
                                                                                      ##
                                                                                      ## !
                                                                                      ## <nopk>
                                                                                      ## true
                                                                                      ## :
                                                                                      ## class
                                                                                      ## type
                                                                                      ## without
                                                                                      ## pk
                                                                                      ## (name
                                                                                      ## =
                                                                                      ## Class
                                                                                      ## Type)
type
  HandleIFSelectSignValidity* = Handle[IFSelectSignValidity]
## ! This Signature returns the Validity Status of an entity, as
## ! deducted from data in the model : it can be
## ! "OK" "Unknown" "Unloaded" "Syntactic Fail"(but loaded)
## ! "Syntactic Warning" "Semantic Fail" "Semantic Warning"
type
  IFSelectSignValidity* {.importcpp: "IFSelect_SignValidity",
                         header: "IFSelect_SignValidity.hxx", bycopy.} = object of IFSelectSignature ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## a
                                                                                              ## SignValidity
type
  HandleIFSelectTransformer* = Handle[IFSelectTransformer]
## ! A Transformer defines the way an InterfaceModel is transformed
## ! (without sending it to a file).
## ! In order to work, each type of Transformer defines it method
## ! Perform, it can be parametred as needed.
## !
## ! It receives a Model (the data set) as input. It then can :
## ! - edit this Model on the spot (i.e. alter its content : by
## ! editing entities, or adding/replacing some ...)
## ! - produce a copied Model, which detains the needed changes
## ! (typically on the same type, but some or all entities beeing
## ! rebuilt or converted; or converted from a protocol to
## ! another one)
type
  IFSelectTransformer* {.importcpp: "IFSelect_Transformer",
                        header: "IFSelect_Transformer.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## Performs
                                                                                            ## a
                                                                                            ## Transformation
                                                                                            ## (defined
                                                                                            ## by
                                                                                            ## each
                                                                                            ## sub-class)
                                                                                            ## :
                                                                                            ##
                                                                                            ## !
                                                                                            ## <G>
                                                                                            ## gives
                                                                                            ## the
                                                                                            ## input
                                                                                            ## data
                                                                                            ## (especially
                                                                                            ## the
                                                                                            ## starting
                                                                                            ## model)
                                                                                            ## and
                                                                                            ##
                                                                                            ## !
                                                                                            ## can
                                                                                            ## be
                                                                                            ## used
                                                                                            ## for
                                                                                            ## queries
                                                                                            ## (by
                                                                                            ## Selections,
                                                                                            ## etc...)
                                                                                            ##
                                                                                            ## !
                                                                                            ## <protocol>
                                                                                            ## allows
                                                                                            ## to
                                                                                            ## work
                                                                                            ## with
                                                                                            ## General
                                                                                            ## Services
                                                                                            ## as
                                                                                            ## necessary
                                                                                            ##
                                                                                            ## !
                                                                                            ## (it
                                                                                            ## applies
                                                                                            ## to
                                                                                            ## input
                                                                                            ## data)
                                                                                            ##
                                                                                            ## !
                                                                                            ## If
                                                                                            ## the
                                                                                            ## change
                                                                                            ## corresponds
                                                                                            ## to
                                                                                            ## a
                                                                                            ## conversion
                                                                                            ## to
                                                                                            ## a
                                                                                            ## new
                                                                                            ## protocol,
                                                                                            ##
                                                                                            ## !
                                                                                            ## see
                                                                                            ## also
                                                                                            ## the
                                                                                            ## method
                                                                                            ## ChangeProtocol
                                                                                            ##
                                                                                            ## !
                                                                                            ## <checks>
                                                                                            ## stores
                                                                                            ## produced
                                                                                            ## checks
                                                                                            ## messages
                                                                                            ## if
                                                                                            ## any
                                                                                            ##
                                                                                            ## !
                                                                                            ## <newmod>
                                                                                            ## gives
                                                                                            ## the
                                                                                            ## result
                                                                                            ## of
                                                                                            ## the
                                                                                            ## transformation
                                                                                            ## :
                                                                                            ##
                                                                                            ## !
                                                                                            ## -
                                                                                            ## if
                                                                                            ## it
                                                                                            ## is
                                                                                            ## Null
                                                                                            ## (i.e.
                                                                                            ## has
                                                                                            ## not
                                                                                            ## been
                                                                                            ## affected),
                                                                                            ## the
                                                                                            ## transformation
                                                                                            ##
                                                                                            ## !
                                                                                            ## has
                                                                                            ## been
                                                                                            ## made
                                                                                            ## on
                                                                                            ## the
                                                                                            ## spot,
                                                                                            ## it
                                                                                            ## is
                                                                                            ## assumed
                                                                                            ## to
                                                                                            ## cause
                                                                                            ## no
                                                                                            ## change
                                                                                            ##
                                                                                            ## !
                                                                                            ## to
                                                                                            ## the
                                                                                            ## graph
                                                                                            ## of
                                                                                            ## dependances
                                                                                            ##
                                                                                            ## !
                                                                                            ## -
                                                                                            ## if
                                                                                            ## it
                                                                                            ## equates
                                                                                            ## the
                                                                                            ## starting
                                                                                            ## Model,
                                                                                            ## it
                                                                                            ## has
                                                                                            ## been
                                                                                            ## transformed
                                                                                            ## on
                                                                                            ##
                                                                                            ## !
                                                                                            ## the
                                                                                            ## spot
                                                                                            ## (possibiliy
                                                                                            ## some
                                                                                            ## entities
                                                                                            ## were
                                                                                            ## replaced
                                                                                            ## inside
                                                                                            ## it)
                                                                                            ##
                                                                                            ## !
                                                                                            ## -
                                                                                            ## if
                                                                                            ## it
                                                                                            ## is
                                                                                            ## new,
                                                                                            ## it
                                                                                            ## corresponds
                                                                                            ## to
                                                                                            ## a
                                                                                            ## new
                                                                                            ## data
                                                                                            ## set
                                                                                            ## which
                                                                                            ## replaces
                                                                                            ##
                                                                                            ## !
                                                                                            ## the
                                                                                            ## starting
                                                                                            ## one
                                                                                            ##
                                                                                            ## !
                                                                                            ##
                                                                                            ## !
                                                                                            ## <me>
                                                                                            ## is
                                                                                            ## mutable
                                                                                            ## to
                                                                                            ## allow
                                                                                            ## results
                                                                                            ## for
                                                                                            ## ChangeProtocol
                                                                                            ## to
                                                                                            ## be
                                                                                            ##
                                                                                            ## !
                                                                                            ## memorized
                                                                                            ## if
                                                                                            ## needed,
                                                                                            ## and
                                                                                            ## to
                                                                                            ## store
                                                                                            ## informations
                                                                                            ## useful
                                                                                            ## for
                                                                                            ##
                                                                                            ## !
                                                                                            ## the
                                                                                            ## method
                                                                                            ## Updated
                                                                                            ##
                                                                                            ## !
                                                                                            ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## True
                                                                                            ## if
                                                                                            ## Done,
                                                                                            ## False
                                                                                            ## if
                                                                                            ## an
                                                                                            ## Error
                                                                                            ## occured
                                                                                            ## :
                                                                                            ## in
                                                                                            ## this
                                                                                            ## case,
                                                                                            ##
                                                                                            ## !
                                                                                            ## if
                                                                                            ## a
                                                                                            ## new
                                                                                            ## data
                                                                                            ## set
                                                                                            ## has
                                                                                            ## been
                                                                                            ## produced,
                                                                                            ## the
                                                                                            ## transformation
                                                                                            ##
                                                                                            ## !
                                                                                            ## is
                                                                                            ## ignored,
                                                                                            ## else
                                                                                            ## data
                                                                                            ## may
                                                                                            ## be
                                                                                            ## corrupted.
type
  HandleIFSelectTransformStandard* = Handle[IFSelectTransformStandard]
## ! This class runs transformations made by Modifiers, as
## ! the ModelCopier does when it produces files (the same set
## ! of Modifiers can then be used, as to transform the starting
## ! Model, as at file sending time).
## !
## ! First, considering the resulting model, two options :
## ! - modifications are made directly on the starting model
## ! (OnTheSpot option), or
## ! - data are copied by the standard service Copy, only the
## ! remaining (not yet sent in a file) entities are copied
## ! (StandardCopy option)
## !
## ! If a Selection is set, it forces the list of Entities on which
## ! the Modifiers are applied. Else, each Modifier is considered
## ! its Selection. By default, it is for the whole Model
## !
## ! Then, the Modifiers are sequentially applied
## ! If at least one Modifier "May Change Graph", or if the option
## ! StandardCopy is selected, the graph will be recomputed
## ! (by the WorkSession, see method RunTransformer)
## !
## ! Remark that a TransformStandard with option StandardCopy
## ! and no Modifier at all has the effect of computing the
## ! remaining data (those not yet sent in any output file).
## ! Moreover, the Protocol is not changed
type
  IFSelectTransformStandard* {.importcpp: "IFSelect_TransformStandard",
                              header: "IFSelect_TransformStandard.hxx", bycopy.} = object of IFSelectTransformer ##
                                                                                                          ## !
                                                                                                          ## Creates
                                                                                                          ## a
                                                                                                          ## TransformStandard,
                                                                                                          ## option
                                                                                                          ## StandardCopy,
                                                                                                          ## no
                                                                                                          ## Modifier
type
  HandleIFSelectWorkLibrary* = Handle[IFSelectWorkLibrary]
## ! This class defines the (empty) frame which can be used to
## ! enrich a XSTEP set with new capabilities
## ! In particular, a specific WorkLibrary must give the way for
## ! Reading a File into a Model, and Writing a Model to a File
## ! Thus, it is possible to define several Work Libraries for each
## ! norm, but recommanded to define one general class for each one :
## ! this general class will define the Read and Write methods.
## !
## ! Also a Dump service is provided, it can produce, according the
## ! norm, either a parcel of a file for an entity, or any other
## ! kind of informations relevant for the norm,
type
  IFSelectWorkLibrary* {.importcpp: "IFSelect_WorkLibrary",
                        header: "IFSelect_WorkLibrary.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## Gives
                                                                                            ## the
                                                                                            ## way
                                                                                            ## to
                                                                                            ## Read
                                                                                            ## a
                                                                                            ## File
                                                                                            ## and
                                                                                            ## transfer
                                                                                            ## it
                                                                                            ## to
                                                                                            ## a
                                                                                            ## Model
                                                                                            ##
                                                                                            ## !
                                                                                            ## <mod>
                                                                                            ## is
                                                                                            ## the
                                                                                            ## resulting
                                                                                            ## Model,
                                                                                            ## which
                                                                                            ## has
                                                                                            ## to
                                                                                            ## be
                                                                                            ## created
                                                                                            ## by
                                                                                            ## this
                                                                                            ##
                                                                                            ## !
                                                                                            ## method.
                                                                                            ## In
                                                                                            ## case
                                                                                            ## of
                                                                                            ## error,
                                                                                            ## <mod>
                                                                                            ## must
                                                                                            ## be
                                                                                            ## returned
                                                                                            ## Null
                                                                                            ##
                                                                                            ## !
                                                                                            ## Return
                                                                                            ## value
                                                                                            ## is
                                                                                            ## a
                                                                                            ## status
                                                                                            ## with
                                                                                            ## free
                                                                                            ## values.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Simply,
                                                                                            ## 0
                                                                                            ## is
                                                                                            ## for
                                                                                            ## "Execution
                                                                                            ## OK"
                                                                                            ##
                                                                                            ## !
                                                                                            ## The
                                                                                            ## Protocol
                                                                                            ## can
                                                                                            ## be
                                                                                            ## used
                                                                                            ## to
                                                                                            ## work
                                                                                            ## (e.g.
                                                                                            ## create
                                                                                            ## the
                                                                                            ## Model,
                                                                                            ## read
                                                                                            ##
                                                                                            ## !
                                                                                            ## and
                                                                                            ## recognize
                                                                                            ## the
                                                                                            ## Entities)
                                                                                            ##
                                                                                            ## !
                                                                                            ## Required
                                                                                            ## to
                                                                                            ## initialise
                                                                                            ## fields
type
  HandleIFSelectWorkSession* = Handle[IFSelectWorkSession]
## ! This class can be used to simply manage a process such as
## ! splitting a file, extracting a set of Entities ...
## ! It allows to manage different types of Variables : Integer or
## ! Text Parameters, Selections, Dispatches, in addition to a
## ! ShareOut. To each of these variables, a unique Integer
## ! Identifier is attached. A Name can be attached too as desired.
type
  IFSelectWorkSession* {.importcpp: "IFSelect_WorkSession",
                        header: "IFSelect_WorkSession.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## a
                                                                                            ## Work
                                                                                            ## Session
                                                                                            ##
                                                                                            ## !
                                                                                            ## It
                                                                                            ## provides
                                                                                            ## default,
                                                                                            ## empty
                                                                                            ## ShareOut
                                                                                            ## and
                                                                                            ## ModelCopier,
                                                                                            ## which
                                                                                            ## can
                                                                                            ##
                                                                                            ## !
                                                                                            ## be
                                                                                            ## replaced
                                                                                            ## (if
                                                                                            ## required,
                                                                                            ## should
                                                                                            ## be
                                                                                            ## done
                                                                                            ## just
                                                                                            ## after
                                                                                            ## creation).
