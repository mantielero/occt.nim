# PROVIDES: Message MessageExecStatus MessageExecStatusStatusRange MessageLevel MessageMsg MessageMsgFile MessageProgressRange MessageProgressScope MessageMessengerStreamBuffer MessageAlert MessageAlgorithm MessageAttribute MessageCompositeAlerts MessageMessenger MessagePrinter MessageProgressIndicator MessageReport MessageProgressSentry HandleMessageAlert HandleMessageAlgorithm HandleMessageAttribute HandleMessagePrinter HandleMessageProgressIndicator HandleMessageReport MessageAlertExtended MessageAttributeMeter MessageAttributeObject MessageAttributeStream MessagePrinterOStream MessagePrinterSystemLog MessagePrinterToReport HandleMessageMessenger HandleMessagePrinterOStream HandleMessagePrinterSystemLog
# DEPENDS:

import tkernel/standard/standard_types
type
  Message* {.importcpp: "Message", header: "Message.hxx", bycopy.} = object ## ! Defines default messenger for OCCT
                                                                    ## applications.
                                                                    ## ! This is global static instance of the messenger.
                                                                    ## ! By default, it contains single printer directed to std::cout.
                                                                    ## ! It can be customized according to the application needs.
                                                                    ## !
                                                                    ## ! The following syntax can be used to print messages:
                                                                    ## ! @begincode
                                                                    ## !
                                                                    ## Message::DefaultMessenger()->Send ("My Warning",
                                                                    ## Message_Warning);
                                                                    ## !
                                                                    ## Message::SendWarning ("My Warning"); // short-cut for
                                                                    ## Message_Warning
                                                                    ## !
                                                                    ## Message::SendWarning() << "My Warning with " << theCounter << " arguments";
                                                                    ## !
                                                                    ## Message::SendFail ("My Failure"); // short-cut for Message_Fail
                                                                    ## ! @endcode
                                                                    ## !@name Short-cuts to
                                                                    ## DefaultMessenger
                                                                    ## ! Returns the string filled with values of hours, minutes and seconds.
                                                                    ## ! Example:
                                                                    ## ! 1. (5, 12, 26.3345) returns
                                                                    ## "05h:12m:26.33s",
                                                                    ## ! 2. (0,  6, 34.496 ) returns
                                                                    ## "06m:34.50s",
                                                                    ## ! 3. (0,  0,  4.5   ) returns "4.50s"
                                                                    ## ! returns the only one instance of Report
                                                                    ## ! When theToCreate is true -
                                                                    ## automatically creates message report when not exist.

  MessageExecStatus* {.importcpp: "Message_ExecStatus",
                      header: "Message_ExecStatus.hxx", bycopy.} = object ## ! Mask to separate bits indicating status type and index within the type
                                                                     ## !@name Creation and simple operations with statuses
                                                                     ## !@{
                                                                     ## ! Create empty execution status
                                                                     ## !@name Advanced: Iteration and analysis of status flags
                                                                     ## !@{
                                                                     ## ! Definitions of range of available statuses
                                                                     ##  ---------- PRIVATE FIELDS ----------

  MessageExecStatusStatusRange* {.size: sizeof(cint),
                                 importcpp: "Message_ExecStatus::StatusRange",
                                 header: "Message_ExecStatus.hxx".} = enum
    FirstStatus = 1, StatusesPerType = 32, NbStatuses = 128, LastStatus = 129

  MessageLevel* {.importcpp: "Message_Level", header: "Message_Level.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Constructor.
                                                                                     ##
                                                                                     ## !
                                                                                     ## One
                                                                                     ## string
                                                                                     ## key
                                                                                     ## is
                                                                                     ## used
                                                                                     ## for
                                                                                     ## all
                                                                                     ## alert
                                                                                     ## meters.
                                                                                     ##
                                                                                     ## !
                                                                                     ## The
                                                                                     ## perf
                                                                                     ## meter
                                                                                     ## is
                                                                                     ## not
                                                                                     ## started
                                                                                     ## automatically,
                                                                                     ## it
                                                                                     ## will
                                                                                     ## be
                                                                                     ## done
                                                                                     ## in
                                                                                     ## AddAlert()
                                                                                     ## method
                                                                                     ##
                                                                                     ## !
                                                                                     ## Remove
                                                                                     ## the
                                                                                     ## current
                                                                                     ## level
                                                                                     ## from
                                                                                     ## the
                                                                                     ## report.
                                                                                     ## It
                                                                                     ## stops
                                                                                     ## metric
                                                                                     ## collecting
                                                                                     ## for
                                                                                     ## the
                                                                                     ## last
                                                                                     ## and
                                                                                     ## the
                                                                                     ## root
                                                                                     ## alerts.
    ## !< root alert
    ## !< last added alert on the root alert

  MessageMsg* {.importcpp: "Message_Msg", header: "Message_Msg.hxx", bycopy.} = object ## !
                                                                               ## Empty
                                                                               ## constructor

  MessageMsgFile* {.importcpp: "Message_MsgFile", header: "Message_MsgFile.hxx",
                   bycopy.} = object ## ! Load message file <theFileName> from directory <theDirName>
                                  ## ! or its sub-directory

  MessageProgressRange* {.importcpp: "Message_ProgressRange",
                         header: "Message_ProgressRange.hxx", bycopy.} = object ## !
                                                                           ## Constructor of the empty range
                                                                           ## !
                                                                           ## Constructor is
                                                                           ## private
    ## !< Pointer to parent scope
    ## !< Start point on the global scale
    ## !< Step of incrementation on the global scale
    ## !< Flag indicating that this range
    ## !  was used to create a new scope

  MessageProgressScope* {.importcpp: "Message_ProgressScope",
                         header: "Message_ProgressScope.hxx", bycopy.} = object of RootObj ## ! @name
                                                                           ## Preparation
                                                                           ## methods
                                                                           ## !
                                                                           ## Creates dummy
                                                                           ## scope.
                                                                           ## ! It can be
                                                                           ## safely
                                                                           ## passed to
                                                                           ## algorithms; no
                                                                           ## progress
                                                                           ## indication will be done.
                                                                           ## ! @name
                                                                           ## Advance by
                                                                           ## iterations
                                                                           ## !
                                                                           ## Returns true if
                                                                           ## ProgressIndicator
                                                                           ## signals
                                                                           ## UserBreak
                                                                           ## ! @name
                                                                           ## Auxiliary
                                                                           ## methods to use in
                                                                           ## ProgressIndicator
                                                                           ## ! Force
                                                                           ## update of
                                                                           ## presentation of the
                                                                           ## progress
                                                                           ## indicator.
                                                                           ## !
                                                                           ## Should not be
                                                                           ## called
                                                                           ## concurrently.
                                                                           ## ! @name
                                                                           ## Destruction,
                                                                           ## allocation
                                                                           ## !
                                                                           ## Destructor -
                                                                           ## closes the scope and adds its scale to the total
                                                                           ## progress
                                                                           ## ! @name
                                                                           ## Internal
                                                                           ## methods
                                                                           ## !
                                                                           ## Creates a
                                                                           ## top-level scope with
                                                                           ## default range [0,1] and step 1.
                                                                           ## !
                                                                           ## Called only by
                                                                           ## Message_ProgressIndicator
                                                                           ## constructor.
                                                                           ## ! Copy
                                                                           ## constructor is
                                                                           ## prohibited
    ## !< Pointer to progress indicator instance
    ## !< Pointer to parent scope
    ## !< Name of the operation being done in this scope, or null
    ## !< Start position on the global scale [0, 1]
    ## !< The portion of the global scale covered by this scope [0, 1]
    ## !< Maximal value of progress in this scope
    ## !< Current position advanced within this scope [0, Max]
    ## !< flag indicating armed/disarmed state
    ## !< flag indicating if name was allocated or not
    ## !< Option to advance by hyperbolic law

  MessageMessengerStreamBuffer* {.importcpp: "Message_Messenger::StreamBuffer",
                                 header: "Message_Messenger.hxx", bycopy.} = object ## !
                                                                               ## Destructor
                                                                               ## flushing
                                                                               ## constructed
                                                                               ## message.
    ##  don't make a Handle since this object should be created on stack

  MessageAlert* {.importcpp: "Message_Alert", header: "Message_Alert.hxx", bycopy.} = object of StandardTransient ##
                                                                                                        ## !
                                                                                                        ## Return
                                                                                                        ## a
                                                                                                        ## C
                                                                                                        ## string
                                                                                                        ## to
                                                                                                        ## be
                                                                                                        ## used
                                                                                                        ## as
                                                                                                        ## a
                                                                                                        ## key
                                                                                                        ## for
                                                                                                        ## generating
                                                                                                        ## text
                                                                                                        ## user
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## messages
                                                                                                        ## describing
                                                                                                        ## this
                                                                                                        ## alert.
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## The
                                                                                                        ## messages
                                                                                                        ## are
                                                                                                        ## generated
                                                                                                        ## with
                                                                                                        ## help
                                                                                                        ## of
                                                                                                        ## Message_Msg
                                                                                                        ## class,
                                                                                                        ## in
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Message_Report::Dump().
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Base
                                                                                                        ## implementation
                                                                                                        ## returns
                                                                                                        ## dynamic
                                                                                                        ## type
                                                                                                        ## name
                                                                                                        ## of
                                                                                                        ## the
                                                                                                        ## instance.

  MessageAlgorithm* {.importcpp: "Message_Algorithm",
                     header: "Message_Algorithm.hxx", bycopy.} = object of StandardTransient ##
                                                                                      ## !
                                                                                      ## Empty
                                                                                      ## constructor

  MessageAttribute* {.importcpp: "Message_Attribute",
                     header: "Message_Attribute.hxx", bycopy.} = object of StandardTransient ##
                                                                                      ## !
                                                                                      ## Empty
                                                                                      ## constructor
    ## !< alert name, if defined is used in GetMessageKey

  MessageCompositeAlerts* {.importcpp: "Message_CompositeAlerts",
                           header: "Message_CompositeAlerts.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## Empty
                                                                                                  ## constructor
                                                                                                  ##
                                                                                                  ## store
                                                                                                  ## messages
                                                                                                  ## in
                                                                                                  ## a
                                                                                                  ## lists
                                                                                                  ## sorted
                                                                                                  ## by
                                                                                                  ## gravity;
                                                                                                  ##
                                                                                                  ## here
                                                                                                  ## we
                                                                                                  ## rely
                                                                                                  ## on
                                                                                                  ## knowledge
                                                                                                  ## that
                                                                                                  ## Message_Fail
                                                                                                  ## is
                                                                                                  ## the
                                                                                                  ## last
                                                                                                  ## element
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## enum
    ## !< container of child alert for each type of gravity

  MessageMessenger* {.importcpp: "Message_Messenger",
                     header: "Message_Messenger.hxx", bycopy.} = object of StandardTransient ##
                                                                                      ## !
                                                                                      ## Auxiliary
                                                                                      ## class
                                                                                      ## wrapping
                                                                                      ## std::stringstream
                                                                                      ## thus
                                                                                      ## allowing
                                                                                      ## constructing
                                                                                      ##
                                                                                      ## !
                                                                                      ## message
                                                                                      ## via
                                                                                      ## stream
                                                                                      ## interface,
                                                                                      ## and
                                                                                      ## putting
                                                                                      ## result
                                                                                      ## into
                                                                                      ## its
                                                                                      ## creator
                                                                                      ##
                                                                                      ## !
                                                                                      ## Message_Messenger
                                                                                      ## within
                                                                                      ## destructor.
                                                                                      ##
                                                                                      ## !
                                                                                      ##
                                                                                      ## !
                                                                                      ## It
                                                                                      ## is
                                                                                      ## intended
                                                                                      ## to
                                                                                      ## be
                                                                                      ## used
                                                                                      ## either
                                                                                      ## as
                                                                                      ## temporary
                                                                                      ## object
                                                                                      ## or
                                                                                      ## as
                                                                                      ## local
                                                                                      ##
                                                                                      ## !
                                                                                      ## variable,
                                                                                      ## note
                                                                                      ## that
                                                                                      ## content
                                                                                      ## will
                                                                                      ## be
                                                                                      ## lost
                                                                                      ## if
                                                                                      ## it
                                                                                      ## is
                                                                                      ## copied.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Empty
                                                                                      ## constructor;
                                                                                      ## initializes
                                                                                      ## by
                                                                                      ## single
                                                                                      ## printer
                                                                                      ## directed
                                                                                      ## to
                                                                                      ## std::cout.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Note:
                                                                                      ## the
                                                                                      ## default
                                                                                      ## messenger
                                                                                      ## is
                                                                                      ## not
                                                                                      ## empty
                                                                                      ## but
                                                                                      ## directed
                                                                                      ## to
                                                                                      ## cout
                                                                                      ##
                                                                                      ## !
                                                                                      ## in
                                                                                      ## order
                                                                                      ## to
                                                                                      ## protect
                                                                                      ## against
                                                                                      ## possibility
                                                                                      ## to
                                                                                      ## forget
                                                                                      ## defining
                                                                                      ## printers.
                                                                                      ##
                                                                                      ## !
                                                                                      ## If
                                                                                      ## printing
                                                                                      ## to
                                                                                      ## cout
                                                                                      ## is
                                                                                      ## not
                                                                                      ## needed,
                                                                                      ## clear
                                                                                      ## messenger
                                                                                      ## by
                                                                                      ## GetPrinters().Clear()

  MessagePrinter* {.importcpp: "Message_Printer", header: "Message_Printer.hxx",
                   bycopy.} = object of StandardTransient ## ! Return trace level used for filtering messages;
                                                     ## ! messages with lover gravity will be ignored.
                                                     ## ! Empty constructor with Message_Info trace level

  MessageProgressIndicator* {.importcpp: "Message_ProgressIndicator",
                             header: "Message_ProgressIndicator.hxx", bycopy.} = object of StandardTransient ## !@name Initialization of progress indication
                                                                                                      ## ! Resets the indicator to zero, calls Reset(), and returns the range.
                                                                                                      ## ! This range refers to the scope that has no name and is initialized
                                                                                                      ## ! with max value 1 and step 1.
                                                                                                      ## ! Use this method to get the top level range for progress indication.
                                                                                                      ## !@name Virtual methods to be defined by descendant.
                                                                                                      ## ! Should return True if user has sent a break signal.
                                                                                                      ## !
                                                                                                      ## ! This method can be called concurrently, thus implementation should
                                                                                                      ## ! be thread-safe. It should not call Show() or Position() to
                                                                                                      ## ! avoid possible data races. The method should return as soon
                                                                                                      ## ! as possible to avoid delaying the calling algorithm.
                                                                                                      ## !
                                                                                                      ## ! Default implementation returns False.
                                                                                                      ## !@name Auxiliary methods
                                                                                                      ## ! Returns total progress position ranged from 0 to 1.
                                                                                                      ## ! Should not be called concurrently while the progress is advancing,
                                                                                                      ## ! except from implementation of method Show().
                                                                                                      ## ! Constructor
                                                                                                      ## ! Increment the progress value by the specified step,
                                                                                                      ## ! then calls Show() to update presentation.
                                                                                                      ## ! The parameter theScope is reference to the caller object;
                                                                                                      ## ! it is passed to Show() where can be used to track context of the process.
    ## !< Total progress position ranged from 0 to 1
    ## !< Protection of myPosition from concurrent increment
    ## !< The root progress scope
## ! Message_PrinterToReport is a printer in Messenger to convert data sent to messenger into report
## ! Message_PrinterToReport is a printer in Messenger to convert data sent to messenger into report
## ! Message_PrinterToReport is a printer in Messenger to convert data sent to messenger into report
## ! Message_PrinterToReport is a printer in Messenger to convert data sent to messenger into report
## ! Message_PrinterToReport is a printer in Messenger to convert data sent to messenger into report
## ! Message_PrinterToReport is a printer in Messenger to convert data sent to messenger into report
## ! Message_PrinterToReport is a printer in Messenger to convert data sent to messenger into report
## ! Message_PrinterToReport is a printer in Messenger to convert data sent to messenger into report
## ! Message_PrinterToReport is a printer in Messenger to convert data sent to messenger into report
## ! Message_PrinterToReport is a printer in Messenger to convert data sent to messenger into report
## ! Message_PrinterToReport is a printer in Messenger to convert data sent to messenger into report
## ! Message_PrinterToReport is a printer in Messenger to convert data sent to messenger into report
## ! Message_PrinterToReport is a printer in Messenger to convert data sent to messenger into report
## ! Message_PrinterToReport is a printer in Messenger to convert data sent to messenger into report
## ! Message_PrinterToReport is a printer in Messenger to convert data sent to messenger into report
## ! Message_PrinterToReport is a printer in Messenger to convert data sent to messenger into report
## ! Message_PrinterToReport is a printer in Messenger to convert data sent to messenger into report
## ! Message_PrinterToReport is a printer in Messenger to convert data sent to messenger into report
## ! Message_PrinterToReport is a printer in Messenger to convert data sent to messenger into report
## ! Message_PrinterToReport is a printer in Messenger to convert data sent to messenger into report

  MessageReport* {.importcpp: "Message_Report", header: "Message_Report.hxx", bycopy.} = object of StandardTransient ##
                                                                                                           ## !
                                                                                                           ## Empty
                                                                                                           ## constructor
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## Returns
                                                                                                           ## class
                                                                                                           ## provided
                                                                                                           ## hierarchy
                                                                                                           ## of
                                                                                                           ## alerts
                                                                                                           ## if
                                                                                                           ## created
                                                                                                           ## or
                                                                                                           ## create
                                                                                                           ## if
                                                                                                           ## the
                                                                                                           ## parameter
                                                                                                           ## is
                                                                                                           ## true
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## @param
                                                                                                           ## isCreate
                                                                                                           ## if
                                                                                                           ## composite
                                                                                                           ## alert
                                                                                                           ## has
                                                                                                           ## not
                                                                                                           ## been
                                                                                                           ## created
                                                                                                           ## for
                                                                                                           ## this
                                                                                                           ## alert,
                                                                                                           ## it
                                                                                                           ## should
                                                                                                           ## be
                                                                                                           ## created
                                                                                                           ##
                                                                                                           ## !
                                                                                                           ## @return
                                                                                                           ## instance
                                                                                                           ## or
                                                                                                           ## NULL
    ## !< container of alerts
    ## !< container of active levels, new alerts are added below the latest level
    ## !< metrics to compute on alerts
    ## !< Maximum number of collected alerts on the top level
    ## ! state whether the report is activated in messenger

  MessageProgressSentry* {.importcpp: "Message_ProgressSentry",
                          header: "Message_ProgressSentry.hxx", bycopy.} = object of MessageProgressScope ##
                                                                                                   ## !
                                                                                                   ## Deprecated
                                                                                                   ## constructor,
                                                                                                   ## Message_ProgressScope
                                                                                                   ## should
                                                                                                   ## be
                                                                                                   ## created
                                                                                                   ## instead.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## Message_ProgressRange
                                                                                                   ## should
                                                                                                   ## be
                                                                                                   ## passed
                                                                                                   ## to
                                                                                                   ## constructor
                                                                                                   ## instead
                                                                                                   ## of
                                                                                                   ## Message_ProgressIndicator.

  HandleMessageAlert* = Handle[MessageAlert]
## ! Base class of the hierarchy of classes describing various situations
## ! occurring during execution of some algorithm or procedure.
## !
## ! Alert should provide unique text identifier that can be used to distinguish
## ! particular type of alerts, e.g. to get text message string describing it.
## ! See method GetMessageKey(); by default, dynamic type name is used.
## !
## ! Alert can contain some data. To avoid duplication of data, new alert
## ! can be merged with another one of the same type. Method SupportsMerge()
## ! should return true if merge is supported; method Merge() should do the
## ! merge if possible and return true in that case and false otherwise.
## !

  HandleMessageAlgorithm* = Handle[MessageAlgorithm]
## ! Class Message_Algorithm is intended to be the base class for
## ! classes implementing algorithms or any operations that need
## ! to provide extended information on its execution to the
## ! caller / user.
## !
## ! It provides generic mechanism for management of the execution
## ! status, collection and output of messages.
## !
## ! The algorithm uses methods SetStatus() to set an execution status.
## ! It is possible to associate a status with a number or a string
## ! (second argument of SetStatus() methods) to indicate precisely
## ! the item (object, element etc.) in the input data which caused
## ! the problem.
## !
## ! Each execution status generated by the algorithm has associated
## ! text message that should be defined in the resouce file loaded
## ! with call to Message_MsgFile::LoadFile().
## !
## ! The messages corresponding to the statuses generated during the
## ! algorithm execution are output to Message_Messenger using
## ! methods SendMessages(). If status have associated numbers
## ! or strings, they are included in the message body in place of
## ! "%s" placeholder which should be present in the message text.
## !
## ! The name of the message text in the resource file is constructed
## ! from name of the class and name of the status, separated by dot,
## ! for instance:
## !
## ! .TObj_CheckModel.Alarm2
## ! Error: Some objects (%s) have references to dead object(s)
## !
## ! If message for the status is not found with prefix of
## ! the current class type, the same message is searched for the base
## ! class(es) recursively.
## !
## ! Message can be set explicitly for the status; in this case the
## ! above procedure is not used and supplied message is used as is.
## !
## ! The messages are output to the messenger, stored in the field;
## ! though messenger can be changed, it is guaranteed to be non-null.
## ! By default, Message::DefaultMessenger() is used.

  HandleMessageAttribute* = Handle[MessageAttribute]
## ! Additional information of extended alert attribute
## ! To provide other custom attribute container, it might be redefined.

  HandleMessagePrinter* = Handle[MessagePrinter]
## ! Abstract interface class defining printer as output context for text messages
## !
## ! The message, besides being text string, has associated gravity
## ! level, which can be used by printer to decide either to process a message or ignore it.

  HandleMessageProgressIndicator* = Handle[MessageProgressIndicator]

  HandleMessageReport* = Handle[MessageReport]
## ! Container for alert messages, sorted according to their gravity.
## !
## ! For each gravity level, alerts are stored in simple list.
## ! If alert being added can be merged with another alert of the same
## ! type already in the list, it is merged and not added to the list.
## !
## ! This class is intended to be used as follows:
## !
## ! - In the process of execution, algorithm fills report by alert objects
## !   using methods AddAlert()
## !
## ! - The result can be queried for presence of particular alert using
## !   methods HasAlert()
## !
## ! - The reports produced by nested or sequentially executed algorithms
## !   can be collected in one using method Merge()
## !
## ! - The report can be shown to the user either as plain text with method
## !   Dump() or in more advanced way, by iterating over lists returned by GetAlerts()
## !
## ! - Report can be cleared by methods Clear() (usually after reporting)
## !
## ! Message_PrinterToReport is a printer in Messenger to convert data sent to messenger into report

  MessageAlertExtended* {.importcpp: "Message_AlertExtended",
                         header: "Message_AlertExtended.hxx", bycopy.} = object of MessageAlert ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## new
                                                                                         ## instance
                                                                                         ## of
                                                                                         ## the
                                                                                         ## alert
                                                                                         ## and
                                                                                         ## put
                                                                                         ## it
                                                                                         ## into
                                                                                         ## report
                                                                                         ## with
                                                                                         ## Message_Info
                                                                                         ## gravity.
                                                                                         ##
                                                                                         ## !
                                                                                         ## It
                                                                                         ## does
                                                                                         ## nothing
                                                                                         ## if
                                                                                         ## such
                                                                                         ## kind
                                                                                         ## of
                                                                                         ## gravity
                                                                                         ## is
                                                                                         ## not
                                                                                         ## active
                                                                                         ## in
                                                                                         ## the
                                                                                         ## report
                                                                                         ##
                                                                                         ## !
                                                                                         ## @param
                                                                                         ## theReport
                                                                                         ## the
                                                                                         ## message
                                                                                         ## report
                                                                                         ## where
                                                                                         ## new
                                                                                         ## alert
                                                                                         ## is
                                                                                         ## placed
                                                                                         ##
                                                                                         ## !
                                                                                         ## @param
                                                                                         ## theAttribute
                                                                                         ## container
                                                                                         ## of
                                                                                         ## additional
                                                                                         ## values
                                                                                         ## of
                                                                                         ## the
                                                                                         ## alert
                                                                                         ##
                                                                                         ## !
                                                                                         ## @return
                                                                                         ## created
                                                                                         ## alert
                                                                                         ## or
                                                                                         ## NULL
                                                                                         ## if
                                                                                         ## Message_Info
                                                                                         ## is
                                                                                         ## not
                                                                                         ## active
                                                                                         ## in
                                                                                         ## report
                                                                                         ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## constructor
    ## !< class provided hierarchical structure of alerts
    ## !< container of the alert attributes

  MessageAttributeMeter* {.importcpp: "Message_AttributeMeter",
                          header: "Message_AttributeMeter.hxx", bycopy.} = object of MessageAttribute ##
                                                                                               ## !
                                                                                               ## Returns
                                                                                               ## default
                                                                                               ## value
                                                                                               ## of
                                                                                               ## the
                                                                                               ## metric
                                                                                               ## when
                                                                                               ## it
                                                                                               ## is
                                                                                               ## not
                                                                                               ## defined
                                                                                               ##
                                                                                               ## !
                                                                                               ## @return
                                                                                               ## undefined
                                                                                               ## value
                                                                                               ##
                                                                                               ## !
                                                                                               ## Constructor
                                                                                               ## with
                                                                                               ## string
                                                                                               ## argument
                                                                                               ##
                                                                                               ## !
                                                                                               ## Sets
                                                                                               ## start
                                                                                               ## values
                                                                                               ## of
                                                                                               ## default
                                                                                               ## report
                                                                                               ## metrics
                                                                                               ## into
                                                                                               ## the
                                                                                               ## alert
                                                                                               ##
                                                                                               ## !
                                                                                               ## @param
                                                                                               ## theAlert
                                                                                               ## an
                                                                                               ## alert
    ## !< computed metrics

  MessageAttributeObject* {.importcpp: "Message_AttributeObject",
                           header: "Message_AttributeObject.hxx", bycopy.} = object of MessageAttribute ##
                                                                                                 ## !
                                                                                                 ## Constructor
                                                                                                 ## with
                                                                                                 ## string
                                                                                                 ## argument
    ## !< alert object

  MessageAttributeStream* {.importcpp: "Message_AttributeStream",
                           header: "Message_AttributeStream.hxx", bycopy.} = object of MessageAttribute ##
                                                                                                 ## !
                                                                                                 ## Constructor
                                                                                                 ## with
                                                                                                 ## string
                                                                                                 ## argument
    ## !< container of values

  MessagePrinterOStream* {.importcpp: "Message_PrinterOStream",
                          header: "Message_PrinterOStream.hxx", bycopy.} = object of MessagePrinter ##
                                                                                             ## !
                                                                                             ## Setup
                                                                                             ## console
                                                                                             ## text
                                                                                             ## color.
                                                                                             ##
                                                                                             ## !
                                                                                             ##
                                                                                             ## !
                                                                                             ## On
                                                                                             ## Windows,
                                                                                             ## this
                                                                                             ## would
                                                                                             ## affect
                                                                                             ## active
                                                                                             ## terminal
                                                                                             ## color
                                                                                             ## output.
                                                                                             ##
                                                                                             ## !
                                                                                             ## On
                                                                                             ## other
                                                                                             ## systems,
                                                                                             ## this
                                                                                             ## would
                                                                                             ## put
                                                                                             ## special
                                                                                             ## terminal
                                                                                             ## codes;
                                                                                             ##
                                                                                             ## !
                                                                                             ## the
                                                                                             ## terminal
                                                                                             ## should
                                                                                             ## support
                                                                                             ## these
                                                                                             ## codes
                                                                                             ## or
                                                                                             ## them
                                                                                             ## will
                                                                                             ## appear
                                                                                             ## in
                                                                                             ## text
                                                                                             ## otherwise.
                                                                                             ##
                                                                                             ## !
                                                                                             ## The
                                                                                             ## same
                                                                                             ## will
                                                                                             ## happen
                                                                                             ## when
                                                                                             ## stream
                                                                                             ## is
                                                                                             ## redirected
                                                                                             ## into
                                                                                             ## text
                                                                                             ## file.
                                                                                             ##
                                                                                             ## !
                                                                                             ##
                                                                                             ## !
                                                                                             ## Beware
                                                                                             ## that
                                                                                             ## within
                                                                                             ## multi-threaded
                                                                                             ## environment
                                                                                             ## inducing
                                                                                             ## console
                                                                                             ## colors
                                                                                             ##
                                                                                             ## !
                                                                                             ## might
                                                                                             ## lead
                                                                                             ## to
                                                                                             ## colored
                                                                                             ## text
                                                                                             ## mixture
                                                                                             ## due
                                                                                             ## to
                                                                                             ## concurrency.
                                                                                             ##
                                                                                             ## !
                                                                                             ## Empty
                                                                                             ## constructor,
                                                                                             ## defaulting
                                                                                             ## to
                                                                                             ## cout
                                                                                             ##
                                                                                             ## !
                                                                                             ## Puts
                                                                                             ## a
                                                                                             ## message
                                                                                             ## to
                                                                                             ## the
                                                                                             ## current
                                                                                             ## stream
                                                                                             ##
                                                                                             ## !
                                                                                             ## if
                                                                                             ## its
                                                                                             ## gravity
                                                                                             ## is
                                                                                             ## equal
                                                                                             ## or
                                                                                             ## greater
                                                                                             ##
                                                                                             ## !
                                                                                             ## to
                                                                                             ## the
                                                                                             ## trace
                                                                                             ## level
                                                                                             ## set
                                                                                             ## by
                                                                                             ## SetTraceLevel()

  MessagePrinterSystemLog* {.importcpp: "Message_PrinterSystemLog",
                            header: "Message_PrinterSystemLog.hxx", bycopy.} = object of MessagePrinter ##
                                                                                                 ## !
                                                                                                 ## Main
                                                                                                 ## constructor.
                                                                                                 ##
                                                                                                 ## !
                                                                                                 ## Puts
                                                                                                 ## a
                                                                                                 ## message
                                                                                                 ## to
                                                                                                 ## the
                                                                                                 ## system
                                                                                                 ## log.

  MessagePrinterToReport* {.importcpp: "Message_PrinterToReport",
                           header: "Message_PrinterToReport.hxx", bycopy.} = object of MessagePrinter ##
                                                                                               ## !
                                                                                               ## Create
                                                                                               ## printer
                                                                                               ## for
                                                                                               ## redirecting
                                                                                               ## messages
                                                                                               ## into
                                                                                               ## report.
                                                                                               ##
                                                                                               ## !
                                                                                               ## Send
                                                                                               ## a
                                                                                               ## string
                                                                                               ## message
                                                                                               ## with
                                                                                               ## specified
                                                                                               ## trace
                                                                                               ## level.
                                                                                               ##
                                                                                               ## !
                                                                                               ## This
                                                                                               ## method
                                                                                               ## must
                                                                                               ## be
                                                                                               ## redefined
                                                                                               ## in
                                                                                               ## descendant.
    ## !< the report for sending alerts

  HandleMessageMessenger* = Handle[MessageMessenger]
## ! Messenger is API class providing general-purpose interface for
## ! libraries that may issue text messages without knowledge
## ! of how these messages will be further processed.
## !
## ! The messenger contains a sequence of "printers" which can be
## ! customized by the application, and dispatches every received
## ! message to all the printers.
## !
## ! For convenience, a set of methods Send...() returning a string
## ! stream buffer is defined for use of stream-like syntax with operator <<
## !
## ! Example:
## ! ~~~~~
## ! Messenger->SendFail() << " Unknown fail at line " << aLineNo << " in file " << aFile;
## ! ~~~~~
## !
## ! The message is sent to messenger on destruction of the stream buffer,
## ! call to Flush(), or passing manipulator std::ends, std::endl, or std::flush.
## ! Empty messages are not sent except if manipulator is used.

  HandleMessagePrinterOStream* = Handle[MessagePrinterOStream]
## ! Implementation of a message printer associated with an std::ostream
## ! The std::ostream may be either externally defined one (e.g. std::cout),
## ! or file stream maintained internally (depending on constructor).

  HandleMessagePrinterSystemLog* = Handle[MessagePrinterSystemLog]
## ! Implementation of a message printer associated with system log.
## ! Implemented for the following systems:
## ! - Windows, through ReportEventW().
## ! - Android, through __android_log_write().
## ! - UNIX/Linux, through syslog().

