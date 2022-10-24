# PROVIDES: Standard HandleStandardAbortiveTransaction StandardCLocaleSentry StandardCondition HandleStandardConstructionError HandleStandardDimensionError HandleStandardDimensionMismatch HandleStandardDivideByZero HandleStandardDomainError StandardJsonKey StandardDumpValue StandardDump StandardErrorHandler StandardErrorHandlerCallback StandardGUID HandleelementType HandleStandardImmutableObject HandleStandardLicenseError HandleStandardLicenseNotFound StandardMMgrOptTPCallBackFunc StandardMMgrRoot HandleStandardMultiplyDefined StandardMutexSentry HandleStandardNegativeValue HandleStandardNoMoreObject HandleStandardNoSuchObject HandleStandardNotImplemented HandleStandardNullObject HandleStandardNullValue HandleStandardNumericError HandleStandardOutOfMemory HandleStandardOverflow HandleStandardProgramError StandardReadBuffer StandardReadLineBuffer HandleStandardTooManyUsers StandardTransient StandardTransientbaseType TypeInstance StandardTime StandardUtf8Char StandardUtf8UChar HandleStandardTypeMismatch HandleStandardUnderflow StandardFailure StandardMMgrOpt StandardMMgrRaw StandardMMgrTBBalloc StandardPersistent StandardType
# DEPENDS: Streambuf StandardProgramError

type
  Standard* {.importcpp: "Standard", header: "Standard.hxx", bycopy.} = object ## ! Allocates memory blocks
                                                                       ## ! aSize - bytes to  allocate

type
  HandleStandardAbortiveTransaction* = Handle[StandardAbortiveTransaction]

type
  StandardCLocaleSentry* {.importcpp: "Standard_CLocaleSentry",
                          header: "Standard_CLocaleSentry.hxx", bycopy.} = object ## !
                                                                             ## Setup
                                                                             ## current C
                                                                             ## locale to
                                                                             ## "C".
                                                                             ## !
                                                                             ## Copying
                                                                             ## disallowed
    ## !< previous locale, platform-dependent pointer!

type
  StandardCondition* {.importcpp: "Standard_Condition",
                      header: "Standard_Condition.hxx", bycopy.} = object ## ! Default
                                                                     ## constructor.
                                                                     ## ! @param theIsSet Initial flag state
                                                                     ## ! This method should not be called
                                                                     ## (prohibited).

type
  HandleStandardConstructionError* = Handle[StandardConstructionError]

type
  HandleStandardDimensionError* = Handle[StandardDimensionError]

type
  HandleStandardDimensionMismatch* = Handle[StandardDimensionMismatch]

type
  HandleStandardDivideByZero* = Handle[StandardDivideByZero]

type
  HandleStandardDomainError* = Handle[StandardDomainError]

type
  StandardJsonKey* {.size: sizeof(cint), importcpp: "Standard_JsonKey",
                    header: "Standard_Dump.hxx".} = enum
    StandardJsonKeyNone,      ## !< no key
    StandardJsonKeyOpenChild, ## !< "{"
    StandardJsonKeyCloseChild, ## !< "}"
    StandardJsonKeyOpenContainer, ## !< "["
    StandardJsonKeyCloseContainer, ## !< "]"
    StandardJsonKeyQuote,     ## !< "\""
    StandardJsonKeySeparatorKeyToValue, ## !< ": "
    StandardJsonKeySeparatorValueToValue ## !< ", "
## ! Type for storing a dump value with the stream position

type
  StandardDumpValue* {.importcpp: "Standard_DumpValue",
                      header: "Standard_Dump.hxx", bycopy.} = object
    myValue* {.importc: "myValue".}: TCollectionAsciiString ## !< current string value
    myStartPosition* {.importc: "myStartPosition".}: cint ## !< position of the value first char in the whole stream

type
  StandardDump* {.importcpp: "Standard_Dump", header: "Standard_Dump.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Converts
                                                                                     ## stream
                                                                                     ## value
                                                                                     ## to
                                                                                     ## string
                                                                                     ## value.
                                                                                     ## The
                                                                                     ## result
                                                                                     ## is
                                                                                     ## original
                                                                                     ## stream
                                                                                     ## value.
                                                                                     ##
                                                                                     ## !
                                                                                     ## @param
                                                                                     ## theStream
                                                                                     ## source
                                                                                     ## value
                                                                                     ##
                                                                                     ## !
                                                                                     ## @return
                                                                                     ## text
                                                                                     ## presentation
                                                                                     ##
                                                                                     ## !
                                                                                     ## Extracts
                                                                                     ## from
                                                                                     ## the
                                                                                     ## string
                                                                                     ## value
                                                                                     ## a
                                                                                     ## pair
                                                                                     ## (key,
                                                                                     ## value),
                                                                                     ## add
                                                                                     ## it
                                                                                     ## into
                                                                                     ## output
                                                                                     ## container,
                                                                                     ## update
                                                                                     ## index
                                                                                     ## value
                                                                                     ##
                                                                                     ## !
                                                                                     ## Example:
                                                                                     ##
                                                                                     ## !
                                                                                     ## stream
                                                                                     ## string
                                                                                     ## starting
                                                                                     ## the
                                                                                     ## index
                                                                                     ## position
                                                                                     ## contains:
                                                                                     ## ..."key":
                                                                                     ## <value>...
                                                                                     ##
                                                                                     ## !
                                                                                     ## a
                                                                                     ## pair
                                                                                     ## key,
                                                                                     ## value
                                                                                     ## will
                                                                                     ## be
                                                                                     ## added
                                                                                     ## into
                                                                                     ## theValues
                                                                                     ##
                                                                                     ## !
                                                                                     ## at
                                                                                     ## beginning
                                                                                     ## theIndex
                                                                                     ## is
                                                                                     ## the
                                                                                     ## position
                                                                                     ## of
                                                                                     ## the
                                                                                     ## quota
                                                                                     ## before
                                                                                     ## <key>,
                                                                                     ## after
                                                                                     ## the
                                                                                     ## index
                                                                                     ## is
                                                                                     ## the
                                                                                     ## next
                                                                                     ## position
                                                                                     ## after
                                                                                     ## the
                                                                                     ## value
                                                                                     ##
                                                                                     ## !
                                                                                     ## splitDumped(aString)
                                                                                     ## gives
                                                                                     ## theSplitValue
                                                                                     ## =
                                                                                     ## "abc",
                                                                                     ## theTailValue
                                                                                     ## =
                                                                                     ## "defg",
                                                                                     ## theKey
                                                                                     ## =
                                                                                     ## "key"

type
  StandardErrorHandler* {.importcpp: "Standard_ErrorHandler",
                         header: "Standard_ErrorHandler.hxx", bycopy.} = object ## !
                                                                           ## Create a
                                                                           ## ErrorHandler (to be used with
                                                                           ## try{}catch(){}).
                                                                           ## ! It uses the
                                                                           ## "setjmp" and
                                                                           ## "longjmp"
                                                                           ## routines.
                                                                           ## ! A
                                                                           ## exception is
                                                                           ## raised but it is not yet
                                                                           ## caught.
                                                                           ## ! So Abort the
                                                                           ## current
                                                                           ## function and
                                                                           ## transmit the
                                                                           ## exception
                                                                           ## ! to
                                                                           ## "calling
                                                                           ## routines".
                                                                           ## !
                                                                           ## Warning: If no catch is
                                                                           ## prepared for this
                                                                           ## exception, it
                                                                           ## displays the
                                                                           ## !
                                                                           ## exception name and calls
                                                                           ## "exit(1)".
                                                                           ## !
                                                                           ## Defines a base class for
                                                                           ## callback
                                                                           ## objects that can be
                                                                           ## registered
                                                                           ## ! in the OCC error
                                                                           ## handler (the class
                                                                           ## simulating C++
                                                                           ## exceptions)
                                                                           ## ! so as to be
                                                                           ## correctly
                                                                           ## destroyed when error
                                                                           ## handler is
                                                                           ## activated.
                                                                           ## !
                                                                           ## ! Note that this is
                                                                           ## needed only when Open
                                                                           ## CASCADE is
                                                                           ## compiled with
                                                                           ## !
                                                                           ## OCC_CONVERT_SIGNALS
                                                                           ## options (i.e. on
                                                                           ## UNIX/Linux).
                                                                           ## ! In that case,
                                                                           ## raising OCC
                                                                           ## exception
                                                                           ## and/or
                                                                           ## signal will not cause
                                                                           ## ! C++ stack
                                                                           ## unwinding and
                                                                           ## destruction of
                                                                           ## objects
                                                                           ## created in the
                                                                           ## stack.
                                                                           ## !
                                                                           ## ! This class is
                                                                           ## intended to
                                                                           ## protect
                                                                           ## critical
                                                                           ## objects and
                                                                           ## operations in
                                                                           ## ! the try {} catch {} block from being
                                                                           ## bypassed by OCC
                                                                           ## signal or
                                                                           ## exception.
                                                                           ## !
                                                                           ## !
                                                                           ## Inherit your
                                                                           ## object from that
                                                                           ## class,
                                                                           ## implement
                                                                           ## DestroyCallback()
                                                                           ## function,
                                                                           ## ! and call
                                                                           ## Register/Unregister in
                                                                           ## critical
                                                                           ## points.
                                                                           ## !
                                                                           ## ! Note that you must
                                                                           ## ensure that your
                                                                           ## object has life span
                                                                           ## longer than
                                                                           ## ! that of the try {} block in which it calls
                                                                           ## Register().

type
  StandardErrorHandlerCallback* {.importcpp: "Standard_ErrorHandler::Callback",
                                 header: "Standard_ErrorHandler.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Registers
                                                                                   ## this
                                                                                   ## callback
                                                                                   ## object
                                                                                   ## in
                                                                                   ## the
                                                                                   ## current
                                                                                   ## error
                                                                                   ## handler
                                                                                   ## (if
                                                                                   ## found).
                                                                                   ##
                                                                                   ## !
                                                                                   ## Empty
                                                                                   ## constructor

type
  StandardGUID* {.importcpp: "Standard_GUID", header: "Standard_GUID.hxx", bycopy.} = object

type
  Handle*[T] {.importcpp: "opencascade::handle<\'0>",
              header: "Standard_Handle.hxx", bycopy, pure, inheritable.} = object ## ! STL-compliant typedef of contained type
                                                          ## ! Empty constructor
  HandleelementType*[T] = T

type
  HandleStandardImmutableObject* = Handle[StandardImmutableObject]

type
  HandleStandardLicenseError* = Handle[StandardLicenseError]

type
  HandleStandardLicenseNotFound* = Handle[StandardLicenseNotFound]

type
  StandardMMgrOptTPCallBackFunc* = proc (theIsAlloc: bool; theStorage: pointer;
                                      theRoundSize: csize_t; theSize: csize_t) {.
      cdecl.}

type
  StandardMMgrRoot* {.importcpp: "Standard_MMgrRoot",
                     header: "Standard_MMgrRoot.hxx", bycopy.} = object of RootObj ## ! Virtual destructor; required for correct inheritance

type
  HandleStandardMultiplyDefined* = Handle[StandardMultiplyDefined]

type
  StandardMutex* {.importcpp: "Standard_Mutex", header: "Standard_Mutex.hxx", bycopy.} = object #of Callback ## *
                                                                                                  ##  @brief Simple sentry class providing convenient interface to mutex.
                                                                                                  ##
                                                                                                  ##  Provides automatic locking and unlocking a mutex in its constructor
                                                                                                  ##  and destructor, thus ensuring correct unlock of the mutex even in case of
                                                                                                  ##  raising an exception or signal from the protected code.
                                                                                                  ##
                                                                                                  ##  Create instance of that class when entering critical section.
                                                                                                  ##
                                                                                                  ## ! Constructor: creates a mutex object and initializes it.
                                                                                                  ## ! It is strongly recommended that mutexes were created as
                                                                                                  ## ! static objects whenever possible.
                                                                                                  ## ! Callback method to unlock the mutex if OCC exception or signal is raised
#    when (defined(win32) or defined(win32)):
#      discard
#    when not (defined(win32) or defined(win32)):
#      discard
  StandardMutexSentry* {.importcpp: "Standard_Mutex::Sentry",
                        header: "Standard_Mutex.hxx", bycopy.} = object ## ! Constructor - initializes the sentry object by reference to a
                                                                   ## ! mutex (which must be initialized) and locks the mutex immediately
                                                                   ## ! Lock the mutex

type
  HandleStandardNegativeValue* = Handle[StandardNegativeValue]

type
  HandleStandardNoMoreObject* = Handle[StandardNoMoreObject]

type
  HandleStandardNoSuchObject* = Handle[StandardNoSuchObject]

type
  HandleStandardNotImplemented* = Handle[StandardNotImplemented]

type
  HandleStandardNullObject* = Handle[StandardNullObject]

type
  HandleStandardNullValue* = Handle[StandardNullValue]

type
  HandleStandardNumericError* = Handle[StandardNumericError]

type
  HandleStandardOutOfMemory* = Handle[StandardOutOfMemory]

type
  HandleStandardOverflow* = Handle[StandardOverflow]

type
  HandleStandardProgramError* = Handle[StandardProgramError]

type
  StandardReadBuffer* {.importcpp: "Standard_ReadBuffer",
                       header: "Standard_ReadBuffer.hxx", bycopy.} = object ## !
                                                                       ## Constructor with
                                                                       ## initialization.
                                                                       ## ! Read next chunk.
                                                                       ## ! @return pointer to the chunk or NULL on error / end of reading buffer
    ## !< data cache
    ## !< current position within the buffer
    ## !< end of the buffer
    ## !< length of entire data to read
    ## !< amount of data already processed
    ## !< length of single chunk that caller would like to read (e.g. iterator increment)
    ## !< number of cached chunks
    ## !< effective length of the buffer to be read at once (multiple of chunk length)

type
  StandardReadLineBuffer* {.importcpp: "Standard_ReadLineBuffer",
                           header: "Standard_ReadLineBuffer.hxx", bycopy.} = object ## !
                                                                               ## Constructor
                                                                               ## with
                                                                               ## initialization.
                                                                               ## !
                                                                               ## @param
                                                                               ## theMaxBufferSizeBytes
                                                                               ## the
                                                                               ## length
                                                                               ## of
                                                                               ## buffer
                                                                               ## to
                                                                               ## read
                                                                               ## (in
                                                                               ## bytes)
                                                                               ## !
                                                                               ## Read
                                                                               ## from
                                                                               ## stl
                                                                               ## stream.
                                                                               ## !
                                                                               ## @return
                                                                               ## true
                                                                               ## if
                                                                               ## reading
                                                                               ## was
                                                                               ## finished
                                                                               ## without
                                                                               ## errors.
    ## !< Temp read buffer
    ## !< Part of last string of myReadBuffer
    ## !< Flag to use myReadBufferLastStr during next line reading
    ## !< Flag to process of the special multi-line case at the end of the line
    ## !< Flag to put gap space while joining lines in multi-line syntax
    ## !< Current position in myReadBuffer
    ## !< The number of characters that were read last time from myReadBuffer.

type
  HandleStandardTooManyUsers* = Handle[StandardTooManyUsers]

type
  StandardTransient* {.importcpp: "Standard_Transient",
                      header: "Standard_Transient.hxx", byref, pure, inheritable.} = object ##  Standard OCCT memory allocation stuff
                                                                     ## ! Empty constructor
                                                                     ## !@name Support of run-time type information (RTTI)
                                                                     ## !@name Reference counting, for use by handle<>
                                                                     ## ! Get the reference counter of this object
                                                                     ## ! Reference counter.
                                                                     ## ! Note use of underscore, aimed to reduce probability
                                                                     ## ! of conflict with names of members of derived classes.

type
  StandardTransientbaseType* = void

type
  TypeInstance*[T] {.importcpp: "opencascade::type_instance<\'0>",
                    header: "Standard_Type.hxx", bycopy.} = object

type
#  cint* = cint
  StandardReal* = cdouble
#  bool* = bool
  StandardShortReal* = cfloat
#  cchar* = char
  StandardByte* = cuchar
#  pointer* = pointer
#  csize_t* = csize_t
  StandardTime* {.importcpp:"std::time_t".} = object
##  Unicode primitives, char16_t, char32_t

type
  StandardUtf8Char* = char
## !< signed   UTF-8 char

type
  StandardUtf8UChar* = cuchar
## !< unsigned UTF-8 char
#when ((defined(gnuc) and not defined(clang) and
#    ((gnuc == 4 and gnuc_Minor <= 3) or gnuc < 4)) or
#    (defined(msc_Ver) and (msc_Ver < 1600))):
#  ##  compatibility with old GCC and MSVC compilers
#  type
#    StandardExtCharacter* = uint16T
#    StandardUtf16Char* = uint16T
#    StandardUtf32Char* = uint32T
#else:
#  type
#    StandardExtCharacter* = char16T
#    StandardUtf16Char* = char16T
#  ## !< UTF-16 char (always unsigned)
#  type
#    StandardUtf32Char* = char32T
#  ## !< UTF-32 char (always unsigned)
#type
#  StandardWideChar* = WcharT
#
## !< wide char (unsigned UTF-16 on Windows platform and signed UTF-32 on Linux)
##

type
  HandleStandardTypeMismatch* = Handle[StandardTypeMismatch]

  HandleStandardTypeMismatch* = Handle[StandardTypeMismatch]
type
  HandleStandardUnderflow* = Handle[StandardUnderflow]


type
  StandardFailure* {.importcpp: "Standard_Failure", header: "Standard_Failure.hxx",
                    bycopy.} = object of StandardTransient ## ! Creates a status object of type "Failure".
                                                      ## ! Used only if standard C++ exceptions are used.
                                                      ## ! Throws exception of the same type as this by C++ throw,
                                                      ## ! and stores current object as last thrown exception,
                                                      ## ! to be accessible by method Caught()

type
  StandardMMgrOpt* {.importcpp: "Standard_MMgrOpt", header: "Standard_MMgrOpt.hxx",
                    bycopy.} = object of StandardMMgrRoot ## ! Constructor. If aClear is True, the allocated emmory will be
                                                     ## ! nullified. For description of other parameters, see description
                                                     ## ! of the class above.
                                                     ## ! Internal - initialization of buffers
    ## !< option to clear allocated memory
    ## !< last allocated index in the free blocks list
    ## !< free blocks list
    ## !< small blocks size
    ## !< size (pages) for small block memory pools
    ## !< system-dependent memory page size
    ## !< list of memory pools for small blocks
    ## !< next free address in the active memory pool
    ## !< end of the active memory pool
    ## !< non-null if using memory mapped files for allocation of large blocks
    ## !< large block size
    ## !< Mutex to protect free lists data
    ## !< Mutex to protect small block pools data

type
  StandardMMgrRaw* {.importcpp: "Standard_MMgrRaw", header: "Standard_MMgrRaw.hxx",
                    bycopy.} = object of StandardMMgrRoot ## ! Constructor; if aClear is True, the memory will be nullified
                                                     ## ! upon allocation.
    ## ! Option to nullify allocated memory

type
  StandardMMgrTBBalloc* {.importcpp: "Standard_MMgrTBBalloc",
                         header: "Standard_MMgrTBBalloc.hxx", bycopy.} = object of StandardMMgrRoot ##
                                                                                             ## !
                                                                                             ## Constructor;
                                                                                             ## if
                                                                                             ## aClear
                                                                                             ## is
                                                                                             ## True,
                                                                                             ## the
                                                                                             ## memory
                                                                                             ## will
                                                                                             ## be
                                                                                             ## nullified
                                                                                             ##
                                                                                             ## !
                                                                                             ## upon
                                                                                             ## allocation.
    ## ! Option to nullify allocated memory

type
  StandardPersistent* {.importcpp: "Standard_Persistent",
                       header: "Standard_Persistent.hxx", bycopy.} = object of StandardTransient

type
  StandardType* {.importcpp: "Standard_Type", header: "Standard_Type.hxx", bycopy.} = object of StandardTransient ##
                                                                                                        ## !
                                                                                                        ## Returns
                                                                                                        ## the
                                                                                                        ## system
                                                                                                        ## type
                                                                                                        ## name
                                                                                                        ## of
                                                                                                        ## the
                                                                                                        ## class
                                                                                                        ## (typeinfo.name)
                                                                                                        ##
                                                                                                        ## !
                                                                                                        ## Constructor
                                                                                                        ## is
                                                                                                        ## private
    ## !< System name of the class (typeinfo.name)
    ## !< Given name of the class
    ## !< Size of the class instance, in bytes
    ## !< Type descriptor of parent class

type
  Streambuf* {.importcpp:"std::streambuf".} = object of RootObj
  Streamsize* {.importcpp:"std::streamsize".} = object
  StandardArrayStreamBuffer* {.importcpp: "Standard_ArrayStreamBuffer",
                              header: "Standard_ArrayStreamBuffer.hxx", bycopy.} = object of Streambuf ##
                                                                                                ## !
                                                                                                ## Main
                                                                                                ## constructor.
                                                                                                ##
                                                                                                ## !
                                                                                                ## Passed
                                                                                                ## pointer
                                                                                                ## is
                                                                                                ## stored
                                                                                                ## as
                                                                                                ## is
                                                                                                ## (memory
                                                                                                ## is
                                                                                                ## NOT
                                                                                                ## copied
                                                                                                ## nor
                                                                                                ## released
                                                                                                ## with
                                                                                                ## destructor).
                                                                                                ##
                                                                                                ## !
                                                                                                ## @param
                                                                                                ## theBegin
                                                                                                ## pointer
                                                                                                ## to
                                                                                                ## the
                                                                                                ## beggining
                                                                                                ## of
                                                                                                ## pre-allocated
                                                                                                ## buffer
                                                                                                ##
                                                                                                ## !
                                                                                                ## @param
                                                                                                ## theSize
                                                                                                ## length
                                                                                                ## of
                                                                                                ## pre-allocated
                                                                                                ## buffer
                                                                                                ##
                                                                                                ## !
                                                                                                ## Get
                                                                                                ## character
                                                                                                ## on
                                                                                                ## underflow.
                                                                                                ##
                                                                                                ## !
                                                                                                ## Virtual
                                                                                                ## function
                                                                                                ## called
                                                                                                ## by
                                                                                                ## other
                                                                                                ## member
                                                                                                ## functions
                                                                                                ## to
                                                                                                ## get
                                                                                                ## the
                                                                                                ## current
                                                                                                ## character
                                                                                                ##
                                                                                                ## !
                                                                                                ## in
                                                                                                ## the
                                                                                                ## controlled
                                                                                                ## input
                                                                                                ## sequence
                                                                                                ## without
                                                                                                ## changing
                                                                                                ## the
                                                                                                ## current
                                                                                                ## position.
                                                                                                ##
                                                                                                ## !
                                                                                                ## Read
                                                                                                ## a
                                                                                                ## bunch
                                                                                                ## of
                                                                                                ## bytes
                                                                                                ## at
                                                                                                ## once.
                                                                                                ##
                                                                                                ## copying
                                                                                                ## is
                                                                                                ## not
                                                                                                ## allowed

type
  StandardOutOfMemory* {.importcpp: "Standard_OutOfMemory",
                        header: "Standard_OutOfMemory.hxx", bycopy.} = object of StandardProgramError ##
                                                                                               ## !
                                                                                               ## Constructor
                                                                                               ## is
                                                                                               ## kept
                                                                                               ## public
                                                                                               ## for
                                                                                               ## backward
                                                                                               ## compatibility

