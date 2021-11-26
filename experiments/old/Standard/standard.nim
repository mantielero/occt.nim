##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.


discard "forward decl of Standard_ErrorHandler"
discard "forward decl of Standard_Persistent"
discard "forward decl of Standard_Transient"
discard "forward decl of Standard_Failure"
const
  Standard_GUID_SIZE* = 36
  Standard_GUID_SIZE_ALLOC* = Standard_GUID_SIZE + 1
  Standard_False* = false
  Standard_True* = true

#[
when ((defined(GNUC) and not defined(clang) and
    ((GNUC == 4 and GNUC_MINOR <= 3) or GNUC < 4)) or
    (defined(MSC_VER) and (MSC_VER < 1600))):
  ##  compatibility with old GCC and MSVC compilers
  type
    Standard_ExtCharacter* = uint16_t
    Standard_Utf16Char* = uint16_t
    Standard_Utf32Char* = uint32_t
else:
  type
    Standard_ExtCharacter* = char16_t
    Standard_Utf16Char* = char16_t
  ## !< UTF-16 char (always unsigned)
  type
    Standard_Utf32Char* = char32_t
  ## !< UTF-32 char (always unsigned)
]#
type
  Standard_WideChar* = cushort
#[
when (defined(MSC_VER) and (MSC_VER < 1600)):
  ##  old MSVC - hasn't stdint header
  type
    uint8_t*  = cuchar
    uint16_t* = cushort
    uint32_t* = cuint32
    uint64_t* = cuint
    int8_t*   = cschar
    int16_t*  = cshort
    int32_t*  = cint32
    int64_t*  = cint
else:
  discard

when (defined(MSC_VER) and (MSC_VER < 1800)):
  ##  only Visual Studio 2013 (vc12) provides <cinttypes> header
  ##  we do not defined all macros here - only used by OCCT framework
  const
    PRId64* = "I64d"
    PRIu64* = "I64u"
    SCNd64* = "I64d"
    SCNu64* = "I64u"
  when defined(WIN64):
    const
      PRIdPTR* = "I64d"
      PRIuPTR* = "I64u"
      SCNdPTR* = "I64d"
      SCNuPTR* = "I64u"
  else:
    const
      PRIdPTR* = "d"
      PRIuPTR* = "u"
      SCNdPTR* = "d"
      SCNuPTR* = "u"
else:
  ##  should be just <cinttypes> since C++11
  ##  however we use this code for compatibility with old C99 compilers

]#




## !< unsigned UTF-8 char


## !< wide char (unsigned UTF-16 on Windows platform and signed UTF-32 on Linux)
##

# type
#   Standard_CString* = ptr Standard_Character
#   Standard_ExtString* = ptr Standard_ExtCharacter

type
  Standard_Integer* = cint
  Standard_Real* = cdouble
  Standard_Boolean* = bool
  Standard_ShortReal* = cfloat
  Standard_Character* = char
  Standard_Byte* = cuchar
  Standard_Address* = pointer
  Standard_Size* = csize_t
  #Standard_Time* = time_t

  #  Unicode primitives, char16_t, char32_t
  Standard_Utf8Char* = char

  # !< signed   UTF-8 char
  Standard_Utf8UChar* = cuchar

  Standard_ThreadId* = Standard_Size    
  #Standard_SStream* = stringstream
  #Standard_IStream* = istream    
  enable_ifconditional*[Condition: static[bool]; TypeTrue; TypeFalse] {.
      importcpp: "opencascade::std::enable_if<\'0>::conditional<\'1,\'2,\'3>",
      header: "Standard_Std.hxx", bycopy.} = object

  enable_ifconditionaltype*[TypeTrue] = TypeTrue  
  Standard_GUID* {.importcpp: "Standard_GUID", header: "Standard_GUID.hxx", bycopy.} = object


  Standard_HandlerStatus* {.size: sizeof(cint),
                           importcpp: "Standard_HandlerStatus",
                           header: "Standard_HandlerStatus.hxx".} = enum
    Standard_HandlerVoid, Standard_HandlerJumped, Standard_HandlerProcessed

  Standard* {.importcpp: "Standard", header: "Standard.hxx", bycopy.} = object ## ! Allocates memory blocks
                                                                       ## ! aSize - bytes to  allocate
  #Handle_Standard_UnderflowStandard_Underflow* = handle[Standard_Underflow]

  Handle_Standard_AbortiveTransactionStandard_AbortiveTransaction* = handle[
      Standard_AbortiveTransaction]

  Standard_CLocaleSentry* {.importcpp: "Standard_CLocaleSentry",
                           header: "Standard_CLocaleSentry.hxx", bycopy.} = object

  Standard_CLocaleSentryclocale_t* = pointer

  Standard_Condition* {.importcpp: "Standard_Condition",
                       header: "Standard_Condition.hxx", bycopy.} = object ## ! Default
                                                                      ## constructor.
                                                                      ## ! @param theIsSet Initial flag state

  Standard_MMgrOptTPCallBackFunc* = proc (theIsAlloc: Standard_Boolean;
                                       theStorage: Standard_Address;
                                       theRoundSize: Standard_Size;
                                       theSize: Standard_Size)

  Standard_MMgrRoot* {.importcpp: "Standard_MMgrRoot",
                      header: "Standard_MMgrRoot.hxx", bycopy.} = object ## ! Virtual destructor; required for correct inheritance


  Standard_Transient* {.importcpp: "Standard_Transient",
                       header: "Standard_Transient.hxx", bycopy.} = object ##  Standard OCCT memory allocation stuff
                                                                      ## ! Empty constructor
                                                                      ## !@name Support of run-time type information (RTTI)
                                                                      ## !@name Reference counting, for use by handle<>
                                                                      ## ! Get the reference counter of this object
                                                                      ## ! Reference counter.
                                                                      ## ! Note use of underscore, aimed to reduce probability
                                                                      ## ! of conflict with names of members of derived classes.


  Standard_MMgrTBBalloc* {.importcpp: "Standard_MMgrTBBalloc",
                          header: "Standard_MMgrTBBalloc.hxx", bycopy.} = object of Standard_MMgrRoot ##
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

  Handle_Standard_LicenseErrorStandard_LicenseError* = handle[
      Standard_LicenseError]
  Handle_Standard_DimensionErrorStandard_DimensionError* = handle[
      Standard_DimensionError]

  Handle_Standard_ConstructionErrorStandard_ConstructionError* = handle[
      Standard_ConstructionError]

  Handle_Standard_DimensionMismatchStandard_DimensionMismatch* = handle[
      Standard_DimensionMismatch]

  Handle_Standard_DivideByZeroStandard_DivideByZero* = handle[
      Standard_DivideByZero]    

  Handle_Standard_DomainErrorStandard_DomainError* = handle[Standard_DomainError]

  Handle_Standard_ImmutableObjectStandard_ImmutableObject* = handle[
      Standard_ImmutableObject]

  Handle_Standard_LicenseNotFoundStandard_LicenseNotFound* = handle[
      Standard_LicenseNotFound]      

  Handle_Standard_NoMoreObjectStandard_NoMoreObject* = handle[
      Standard_NoMoreObject]
  Handle_Standard_NoSuchObjectStandard_NoSuchObject* = handle[
      Standard_NoSuchObject]
  Handle_Standard_NotImplementedStandard_NotImplemented* = handle[
      Standard_NotImplemented]
  Handle_Standard_NullObjectStandard_NullObject* = handle[Standard_NullObject]
  Handle_Standard_NullValueStandard_NullValue* = handle[Standard_NullValue]
  Handle_Standard_NumericErrorStandard_NumericError* = handle[
      Standard_NumericError]
  Handle_Standard_Transient* = handle[Standard_Transient]  
  Handle_Standard_TypeMismatchStandard_TypeMismatch* = handle[
      Standard_TypeMismatch]      
  Standard_OStream* = ostream
  Handle_Standard_OutOfMemory* = handle[Standard_OutOfMemory]      
  Standard_DumpValue* {.importcpp: "Standard_DumpValue",
                       header: "Standard_Dump.hxx", bycopy.} = object
    myValue* {.importc: "myValue".}: TCollection_AsciiString ## !< current string value
    myStartPosition* {.importc: "myStartPosition".}: Standard_Integer ## !< position of the value first char in the whole stream


  Handle_Standard_NegativeValueStandard_NegativeValue* = handle[
      Standard_NegativeValue]

  Standard_OutOfMemory* {.importcpp: "Standard_OutOfMemory",
                         header: "Standard_OutOfMemory.hxx", bycopy.} = object of Standard_ProgramError ##
                                                                                                 ## !
                                                                                                 ## Constructor
                                                                                                 ## is
                                                                                                 ## kept
                                                                                                 ## public
                                                                                                 ## for
                                                                                                 ## backward
                                                                                                 ## compatibility
    
  Standard_OutOfMemorybase_type* = Standard_ProgramError
  Handle_Standard_OutOfRangeStandard_OutOfRange* = handle[Standard_OutOfRange]
  Handle_Standard_OverflowStandard_Overflow* = handle[Standard_Overflow]
  Handle_Standard_Failure* = handle[Standard_Failure]

  Handle_Standard_MultiplyDefinedStandard_MultiplyDefined* = handle[
      Standard_MultiplyDefined]
  Standard_Mutex* {.importcpp: "Standard_Mutex", header: "Standard_Mutex.hxx", bycopy.} = object of Callback ## *
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

  Standard_MutexSentry* {.importcpp: "Standard_Mutex::Sentry",
                         header: "Standard_Mutex.hxx", bycopy.} = object ## ! Constructor - initializes the sentry object by reference to a
                                                                    ## ! mutex (which must be initialized) and locks the mutex immediately
                                                                    ## ! Lock the mutex

  Standard_PByte* = ptr Standard_Byte
  Standard_PCharacter* = ptr Standard_Character
  Standard_PErrorHandler* = ptr Standard_ErrorHandler
  Standard_PExtCharacter* = ptr Standard_ExtCharacter
  Standard_Persistent* {.importcpp: "Standard_Persistent",
                        header: "Standard_Persistent.hxx", bycopy.} = object of Standard_Transient
  Standard_Persistentbase_type* = Standard_Transient
  Handle_Standard_ProgramErrorStandard_ProgramError* = handle[
      Standard_ProgramError]

  Handle_Standard_RangeErrorStandard_RangeError* = handle[Standard_RangeError]

  Handle_Standard_TooManyUsersStandard_TooManyUsers* = handle[
      Standard_TooManyUsers]  
  Standard_ReadBuffer* {.importcpp: "Standard_ReadBuffer",
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


  enable_ifconditionalis_base_but_not_sameis_integerdisable_deduction*[TheType] {.importcpp: "opencascade::enable_if<\'0>::conditional<\'1,\'2>::is_base_but_not_same<\'3,\'4>::is_integer<\'5>::disable_deduction<\'6>",
      header: "Standard_Std.hxx", bycopy.} = object

  enable_ifconditionalis_base_but_not_sameis_integerdisable_deductiontype*[
      TheType] = TheType

  Standard_Transientbase_type* = void      
## ! Forms the root of the entire exception hierarchy.
# when defined(WIN32):
#   discard
else:
  type
    GUID* {.importcpp: "GUID", header: "Standard_UUID.hxx", bycopy.} = object
      Data1* {.importc: "Data1".}: culong
      Data2* {.importc: "Data2".}: cushort
      Data3* {.importc: "Data3".}: cushort
      Data4* {.importc: "Data4".}: array[8, cuchar]

type
  Standard_UUID* = GUID

  Standard_Failure* {.importcpp: "Standard_Failure",
                     header: "Standard_Failure.hxx", bycopy.} = object of Standard_Transient ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## a
                                                                                      ## status
                                                                                      ## object
                                                                                      ## of
                                                                                      ## type
                                                                                      ## "Failure".
                                                                                      ##
                                                                                      ## !
                                                                                      ## Used
                                                                                      ## only
                                                                                      ## if
                                                                                      ## standard
                                                                                      ## C++
                                                                                      ## exceptions
                                                                                      ## are
                                                                                      ## used.
                                                                                      ##
                                                                                      ## !
                                                                                      ## Throws
                                                                                      ## exception
                                                                                      ## of
                                                                                      ## the
                                                                                      ## same
                                                                                      ## type
                                                                                      ## as
                                                                                      ## this
                                                                                      ## by
                                                                                      ## C++
                                                                                      ## throw,
                                                                                      ##
                                                                                      ## !
                                                                                      ## and
                                                                                      ## stores
                                                                                      ## current
                                                                                      ## object
                                                                                      ## as
                                                                                      ## last
                                                                                      ## thrown
                                                                                      ## exception,
                                                                                      ##
                                                                                      ## !
                                                                                      ## to
                                                                                      ## be
                                                                                      ## accessible
                                                                                      ## by
                                                                                      ## method
                                                                                      ## Caught()


  Standard_ErrorHandlerCallback* {.importcpp: "Standard_ErrorHandler::Callback",
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


  Standard_ErrorHandler* {.importcpp: "Standard_ErrorHandler",
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
                                                                            ## ! So
                                                                            ## Abort the
                                                                            ## current
                                                                            ## function and
                                                                            ## transmit the
                                                                            ## exception
                                                                            ## ! to
                                                                            ## "calling
                                                                            ## routines".
                                                                            ## !
                                                                            ## Warning: If no
                                                                            ## catch is
                                                                            ## prepared for this
                                                                            ## exception, it
                                                                            ## displays the
                                                                            ## !
                                                                            ## exception name and
                                                                            ## calls
                                                                            ## "exit(1)".
                                                                            ## !
                                                                            ## Defines a base
                                                                            ## class for
                                                                            ## callback
                                                                            ## objects that can be
                                                                            ## registered
                                                                            ## ! in the OCC
                                                                            ## error
                                                                            ## handler (the
                                                                            ## class
                                                                            ## simulating C++
                                                                            ## exceptions)
                                                                            ## ! so as to be
                                                                            ## correctly
                                                                            ## destroyed when
                                                                            ## error
                                                                            ## handler is
                                                                            ## activated.
                                                                            ## !
                                                                            ## ! Note that this is
                                                                            ## needed only when Open
                                                                            ## CASCADE is
                                                                            ## compiled with
                                                                            ## !
                                                                            ## OCC_CONVERT_SIGNALS
                                                                            ## options
                                                                            ## (i.e. on
                                                                            ## UNIX/Linux).
                                                                            ## ! In that
                                                                            ## case,
                                                                            ## raising OCC
                                                                            ## exception
                                                                            ## and/or
                                                                            ## signal will not
                                                                            ## cause
                                                                            ## ! C++
                                                                            ## stack
                                                                            ## unwinding and
                                                                            ## destruction of
                                                                            ## objects
                                                                            ## created in the
                                                                            ## stack.
                                                                            ## !
                                                                            ## ! This
                                                                            ## class is
                                                                            ## intended to
                                                                            ## protect
                                                                            ## critical
                                                                            ## objects and
                                                                            ## operations in
                                                                            ## ! the try {}
                                                                            ## catch {}
                                                                            ## block from
                                                                            ## being
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
                                                                            ## ! that of the try {}
                                                                            ## block in
                                                                            ## which it
                                                                            ## calls
                                                                            ## Register().


  Standard_Dump* {.importcpp: "Standard_Dump", header: "Standard_Dump.hxx", bycopy.} = object ##
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




  Standard_ArrayStreamBuffer* {.importcpp: "Standard_ArrayStreamBuffer",
                               header: "Standard_ArrayStreamBuffer.hxx", bycopy.} = object of streambuf ##
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


  Standard_MMgrOpt* {.importcpp: "Standard_MMgrOpt",
                     header: "Standard_MMgrOpt.hxx", bycopy.} = object of Standard_MMgrRoot ##
                                                                                     ## !
                                                                                     ## Constructor.
                                                                                     ## If
                                                                                     ## aClear
                                                                                     ## is
                                                                                     ## True,
                                                                                     ## the
                                                                                     ## allocated
                                                                                     ## emmory
                                                                                     ## will
                                                                                     ## be
                                                                                     ##
                                                                                     ## !
                                                                                     ## nullified.
                                                                                     ## For
                                                                                     ## description
                                                                                     ## of
                                                                                     ## other
                                                                                     ## parameters,
                                                                                     ## see
                                                                                     ## description
                                                                                     ##
                                                                                     ## !
                                                                                     ## of
                                                                                     ## the
                                                                                     ## class
                                                                                     ## above.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Internal
                                                                                     ## -
                                                                                     ## initialization
                                                                                     ## of
                                                                                     ## buffers
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

  Standard_MMgrRaw* {.importcpp: "Standard_MMgrRaw",
                     header: "Standard_MMgrRaw.hxx", bycopy.} = object of Standard_MMgrRoot ##
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

  Standard_ReadLineBuffer* {.importcpp: "Standard_ReadLineBuffer",
                            header: "Standard_ReadLineBuffer.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Constructor
                                                                                ## with
                                                                                ## initialization.
                                                                                ##
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
                                                                                ##
                                                                                ## !
                                                                                ## Read
                                                                                ## from
                                                                                ## stl
                                                                                ## stream.
                                                                                ##
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




proc Allocate*(aSize: Standard_Size): Standard_Address {.
    importcpp: "Standard::Allocate(@)", header: "Standard.hxx".}
proc Free*(thePtr: Standard_Address) {.importcpp: "Standard::Free(@)",
                                    header: "Standard.hxx".}
proc Free*[T](thePtr: ptr T) {.importcpp: "Standard::Free(@)", header: "Standard.hxx".}
proc Reallocate*(aStorage: Standard_Address; aNewSize: Standard_Size): Standard_Address {.
    importcpp: "Standard::Reallocate(@)", header: "Standard.hxx".}
proc AllocateAligned*(theSize: Standard_Size; theAlign: Standard_Size): Standard_Address {.
    importcpp: "Standard::AllocateAligned(@)", header: "Standard.hxx".}
proc FreeAligned*(thePtrAligned: Standard_Address) {.
    importcpp: "Standard::FreeAligned(@)", header: "Standard.hxx".}
proc FreeAligned*[T](thePtrAligned: ptr T) {.importcpp: "Standard::FreeAligned(@)",
    header: "Standard.hxx".}
proc Purge*(): Standard_Integer {.importcpp: "Standard::Purge(@)",
                               header: "Standard.hxx".}
##  include definition of handle to make it always visible
##  (put at the and of the file due to cyclic dependency between headers)


##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_AbortiveTransaction_HeaderFile [NewLine] # _Standard_AbortiveTransaction_HeaderFile [NewLine] # Standard_Type.hxx [NewLine] # Standard_DefineException.hxx [NewLine] # Standard_SStream.hxx [NewLine] # Standard_Failure.hxx [NewLine] class Standard_AbortiveTransaction ;
## Error: expected ';'!!!

discard "forward decl of Standard_AbortiveTransaction"


## !!!Ignored construct:  # ! defined No_Exception && ! defined No_Standard_AbortiveTransaction [NewLine] # if ( CONDITION ) throw Standard_AbortiveTransaction ( MESSAGE ) ;
## Error: did not expect [NewLine]!!!

## !!!Ignored construct:  [NewLine] # [NewLine] # [NewLine] # [NewLine] DEFINE_STANDARD_EXCEPTION ( Standard_AbortiveTransaction , Standard_Failure ) #  _Standard_AbortiveTransaction_HeaderFile [NewLine]
## Error: did not expect [NewLine]!!!
##  Copyright (c) 1998-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.


## ! Returns a hash code of the given memory pointer
## ! @param thePointer the memory pointer which hash code it to be computed
## ! @param theUpperBound the upper bound of the range a resulting hash code must be within
## ! @return a value of a computed hash code, in range [1, UpperBound]

proc HashCode*(thePointer: pointer; theUpperBound: Standard_Integer): Standard_Integer =
  discard

## ============================================================================
##  IsEqual : Returns Standard_True if two CString have the same value
## ============================================================================

proc IsEqual*(One: Standard_Address; Two: Standard_Address): Standard_Boolean =
  discard
##  Copyright (c) 2016 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.


##  Suppress VC9 warning on xsputn() function

when defined(_MSC_VER):
## ! Custom buffer object implementing STL interface std::streambuf for streamed reading from allocated memory block.
## ! Implements minimal sub-set of methods for passing buffer to std::istream, including seek support.
## !
## ! This class can be used for creating a seekable input stream in cases,
## ! when the source data does not satisfies Reader requirements (non-seekable stream, compressed data)
## ! or represents an in-memory resource.
## !
## ! The memory itself is NOT managed by this class - it is up to the caller to ensure that passed memory pointer
## ! is not released during Standard_ArrayStreamBuffer lifetime.
## !
## ! Usage example:
## ! @code
## !   const char*  theBuffer;
## !   const size_t theBufferLength;
## !   Standard_ArrayStreamBuffer aStreamBuffer (theBuffer, theBufferLength);
## !   std::istream aStream (&aStreamBuffer);
## !   TopoDS_Shape aShape;
## !   BRep_Builder aBuilder;
## !   BRepTools::Read (aShape, aStream, aBuilder);
## ! @endcode

proc constructStandard_ArrayStreamBuffer*(theBegin: cstring; theSize: csize_t): Standard_ArrayStreamBuffer {.
    constructor, importcpp: "Standard_ArrayStreamBuffer(@)",
    header: "Standard_ArrayStreamBuffer.hxx".}
proc destroyStandard_ArrayStreamBuffer*(this: var Standard_ArrayStreamBuffer) {.
    importcpp: "#.~Standard_ArrayStreamBuffer()",
    header: "Standard_ArrayStreamBuffer.hxx".}
proc Init*(this: var Standard_ArrayStreamBuffer; theBegin: cstring; theSize: csize_t) {.
    importcpp: "Init", header: "Standard_ArrayStreamBuffer.hxx".}
proc xsgetn*(this: var Standard_ArrayStreamBuffer; thePtr: cstring;
            theCount: streamsize): streamsize {.importcpp: "xsgetn",
    header: "Standard_ArrayStreamBuffer.hxx".}
when defined(_MSC_VER):
  discard##  Created on: 2007-09-04
##  Created by: Andrey BETENEV
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.
## ! @file
## ! Implementation of some atomic operations (elementary operations
## ! with data that cannot be interrupted by parallel threads in the
## ! multithread process) on various platforms
## !
## ! By the moment, only operations necessary for reference counter
## ! in Standard_Transient objects are implemented.
## !
## ! This is preffered to use fixed size types "int32_t" / "int64_t" for
## ! correct function declarations however we leave "int" assuming it is 32bits for now.

## !!!Ignored construct:  # _Standard_Atomic_HeaderFile [NewLine] # _Standard_Atomic_HeaderFile [NewLine] ! Increments atomically integer variable pointed by theValue
## ! and returns resulting incremented value. inline int Standard_Atomic_Increment ( volatile int * theValue ) ;
## Error: identifier expected, but got: {!!!

## ! Decrements atomically integer variable pointed by theValue
## ! and returns resulting decremented value.

proc Standard_Atomic_Decrement*(theValue: ptr cint): cint {.
    importcpp: "Standard_Atomic_Decrement(@)", header: "Standard_Atomic.hxx".}
## ! Perform an atomic compare and swap.
## ! That is, if the current value of *theValue is theOldValue, then write theNewValue into *theValue.
## ! @param theValue    pointer to variable to modify
## ! @param theOldValue expected value to perform modification
## ! @param theNewValue new value to set in case if *theValue was equal to theOldValue
## ! @return TRUE if theNewValue has been set to *theValue

proc Standard_Atomic_CompareAndSwap*(theValue: ptr cint; theOldValue: cint;
                                    theNewValue: cint): bool {.
    importcpp: "Standard_Atomic_CompareAndSwap(@)", header: "Standard_Atomic.hxx".}
##  Platform-dependent implementation

## !!!Ignored construct:  # defined ( __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 ) || defined ( __EMSCRIPTEN__ ) [NewLine]  gcc explicitly defines the macros __GCC_HAVE_SYNC_COMPARE_AND_SWAP_*
##  starting with version 4.4+, although built-in functions
##  are available since 4.1.x. However unless __GCC_HAVE_SYNC_COMPARE_AND_SWAP_*
##  are defined, linking may fail without specifying -march option when
##  building for 32bit architecture on 64bit (using -m32 option). To avoid
##  making -march mandatory, check for __GCC_HAVE_SYNC_COMPARE_AND_SWAP_* is
##  enforced. int Standard_Atomic_Increment ( volatile int * theValue ) { return __sync_add_and_fetch ( theValue , 1 ) ; } int Standard_Atomic_Decrement ( volatile int * theValue ) { return __sync_sub_and_fetch ( theValue , 1 ) ; } bool Standard_Atomic_CompareAndSwap ( volatile int * theValue , int theOldValue , int theNewValue ) { return __sync_val_compare_and_swap ( theValue , theOldValue , theNewValue ) == theOldValue ; } # defined ( _WIN32 ) [NewLine] extern C { long _InterlockedIncrement ( volatile long * lpAddend ) ; long _InterlockedDecrement ( volatile long * lpAddend ) ; long _InterlockedCompareExchange ( long volatile * Destination , long Exchange , long Comparand ) ; } # defined ( _MSC_VER ) && ! defined ( __INTEL_COMPILER ) [NewLine]  force intrinsic instead of WinAPI calls # intrinsic ( _InterlockedIncrement ) [NewLine] # intrinsic ( _InterlockedDecrement ) [NewLine] # intrinsic ( _InterlockedCompareExchange ) [NewLine] # [NewLine]  WinAPI function or MSVC intrinsic
##  Note that we safely cast int* to long*, as they have same size and endian-ness int Standard_Atomic_Increment ( volatile int * theValue ) { return _InterlockedIncrement ( reinterpret_cast < volatile long * > ( theValue ) ) ; } int Standard_Atomic_Decrement ( volatile int * theValue ) { return _InterlockedDecrement ( reinterpret_cast < volatile long * > ( theValue ) ) ; } bool Standard_Atomic_CompareAndSwap ( volatile int * theValue , int theOldValue , int theNewValue ) { return _InterlockedCompareExchange ( reinterpret_cast < volatile long * > ( theValue ) , theNewValue , theOldValue ) == theOldValue ; } # defined ( __APPLE__ ) [NewLine]  use atomic operations provided by MacOS # < libkern / OSAtomic . h > [NewLine] int Standard_Atomic_Increment ( volatile int * theValue ) { return OSAtomicIncrement32Barrier ( theValue ) ; } int Standard_Atomic_Decrement ( volatile int * theValue ) { return OSAtomicDecrement32Barrier ( theValue ) ; } bool Standard_Atomic_CompareAndSwap ( volatile int * theValue , int theOldValue , int theNewValue ) { return OSAtomicCompareAndSwapInt ( theOldValue , theNewValue , theValue ) ; } # defined ( __ANDROID__ ) [NewLine]  Atomic operations that were exported by the C library didn't
##  provide any memory barriers, which created potential issues on
##  multi-core devices. Starting from ndk version r7b they are defined as
##  inlined calls to GCC sync builtins, which always provide a full barrier.
##  It is strongly recommended to use newer versions of ndk. # < sys / atomics . h > [NewLine] int Standard_Atomic_Increment ( volatile int * theValue ) { return __atomic_inc ( theValue ) + 1 ;  analog of __sync_fetch_and_add } int Standard_Atomic_Decrement ( volatile int * theValue ) { return __atomic_dec ( theValue ) - 1 ;  analog of __sync_fetch_and_sub } bool Standard_Atomic_CompareAndSwap ( volatile int * theValue , int theOldValue , int theNewValue ) { return __atomic_cmpxchg ( theOldValue , theNewValue , theValue ) == 0 ; } # [NewLine] # IGNORE_NO_ATOMICS [NewLine] # Atomic operation isn't implemented for current platform! [NewLine] # [NewLine] int Standard_Atomic_Increment ( volatile int * theValue ) { return ++ ( * theValue ) ; } int Standard_Atomic_Decrement ( volatile int * theValue ) { return -- ( * theValue ) ; } bool Standard_Atomic_CompareAndSwap ( volatile int * theValue , int theOldValue , int theNewValue ) { if ( * theValue == theOldValue ) { * theValue = theNewValue ; return true ; } return false ; } # [NewLine] # _Standard_Atomic_HeaderFile [NewLine]
## Error: identifier expected, but got: {!!!
##  Copyright (c) 1998-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## typedef unsigned integer  Standard_Boolean;


##  Copyright (c) 1998-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## typedef unsigned char  Standard_Byte;


##  Created on: 2013-01-17
##  Created by: Kirill GAVRILOV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_CLocaleSentry_H__ [NewLine] # _Standard_CLocaleSentry_H__ [NewLine] # Standard_Macro.hxx [NewLine] # < locale . h > [NewLine] # defined ( __APPLE__ ) [NewLine] # < xlocale . h > [NewLine] # [NewLine] # [NewLine] ! @def OCCT_CLOCALE_POSIX2008
## !
## ! POSIX.1-2008 extends C locale API by providing methods like newlocale/freelocale/uselocale.
## ! Presence of this extension cannot be checked in straightforward way (like (_POSIX_C_SOURCE >= 200809L))
## ! due to missing such declarations in standard.
## ! On macOS new functions are declared within "xlocale.h" header (the same is for glibc, but this header has been removed since glibc 2.26). # defined ( __APPLE__ ) [NewLine] # [NewLine] # [NewLine] ! We check _GNU_SOURCE for glibc extensions here and it is always defined by g++ compiler. # defined ( _GNU_SOURCE ) && ! defined ( __ANDROID__ ) [NewLine] # [NewLine] # [NewLine] # [NewLine] # ! defined ( __ANDROID__ ) [NewLine] ! This class intended to temporary switch C locale and logically equivalent to setlocale(LC_ALL, "C").
## ! It is intended to format text regardless of user locale settings (for import/export functionality).
## ! Thus following calls to sprintf, atoi and other functions will use "C" locale.
## ! Destructor of this class will return original locale.
## !
## ! Notice that this functionality is platfrom dependent and intended only to workaround alien code
## ! that doesn't setup locale correctly.
## !
## ! Internally you should prefer more portable C++ locale interfaces
## ! or OCCT wrappers to some C functions like Sprintf, Atof, Strtod. class Standard_CLocaleSentry { public : ! Setup current C locale to "C". Standard_CLocaleSentry ( ) ; ! Restore previous locale. ~ Standard_CLocaleSentry ( ) ; public : # [NewLine] typedef locale_t clocale_t ; # defined ( _MSC_VER ) [NewLine] typedef _locale_t clocale_t ; # [NewLine] typedef void * clocale_t ; # [NewLine] ! @return locale "C" instance (locale_t within xlocale or _locale_t within Windows)
## ! to be used for _l functions with locale argument. static clocale_t GetCLocale ( ) ; private : void * myPrevLocale ; !< previous locale, platform-dependent pointer! # _MSC_VER [NewLine] int myPrevTLocaleState ; !< previous thread-locale state, MSVCRT-specific # [NewLine] private : ! Copying disallowed Standard_CLocaleSentry ( const Standard_CLocaleSentry & ) ; Standard_CLocaleSentry & operator = ( const Standard_CLocaleSentry & ) ; } ;
## Error: identifier expected, but got: [NewLine]!!!

## ! C/C++ runtime on Android currently supports only C-locale, no need to call anything.




proc constructStandard_CLocaleSentry*(): Standard_CLocaleSentry {.constructor,
    importcpp: "Standard_CLocaleSentry(@)", header: "Standard_CLocaleSentry.hxx".}


proc GetCLocale*(): Standard_CLocaleSentryclocale_t {.
    importcpp: "Standard_CLocaleSentry::GetCLocale(@)",
    header: "Standard_CLocaleSentry.hxx".}##  Copyright (c) 1998-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.
## !@file
## ! Functions working with plain C strings



when defined(_MSC_VER) and not defined(strcasecmp):
  const
    strcasecmp* = _stricmp
##  C++ only definitions

## ! Equivalent of standard C function atof() that always uses C locale

proc Atof*(theStr: cstring): cdouble {.importcpp: "Atof(@)",
                                   header: "Standard_CString.hxx".}
## ! Optimized equivalent of standard C function strtod() that always uses C locale

proc Strtod*(theStr: cstring; theNextPtr: cstringArray): cdouble {.
    importcpp: "Strtod(@)", header: "Standard_CString.hxx".}
## ! Equivalent of standard C function printf() that always uses C locale

proc Printf*(theFormat: cstring): cint {.varargs, importcpp: "Printf(@)",
                                     header: "Standard_CString.hxx".}
## ! Equivalent of standard C function fprintf() that always uses C locale

proc Fprintf*(theFile: ptr FILE; theFormat: cstring): cint {.varargs,
    importcpp: "Fprintf(@)", header: "Standard_CString.hxx".}
## ! Equivalent of standard C function sprintf() that always uses C locale

proc Sprintf*(theBuffer: cstring; theFormat: cstring): cint {.varargs,
    importcpp: "Sprintf(@)", header: "Standard_CString.hxx".}
## ! Equivalent of standard C function vsprintf() that always uses C locale.
## ! Note that this function does not check buffer bounds and should be used with precaution measures
## ! (only with format fitting into the buffer of known size).
## ! @param theBuffer  [in] [out] string buffer to fill
## ! @param theFormat  [in] format to apply
## ! @param theArgList [in] argument list for specified format
## ! @return the total number of characters written, or a negative number on error

proc Vsprintf*(theBuffer: cstring; theFormat: cstring; theArgList: va_list): cint {.
    importcpp: "Vsprintf(@)", header: "Standard_CString.hxx".}##  Copyright (c) 1998-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.
## ============================================================================
## ==== Titre: Standard_Character.hxx
## ==== Role : The header file of primitve type "Character" from package
## ====        "Standard"
## ====
## ==== Implementation:  This is a primitive type implemented as typedef
## ====        typedef char Standard_Character
## ============================================================================



##  ------------------------------------------------------------------
##  IsEqual : Returns Standard_True if two characters have the same value
##  ------------------------------------------------------------------

proc IsEqual*(One: Standard_Character; Two: Standard_Character): Standard_Boolean =
  discard

##  ===============================================
##  Character classification functions
##
##  NOTE: Character classification routines in C standard library
##  (isdigit(), isalpha() etc.) have integer argument instead of char.
##  Therefore if character from extended Ascii part of char table
##  (i.e. above 128) is passed into such functions it is converted
##  to int giving negative value (if characters are signed that
##  is default for most compilers).
##  It can be dangerous since implementation of these C functions
##  may use argument as index in the array without any checks
##  (for instance, in Microsoft VC++ -- see MSDN)
##  To avoid this, we cast char to unsigned char when passing to these functions.
##  ===============================================
##  ==================================================================
##  IsAlphabetic : Returns Standard_True if a character is alphabetic
##  ==================================================================

proc IsAlphabetic*(me: Standard_Character): Standard_Boolean =
  discard

##  ==================================================================
##  IsDigit : Returns Standard_True if a character is a digit
##  ==================================================================

proc IsDigit*(me: Standard_Character): Standard_Boolean =
  discard

##  ==================================================================
##  IsXDigit : Returns Standard_True if a character is a digit
##  ==================================================================

proc IsXDigit*(me: Standard_Character): Standard_Boolean =
  discard

##  ==================================================================
##  IsAlphanumeric : Returns Standard_True if a character is alphanumeric
##  ==================================================================

proc IsAlphanumeric*(me: Standard_Character): Standard_Boolean =
  discard

##  ==================================================================
##  IsControl : Returns Standard_True if a character  is a control character
##  ==================================================================

proc IsControl*(me: Standard_Character): Standard_Boolean =
  discard

##  ==================================================================
##  IsGraphic : Returns Standard_True if a character is graphic
##  ==================================================================

proc IsGraphic*(me: Standard_Character): Standard_Boolean =
  discard

##  ==================================================================
##  IsLowerCase : Returns Standard_True if a character is lowercase
##  ==================================================================

proc IsLowerCase*(me: Standard_Character): Standard_Boolean =
  discard

##  ==================================================================
##  IsPrintable : Returns Standard_True if a character is printable
##  ==================================================================

proc IsPrintable*(me: Standard_Character): Standard_Boolean =
  discard

##  ==================================================================
##  IsPunctuation : Returns Standard_True if a character is a graphic and
##                  not a alphanumeric character
##  ==================================================================

proc IsPunctuation*(me: Standard_Character): Standard_Boolean =
  discard

##  ==================================================================
##  IsSpace : Returns Standard_True if a character is a space
##  ==================================================================

proc IsSpace*(me: Standard_Character): Standard_Boolean =
  discard

##  ==================================================================
##  IsUppercase : Returns Standard_True if a character is uppercase
##  ==================================================================

proc IsUpperCase*(me: Standard_Character): Standard_Boolean =
  discard

##  ==================================================================
##  LowerCase : Returns a lowercase character
##  ==================================================================

proc LowerCase*(me: Standard_Character): Standard_Character =
  discard

##  ==================================================================
##  UpperCase : Returns a uppercase character
##  ==================================================================

proc UpperCase*(me: Standard_Character): Standard_Character =
  discard
##  Created by: Kirill Gavrilov
##  Copyright (c) 2018 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.


## ! This is boolean flag intended for communication between threads.
## ! One thread sets this flag to TRUE to indicate some event happened
## ! and another thread either waits this event or checks periodically its state to perform job.
## !
## ! This class provides interface similar to WinAPI Event objects.




proc constructStandard_Condition*(theIsSet: bool): Standard_Condition {.constructor,
    importcpp: "Standard_Condition(@)", header: "Standard_Condition.hxx".}
proc destroyStandard_Condition*(this: var Standard_Condition) {.
    importcpp: "#.~Standard_Condition()", header: "Standard_Condition.hxx".}
proc Set*(this: var Standard_Condition) {.importcpp: "Set",
                                      header: "Standard_Condition.hxx".}
proc Reset*(this: var Standard_Condition) {.importcpp: "Reset",
                                        header: "Standard_Condition.hxx".}
proc Wait*(this: var Standard_Condition) {.importcpp: "Wait",
                                       header: "Standard_Condition.hxx".}
proc Wait*(this: var Standard_Condition; theTimeMilliseconds: cint): bool {.
    importcpp: "Wait", header: "Standard_Condition.hxx".}
proc Check*(this: var Standard_Condition): bool {.importcpp: "Check",
    header: "Standard_Condition.hxx".}
proc CheckReset*(this: var Standard_Condition): bool {.importcpp: "CheckReset",
    header: "Standard_Condition.hxx".}
## !!!Ignored construct:  # _WIN32 [NewLine] ! Access native HANDLE to Event object. void * getHandle ( ) const { return myEvent ; } # [NewLine] private : ! This method should not be called (prohibited). Standard_Condition ( const Standard_Condition & theCopy ) ;
## Error: identifier expected, but got: ! Access native HANDLE to Event object.!!!
##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_ConstructionError_HeaderFile [NewLine] # _Standard_ConstructionError_HeaderFile [NewLine] # Standard_Type.hxx [NewLine] # Standard_DefineException.hxx [NewLine] # Standard_SStream.hxx [NewLine] # Standard_DomainError.hxx [NewLine] class Standard_ConstructionError ;
## Error: expected ';'!!!

discard "forward decl of Standard_ConstructionError"


## !!!Ignored construct:  # ! defined No_Exception && ! defined No_Standard_ConstructionError [NewLine] # if ( CONDITION ) throw Standard_ConstructionError ( MESSAGE ) ;
## Error: did not expect [NewLine]!!!

## !!!Ignored construct:  [NewLine] # [NewLine] # [NewLine] # [NewLine] DEFINE_STANDARD_EXCEPTION ( Standard_ConstructionError , Standard_DomainError ) #  _Standard_ConstructionError_HeaderFile [NewLine]
## Error: did not expect [NewLine]!!!
##  Created on: 2012-01-19
##  Created by: Dmitry BOBYLEV
##  Copyright (c) 2012-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_DefineAlloc_HeaderFile [NewLine] # _Standard_DefineAlloc_HeaderFile [NewLine]  Macro to override new and delete operators for arrays.
##  Defined to empty for old SUN compiler # defined ( __SUNPRO_CC ) && ( __SUNPRO_CC <= 0x530 ) [NewLine] # [NewLine] # [NewLine] # void * operator new [ ] ( size_t theSize ) { return Standard :: Allocate ( theSize ) ; } void operator delete [ ] ( void * theAddress ) { Standard :: Free ( theAddress ) ; } [NewLine] # [NewLine]  Macro to override placement new and placement delete operators.
##  For Borland C and old SUN compilers do not define placement delete
##  as it is not supported. # defined ( __BORLANDC__ ) || ( defined ( __SUNPRO_CC ) && ( __SUNPRO_CC <= 0x530 ) ) [NewLine] # DEFINE_STANDARD_ALLOC_PLACEMENT void * operator new ( size_t , void * theAddress ) { return theAddress ; } [NewLine] # [NewLine] # DEFINE_STANDARD_ALLOC_PLACEMENT void * operator new ( size_t , void * theAddress ) { return theAddress ; } void operator delete ( void * , void * ) { } [NewLine] # [NewLine]  Macro to override operators new and delete to use OCC memory manager # void * operator new ( size_t theSize ) { return Standard :: Allocate ( theSize ) ; } void operator delete ( void * theAddress ) { Standard :: Free ( theAddress ) ; } DEFINE_STANDARD_ALLOC_PLACEMENT [NewLine]  Declare operator new in global scope for old sun compiler # WORKAROUND_SUNPRO_NEW_PLACEMENT [NewLine] # WORKAROUND_SUNPRO_NEW_PLACEMENT [NewLine] # defined ( __SUNPRO_CC ) && ( __SUNPRO_CC <= 0x420 ) [NewLine] inline void * operator new ( size_t , void * anAddress ) { return anAddress ; } # [NewLine] # [NewLine] ! @def STANDARD_ALIGNED(theAlignment, theType, theVar)
## ! Declare variable with memory alignment.
## ! @code
## !   static const STANDARD_ALIGNED(8, char, THE_ARRAY)[] = {0xFF, 0xFE, 0xFA, 0xFB, 0xFF, 0x11, 0x22, 0x33};
## ! @endcode # defined ( _MSC_VER ) [NewLine] # STANDARD_ALIGNED ( theAlignment , theType , theVar ) __declspec ( align ( theAlignment ) ) theType theVar [NewLine] # defined ( __GNUC__ ) [NewLine] # STANDARD_ALIGNED ( theAlignment , theType , theVar ) theType __attribute__ ( ( aligned ( theAlignment ) ) ) theVar [NewLine] # [NewLine] # STANDARD_ALIGNED ( theAlignment , theType , theVar ) theType theVar [NewLine] # [NewLine] #  _Standard_DefineAlloc_HeaderFile [NewLine]
## Error: token expected: ) but got: [identifier]!!!
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.



## ! Defines an exception class \a C1 that inherits an exception class \a C2.
## ! \a C2 must be Standard_Failure or its ancestor.
##     The macro defines empty constructor, copy constructor and static methods Raise() and NewInstance().
##     Since Standard_Failure implements class manipulated by handle, DEFINE_STANDARD_RTTI macro is also
##     added to enable RTTI.
##
##     When using DEFINE_STANDARD_EXCEPTION in your code make sure you also insert a macro
##     DEFINE_STANDARD_HANDLE(C1,C2) before it.
##

template DEFINE_STANDARD_EXCEPTION*(C1, C2: untyped): void =
  type
    C1* {.importcpp: "C1", header: "Standard_DefineException.hxx", bycopy.} = object of C2

  proc constructC1*(): C1 {.constructor, importcpp: "C1(@)",
                         header: "Standard_DefineException.hxx".}
  proc constructC1*(theMessage: Standard_CString): C1 {.constructor,
      importcpp: "C1(@)", header: "Standard_DefineException.hxx".}
  proc Raise*(theMessage: Standard_CString = "") {.importcpp: "C1::Raise(@)",
      header: "Standard_DefineException.hxx".}
  proc Raise*(theMessage: var Standard_SStream) {.importcpp: "C1::Raise(@)",
      header: "Standard_DefineException.hxx".}
  proc NewInstance*(theMessage: Standard_CString = ""): handle[C1] {.
      importcpp: "C1::NewInstance(@)", header: "Standard_DefineException.hxx".}
  type
    C1base_type* = C2
  proc get_type_name*(): cstring {.importcpp: "C1::get_type_name(@)",
                                header: "Standard_DefineException.hxx".}
  proc get_type_descriptor*(): handle[Standard_Type] {.
      importcpp: "C1::get_type_descriptor(@)",
      header: "Standard_DefineException.hxx".}
  proc DynamicType*(this: C1): handle[Standard_Type] {.noSideEffect,
      importcpp: "DynamicType", header: "Standard_DefineException.hxx".}

## ! Obsolete macro, kept for compatibility with old code
##  Copyright (c) 1998-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## ! @file
## ! This file provides obsolete low-level helper macros used to define OCCT handles and types,
## ! for compatibility with previous versions of OCCT.
## ! Since OCCT 7.0, relevant macros are provided by Standard_Type.hxx and Standard_Handle.hxx.



discard "forward decl of Standard_Transient"
discard "forward decl of Standard_Persistent"
discard "forward decl of Standard_Type"##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_DimensionError_HeaderFile [NewLine] # _Standard_DimensionError_HeaderFile [NewLine] # Standard_Type.hxx [NewLine] # Standard_DefineException.hxx [NewLine] # Standard_SStream.hxx [NewLine] # Standard_DomainError.hxx [NewLine] class Standard_DimensionError ;
## Error: expected ';'!!!

discard "forward decl of Standard_DimensionError"


## !!!Ignored construct:  # ! defined No_Exception && ! defined No_Standard_DimensionError [NewLine] # if ( CONDITION ) throw Standard_DimensionError ( MESSAGE ) ;
## Error: did not expect [NewLine]!!!

## !!!Ignored construct:  [NewLine] # [NewLine] # [NewLine] # [NewLine] DEFINE_STANDARD_EXCEPTION ( Standard_DimensionError , Standard_DomainError ) #  _Standard_DimensionError_HeaderFile [NewLine]
## Error: did not expect [NewLine]!!!
##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_DimensionMismatch_HeaderFile [NewLine] # _Standard_DimensionMismatch_HeaderFile [NewLine] # Standard_Type.hxx [NewLine] # Standard_DefineException.hxx [NewLine] # Standard_SStream.hxx [NewLine] # Standard_DimensionError.hxx [NewLine] class Standard_DimensionMismatch ;
## Error: expected ';'!!!

discard "forward decl of Standard_DimensionMismatch"


## !!!Ignored construct:  # ! defined No_Exception && ! defined No_Standard_DimensionMismatch [NewLine] # if ( CONDITION ) throw Standard_DimensionMismatch ( MESSAGE ) ;
## Error: did not expect [NewLine]!!!

## !!!Ignored construct:  [NewLine] # [NewLine] # [NewLine] # [NewLine] DEFINE_STANDARD_EXCEPTION ( Standard_DimensionMismatch , Standard_DimensionError ) #  _Standard_DimensionMismatch_HeaderFile [NewLine]
## Error: did not expect [NewLine]!!!
##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_DivideByZero_HeaderFile [NewLine] # _Standard_DivideByZero_HeaderFile [NewLine] # Standard_Type.hxx [NewLine] # Standard_DefineException.hxx [NewLine] # Standard_SStream.hxx [NewLine] # Standard_NumericError.hxx [NewLine] class Standard_DivideByZero ;
## Error: expected ';'!!!

discard "forward decl of Standard_DivideByZero"


## !!!Ignored construct:  # ! defined No_Exception && ! defined No_Standard_DivideByZero [NewLine] # if ( CONDITION ) throw Standard_DivideByZero ( MESSAGE ) ;
## Error: did not expect [NewLine]!!!

## !!!Ignored construct:  [NewLine] # [NewLine] # [NewLine] # [NewLine] DEFINE_STANDARD_EXCEPTION ( Standard_DivideByZero , Standard_NumericError ) #  _Standard_DivideByZero_HeaderFile [NewLine]
## Error: did not expect [NewLine]!!!
##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_DomainError_HeaderFile [NewLine] # _Standard_DomainError_HeaderFile [NewLine] # Standard_Type.hxx [NewLine] # Standard_DefineException.hxx [NewLine] # Standard_SStream.hxx [NewLine] # Standard_Failure.hxx [NewLine] class Standard_DomainError ;
## Error: expected ';'!!!

discard "forward decl of Standard_DomainError"

## !!!Ignored construct:  # ! defined No_Exception && ! defined No_Standard_DomainError [NewLine] # if ( CONDITION ) throw Standard_DomainError ( MESSAGE ) ;
## Error: did not expect [NewLine]!!!

## !!!Ignored construct:  [NewLine] # [NewLine] # [NewLine] # [NewLine] DEFINE_STANDARD_EXCEPTION ( Standard_DomainError , Standard_Failure ) #  _Standard_DomainError_HeaderFile [NewLine]
## Error: did not expect [NewLine]!!!
##  Copyright (c) 2019 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_Dump_HeaderFile [NewLine] # _Standard_Dump_HeaderFile [NewLine] # ../NCollection/NCollection_IndexedDataMap.hxx [NewLine] # ../NCollection/NCollection_List.hxx [NewLine] # Standard_SStream.hxx [NewLine] # ../TCollection/TCollection_AsciiString.hxx [NewLine] !@file
## ! The file contains interface to prepare dump output for OCCT objects. Format of the dump is JSON.
## !
## ! To prepare this output, implement method DumpJson in the object and use macro functions from this file.
## ! Macros have one parameter for both, key and the value. It is a field of the current class. Macro has internal analyzer that
## ! uses the variable name to generate key. If the parameter has prefix symbols "&", "*" and "my", it is cut.
## !
## ! - OCCT_DUMP_FIELD_VALUE_NUMERICAL. Use it for fields of numerical C++ types, like int, float, double. It creates a pair "key", "value",
## ! - OCCT_DUMP_FIELD_VALUE_STRING. Use it for char* type. It creates a pair "key", "value",
## ! - OCCT_DUMP_FIELD_VALUE_POINTER. Use it for pointer fields. It creates a pair "key", "value", where the value is the pointer address,
## ! - OCCT_DUMP_FIELD_VALUES_DUMPED. Use it for fields that has own Dump implementation. It expects the pointer to the class instance.
## !     It creates "key": { result of dump of the field }
## ! - OCCT_DUMP_FIELD_VALUES_NUMERICAL. Use it for unlimited list of fields of C++ double type.
## !     It creates massive of values [value_1, value_2, ...]
## ! - OCCT_DUMP_FIELD_VALUES_STRING. Use it for unlimited list of fields of TCollection_AsciiString types.
## !     It creates massive of values ["value_1", "value_2", ...]
## ! - OCCT_DUMP_BASE_CLASS. Use if Dump implementation of the class is virtual, to perform ClassName::Dump() of the parent class,
## !     expected parameter is the parent class name.
## !     It creates "key": { result of dump of the field }
## ! - OCCT_DUMP_VECTOR_CLASS. Use it as a single row in some object dump to have one row in output.
## !     It's possible to use it without necessity of OCCT_DUMP_CLASS_BEGIN call.
## !     It creates massive of values [value_1, value_2, ...]
## !
## ! The Dump result prepared by these macros is an output stream, it is not arranged with spaces and line feed.
## ! To have output in a more readable way, use ConvertToAlignedString method for obtained stream. ! Converts the class type into a string value # OCCT_CLASS_NAME ( theClass ) # [NewLine] ! @def OCCT_DUMP_CLASS_BEGIN
## ! Creates an instance of Sentry to cover the current Dump implementation with keys of start and end.
## ! This row should be inserted before other macros. The end key will be added by the sentry remove,
## ! (exit of the method). # OCCT_DUMP_CLASS_BEGIN ( theOStream , theField ) { const char * className = OCCT_CLASS_NAME ( theField ) ; OCCT_DUMP_FIELD_VALUE_STRING ( theOStream , className ) } [NewLine] ! @def OCCT_DUMP_TRANSIENT_CLASS_BEGIN
## ! Creates an instance of Sentry to cover the current Dump implementation with keys of start and end.
## ! This row should be inserted before other macros. The end key will be added by the sentry remove,
## ! (exit of the method). # OCCT_DUMP_TRANSIENT_CLASS_BEGIN ( theOStream ) { const char * className = get_type_name ( ) ; OCCT_DUMP_FIELD_VALUE_STRING ( theOStream , className ) } [NewLine] ! @def OCCT_DUMP_FIELD_VALUE_NUMERICAL
## ! Append into output value: "Name": Field # OCCT_DUMP_FIELD_VALUE_NUMERICAL ( theOStream , theField ) { TCollection_AsciiString aName = Standard_Dump :: DumpFieldToName ( # ) ; Standard_Dump :: AddValuesSeparator ( theOStream ) ; theOStream << " << aName << ":  << theField ; } [NewLine] ! @def OCCT_INIT_FIELD_VALUE_REAL
## ! Append vector values into output value: "Name": [value_1, value_2, ...]
## ! This macro is intended to have only one row for dumped object in Json.
## ! It's possible to use it without necessity of OCCT_DUMP_CLASS_BEGIN call, but pay attention that it should be only one row in the object dump. # OCCT_INIT_FIELD_VALUE_REAL ( theOStream , theStreamPos , theField ) { Standard_Integer aStreamPos = theStreamPos ; if ( ! Standard_Dump :: ProcessFieldName ( theOStream , # , aStreamPos ) ) return Standard_False ; TCollection_AsciiString aValueText ; if ( ! Standard_Dump :: InitValue ( theOStream , aStreamPos , aValueText ) || ! aValueText . IsRealValue ( ) ) return Standard_False ; theField = aValueText . RealValue ( ) ; theStreamPos = aStreamPos ; } [NewLine] ! @def OCCT_INIT_FIELD_VALUE_NUMERICAL
## ! Append vector values into output value: "Name": [value_1, value_2, ...]
## ! This macro is intended to have only one row for dumped object in Json.
## ! It's possible to use it without necessity of OCCT_DUMP_CLASS_BEGIN call, but pay attention that it should be only one row in the object dump. # OCCT_INIT_FIELD_VALUE_INTEGER ( theOStream , theStreamPos , theField ) { Standard_Integer aStreamPos = theStreamPos ; if ( ! Standard_Dump :: ProcessFieldName ( theOStream , # , aStreamPos ) ) return Standard_False ; TCollection_AsciiString aValueText ; if ( ! Standard_Dump :: InitValue ( theOStream , aStreamPos , aValueText ) || ! aValueText . IsIntegerValue ( ) ) return Standard_False ; theField = aValueText . IntegerValue ( ) ; theStreamPos = aStreamPos ; } [NewLine] ! @def OCCT_DUMP_FIELD_VALUE_STRING
## ! Append into output value: "Name": "Field" # OCCT_DUMP_FIELD_VALUE_STRING ( theOStream , theField ) { TCollection_AsciiString aName = Standard_Dump :: DumpFieldToName ( # ) ; Standard_Dump :: AddValuesSeparator ( theOStream ) ; theOStream << " << aName << ": " << theField << " ; } [NewLine] ! @def OCCT_DUMP_FIELD_VALUE_POINTER
## ! Append into output value: "Name": "address of the pointer" # OCCT_DUMP_FIELD_VALUE_POINTER ( theOStream , theField ) { TCollection_AsciiString aName = Standard_Dump :: DumpFieldToName ( # ) ; Standard_Dump :: AddValuesSeparator ( theOStream ) ; theOStream << " << aName << ": " << Standard_Dump :: GetPointerInfo ( theField ) << " ; } [NewLine] ! @def OCCT_DUMP_FIELD_VALUE_STRING
## ! Append into output value: "Name": "Field" # OCCT_DUMP_FIELD_VALUE_GUID ( theOStream , theField ) { TCollection_AsciiString aName = Standard_Dump :: DumpFieldToName ( # ) ; Standard_Dump :: AddValuesSeparator ( theOStream ) ; char aStr [ Standard_GUID_SIZE_ALLOC ] ; theField . ToCString ( aStr ) ; theOStream << " << aName << ": " << aStr << " ; } [NewLine] ! @def OCCT_DUMP_FIELD_VALUES_DUMPED
## ! Append into output value: "Name": { field dumped values }
## ! It computes Dump of the fields. The expected field is a pointer.
## ! Use this macro for fields of the dumped class which has own Dump implementation.
## ! The macros is recursive. Recursion is stopped when the depth value becomes equal to zero.
## ! Depth = -1 is the default value, dump here is unlimited. # OCCT_DUMP_FIELD_VALUES_DUMPED ( theOStream , theDepth , theField ) { if ( theDepth != 0 && ( void * ) ( theField ) != NULL ) { Standard_SStream aFieldStream ; ( theField ) -> DumpJson ( aFieldStream , theDepth - 1 ) ; TCollection_AsciiString aName = Standard_Dump :: DumpFieldToName ( # ) ; Standard_Dump :: DumpKeyToClass ( theOStream , aName , Standard_Dump :: Text ( aFieldStream ) ) ; } } [NewLine] ! @def OCCT_INIT_FIELD_VALUES_DUMPED
## ! Append into output value: "Name": { field dumped values }
## ! It computes Dump of the fields. The expected field is a pointer.
## ! Use this macro for fields of the dumped class which has own Dump implementation.
## ! The macros is recursive. Recursion is stopped when the depth value becomes equal to zero.
## ! Depth = -1 is the default value, dump here is unlimited. # OCCT_INIT_FIELD_VALUES_DUMPED ( theSStream , theStreamPos , theField ) { if ( ( theField ) == NULL || ! ( theField ) -> InitFromJson ( theSStream , theStreamPos ) ) return Standard_False ; } [NewLine] ! @def OCCT_DUMP_FIELD_VALUES_NUMERICAL
## ! Append real values into output values in an order: [value_1, value_2, ...]
## ! It computes Dump of the parent. The expected field is a parent class name to call ClassName::Dump. # OCCT_DUMP_FIELD_VALUES_NUMERICAL ( theOStream , theName , theCount , ... ) { Standard_Dump :: AddValuesSeparator ( theOStream ) ; theOStream << " << theName << ": [ ; Standard_Dump :: DumpRealValues ( theOStream , theCount , __VA_ARGS__ ) ; theOStream << ] ; } [NewLine] ! @def OCCT_DUMP_FIELD_VALUES_STRING
## ! Append real values into output values in an order: ["value_1", "value_2", ...]
## ! It computes Dump of the parent. The expected field is a parent class name to call ClassName::Dump. # OCCT_DUMP_FIELD_VALUES_STRING ( theOStream , theName , theCount , ... ) { Standard_Dump :: AddValuesSeparator ( theOStream ) ; theOStream << " << theName << ": [ ; Standard_Dump :: DumpCharacterValues ( theOStream , theCount , __VA_ARGS__ ) ; theOStream << ] ; } [NewLine] ! @def OCCT_DUMP_BASE_CLASS
## ! Append into output value: "Name": { field dumped values }
## ! It computes Dump of the parent. The expected field is a parent class name to call ClassName::Dump.
## ! Use this macro for parent of the current class.
## ! The macros is recursive. Recursive is stoped when the depth value becomes equal to zero.
## ! Depth = -1 is the default value, dump here is unlimited. # OCCT_DUMP_BASE_CLASS ( theOStream , theDepth , theField ) { if ( theDepth != 0 ) { Standard_Dump :: AddValuesSeparator ( theOStream ) ; theField :: DumpJson ( theOStream , theDepth - 1 ) ; } } [NewLine] ! @def OCCT_DUMP_VECTOR_CLASS
## ! Append vector values into output value: "Name": [value_1, value_2, ...]
## ! This macro is intended to have only one row for dumped object in Json.
## ! It's possible to use it without necessity of OCCT_DUMP_CLASS_BEGIN call, but pay attention that it should be only one row in the object dump. # OCCT_DUMP_VECTOR_CLASS ( theOStream , theName , theCount , ... ) { Standard_Dump :: AddValuesSeparator ( theOStream ) ; theOStream << " << theName << ": [ ; Standard_Dump :: DumpRealValues ( theOStream , theCount , __VA_ARGS__ ) ; theOStream << ] ; } [NewLine] ! @def OCCT_INIT_VECTOR_CLASS
## ! Append vector values into output value: "Name": [value_1, value_2, ...]
## ! This macro is intended to have only one row for dumped object in Json.
## ! It's possible to use it without necessity of OCCT_DUMP_CLASS_BEGIN call, but pay attention that it should be only one row in the object dump. # OCCT_INIT_VECTOR_CLASS ( theOStream , theName , theStreamPos , theCount , ... ) { Standard_Integer aStreamPos = theStreamPos ; if ( ! Standard_Dump :: ProcessStreamName ( theOStream , theName , aStreamPos ) ) return Standard_False ; if ( ! Standard_Dump :: InitRealValues ( theOStream , aStreamPos , theCount , __VA_ARGS__ ) ) return Standard_False ; theStreamPos = aStreamPos ; } [NewLine] ! Kind of key in Json string enum Standard_JsonKey { Standard_JsonKey_None , !< no key Standard_JsonKey_OpenChild , !< "{" Standard_JsonKey_CloseChild , !< "}" Standard_JsonKey_OpenContainer , !< "[" Standard_JsonKey_CloseContainer , !< "]" Standard_JsonKey_Quote , !< "\"" Standard_JsonKey_SeparatorKeyToValue , !< ": " Standard_JsonKey_SeparatorValueToValue !< ", " } ;
## Error: did not expect #!!!

## ! Type for storing a dump value with the stream position


proc constructStandard_DumpValue*(): Standard_DumpValue {.constructor,
    importcpp: "Standard_DumpValue(@)", header: "Standard_Dump.hxx".}
proc constructStandard_DumpValue*(theValue: TCollection_AsciiString;
                                 theStartPos: Standard_Integer): Standard_DumpValue {.
    constructor, importcpp: "Standard_DumpValue(@)", header: "Standard_Dump.hxx".}
## ! This interface has some tool methods for stream (in JSON format) processing.


proc Text*(theStream: Standard_SStream): TCollection_AsciiString {.
    importcpp: "Standard_Dump::Text(@)", header: "Standard_Dump.hxx".}
proc FormatJson*(theStream: Standard_SStream; theIndent: Standard_Integer = 3): TCollection_AsciiString {.
    importcpp: "Standard_Dump::FormatJson(@)", header: "Standard_Dump.hxx".}
proc SplitJson*(theStreamStr: TCollection_AsciiString; theKeyToValues: var NCollection_IndexedDataMap[
    TCollection_AsciiString, Standard_DumpValue]): Standard_Boolean {.
    importcpp: "Standard_Dump::SplitJson(@)", header: "Standard_Dump.hxx".}
proc HierarchicalValueIndices*(theValues: NCollection_IndexedDataMap[
    TCollection_AsciiString, TCollection_AsciiString]): NCollection_List[
    Standard_Integer] {.importcpp: "Standard_Dump::HierarchicalValueIndices(@)",
                       header: "Standard_Dump.hxx".}
proc HasChildKey*(theSourceValue: TCollection_AsciiString): Standard_Boolean {.
    importcpp: "Standard_Dump::HasChildKey(@)", header: "Standard_Dump.hxx".}
proc JsonKeyToString*(theKey: Standard_JsonKey): Standard_CString {.
    importcpp: "Standard_Dump::JsonKeyToString(@)", header: "Standard_Dump.hxx".}
proc JsonKeyLength*(theKey: Standard_JsonKey): Standard_Integer {.
    importcpp: "Standard_Dump::JsonKeyLength(@)", header: "Standard_Dump.hxx".}
proc AddValuesSeparator*(theOStream: var Standard_OStream) {.
    importcpp: "Standard_Dump::AddValuesSeparator(@)", header: "Standard_Dump.hxx".}
proc GetPointerPrefix*(): TCollection_AsciiString {.
    importcpp: "Standard_Dump::GetPointerPrefix(@)", header: "Standard_Dump.hxx".}
proc GetPointerInfo*(thePointer: handle[Standard_Transient];
                    isShortInfo: bool = true): TCollection_AsciiString {.
    importcpp: "Standard_Dump::GetPointerInfo(@)", header: "Standard_Dump.hxx".}
proc GetPointerInfo*(thePointer: pointer; isShortInfo: bool = true): TCollection_AsciiString {.
    importcpp: "Standard_Dump::GetPointerInfo(@)", header: "Standard_Dump.hxx".}
proc DumpKeyToClass*(theOStream: var Standard_OStream;
                    theKey: TCollection_AsciiString;
                    theField: TCollection_AsciiString) {.
    importcpp: "Standard_Dump::DumpKeyToClass(@)", header: "Standard_Dump.hxx".}
proc DumpCharacterValues*(theOStream: var Standard_OStream; theCount: cint) {.varargs,
    importcpp: "Standard_Dump::DumpCharacterValues(@)",
    header: "Standard_Dump.hxx".}
proc DumpRealValues*(theOStream: var Standard_OStream; theCount: cint) {.varargs,
    importcpp: "Standard_Dump::DumpRealValues(@)", header: "Standard_Dump.hxx".}
proc ProcessStreamName*(theStreamStr: TCollection_AsciiString;
                       theName: TCollection_AsciiString;
                       theStreamPos: var Standard_Integer): Standard_Boolean {.
    importcpp: "Standard_Dump::ProcessStreamName(@)", header: "Standard_Dump.hxx".}
proc ProcessFieldName*(theStreamStr: TCollection_AsciiString;
                      theName: TCollection_AsciiString;
                      theStreamPos: var Standard_Integer): Standard_Boolean {.
    importcpp: "Standard_Dump::ProcessFieldName(@)", header: "Standard_Dump.hxx".}
proc InitRealValues*(theStreamStr: TCollection_AsciiString;
                    theStreamPos: var Standard_Integer; theCount: cint): Standard_Boolean {.
    varargs, importcpp: "Standard_Dump::InitRealValues(@)",
    header: "Standard_Dump.hxx".}
proc InitValue*(theStreamStr: TCollection_AsciiString;
               theStreamPos: var Standard_Integer;
               theValue: var TCollection_AsciiString): Standard_Boolean {.
    importcpp: "Standard_Dump::InitValue(@)", header: "Standard_Dump.hxx".}
proc DumpFieldToName*(theField: TCollection_AsciiString): TCollection_AsciiString {.
    importcpp: "Standard_Dump::DumpFieldToName(@)", header: "Standard_Dump.hxx".}##  Created on: 1992-09-28
##  Created by: Ramin BARRETO
##  Copyright (c) 1992-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_ErrorHandler_HeaderFile [NewLine] # _Standard_ErrorHandler_HeaderFile [NewLine] # Standard.hxx [NewLine] # Standard_Handle.hxx [NewLine] # Standard_PErrorHandler.hxx [NewLine] # Standard_JmpBuf.hxx [NewLine] # Standard_HandlerStatus.hxx [NewLine] # Standard_ThreadId.hxx [NewLine] # Standard_Type.hxx [NewLine] ! @file
## ! Support of handling of C signals as C++-style exceptions, and implementation
## ! of C++ exception handling on platforms that do not implement these natively.
## !
## ! The implementation is based on C long jumps.
## !
## ! If macro OCC_CONVERT_SIGNALS is defined, this enables macro OCC_CATCH_SIGNALS
## ! that can be used in the code (often inside try {} blocks) to convert C-style
## ! signals to standard C++ exceptions. This works only when OSD::SetSignal()
## ! is called to set appropriate signal handler. In the case of signal (like
## ! access violation, division by zero, etc.) it will jump to the nearest
## ! OCC_CATCH_SIGNALS in the call stack, which will then throw a C++ exception.
## ! This method is useful for Unix and Linux systems where C++ exceptions
## ! cannot be thrown from C signal handler.
## !
## ! On Windows with MSVC compiler, exceptions can be thrown directly from
## ! signal handler, this OCC_CONVERT_SIGNALS is not needed. Note however that
## ! this requires that compiler option /EHa is used. # defined ( OCC_CONVERT_SIGNALS ) [NewLine]  Exceptions are raied as usual, signal cause jumps in the nearest
##  OCC_CATCH_SIGNALS and then thrown as exceptions. # OCC_CATCH_SIGNALS Standard_ErrorHandler _aHandler ;
## Error: did not expect [NewLine]!!!

if setjmp(_aHandler.Label()):
  _aHandler.Catches(get_type_descriptor())
  _aHandler.Error().Reraise()
## !!!Ignored construct:  [NewLine]  Suppress GCC warning "variable ...  might be clobbered by 'longjmp' or 'vfork'" # defined ( __GNUC__ ) && ! defined ( __INTEL_COMPILER ) && ! defined ( __clang__ ) [NewLine] # GCC diagnostic ignored -Wclobbered [NewLine] # [NewLine] # [NewLine]  Normal Exceptions (for example WNT with MSVC and option /GHa) # OCC_CATCH_SIGNALS [NewLine] # [NewLine] class Standard_Failure ;
## Error: did not expect [NewLine]!!!

## ! Class implementing mechanics of conversion of signals to exceptions.
## !
## ! Each instance of it stores data for jump placement, thread id,
## ! and callbacks to be called during jump (for proper resource release).
## !
## ! The active handlers are stored in the global stack, which is used
## ! to find appropriate handler when signal is raised.



proc constructStandard_ErrorHandler*(): Standard_ErrorHandler {.constructor,
    importcpp: "Standard_ErrorHandler(@)", header: "Standard_ErrorHandler.hxx".}
proc Destroy*(this: var Standard_ErrorHandler) {.importcpp: "Destroy",
    header: "Standard_ErrorHandler.hxx".}
proc destroyStandard_ErrorHandler*(this: var Standard_ErrorHandler) {.
    importcpp: "#.~Standard_ErrorHandler()", header: "Standard_ErrorHandler.hxx".}
proc Unlink*(this: var Standard_ErrorHandler) {.importcpp: "Unlink",
    header: "Standard_ErrorHandler.hxx".}
proc Catches*(this: var Standard_ErrorHandler; aType: handle[Standard_Type]): Standard_Boolean {.
    importcpp: "Catches", header: "Standard_ErrorHandler.hxx".}
proc Label*(this: var Standard_ErrorHandler): var Standard_JmpBuf {.
    importcpp: "Label", header: "Standard_ErrorHandler.hxx".}
proc Error*(this: Standard_ErrorHandler): handle[Standard_Failure] {.noSideEffect,
    importcpp: "Error", header: "Standard_ErrorHandler.hxx".}
proc LastCaughtError*(): handle[Standard_Failure] {.
    importcpp: "Standard_ErrorHandler::LastCaughtError(@)",
    header: "Standard_ErrorHandler.hxx".}
proc IsInTryBlock*(): Standard_Boolean {.importcpp: "Standard_ErrorHandler::IsInTryBlock(@)",
                                      header: "Standard_ErrorHandler.hxx".}


proc RegisterCallback*(this: var Standard_ErrorHandlerCallback) {.
    importcpp: "RegisterCallback", header: "Standard_ErrorHandler.hxx".}
proc UnregisterCallback*(this: var Standard_ErrorHandlerCallback) {.
    importcpp: "UnregisterCallback", header: "Standard_ErrorHandler.hxx".}
proc destroyStandard_ErrorHandlerCallback*(
    this: var Standard_ErrorHandlerCallback) {.importcpp: "#.~Callback()",
    header: "Standard_ErrorHandler.hxx".}
proc DestroyCallback*(this: var Standard_ErrorHandlerCallback) {.
    importcpp: "DestroyCallback", header: "Standard_ErrorHandler.hxx".}
##  If OCC_CONVERT_SIGNALS is not defined,
##  provide empty inline implementation

## !!!Ignored construct:  # ! defined ( OCC_CONVERT_SIGNALS ) [NewLine] inline Standard_ErrorHandler :: Callback :: Callback ( ) : myHandler ( 0 ) , myPrev ( 0 ) , myNext ( 0 ) { } inline Standard_ErrorHandler :: Callback :: ~ Callback ( ) { ( void ) myHandler ; ( void ) myPrev ; } inline void Standard_ErrorHandler :: Callback :: RegisterCallback ( ) { } inline void Standard_ErrorHandler :: Callback :: UnregisterCallback ( ) { } # [NewLine]  Definition of the old name "Standard_ErrorHandlerCallback" was kept for compatibility typedef Standard_ErrorHandler :: Callback Standard_ErrorHandlerCallback ;
## Error: identifier expected, but got: )!!!
##  Copyright (c) 1998-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.
## ============================================================================
## ==== Titre: Standard_ExtCharacter.hxx
## ==== Role : The headr file of primitve type "ExtCharacter" from package
## ====        "Standard"
## ====
## ==== Implementation:  This is a primitive type implemented with typedef
## ====                  Excepting "Unicod encoding"
## ============================================================================



##  ===============
##  inline methods
##  ===============
##  ------------------------------------------------------------------
##  ToExtCharacter : Returns an ExtCharacter from a Character
##  ------------------------------------------------------------------

proc ToExtCharacter*(achar: Standard_Character): Standard_ExtCharacter =
  discard

##  ------------------------------------------------------------------
##  ToCharacter : Returns an Character from an ExtCharacter
##  ------------------------------------------------------------------

proc ToCharacter*(achar: Standard_ExtCharacter): Standard_Character =
  discard

##  ------------------------------------------------------------------
##  IsAnAscii : Returns True if an ExtCharacter is in the "Ascii Range"
##  ------------------------------------------------------------------

proc IsAnAscii*(achar: Standard_ExtCharacter): Standard_Boolean =
  discard

##  ------------------------------------------------------------------
##  IsEqual : Returns Standard_True if two characters have the same value
##  ------------------------------------------------------------------

proc IsEqual*(One: Standard_ExtCharacter; Two: Standard_ExtCharacter): Standard_Boolean =
  discard
##  Copyright (c) 1998-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.
## ============================================================================
## ==== Titre: Standard_ExtString.hxx
## ====
## ==== Implementation:  This is a primitive type implementadef with typedef
## ====        typedef short* Standard_ExtString;
## ============================================================================



## ! Computes a hash code for the given wide character string, in the range [1, theUpperBound]
## ! @param theExtString the wide character string which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc HashCode*(theExtString: Standard_ExtString; theUpperBound: Standard_Integer): Standard_Integer {.
    importcpp: "HashCode(@)", header: "Standard_ExtString.hxx".}##  Created on: 1991-09-05
##  Created by: Philippe COICADAN
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.


discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_Failure"
discard "forward decl of Standard_Failure"


proc constructStandard_Failure*(): Standard_Failure {.constructor,
    importcpp: "Standard_Failure(@)", header: "Standard_Failure.hxx".}
proc constructStandard_Failure*(f: Standard_Failure): Standard_Failure {.
    constructor, importcpp: "Standard_Failure(@)", header: "Standard_Failure.hxx".}
proc constructStandard_Failure*(aString: Standard_CString): Standard_Failure {.
    constructor, importcpp: "Standard_Failure(@)", header: "Standard_Failure.hxx".}
proc destroyStandard_Failure*(this: var Standard_Failure) {.
    importcpp: "#.~Standard_Failure()", header: "Standard_Failure.hxx".}
proc Print*(this: Standard_Failure; theStream: var Standard_OStream) {.noSideEffect,
    importcpp: "Print", header: "Standard_Failure.hxx".}
proc GetMessageString*(this: Standard_Failure): Standard_CString {.noSideEffect,
    importcpp: "GetMessageString", header: "Standard_Failure.hxx".}
proc SetMessageString*(this: var Standard_Failure; aMessage: Standard_CString) {.
    importcpp: "SetMessageString", header: "Standard_Failure.hxx".}
proc Reraise*(this: var Standard_Failure) {.importcpp: "Reraise",
                                        header: "Standard_Failure.hxx".}
proc Reraise*(this: var Standard_Failure; aMessage: Standard_CString) {.
    importcpp: "Reraise", header: "Standard_Failure.hxx".}
proc Reraise*(this: var Standard_Failure; aReason: Standard_SStream) {.
    importcpp: "Reraise", header: "Standard_Failure.hxx".}
proc Raise*(aMessage: Standard_CString = "") {.
    importcpp: "Standard_Failure::Raise(@)", header: "Standard_Failure.hxx".}
proc Raise*(aReason: Standard_SStream) {.importcpp: "Standard_Failure::Raise(@)",
                                      header: "Standard_Failure.hxx".}
proc NewInstance*(aMessage: Standard_CString): handle[Standard_Failure] {.
    importcpp: "Standard_Failure::NewInstance(@)", header: "Standard_Failure.hxx".}
proc Jump*(this: var Standard_Failure) {.importcpp: "Jump",
                                     header: "Standard_Failure.hxx".}
## !!!Ignored construct:  ! Returns the last caught exception.
## ! Needed when exceptions are emulated by C longjumps,
## ! in other cases is also provided for compatibility. Standard_DEPRECATED ( This method is deprecated (not thread-safe), use standard C++ mechanism instead ) static opencascade :: handle < Standard_Failure > [end of template] Caught ( ) ;
## Error: identifier expected, but got: This method is deprecated (not thread-safe), use standard C++ mechanism instead!!!



proc get_type_name*(): cstring {.importcpp: "Standard_Failure::get_type_name(@)",
                              header: "Standard_Failure.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Standard_Failure::get_type_descriptor(@)",
    header: "Standard_Failure.hxx".}
proc DynamicType*(this: Standard_Failure): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Standard_Failure.hxx".}
proc `<<`*(AStream: var Standard_OStream; AFailure: handle[Standard_Failure]): var Standard_OStream {.
    importcpp: "(# << #)", header: "Standard_Failure.hxx".}
proc `<<`*(AStream: var Standard_OStream; AFailure: Standard_Failure): var Standard_OStream {.
    importcpp: "(# << #)", header: "Standard_Failure.hxx".}##  Created on: 1997-06-19
##  Created by: Christophe LEYNADIER
##  Copyright (c) 1997-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.




proc constructStandard_GUID*(): Standard_GUID {.constructor,
    importcpp: "Standard_GUID(@)", header: "Standard_GUID.hxx".}
proc constructStandard_GUID*(aGuid: Standard_CString): Standard_GUID {.constructor,
    importcpp: "Standard_GUID(@)", header: "Standard_GUID.hxx".}
proc constructStandard_GUID*(aGuid: Standard_ExtString): Standard_GUID {.
    constructor, importcpp: "Standard_GUID(@)", header: "Standard_GUID.hxx".}
proc constructStandard_GUID*(a32b: Standard_Integer; a16b1: Standard_ExtCharacter;
                            a16b2: Standard_ExtCharacter;
                            a16b3: Standard_ExtCharacter; a8b1: Standard_Byte;
                            a8b2: Standard_Byte; a8b3: Standard_Byte;
                            a8b4: Standard_Byte; a8b5: Standard_Byte;
                            a8b6: Standard_Byte): Standard_GUID {.constructor,
    importcpp: "Standard_GUID(@)", header: "Standard_GUID.hxx".}
proc constructStandard_GUID*(aGuid: Standard_UUID): Standard_GUID {.constructor,
    importcpp: "Standard_GUID(@)", header: "Standard_GUID.hxx".}
proc constructStandard_GUID*(aGuid: Standard_GUID): Standard_GUID {.constructor,
    importcpp: "Standard_GUID(@)", header: "Standard_GUID.hxx".}
proc ToUUID*(this: Standard_GUID): Standard_UUID {.noSideEffect, importcpp: "ToUUID",
    header: "Standard_GUID.hxx".}
proc ToCString*(this: Standard_GUID; aStrGuid: Standard_PCharacter) {.noSideEffect,
    importcpp: "ToCString", header: "Standard_GUID.hxx".}
proc ToExtString*(this: Standard_GUID; aStrGuid: Standard_PExtCharacter) {.
    noSideEffect, importcpp: "ToExtString", header: "Standard_GUID.hxx".}
proc IsSame*(this: Standard_GUID; uid: Standard_GUID): Standard_Boolean {.
    noSideEffect, importcpp: "IsSame", header: "Standard_GUID.hxx".}
proc `==`*(this: Standard_GUID; uid: Standard_GUID): Standard_Boolean {.noSideEffect,
    importcpp: "(# == #)", header: "Standard_GUID.hxx".}
proc IsNotSame*(this: Standard_GUID; uid: Standard_GUID): Standard_Boolean {.
    noSideEffect, importcpp: "IsNotSame", header: "Standard_GUID.hxx".}
proc Assign*(this: var Standard_GUID; uid: Standard_GUID) {.importcpp: "Assign",
    header: "Standard_GUID.hxx".}
proc Assign*(this: var Standard_GUID; uid: Standard_UUID) {.importcpp: "Assign",
    header: "Standard_GUID.hxx".}
proc ShallowDump*(this: Standard_GUID; aStream: var Standard_OStream) {.noSideEffect,
    importcpp: "ShallowDump", header: "Standard_GUID.hxx".}
proc CheckGUIDFormat*(aGuid: Standard_CString): Standard_Boolean {.
    importcpp: "Standard_GUID::CheckGUIDFormat(@)", header: "Standard_GUID.hxx".}
proc Hash*(this: Standard_GUID; Upper: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Hash", header: "Standard_GUID.hxx".}
proc HashCode*(theGUID: Standard_GUID; theUpperBound: Standard_Integer): Standard_Integer {.
    importcpp: "Standard_GUID::HashCode(@)", header: "Standard_GUID.hxx".}
proc IsEqual*(string1: Standard_GUID; string2: Standard_GUID): Standard_Boolean {.
    importcpp: "Standard_GUID::IsEqual(@)", header: "Standard_GUID.hxx".}##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.


##  Copyright (c) 1998-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.




##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_ImmutableObject_HeaderFile [NewLine] # _Standard_ImmutableObject_HeaderFile [NewLine] # Standard_Type.hxx [NewLine] # Standard_DefineException.hxx [NewLine] # Standard_SStream.hxx [NewLine] # Standard_DomainError.hxx [NewLine] class Standard_ImmutableObject ;
## Error: expected ';'!!!

discard "forward decl of Standard_ImmutableObject"


## !!!Ignored construct:  # ! defined No_Exception && ! defined No_Standard_ImmutableObject [NewLine] # if ( CONDITION ) throw Standard_ImmutableObject ( MESSAGE ) ;
## Error: did not expect [NewLine]!!!

## !!!Ignored construct:  [NewLine] # [NewLine] # [NewLine] # [NewLine] DEFINE_STANDARD_EXCEPTION ( Standard_ImmutableObject , Standard_DomainError ) #  _Standard_ImmutableObject_HeaderFile [NewLine]
## Error: did not expect [NewLine]!!!
##  Copyright (c) 1998-1999 Matra Datavision
##  Copyright (c) 1999-2013 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_Integer_HeaderFile [NewLine] # _Standard_Integer_HeaderFile [NewLine] # Standard_Std.hxx [NewLine] # Standard_TypeDef.hxx [NewLine] # < Standard_values . h > [NewLine]  ===============
##  Inline methods
##  ===============  ------------------------------------------------------------------
##  Abs : Returns the absolute value of an Integer
##  ------------------------------------------------------------------ inline Standard_Integer Abs ( const Standard_Integer Value ) { return Value >= 0 ? Value : - Value ; }  ------------------------------------------------------------------
##  IsEven : Returns Standard_True if an integer is even
##  ------------------------------------------------------------------ inline Standard_Boolean IsEven ( const Standard_Integer Value ) { return Value % 2 == 0 ; }  ------------------------------------------------------------------
##  IsOdd : Returns Standard_True if an integer is odd
##  ------------------------------------------------------------------ inline Standard_Boolean IsOdd ( const Standard_Integer Value ) { return Value % 2 == 1 ; }  ------------------------------------------------------------------
##  Max : Returns the maximum integer between two integers
##  ------------------------------------------------------------------ inline Standard_Integer Max ( const Standard_Integer Val1 , const Standard_Integer Val2 ) { return Val1 >= Val2 ? Val1 : Val2 ; }  ------------------------------------------------------------------
##  Min : Returns the minimum integer between two integers
##  ------------------------------------------------------------------ inline Standard_Integer Min ( const Standard_Integer Val1 , const Standard_Integer Val2 ) { return Val1 <= Val2 ? Val1 : Val2 ; }  ------------------------------------------------------------------
##  Modulus : Returns the remainder of division between two integers
##  ------------------------------------------------------------------ inline Standard_Integer Modulus ( const Standard_Integer Value , const Standard_Integer Divisor ) { return Value % Divisor ; }  ------------------------------------------------------------------
##  Square : Returns the square of an integer
##  ------------------------------------------------------------------ inline Standard_Integer Square ( const Standard_Integer Value ) { return Value * Value ; }  ------------------------------------------------------------------
##  IntegerFirst : Returns the minimum value of an integer
##  ------------------------------------------------------------------ inline Standard_Integer IntegerFirst ( ) { return INT_MIN ; }  ------------------------------------------------------------------
##  IntegerLast : Returns the maximum value of an integer
##  ------------------------------------------------------------------ inline Standard_Integer IntegerLast ( ) { return INT_MAX ; }  ------------------------------------------------------------------
##  IntegerSize : Returns the size in digits of an integer
##  ------------------------------------------------------------------ inline Standard_Integer IntegerSize ( ) { return BITS ( Standard_Integer ) ; } ! Computes a hash code for the given value of some integer type, in range [1, theUpperBound]
## ! @tparam TheInteger the type of the integer which hash code is to be computed
## ! @param theValue the value of the TheInteger type which hash code is to be computed
## ! @param theMask the mask for the last bits of the value that are used in the computation of a hash code
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in range [1, theUpperBound] template < typename TheInteger > [end of template] typename opencascade :: std :: enable_if < opencascade :: is_integer < TheInteger > :: value , Standard_Integer > :: type IntegerHashCode ( const TheInteger theValue , const typename opencascade :: disable_deduction < TheInteger > :: type theMask , const Standard_Integer theUpperBound ) { return static_cast < Standard_Integer > ( ( theValue & theMask ) % theUpperBound + 1 ) ; } ! Computes a hash code for the given value of the Standard_Integer type, in range [1, theUpperBound]
## ! @param theValue the value of the Standard_Integer type which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in range [1, theUpperBound] inline Standard_Integer HashCode ( const Standard_Integer theValue , const Standard_Integer theUpperBound ) {  return (Abs (theMe) % theUpper) + 1; return IntegerHashCode ( theValue , IntegerLast ( ) , theUpperBound ) ; }  ------------------------------------------------------------------
##  IsEqual : Returns Standard_True if two integers are equal
##  ------------------------------------------------------------------ inline Standard_Boolean IsEqual ( const Standard_Integer theOne , const Standard_Integer theTwo ) { return theOne == theTwo ; } ! Computes a hash value for the given unsigned integer, in range [1, theUpperBound]
## ! @param theValue the unsigned integer which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a hash value computed for the given unsigned integer, in range [1, theUpperBound] inline Standard_Integer HashCode ( const unsigned int theValue , const Standard_Integer theUpperBound ) { return :: HashCode ( static_cast < Standard_Integer > ( theValue ) , theUpperBound ) ; } ! Computes a hash code for the given value of the "long long int" type, in range [1, theUpperBound]
## ! @param theValue the value of the "long long int" type which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in range [1, theUpperBound] inline Standard_Integer HashCode ( const long long int theValue , const Standard_Integer theUpperBound ) { return IntegerHashCode ( theValue , 0x7fffffffffffffff , theUpperBound ) ; } # ( defined ( _LP64 ) || defined ( __LP64__ ) || defined ( _WIN64 ) ) || defined ( __APPLE__ ) [NewLine] ! Computes a hash code for the given value of the Standard_Utf32Char type, in the range [1, theUpperBound]
## ! @tparam TheUtf32Char the type of the given value (it is Standard_Utf32Char,
## ! and must not be the same as "unsigned int", because the overload of the HashCode function
## ! for "unsigned int" type is already presented in Standard_Integer.hxx)
## ! @param theValue the value of the Standard_Utf32Char type which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound] template < typename TheUtf32Char > typename opencascade :: std :: enable_if < ! opencascade :: std :: is_same < Standard_Utf32Char , unsigned int > :: value && opencascade :: std :: is_same < TheUtf32Char , Standard_Utf32Char > :: value , Standard_Integer > :: type HashCode ( const TheUtf32Char theValue , const Standard_Integer theUpperBound ) { return IntegerHashCode ( theValue , IntegerLast ( ) , theUpperBound ) ; }  ------------------------------------------------------------------
##  IsEqual : Returns Standard_True if two integers are equal
##  ------------------------------------------------------------------ inline Standard_Boolean IsEqual ( const Standard_Utf32Char theOne , const Standard_Utf32Char theTwo ) { return theOne == theTwo ; } # [NewLine] # [NewLine]
## Error: token expected: ( but got: ::!!!
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_JmpBuf_HeaderFile [NewLine] # _Standard_JmpBuf_HeaderFile [NewLine] # < stdlib . h > [NewLine] # < setjmp . h > [NewLine] typedef # SOLARIS [NewLine] sigjmp_buf # IRIX [NewLine] sigjmp_buf # [NewLine] jmp_buf # [NewLine] Standard_JmpBuf ;
## Error: identifier expected, but got: #!!!
##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_LicenseError_HeaderFile [NewLine] # _Standard_LicenseError_HeaderFile [NewLine] # Standard_Type.hxx [NewLine] # Standard_DefineException.hxx [NewLine] # Standard_SStream.hxx [NewLine] # Standard_Failure.hxx [NewLine] class Standard_LicenseError ;
## Error: expected ';'!!!

discard "forward decl of Standard_LicenseError"


## !!!Ignored construct:  # ! defined No_Exception && ! defined No_Standard_LicenseError [NewLine] # if ( CONDITION ) throw Standard_LicenseError ( MESSAGE ) ;
## Error: did not expect [NewLine]!!!

## !!!Ignored construct:  [NewLine] # [NewLine] # [NewLine] # [NewLine] DEFINE_STANDARD_EXCEPTION ( Standard_LicenseError , Standard_Failure ) #  _Standard_LicenseError_HeaderFile [NewLine]
## Error: did not expect [NewLine]!!!
##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_LicenseNotFound_HeaderFile [NewLine] # _Standard_LicenseNotFound_HeaderFile [NewLine] # Standard_Type.hxx [NewLine] # Standard_DefineException.hxx [NewLine] # Standard_SStream.hxx [NewLine] # Standard_LicenseError.hxx [NewLine] class Standard_LicenseNotFound ;
## Error: expected ';'!!!

discard "forward decl of Standard_LicenseNotFound"


## !!!Ignored construct:  # ! defined No_Exception && ! defined No_Standard_LicenseNotFound [NewLine] # if ( CONDITION ) throw Standard_LicenseNotFound ( MESSAGE ) ;
## Error: did not expect [NewLine]!!!

## !!!Ignored construct:  [NewLine] # [NewLine] # [NewLine] # [NewLine] DEFINE_STANDARD_EXCEPTION ( Standard_LicenseNotFound , Standard_LicenseError ) #  _Standard_LicenseNotFound_HeaderFile [NewLine]
## Error: did not expect [NewLine]!!!
##  Created on: 2005-03-15
##  Created by: Peter KURNEV
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.


## *
##  @brief Open CASCADE memory manager optimized for speed.
##
##  The behaviour is different for memory blocks of different sizes,
##  according to specified options provided to constructor:
##
##  - Small blocks with size less than or equal to aCellSize are allocated
##    in big pools of memory. The parameter aNbPages specifies size of
##    these pools in pages (operating system-dependent).
##    When freed, small block is not returned to the system but added
##    into free blocks list and reused when block of the same size is
##    requested.
##
##  - Medium size blocks with size less than aThreshold are allocated
##    using malloc() or calloc() function but not returned to the system
##    when method Free() is called; instead they are put into free list
##    and reused when block of the same size is requested.
##    Blocks of medium size stored in free lists can be released to the
##    system (by free()) by calling method Purge().
##
##  - Large blocks with size greater than or equal to aThreshold are allocated
##    and freed directly: either using malloc()/calloc() and free(), or using
##    memory mapped files (if option aMMap is True)
##
##  Thus the optimization of memory allocation/deallocation is reached
##  for small and medium size blocks using free lists method;
##  note that space allocated for small blocks cannot be (currently) released
##  to the system while space for medium size blocks can be released by method Purge().
##
##  Note that destructor of that class frees all free lists and memory pools
##  allocated for small blocks.
##
##  Note that size of memory blocks allocated by this memory manager is always
##  rounded up to 16 bytes. In addition, 8 bytes are added at the beginning
##  of the memory block to hold auxiliary information (size of the block when
##  in use, or pointer to the next free block when in free list).
##  This the expense of speed optimization. At the same time, allocating small
##  blocks is usually less costly than directly by malloc since allocation is made
##  once (when allocating a pool) and overheads induced by malloc are minimized.
##


proc constructStandard_MMgrOpt*(aClear: Standard_Boolean = Standard_True;
                               aMMap: Standard_Boolean = Standard_True;
                               aCellSize: Standard_Size = 200;
                               aNbPages: Standard_Integer = 10000;
                               aThreshold: Standard_Size = 40000): Standard_MMgrOpt {.
    constructor, importcpp: "Standard_MMgrOpt(@)", header: "Standard_MMgrOpt.hxx".}
proc destroyStandard_MMgrOpt*(this: var Standard_MMgrOpt) {.
    importcpp: "#.~Standard_MMgrOpt()", header: "Standard_MMgrOpt.hxx".}
proc Allocate*(this: var Standard_MMgrOpt; aSize: Standard_Size): Standard_Address {.
    importcpp: "Allocate", header: "Standard_MMgrOpt.hxx".}
proc Reallocate*(this: var Standard_MMgrOpt; thePtr: Standard_Address;
                theSize: Standard_Size): Standard_Address {.
    importcpp: "Reallocate", header: "Standard_MMgrOpt.hxx".}
proc Free*(this: var Standard_MMgrOpt; thePtr: Standard_Address) {.importcpp: "Free",
    header: "Standard_MMgrOpt.hxx".}
proc Purge*(this: var Standard_MMgrOpt; isDestroyed: Standard_Boolean): Standard_Integer {.
    importcpp: "Purge", header: "Standard_MMgrOpt.hxx".}


proc SetCallBackFunction*(pFunc: Standard_MMgrOptTPCallBackFunc) {.
    importcpp: "Standard_MMgrOpt::SetCallBackFunction(@)",
    header: "Standard_MMgrOpt.hxx".}##  Created on: 2005-03-15
##  Created by: Peter KURNEV
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.



## *
##  Implementation of raw OCC memory manager which uses standard C
##  functions: malloc (or calloc), free and realloc
##  without any optimization
##



proc constructStandard_MMgrRaw*(aClear: Standard_Boolean = Standard_False): Standard_MMgrRaw {.
    constructor, importcpp: "Standard_MMgrRaw(@)", header: "Standard_MMgrRaw.hxx".}
proc Allocate*(this: var Standard_MMgrRaw; aSize: Standard_Size): Standard_Address {.
    importcpp: "Allocate", header: "Standard_MMgrRaw.hxx".}
proc Reallocate*(this: var Standard_MMgrRaw; thePtr: Standard_Address;
                theSize: Standard_Size): Standard_Address {.
    importcpp: "Reallocate", header: "Standard_MMgrRaw.hxx".}
proc Free*(this: var Standard_MMgrRaw; thePtr: Standard_Address) {.importcpp: "Free",
    header: "Standard_MMgrRaw.hxx".}##  Created on: 2005-03-15
##  Created by: Peter KURNEV
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.



## *
##  Root class for Open CASCADE mmemory managers.
##  Defines only abstract interface functions.
##


proc destroyStandard_MMgrRoot*(this: var Standard_MMgrRoot) {.
    importcpp: "#.~Standard_MMgrRoot()", header: "Standard_MMgrRoot.hxx".}
proc Allocate*(this: var Standard_MMgrRoot; theSize: Standard_Size): Standard_Address {.
    importcpp: "Allocate", header: "Standard_MMgrRoot.hxx".}
proc Reallocate*(this: var Standard_MMgrRoot; thePtr: Standard_Address;
                theSize: Standard_Size): Standard_Address {.
    importcpp: "Reallocate", header: "Standard_MMgrRoot.hxx".}
proc Free*(this: var Standard_MMgrRoot; thePtr: Standard_Address) {.importcpp: "Free",
    header: "Standard_MMgrRoot.hxx".}
proc Purge*(this: var Standard_MMgrRoot;
           isDestroyed: Standard_Boolean = Standard_False): Standard_Integer {.
    importcpp: "Purge", header: "Standard_MMgrRoot.hxx".}##  Created on: 2010-03-15
##  Created by: Sergey KUUL
##  Copyright (c) 2010-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.


## !
## ! Implementation of OCC memory manager which uses Intel TBB
## ! scalable allocator.
## !
## ! On configurations where TBB is not available standard RTL functions
## ! malloc() / free() are used.


proc constructStandard_MMgrTBBalloc*(aClear: Standard_Boolean = Standard_False): Standard_MMgrTBBalloc {.
    constructor, importcpp: "Standard_MMgrTBBalloc(@)",
    header: "Standard_MMgrTBBalloc.hxx".}
proc Allocate*(this: var Standard_MMgrTBBalloc; aSize: Standard_Size): Standard_Address {.
    importcpp: "Allocate", header: "Standard_MMgrTBBalloc.hxx".}
proc Reallocate*(this: var Standard_MMgrTBBalloc; thePtr: Standard_Address;
                theSize: Standard_Size): Standard_Address {.
    importcpp: "Reallocate", header: "Standard_MMgrTBBalloc.hxx".}
proc Free*(this: var Standard_MMgrTBBalloc; thePtr: Standard_Address) {.
    importcpp: "Free", header: "Standard_MMgrTBBalloc.hxx".}##  Copyright (c) 1998-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.
## ! @file
## ! This file is intended to be the first file included to any
## ! Open CASCADE source. It defines platform-specific pre-processor
## ! macros necessary for correct compilation of Open CASCADE code.

## !!!Ignored construct:  # _Standard_Macro_HeaderFile [NewLine] # _Standard_Macro_HeaderFile [NewLine] ! @def Standard_OVERRIDE
## ! Should be used in declarations of virtual methods overriden in the
## ! derived classes, to cause compilation error in the case if that virtual
## ! function disappears or changes its signature in the base class.
## !
## ! Expands to C++11 keyword "override" on compilers that are known to
## ! suppot it; empty in other cases. # defined ( __cplusplus ) && ( __cplusplus >= 201100L ) [NewLine]  part of C++11 standard # override [NewLine] # defined ( _MSC_VER ) && ( _MSC_VER >= 1700 ) [NewLine]  MSVC extension since VS2012 # override [NewLine] # [NewLine] # [NewLine] # [NewLine] ! @def Standard_FALLTHROUGH
## ! Should be used in a switch statement immediately before a case label,
## ! if code associated with the previous case label may fall through to that
## ! next label (i.e. does not end with "break" or "return" etc.).
## ! This macro indicates that the fall through is intentional and should not be
## ! diagnosed by a compiler that warns on fallthrough.
## !
## ! Expands to C++17 attribute statement "[[fallthrough]];" on compilers that
## ! declare support of C++17, or to "__attribute__((fallthrough));" on
## ! GCC 7+. # defined ( __cplusplus ) && ( __cplusplus >= 201703L ) [NewLine]  part of C++17 standard # Standard_FALLTHROUGH fallthrough ;
## Error: identifier expected, but got: [NewLine]!!!

## !!!Ignored construct:  [NewLine] # defined ( __GNUC__ ) && ( __GNUC__ >= 7 ) [NewLine]  gcc 7+ # Standard_FALLTHROUGH __attribute__ ( ( fallthrough ) ) ;
## Error: did not expect [NewLine]!!!

## !!!Ignored construct:  [NewLine] # [NewLine] # Standard_FALLTHROUGH [NewLine] # [NewLine] ! @def Standard_NODISCARD
## ! This attribute may appear in a function declaration,
## ! enumeration declaration or class declaration. It tells the compiler to
## ! issue a warning, if a return value marked by that attribute is discarded.
## !
## ! Expands to C++17 attribute statement "[[nodiscard]]" on compilers that
## ! declare support of this attribute, or equivalent attribute on GCC. # defined ( __has_cpp_attribute ) [NewLine] # __has_cpp_attribute ( nodiscard ) [NewLine] # nodiscard [NewLine] # [NewLine] # [NewLine] # [NewLine] # defined ( __GNUC__ ) && ! defined ( INTEL_COMPILER ) [NewLine]  According to available documentation, GCC-style __attribute__ ((warn_unused_result))
##  should be available in GCC since version 3.4, and in CLang since 3.9;
##  Intel compiler does not seem to support this # __attribute__ ( ( warn_unused_result ) ) [NewLine] # [NewLine] # [NewLine] # [NewLine] ! @def Standard_UNUSED
## ! Macro for marking variables / functions as possibly unused
## ! so that compiler will not emit redundant "unused" warnings.
## !
## ! Expands to "__attribute__((unused))" on GCC and CLang. # defined ( __GNUC__ ) || defined ( __clang__ ) [NewLine] # Standard_UNUSED __attribute__ ( ( unused ) ) [NewLine] # [NewLine] # Standard_UNUSED [NewLine] # [NewLine] ! @def Standard_THREADLOCAL
## ! Define Standard_THREADLOCAL modifier as C++11 thread_local keyword where it is available. # defined ( __clang__ ) [NewLine]  CLang version: standard CLang > 3.3 or XCode >= 8 (but excluding 32-bit ARM)
##  Note: this has to be in separate #if to avoid failure of preprocessor on other platforms # __has_feature ( cxx_thread_local ) [NewLine] # Standard_THREADLOCAL thread_local [NewLine] # [NewLine] # defined ( __INTEL_COMPILER ) [NewLine] # ( defined ( _MSC_VER ) && _MSC_VER >= 1900 && __INTEL_COMPILER > 1400 ) [NewLine]  requires msvcrt vc14+ (Visual Studio 2015+) # Standard_THREADLOCAL thread_local [NewLine] # ( ! defined ( _MSC_VER ) && __INTEL_COMPILER > 1500 ) [NewLine] # Standard_THREADLOCAL thread_local [NewLine] # [NewLine] # ( defined ( _MSC_VER ) && _MSC_VER >= 1900 ) [NewLine]  msvcrt coming with vc14+ (VS2015+) # Standard_THREADLOCAL thread_local [NewLine] # ( defined ( __GNUC__ ) && ( __GNUC__ > 4 || ( __GNUC__ == 4 && __GNUC_MINOR__ >= 8 ) ) ) [NewLine]  GCC >= 4.8 # Standard_THREADLOCAL thread_local [NewLine] # [NewLine] # Standard_THREADLOCAL [NewLine] # Standard_THREADLOCAL [NewLine] # [NewLine] ! @def Standard_DEPRECATED("message")
## ! Can be used in declaration of a method or a class to mark it as deprecated.
## ! Use of such method or class will cause compiler warning (if supported by
## ! compiler and unless disabled).
## ! If macro OCCT_NO_DEPRECATED is defined, Standard_DEPRECATED is defined empty. # OCCT_NO_DEPRECATED [NewLine] # Standard_DEPRECATED ( theMsg ) [NewLine] # [NewLine] # defined ( _MSC_VER ) [NewLine] # Standard_DEPRECATED ( theMsg ) __declspec ( deprecated ( theMsg ) ) [NewLine] # defined ( __GNUC__ ) && ( __GNUC__ > 4 || ( __GNUC__ == 4 && __GNUC_MINOR__ >= 5 ) || defined ( __clang__ ) ) [NewLine] # Standard_DEPRECATED ( theMsg ) __attribute__ ( ( deprecated ( theMsg ) ) ) [NewLine] # defined ( __GNUC__ ) && ( __GNUC__ > 3 || ( __GNUC__ == 3 && __GNUC_MINOR__ >= 1 ) ) [NewLine] # Standard_DEPRECATED ( theMsg ) __attribute__ ( ( deprecated ) ) [NewLine] # [NewLine] # Standard_DEPRECATED ( theMsg ) [NewLine] # [NewLine] # [NewLine] ! @def Standard_DISABLE_DEPRECATION_WARNINGS
## ! Disables warnings on use of deprecated features (see Standard_DEPRECATED),
## ! from the current point till appearance of Standard_ENABLE_DEPRECATION_WARNINGS macro.
## ! This is useful for sections of code kept for backward compatibility and scheduled for removal.
## !
## ! @def Standard_ENABLE_DEPRECATION_WARNINGS
## ! Enables warnings on use of deprecated features previously disabled by
## ! Standard_DISABLE_DEPRECATION_WARNINGS. # defined ( __ICL ) || defined ( __INTEL_COMPILER ) [NewLine] # Standard_DISABLE_DEPRECATION_WARNINGS __pragma ( warning ( push ) ) __pragma ( warning ( disable : 1478 ) ) [NewLine] # Standard_ENABLE_DEPRECATION_WARNINGS __pragma ( warning ( pop ) ) [NewLine] # ( defined ( __GNUC__ ) && __GNUC__ > 4 || ( __GNUC__ == 4 && __GNUC_MINOR__ >= 6 ) ) || defined ( __clang__ ) [NewLine]  available since at least gcc 4.2 (maybe earlier), however only gcc 4.6+ supports this pragma inside the function body
##  CLang also supports this gcc syntax (in addition to "clang diagnostic ignored") # Standard_DISABLE_DEPRECATION_WARNINGS _Pragma ( GCC diagnostic ignored "-Wdeprecated-declarations" ) [NewLine] # Standard_ENABLE_DEPRECATION_WARNINGS _Pragma ( GCC diagnostic warning "-Wdeprecated-declarations" ) [NewLine] # defined ( _MSC_VER ) [NewLine] # Standard_DISABLE_DEPRECATION_WARNINGS __pragma ( warning ( push ) ) __pragma ( warning ( disable : 4996 ) ) [NewLine] # Standard_ENABLE_DEPRECATION_WARNINGS __pragma ( warning ( pop ) ) [NewLine] # [NewLine] # Standard_DISABLE_DEPRECATION_WARNINGS [NewLine] # Standard_ENABLE_DEPRECATION_WARNINGS [NewLine] # [NewLine] ! @def OCCT_NO_RVALUE_REFERENCE
## ! Disables methods and constructors that use rvalue references
## ! (C++11 move semantics) not supported by obsolete compilers. # ( defined ( _MSC_VER ) && ( _MSC_VER < 1600 ) ) [NewLine] # OCCT_NO_RVALUE_REFERENCE [NewLine] # [NewLine] # _WIN32 [NewLine]  We must be careful including windows.h: it is really poisonous stuff!
##  The most annoying are #defines of many identifiers that you could use in
##  normal code without knowing that Windows has its own knowledge of them...
##  So lets protect ourselves by switching OFF as much as possible of this in advance.
##  If someone needs more from windows.h, he is encouraged to #undef these symbols
##  or include windows.h prior to any OCCT stuff.
##  Note that we define each symbol to itself, so that it still can be used
##  e.g. as name of variable, method etc. # WIN32_LEAN_AND_MEAN [NewLine] # WIN32_LEAN_AND_MEAN  exclude extra Windows stuff [NewLine] # [NewLine] # NOMINMAX [NewLine] # NOMINMAX NOMINMAX  avoid #define min() and max() [NewLine] # [NewLine] # NOMSG [NewLine] # NOMSG NOMSG  avoid #define SendMessage etc. [NewLine] # [NewLine] # NODRAWTEXT [NewLine] # NODRAWTEXT NODRAWTEXT  avoid #define DrawText etc. [NewLine] # [NewLine] # NONLS [NewLine] # NONLS NONLS  avoid #define CompareString etc. [NewLine] # [NewLine] # NOGDI [NewLine] # NOGDI NOGDI  avoid #define SetPrinter (winspool.h) etc. [NewLine] # [NewLine] # NOSERVICE [NewLine] # NOSERVICE NOSERVICE [NewLine] # [NewLine] # NOKERNEL [NewLine] # NOKERNEL NOKERNEL [NewLine] # [NewLine] # NOUSER [NewLine] # NOUSER NOUSER [NewLine] # [NewLine] # NOMCX [NewLine] # NOMCX NOMCX [NewLine] # [NewLine] # NOIME [NewLine] # NOIME NOIME [NewLine] # [NewLine] # [NewLine] ! @def Standard_EXPORT
## ! This macro should be used in declarations of public methods
## ! to ensure that they are exported from DLL on Windows and thus
## ! can be called from other (dependent) libraries or applications.
## !
## ! If macro OCCT_STATIC_BUILD is defined, then Standard_EXPORT
## ! is set to empty. # defined ( _WIN32 ) && ! defined ( OCCT_STATIC_BUILD ) && ! defined ( HAVE_NO_DLL ) [NewLine] ======================================================
##  Windows-specific definitions
## ====================================================== # [NewLine] # __declspec ( dllexport ) [NewLine]  For global variables : # Standard_EXPORTEXTERN __declspec ( dllexport ) extern [NewLine] # Standard_EXPORTEXTERNC extern C __declspec ( dllexport ) [NewLine] #  Standard_EXPORT [NewLine] # Standard_IMPORT [NewLine] # Standard_IMPORT __declspec ( dllimport ) extern [NewLine] # Standard_IMPORTC extern C __declspec ( dllimport ) [NewLine] #  Standard_IMPORT [NewLine] #  UNIX [NewLine] ======================================================
##  UNIX / static library definitions
## ====================================================== # [NewLine] # [NewLine]  For global variables : # Standard_EXPORTEXTERN extern [NewLine] # Standard_EXPORTEXTERNC extern C [NewLine] #  Standard_EXPORT [NewLine] # Standard_IMPORT [NewLine] # Standard_IMPORT extern [NewLine] # Standard_IMPORTC extern C [NewLine] #  Standard_IMPORT [NewLine]  Compatibility with old SUN compilers  This preprocessor directive is a kludge to get around
##  a bug in the Sun Workshop 5.0 compiler, it keeps the
##  /usr/include/memory.h file from being #included
##  with an incompatible extern "C" definition of memchr
##  October 18, 2000  <rboehne@ricardo-us.com> # __SUNPRO_CC_COMPAT == 5 [NewLine] # _MEMORY_H [NewLine] # [NewLine] #  _WIN32 [NewLine] ! @def OCCT_UWP
## ! This macro is defined on Windows platform in the case if the code
## ! is being compiled for UWP (Universal Windows Platform). # defined ( WINAPI_FAMILY ) && WINAPI_FAMILY == WINAPI_FAMILY_APP [NewLine] # OCCT_UWP [NewLine] # [NewLine] # OCCT_UWP [NewLine] # OCCT_UWP [NewLine] # [NewLine] # [NewLine] # [NewLine]
## Error: did not expect [NewLine]!!!
##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_MultiplyDefined_HeaderFile [NewLine] # _Standard_MultiplyDefined_HeaderFile [NewLine] # Standard_Type.hxx [NewLine] # Standard_DefineException.hxx [NewLine] # Standard_SStream.hxx [NewLine] # Standard_DomainError.hxx [NewLine] class Standard_MultiplyDefined ;
## Error: expected ';'!!!

discard "forward decl of Standard_MultiplyDefined"


## !!!Ignored construct:  # ! defined No_Exception && ! defined No_Standard_MultiplyDefined [NewLine] # if ( CONDITION ) throw Standard_MultiplyDefined ( MESSAGE ) ;
## Error: did not expect [NewLine]!!!

## !!!Ignored construct:  [NewLine] # [NewLine] # [NewLine] # [NewLine] DEFINE_STANDARD_EXCEPTION ( Standard_MultiplyDefined , Standard_DomainError ) #  _Standard_MultiplyDefined_HeaderFile [NewLine]
## Error: did not expect [NewLine]!!!
##  Created on: 2005-04-10
##  Created by: Andrey BETENEV
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## *
##  @brief Mutex: a class to synchronize access to shared data.
##
##  This is simple encapsulation of tools provided by the
##  operating system to syncronize access to shared data
##  from threads within one process.
##
##  Current implementation is very simple and straightforward;
##  it is just a wrapper around POSIX pthread librray on UNIX/Linux,
##  and CRITICAL_SECTIONs on Windows NT. It does not provide any
##  advanced functionaly such as recursive calls to the same mutex from
##  within one thread (such call will froze the execution).
##
##  Note that all the methods of that class are made inline, in order
##  to keep maximal performance. This means that a library using the mutex
##  might need to be linked to threads library directly.
##
##  The typical use of this class should be as follows:
##  - create instance of the class Standard_Mutex in the global scope
##    (whenever possible, or as a field of your class)
##  - create instance of class Standard_Mutex::Sentry using that Mutex
##    when entering critical section
##
##  Note that this class provides one feature specific to Open CASCADE:
##  safe unlocking the mutex when signal is raised and converted to OCC
##  exceptions (Note that with current implementation of this functionality
##  on UNIX and Linux, C longjumps are used for that, thus destructors of
##  classes are not called automatically).
##
##  To use this feature, call RegisterCallback() after Lock() or successful
##  TryLock(), and UnregisterCallback() before Unlock() (or use Sentry classes).
##

proc constructStandard_MutexSentry*(theMutex: var Standard_Mutex): Standard_MutexSentry {.
    constructor, importcpp: "Standard_Mutex::Sentry(@)",
    header: "Standard_Mutex.hxx".}
proc constructStandard_MutexSentry*(theMutex: ptr Standard_Mutex): Standard_MutexSentry {.
    constructor, importcpp: "Standard_Mutex::Sentry(@)",
    header: "Standard_Mutex.hxx".}
proc destroyStandard_MutexSentry*(this: var Standard_MutexSentry) {.
    importcpp: "#.~Sentry()", header: "Standard_Mutex.hxx".}
proc constructStandard_Mutex*(): Standard_Mutex {.constructor,
    importcpp: "Standard_Mutex(@)", header: "Standard_Mutex.hxx".}
proc destroyStandard_Mutex*(this: var Standard_Mutex) {.
    importcpp: "#.~Standard_Mutex()", header: "Standard_Mutex.hxx".}
proc Lock*(this: var Standard_Mutex) {.importcpp: "Lock", header: "Standard_Mutex.hxx".}
proc TryLock*(this: var Standard_Mutex): Standard_Boolean {.importcpp: "TryLock",
    header: "Standard_Mutex.hxx".}
proc Unlock*(this: var Standard_Mutex) {.importcpp: "Unlock",
                                     header: "Standard_Mutex.hxx".}
##  Implementation of the method Unlock is inline, since it is
##  just a shortcut to system function

proc Unlock*(this: var Standard_Mutex) {.importcpp: "Unlock",
                                     header: "Standard_Mutex.hxx".}##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_NegativeValue_HeaderFile [NewLine] # _Standard_NegativeValue_HeaderFile [NewLine] # Standard_Type.hxx [NewLine] # Standard_DefineException.hxx [NewLine] # Standard_SStream.hxx [NewLine] # Standard_RangeError.hxx [NewLine] class Standard_NegativeValue ;
## Error: expected ';'!!!

discard "forward decl of Standard_NegativeValue"


## !!!Ignored construct:  # ! defined No_Exception && ! defined No_Standard_NegativeValue [NewLine] # if ( CONDITION ) throw Standard_NegativeValue ( MESSAGE ) ;
## Error: did not expect [NewLine]!!!

## !!!Ignored construct:  [NewLine] # [NewLine] # [NewLine] # [NewLine] DEFINE_STANDARD_EXCEPTION ( Standard_NegativeValue , Standard_RangeError ) #  _Standard_NegativeValue_HeaderFile [NewLine]
## Error: did not expect [NewLine]!!!
##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_NoMoreObject_HeaderFile [NewLine] # _Standard_NoMoreObject_HeaderFile [NewLine] # Standard_Type.hxx [NewLine] # Standard_DefineException.hxx [NewLine] # Standard_SStream.hxx [NewLine] # Standard_DomainError.hxx [NewLine] class Standard_NoMoreObject ;
## Error: expected ';'!!!

discard "forward decl of Standard_NoMoreObject"


## !!!Ignored construct:  # ! defined No_Exception && ! defined No_Standard_NoMoreObject [NewLine] # if ( CONDITION ) throw Standard_NoMoreObject ( MESSAGE ) ;
## Error: did not expect [NewLine]!!!

## !!!Ignored construct:  [NewLine] # [NewLine] # [NewLine] # [NewLine] DEFINE_STANDARD_EXCEPTION ( Standard_NoMoreObject , Standard_DomainError ) #  _Standard_NoMoreObject_HeaderFile [NewLine]
## Error: did not expect [NewLine]!!!
##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_NoSuchObject_HeaderFile [NewLine] # _Standard_NoSuchObject_HeaderFile [NewLine] # Standard_Type.hxx [NewLine] # Standard_DefineException.hxx [NewLine] # Standard_SStream.hxx [NewLine] # Standard_DomainError.hxx [NewLine] class Standard_NoSuchObject ;
## Error: expected ';'!!!

discard "forward decl of Standard_NoSuchObject"


## !!!Ignored construct:  # ! defined No_Exception && ! defined No_Standard_NoSuchObject [NewLine] # if ( CONDITION ) throw Standard_NoSuchObject ( MESSAGE ) ;
## Error: did not expect [NewLine]!!!

## !!!Ignored construct:  [NewLine] # [NewLine] # [NewLine] # [NewLine] DEFINE_STANDARD_EXCEPTION ( Standard_NoSuchObject , Standard_DomainError ) #  _Standard_NoSuchObject_HeaderFile [NewLine]
## Error: did not expect [NewLine]!!!
##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_NotImplemented_HeaderFile [NewLine] # _Standard_NotImplemented_HeaderFile [NewLine] # Standard_Type.hxx [NewLine] # Standard_DefineException.hxx [NewLine] # Standard_SStream.hxx [NewLine] # Standard_ProgramError.hxx [NewLine] class Standard_NotImplemented ;
## Error: expected ';'!!!

discard "forward decl of Standard_NotImplemented"


## !!!Ignored construct:  # ! defined No_Exception && ! defined No_Standard_NotImplemented [NewLine] # if ( CONDITION ) throw Standard_NotImplemented ( MESSAGE ) ;
## Error: did not expect [NewLine]!!!

## !!!Ignored construct:  [NewLine] # [NewLine] # [NewLine] # [NewLine] DEFINE_STANDARD_EXCEPTION ( Standard_NotImplemented , Standard_ProgramError ) #  _Standard_NotImplemented_HeaderFile [NewLine]
## Error: did not expect [NewLine]!!!
##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_NullObject_HeaderFile [NewLine] # _Standard_NullObject_HeaderFile [NewLine] # Standard_Type.hxx [NewLine] # Standard_DefineException.hxx [NewLine] # Standard_SStream.hxx [NewLine] # Standard_DomainError.hxx [NewLine] class Standard_NullObject ;
## Error: expected ';'!!!

discard "forward decl of Standard_NullObject"


## !!!Ignored construct:  # ! defined No_Exception && ! defined No_Standard_NullObject [NewLine] # if ( CONDITION ) throw Standard_NullObject ( MESSAGE ) ;
## Error: did not expect [NewLine]!!!

## !!!Ignored construct:  [NewLine] # [NewLine] # [NewLine] # [NewLine] DEFINE_STANDARD_EXCEPTION ( Standard_NullObject , Standard_DomainError ) #  _Standard_NullObject_HeaderFile [NewLine]
## Error: did not expect [NewLine]!!!
##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_NullValue_HeaderFile [NewLine] # _Standard_NullValue_HeaderFile [NewLine] # Standard_Type.hxx [NewLine] # Standard_DefineException.hxx [NewLine] # Standard_SStream.hxx [NewLine] # Standard_RangeError.hxx [NewLine] class Standard_NullValue ;
## Error: expected ';'!!!

discard "forward decl of Standard_NullValue"


## !!!Ignored construct:  # ! defined No_Exception && ! defined No_Standard_NullValue [NewLine] # if ( CONDITION ) throw Standard_NullValue ( MESSAGE ) ;
## Error: did not expect [NewLine]!!!

## !!!Ignored construct:  [NewLine] # [NewLine] # [NewLine] # [NewLine] DEFINE_STANDARD_EXCEPTION ( Standard_NullValue , Standard_RangeError ) #  _Standard_NullValue_HeaderFile [NewLine]
## Error: did not expect [NewLine]!!!
##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_NumericError_HeaderFile [NewLine] # _Standard_NumericError_HeaderFile [NewLine] # Standard_Type.hxx [NewLine] # Standard_DefineException.hxx [NewLine] # Standard_SStream.hxx [NewLine] # Standard_Failure.hxx [NewLine] class Standard_NumericError ;
## Error: expected ';'!!!

discard "forward decl of Standard_NumericError"


## !!!Ignored construct:  # ! defined No_Exception && ! defined No_Standard_NumericError [NewLine] # if ( CONDITION ) throw Standard_NumericError ( MESSAGE ) ;
## Error: did not expect [NewLine]!!!

## !!!Ignored construct:  [NewLine] # [NewLine] # [NewLine] # [NewLine] DEFINE_STANDARD_EXCEPTION ( Standard_NumericError , Standard_Failure ) #  _Standard_NumericError_HeaderFile [NewLine]
## Error: did not expect [NewLine]!!!
##  Copyright (c) 1998-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.



discard "forward decl of Standard_OutOfMemory"
discard "forward decl of Standard_OutOfMemory"


when not defined(No_Exception) and not defined(No_Standard_OutOfMemory):
  template Standard_OutOfMemory_Raise_if*(CONDITION, MESSAGE: untyped): void =
    if CONDITION:
      proc Standard_OutOfMemory*(a1: MESSAGE): throw {.
          importcpp: "Standard_OutOfMemory(@)", header: "Standard_OutOfMemory.hxx".}

else:
  discard
## ! Standard_OutOfMemory exception is defined explicitly and not by
## ! macro DEFINE_STANDARD_EXCEPTION, to avoid necessity of dynamic
## ! memory allocations during throwing and stack unwinding:
## !
## ! - method NewInstance() returns static instance (singleton)
## ! - method Raise() raises copy of that singleton, resetting
## !   its message string
## ! - message string is stored as field, not allocated dynamically
## !   (storable message length is limited by buffer size)
## !
## ! The reason is that in out-of-memory condition any memory allocation can
## ! fail, thus use of operator new for allocation of new exception instance
## ! is dangerous (can cause recursion until stack overflow, see #24836).


proc constructStandard_OutOfMemory*(theMessage: Standard_CString = 0): Standard_OutOfMemory {.
    constructor, importcpp: "Standard_OutOfMemory(@)",
    header: "Standard_OutOfMemory.hxx".}
proc GetMessageString*(this: Standard_OutOfMemory): Standard_CString {.noSideEffect,
    importcpp: "GetMessageString", header: "Standard_OutOfMemory.hxx".}
proc SetMessageString*(this: var Standard_OutOfMemory; aMessage: Standard_CString) {.
    importcpp: "SetMessageString", header: "Standard_OutOfMemory.hxx".}
proc Raise*(theMessage: Standard_CString = "") {.
    importcpp: "Standard_OutOfMemory::Raise(@)",
    header: "Standard_OutOfMemory.hxx".}
proc Raise*(theMessage: var Standard_SStream) {.
    importcpp: "Standard_OutOfMemory::Raise(@)",
    header: "Standard_OutOfMemory.hxx".}
proc NewInstance*(theMessage: Standard_CString = ""): handle[Standard_OutOfMemory] {.
    importcpp: "Standard_OutOfMemory::NewInstance(@)",
    header: "Standard_OutOfMemory.hxx".}


proc get_type_name*(): cstring {.importcpp: "Standard_OutOfMemory::get_type_name(@)",
                              header: "Standard_OutOfMemory.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Standard_OutOfMemory::get_type_descriptor(@)",
    header: "Standard_OutOfMemory.hxx".}
proc DynamicType*(this: Standard_OutOfMemory): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Standard_OutOfMemory.hxx".}##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_OutOfRange_HeaderFile [NewLine] # _Standard_OutOfRange_HeaderFile [NewLine] # Standard_Type.hxx [NewLine] # Standard_DefineException.hxx [NewLine] # Standard_SStream.hxx [NewLine] # Standard_RangeError.hxx [NewLine] class Standard_OutOfRange ;
## Error: expected ';'!!!

discard "forward decl of Standard_OutOfRange"


## !!!Ignored construct:  # ( defined ( __GNUC__ ) && __GNUC__ > 4 || ( __GNUC__ == 4 && __GNUC_MINOR__ >= 6 ) ) [NewLine]  suppress false-positive warnings produced by GCC optimizer # Standard_OutOfRange_Always_Raise_if ( CONDITION , MESSAGE ) _Pragma ( GCC diagnostic push ) _Pragma ( GCC diagnostic ignored "-Wstrict-overflow" ) if ( CONDITION ) throw Standard_OutOfRange ( MESSAGE ) ;
## Error: expected ';'!!!

## !!!Ignored construct:  _Pragma ( GCC diagnostic pop ) [NewLine] # [NewLine] # Standard_OutOfRange_Always_Raise_if ( CONDITION , MESSAGE ) if ( CONDITION ) throw Standard_OutOfRange ( MESSAGE ) ;
## Error: expected ';'!!!

## !!!Ignored construct:  [NewLine] # [NewLine] # ! defined No_Exception && ! defined No_Standard_OutOfRange [NewLine] # Standard_OutOfRange_Raise_if ( CONDITION , MESSAGE ) Standard_OutOfRange_Always_Raise_if ( CONDITION , MESSAGE ) [NewLine] # [NewLine] # Standard_OutOfRange_Raise_if ( CONDITION , MESSAGE ) [NewLine] # [NewLine] DEFINE_STANDARD_EXCEPTION ( Standard_OutOfRange , Standard_RangeError ) #  _Standard_OutOfRange_HeaderFile [NewLine]
## Error: did not expect [NewLine]!!!
##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_Overflow_HeaderFile [NewLine] # _Standard_Overflow_HeaderFile [NewLine] # Standard_Type.hxx [NewLine] # Standard_DefineException.hxx [NewLine] # Standard_SStream.hxx [NewLine] # Standard_NumericError.hxx [NewLine] class Standard_Overflow ;
## Error: expected ';'!!!

discard "forward decl of Standard_Overflow"


## !!!Ignored construct:  # ! defined No_Exception && ! defined No_Standard_Overflow [NewLine] # if ( CONDITION ) throw Standard_Overflow ( MESSAGE ) ;
## Error: did not expect [NewLine]!!!

## !!!Ignored construct:  [NewLine] # [NewLine] # [NewLine] # [NewLine] DEFINE_STANDARD_EXCEPTION ( Standard_Overflow , Standard_NumericError ) #  _Standard_Overflow_HeaderFile [NewLine]
## Error: did not expect [NewLine]!!!
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.




##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.



##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

discard "forward decl of Standard_ErrorHandler"

##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.



##  Copyright (c) 1998-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.



## ! Root of "persistent" classes, a legacy support of
## ! object oriented databases, now outdated.


proc constructStandard_Persistent*(): Standard_Persistent {.constructor,
    importcpp: "Standard_Persistent(@)", header: "Standard_Persistent.hxx".}



proc get_type_name*(): cstring {.importcpp: "Standard_Persistent::get_type_name(@)",
                              header: "Standard_Persistent.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Standard_Persistent::get_type_descriptor(@)",
    header: "Standard_Persistent.hxx".}
proc DynamicType*(this: Standard_Persistent): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Standard_Persistent.hxx".}
proc TypeNum*(this: var Standard_Persistent): var Standard_Integer {.
    importcpp: "TypeNum", header: "Standard_Persistent.hxx".}##  Copyright (c) 1998-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.


##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_ProgramError_HeaderFile [NewLine] # _Standard_ProgramError_HeaderFile [NewLine] # Standard_Type.hxx [NewLine] # Standard_DefineException.hxx [NewLine] # Standard_SStream.hxx [NewLine] # Standard_Failure.hxx [NewLine] class Standard_ProgramError ;
## Error: expected ';'!!!

discard "forward decl of Standard_ProgramError"

## !!!Ignored construct:  # ! defined No_Exception && ! defined No_Standard_ProgramError [NewLine] # if ( CONDITION ) throw Standard_ProgramError ( MESSAGE ) ;
## Error: did not expect [NewLine]!!!

## !!!Ignored construct:  [NewLine] # [NewLine] # [NewLine] # [NewLine] DEFINE_STANDARD_EXCEPTION ( Standard_ProgramError , Standard_Failure ) #  _Standard_ProgramError_HeaderFile [NewLine]
## Error: did not expect [NewLine]!!!
##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_RangeError_HeaderFile [NewLine] # _Standard_RangeError_HeaderFile [NewLine] # Standard_Type.hxx [NewLine] # Standard_DefineException.hxx [NewLine] # Standard_SStream.hxx [NewLine] # Standard_DomainError.hxx [NewLine] class Standard_RangeError ;
## Error: expected ';'!!!

discard "forward decl of Standard_RangeError"


## !!!Ignored construct:  # ! defined No_Exception && ! defined No_Standard_RangeError [NewLine] # ( defined ( __GNUC__ ) && __GNUC__ > 4 || ( __GNUC__ == 4 && __GNUC_MINOR__ >= 6 ) ) [NewLine]  suppress false-positive warnings produced by GCC optimizer # Standard_RangeError_Raise_if ( CONDITION , MESSAGE ) _Pragma ( GCC diagnostic push ) _Pragma ( GCC diagnostic ignored "-Wstrict-overflow" ) if ( CONDITION ) throw Standard_RangeError ( MESSAGE ) ;
## Error: expected ';'!!!

## !!!Ignored construct:  _Pragma ( GCC diagnostic pop ) [NewLine] # [NewLine] # Standard_RangeError_Raise_if ( CONDITION , MESSAGE ) if ( CONDITION ) throw Standard_RangeError ( MESSAGE ) ;
## Error: expected ';'!!!

## !!!Ignored construct:  [NewLine] # [NewLine] # [NewLine] # Standard_RangeError_Raise_if ( CONDITION , MESSAGE ) [NewLine] # [NewLine] DEFINE_STANDARD_EXCEPTION ( Standard_RangeError , Standard_DomainError ) #  _Standard_RangeError_HeaderFile [NewLine]
## Error: did not expect [NewLine]!!!
##  Copyright (c) 2017-2019 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement..


## ! Auxiliary tool for buffered reading from input stream within chunks of constant size.


proc constructStandard_ReadBuffer*(theDataLen: int64_t; theChunkLen: csize_t;
                                  theIsPartialPayload: bool = false): Standard_ReadBuffer {.
    constructor, importcpp: "Standard_ReadBuffer(@)",
    header: "Standard_ReadBuffer.hxx".}
proc Init*(this: var Standard_ReadBuffer; theDataLen: int64_t; theChunkLen: csize_t;
          theIsPartialPayload: bool = false) {.importcpp: "Init",
    header: "Standard_ReadBuffer.hxx".}
proc IsDone*(this: Standard_ReadBuffer): bool {.noSideEffect, importcpp: "IsDone",
    header: "Standard_ReadBuffer.hxx".}
proc ReadChunk*[Chunk_T; Stream_T](this: var Standard_ReadBuffer;
                                 theStream: var Stream_T): ptr Chunk_T {.
    importcpp: "ReadChunk", header: "Standard_ReadBuffer.hxx".}
proc ReadDataChunk*[Stream_T](this: var Standard_ReadBuffer; theStream: var Stream_T): cstring {.
    importcpp: "ReadDataChunk", header: "Standard_ReadBuffer.hxx".}##  Copyright (c) 2019 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## ! Auxiliary tool for buffered reading of lines from input stream.


proc constructStandard_ReadLineBuffer*(theMaxBufferSizeBytes: csize_t): Standard_ReadLineBuffer {.
    constructor, importcpp: "Standard_ReadLineBuffer(@)",
    header: "Standard_ReadLineBuffer.hxx".}
proc destroyStandard_ReadLineBuffer*(this: var Standard_ReadLineBuffer) {.
    importcpp: "#.~Standard_ReadLineBuffer()",
    header: "Standard_ReadLineBuffer.hxx".}
proc Clear*(this: var Standard_ReadLineBuffer) {.importcpp: "Clear",
    header: "Standard_ReadLineBuffer.hxx".}
proc ReadLine*[Stream_T](this: var Standard_ReadLineBuffer; theStream: var Stream_T;
                        theLineLength: var csize_t): cstring {.
    importcpp: "ReadLine", header: "Standard_ReadLineBuffer.hxx".}
proc ReadLine*[Stream_T](this: var Standard_ReadLineBuffer; theStream: var Stream_T;
                        theLineLength: var csize_t; theReadData: var int64_t): cstring {.
    importcpp: "ReadLine", header: "Standard_ReadLineBuffer.hxx".}
proc IsMultilineMode*(this: Standard_ReadLineBuffer): bool {.noSideEffect,
    importcpp: "IsMultilineMode", header: "Standard_ReadLineBuffer.hxx".}
proc ToPutGapInMultiline*(this: Standard_ReadLineBuffer): bool {.noSideEffect,
    importcpp: "ToPutGapInMultiline", header: "Standard_ReadLineBuffer.hxx".}
proc SetMultilineMode*(this: var Standard_ReadLineBuffer; theMultilineMode: bool;
                      theToPutGap: bool = true) {.importcpp: "SetMultilineMode",
    header: "Standard_ReadLineBuffer.hxx".}##  Copyright (c) 1998-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_Real_HeaderFile [NewLine] # _Standard_Real_HeaderFile [NewLine] # < cmath > [NewLine] # < float . h > [NewLine] # < Standard_values . h > [NewLine] # Standard_math.hxx [NewLine] # Standard_TypeDef.hxx [NewLine]  ===============================================
##  Methods from Standard_Entity class which are redefined:
##     - Hascode
##     - IsEqual
##  ===============================================  ==================================
##  Methods implemeted in Standard_Real.cxx
##  ================================== ! Computes a hash code for the given real, in the range [1, theUpperBound]
## ! @param theReal the real value which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound] Standard_Integer HashCode ( Standard_Real theReal , Standard_Integer theUpperBound ) ;
## Error: expected ';'!!!

proc ACos*(a1: Standard_Real): Standard_Real {.importcpp: "ACos(@)",
    header: "Standard_Real.hxx".}
proc ACosApprox*(a1: Standard_Real): Standard_Real {.importcpp: "ACosApprox(@)",
    header: "Standard_Real.hxx".}
proc ASin*(a1: Standard_Real): Standard_Real {.importcpp: "ASin(@)",
    header: "Standard_Real.hxx".}
proc ATan2*(a1: Standard_Real; a2: Standard_Real): Standard_Real {.
    importcpp: "ATan2(@)", header: "Standard_Real.hxx".}
proc NextAfter*(a1: Standard_Real; a2: Standard_Real): Standard_Real {.
    importcpp: "NextAfter(@)", header: "Standard_Real.hxx".}
## ! Returns |a| if b >= 0; -|a| if b < 0.

proc Sign*(a: Standard_Real; b: Standard_Real): Standard_Real {.importcpp: "Sign(@)",
    header: "Standard_Real.hxx".}
proc ATanh*(a1: Standard_Real): Standard_Real {.importcpp: "ATanh(@)",
    header: "Standard_Real.hxx".}
proc ACosh*(a1: Standard_Real): Standard_Real {.importcpp: "ACosh(@)",
    header: "Standard_Real.hxx".}
proc Sinh*(a1: Standard_Real): Standard_Real {.importcpp: "Sinh(@)",
    header: "Standard_Real.hxx".}
proc Cosh*(a1: Standard_Real): Standard_Real {.importcpp: "Cosh(@)",
    header: "Standard_Real.hxx".}
proc Log*(a1: Standard_Real): Standard_Real {.importcpp: "Log(@)",
    header: "Standard_Real.hxx".}
proc Sqrt*(a1: Standard_Real): Standard_Real {.importcpp: "Sqrt(@)",
    header: "Standard_Real.hxx".}
## -------------------------------------------------------------------
##  RealSmall : Returns the smallest positive real
## -------------------------------------------------------------------

proc RealSmall*(): Standard_Real =
  discard

## -------------------------------------------------------------------
##  Abs : Returns the absolute value of a real
## -------------------------------------------------------------------

proc Abs*(Value: Standard_Real): Standard_Real =
  discard

## -------------------------------------------------------------------
##  IsEqual : Returns Standard_True if two reals are equal
## -------------------------------------------------------------------

proc IsEqual*(Value1: Standard_Real; Value2: Standard_Real): Standard_Boolean =
  discard

##   *********************************** //
##        Class methods                  //
##                                       //
##   Machine-dependant values            //
##   Should be taken from include file   //
##   *********************************** //
## -------------------------------------------------------------------
##  RealDigit : Returns the number of digits of precision in a real
## -------------------------------------------------------------------

proc RealDigits*(): Standard_Integer =
  discard

## -------------------------------------------------------------------
##  RealEpsilon : Returns the minimum positive real such that
##                1.0 + x is not equal to 1.0
## -------------------------------------------------------------------

proc RealEpsilon*(): Standard_Real =
  discard

## -------------------------------------------------------------------
##  RealFirst : Returns the minimum negative value of a real
## -------------------------------------------------------------------

proc RealFirst*(): Standard_Real =
  discard

## -------------------------------------------------------------------
##  RealFirst10Exp : Returns the minimum value of exponent(base 10) of
##                   a real.
## -------------------------------------------------------------------

proc RealFirst10Exp*(): Standard_Integer =
  discard

## -------------------------------------------------------------------
##  RealLast : Returns the maximum value of a real
## -------------------------------------------------------------------

proc RealLast*(): Standard_Real =
  discard

## -------------------------------------------------------------------
##  RealLast10Exp : Returns the maximum value of exponent(base 10) of
##                  a real.
## -------------------------------------------------------------------

proc RealLast10Exp*(): Standard_Integer =
  discard

## -------------------------------------------------------------------
##  RealMantissa : Returns the size in bits of the matissa part of a
##                 real.
## -------------------------------------------------------------------

proc RealMantissa*(): Standard_Integer =
  discard

## -------------------------------------------------------------------
##  RealRadix : Returns the radix of exponent representation
## -------------------------------------------------------------------

proc RealRadix*(): Standard_Integer =
  discard

## -------------------------------------------------------------------
##  RealSize : Returns the size in bits of an integer
## -------------------------------------------------------------------

proc RealSize*(): Standard_Integer =
  discard

## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=//
##    End of machine-dependant values   //
## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=//
## -------------------------------------------------------------------
##  IntToReal : Converts an integer in a real
## -------------------------------------------------------------------

proc IntToReal*(Value: Standard_Integer): Standard_Real =
  discard

## -------------------------------------------------------------------
##  ATan : Returns the value of the arc tangent of a real
## -------------------------------------------------------------------

proc ATan*(Value: Standard_Real): Standard_Real =
  discard

## -------------------------------------------------------------------
##  Ceiling : Returns the smallest integer not less than a real
## -------------------------------------------------------------------

proc Ceiling*(Value: Standard_Real): Standard_Real =
  discard

## -------------------------------------------------------------------
##  Cos : Returns the cosine of a real
## -------------------------------------------------------------------

proc Cos*(Value: Standard_Real): Standard_Real =
  discard

## -------------------------------------------------------------------
##  Epsilon : The function returns absolute value of difference
##            between 'Value' and other nearest value of
##            Standard_Real type.
##            Nearest value is choseen in direction of infinity
##            the same sign as 'Value'.
##            If 'Value' is 0 then returns minimal positive value
##            of Standard_Real type.
## -------------------------------------------------------------------

proc Epsilon*(Value: Standard_Real): Standard_Real =
  discard

## -------------------------------------------------------------------
##  Exp : Returns the exponential function of a real
## -------------------------------------------------------------------

proc Exp*(Value: Standard_Real): Standard_Real =
  discard

## -------------------------------------------------------------------
##  Floor : Return the largest integer not greater than a real
## -------------------------------------------------------------------

proc Floor*(Value: Standard_Real): Standard_Real =
  discard

## -------------------------------------------------------------------
##  IntegerPart : Returns the integer part of a real
## -------------------------------------------------------------------

proc IntegerPart*(Value: Standard_Real): Standard_Real =
  discard

## -------------------------------------------------------------------
##  Log10 : Returns the base-10 logarithm of a real
## -------------------------------------------------------------------

proc Log10*(Value: Standard_Real): Standard_Real =
  discard

## -------------------------------------------------------------------
##  Max : Returns the maximum value of two reals
## -------------------------------------------------------------------

proc Max*(Val1: Standard_Real; Val2: Standard_Real): Standard_Real =
  discard

## -------------------------------------------------------------------
##  Min : Returns the minimum value of two reals
## -------------------------------------------------------------------

proc Min*(Val1: Standard_Real; Val2: Standard_Real): Standard_Real =
  discard

## -------------------------------------------------------------------
##  Pow : Returns a real to a given power
## -------------------------------------------------------------------

proc Pow*(Value: Standard_Real; P: Standard_Real): Standard_Real =
  discard

## -------------------------------------------------------------------
##  RealPart : Returns the fractional part of a real.
## -------------------------------------------------------------------

proc RealPart*(Value: Standard_Real): Standard_Real =
  discard

## -------------------------------------------------------------------
##  RealToInt : Returns the real converted to nearest valid integer.
##              If input value is out of valid range for integers,
##              minimal or maximal possible integer is returned.
## -------------------------------------------------------------------

proc RealToInt*(Value: Standard_Real): Standard_Integer =
  discard

##  =======================================================================
##  function : RealToShortReal
##  purpose  : Converts Standard_Real value to the nearest valid
##             Standard_ShortReal. If input value is out of valid range
##             for Standard_ShortReal, minimal or maximal
##             Standard_ShortReal is returned.
##  =======================================================================

proc RealToShortReal*(theVal: Standard_Real): Standard_ShortReal =
  discard

## -------------------------------------------------------------------
##  Round : Returns the nearest integer of a real
## -------------------------------------------------------------------

proc Round*(Value: Standard_Real): Standard_Real =
  discard

## -------------------------------------------------------------------
##  Sin : Returns the sine of a real
## -------------------------------------------------------------------

proc Sin*(Value: Standard_Real): Standard_Real =
  discard

## -------------------------------------------------------------------
##  ASinh : Returns the hyperbolic arc sine of a real
## -------------------------------------------------------------------

## !!!Ignored construct:  inline Standard_Real ASinh ( const Standard_Real Value ) # __QNX__ [NewLine] { return std :: asinh ( Value ) ; } # [NewLine] { return asinh ( Value ) ; } # [NewLine] -------------------------------------------------------------------
##  Square : Returns a real to the power 2
## ------------------------------------------------------------------- inline Standard_Real Square ( const Standard_Real Value ) { return Value * Value ; } -------------------------------------------------------------------
##  Tan : Returns the tangent of a real
## ------------------------------------------------------------------- inline Standard_Real Tan ( const Standard_Real Value ) { return tan ( Value ) ; } -------------------------------------------------------------------
##  Tanh : Returns the hyperbolic tangent of a real
## ------------------------------------------------------------------- inline Standard_Real Tanh ( const Standard_Real Value ) { return tanh ( Value ) ; } # [NewLine]
## Error: expected ';'!!!
##  Copyright (c) 1998-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.



## ! Defines Standard_SStream as typedef to C++ string stream.


##  Copyright (c) 1998-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_ShortReal_HeaderFile [NewLine] # _Standard_ShortReal_HeaderFile [NewLine] # < cmath > [NewLine] # < float . h > [NewLine] # < Standard_values . h > [NewLine] # Standard_TypeDef.hxx [NewLine]   *********************************** //
##        Class methods                  //
##                                       //
##   Machine-dependant values            //
##   Should be taken from include file   //
##   *********************************** // -------------------------------------------------------------------
##  ShortRealSmall : Returns the smallest positive ShortReal
## ------------------------------------------------------------------- inline Standard_ShortReal ShortRealSmall ( ) { return FLT_MIN ; } -------------------------------------------------------------------
##  Abs : Returns the absolute value of a ShortReal
## ------------------------------------------------------------------- inline Standard_ShortReal Abs ( const Standard_ShortReal Value ) # defined ( __alpha ) || defined ( DECOSF1 ) [NewLine] { return fabsf ( Value ) ; } # [NewLine] { return float ( fabs ( Value ) ) ; } # [NewLine] -------------------------------------------------------------------
##  ShortRealDigit : Returns the number of digits of precision in a ShortReal
## ------------------------------------------------------------------- inline Standard_Integer ShortRealDigits ( ) { return FLT_DIG ; } -------------------------------------------------------------------
##  ShortRealEpsilon : Returns the minimum positive ShortReal such that
##                1.0 + x is not equal to 1.0
## ------------------------------------------------------------------- inline Standard_ShortReal ShortRealEpsilon ( ) { return FLT_EPSILON ; } -------------------------------------------------------------------
##  ShortRealFirst : Returns the minimum negative value of a ShortReal
## ------------------------------------------------------------------- inline Standard_ShortReal ShortRealFirst ( ) { Standard_ShortReal MaxFloatTmp = - FLT_MAX ; return MaxFloatTmp ; } -------------------------------------------------------------------
##  ShortRealFirst10Exp : Returns the minimum value of exponent(base 10) of
##                   a ShortReal.
## ------------------------------------------------------------------- inline Standard_Integer ShortRealFirst10Exp ( ) { return FLT_MIN_10_EXP ; } -------------------------------------------------------------------
##  ShortRealLast : Returns the maximum value of a ShortReal
## ------------------------------------------------------------------- inline Standard_ShortReal ShortRealLast ( ) { return FLT_MAX ; } -------------------------------------------------------------------
##  ShortRealLast10Exp : Returns the maximum value of exponent(base 10) of
##                  a ShortReal.
## ------------------------------------------------------------------- inline Standard_Integer ShortRealLast10Exp ( ) { return FLT_MAX_10_EXP ; } -------------------------------------------------------------------
##  ShortRealMantissa : Returns the size in bits of the matissa part of a
##                 ShortReal.
## ------------------------------------------------------------------- inline Standard_Integer ShortRealMantissa ( ) { return FLT_MANT_DIG ; } -------------------------------------------------------------------
##  ShortRealRadix : Returns the radix of exponent representation
## ------------------------------------------------------------------- inline Standard_Integer ShortRealRadix ( ) { return FLT_RADIX ; } -------------------------------------------------------------------
##  ShortRealSize : Returns the size in bits of an integer
## ------------------------------------------------------------------- inline Standard_Integer ShortRealSize ( ) { return BITS ( Standard_ShortReal ) ; } -------------------------------------------------------------------
##  Max : Returns the maximum value of two ShortReals
## ------------------------------------------------------------------- inline Standard_ShortReal Max ( const Standard_ShortReal Val1 , const Standard_ShortReal Val2 ) { if ( Val1 >= Val2 ) { return Val1 ; } else { return Val2 ; } } -------------------------------------------------------------------
##  Min : Returns the minimum value of two ShortReals
## ------------------------------------------------------------------- inline Standard_ShortReal Min ( const Standard_ShortReal Val1 , const Standard_ShortReal Val2 ) { if ( Val1 <= Val2 ) { return Val1 ; } else { return Val2 ; } }  ===============================================
##  Methods from Standard_Entity class which are redefined:
##     - Hascode
##     - IsEqual
##  ===============================================  ==================================
##  Methods implemeted in Standard_ShortReal.cxx
##  ================================== ! Computes a hash code for the given short real, in the range [1, theUpperBound]
## ! @param theShortReal the short real value which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound] Standard_Integer HashCode ( Standard_ShortReal theShortReal , Standard_Integer theUpperBound ) ;
## Error: expected ';'!!!

## -------------------------------------------------------------------
##  IsEqual : Returns Standard_True if two ShortReals are equal
## -------------------------------------------------------------------

proc IsEqual*(Value1: Standard_ShortReal; Value2: Standard_ShortReal): Standard_Boolean =
  discard
##  Created on: 2006-08-22
##  Created by: Alexander GRIGORIEV
##  Copyright (c) 2006-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_Size_HeaderFile [NewLine] # _Standard_Size_HeaderFile [NewLine] # Standard_Integer.hxx [NewLine]  msv 26.05.2009: add HashCode and IsEqual functions ! Computes a hash code for the given value of the Standard_Size type, in the range [1, theUpperBound]
## ! @tparam TheSize the type of the given value (it is Standard_Size,
## ! and must not be the same as "unsigned int", because the overload of the HashCode function
## ! for "unsigned int" type is already presented in Standard_Integer.hxx)
## ! @param theValue the value of the Standard_Size type which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound] template < typename TheSize > [end of template] typename opencascade :: std :: enable_if < ! opencascade :: std :: is_same < Standard_Size , unsigned int > :: value && opencascade :: std :: is_same < TheSize , Standard_Size > :: value , Standard_Integer > :: type HashCode ( const TheSize theValue , const Standard_Integer theUpperBound ) { Standard_Size aKey = ~ theValue + ( theValue << 18 ) ; aKey ^= ( aKey >> 31 ) ; aKey *= 21 ; aKey ^= ( aKey >> 11 ) ; aKey += ( aKey << 6 ) ; aKey ^= ( aKey >> 22 ) ; return IntegerHashCode ( aKey , IntegerLast ( ) , theUpperBound ) ; }  ------------------------------------------------------------------
##  IsEqual : Returns Standard_True if two values are equal
##  ------------------------------------------------------------------ inline Standard_Boolean IsEqual ( const Standard_Size One , const Standard_Size Two ) { return One == Two ; } # [NewLine]
## Error: token expected: ( but got: ::!!!
##  Created on: 2019-03-27
##  Created by: Timur Izmaylov
##  Copyright (c) 2019 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## ! Namespace opencascade is intended for low-level template classes and functions

## ! Namespace opencascade::std includes templates from C++11 std namespace used by
## ! OCCT classes. These definitions are imported from std namespace, plus (on older
## ! compilers) from std::tr1, or implemented by custom code where neither std
## ! not std::tr1 provide necessary definitions.

##  import all available standard stuff from std namespace

## using statement

##  for old MSVC compiler, some standard templates are defined in std::tr1 namespace,
##  and some missing ones are implemented here

## !!!Ignored construct:  # ( defined ( _MSC_VER ) && ( _MSC_VER < 1600 ) ) [NewLine] using namespace :: std :: tr1 ;
## Error: token expected: > [end of template] but got: =!!!

##  C++11 template class enable_if

## !!!Ignored construct:  template < bool Test , class Type = void > [end of template] struct enable_if {  type is undefined for assumed !_Test } ;
## Error: token expected: > [end of template] but got: =!!!

## !!!Ignored construct:  template < class _Type > [end of template] struct enable_if < true , _Type > {  type is _Type for _Test typedef _Type type ; } ;
## Error: identifier expected, but got: <!!!



## !!!Ignored construct:  template < typename TypeTrue , typename TypeFalse > [end of template] struct conditional < false , TypeTrue , TypeFalse > { typedef TypeFalse type ; } ;
## Error: identifier expected, but got: <!!!

##  namespace std
## ! Trait yielding true if class T1 is base of T2 but not the same

## !!!Ignored construct:  template < class T1 , class T2 , class Dummy = void > [end of template] struct is_base_but_not_same : opencascade :: std :: is_base_of < T1 , T2 > { } ;
## Error: token expected: > [end of template] but got: =!!!

## ! Explicit specialization of is_base_of trait to workaround the
## ! requirement of type to be complete when T1 and T2 are the same.

## !!!Ignored construct:  template < class T1 , class T2 > [end of template] struct is_base_but_not_same < T1 , T2 , typename opencascade :: std :: enable_if < opencascade :: std :: is_same < T1 , T2 > :: value > :: type > : opencascade :: std :: false_type { } ;
## Error: identifier expected, but got: <!!!

## ! The type trait that checks if the passed type is integer (it must be integral and not boolean)
## ! @tparam TheInteger the checked type

## !!!Ignored construct:  template < typename TheInteger > [end of template] struct is_integer : std :: integral_constant < bool , opencascade :: std :: is_integral < TheInteger > :: value && ! opencascade :: std :: is_same < TheInteger , bool > :: value > { } ;
## Error: token expected: { but got: <!!!

## ! The auxiliary template that is used for template argument deduction in function templates. A function argument
## ! which type is a template type parameter and it is not needed to be deducted must be declared using this class
## ! template based on the type of some other template type parameter of a function template
## ! @tparam TheType the type that is used as a function argument type to prevent its deduction



##  namespace opencascade
##  Copyright (c) 1998-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.


##  Created on: 2006-03-10
##  Created by: data exchange team
##  Copyright (c) 2006-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.


  Standard_Size

##  Platform-independent definition of the thread identifier type

##  Copyright (c) 2013-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.



##  ===============================================
##  Methods from Standard_Entity class which are redefined:
##     - IsEqual
##  ===============================================

when not defined(__QNX__):      ##  same as Standard_Size
  ##  ------------------------------------------------------------------
  ##  IsEqual : Returns Standard_True if two time values are equal
  ##  ------------------------------------------------------------------
  proc IsEqual*(theOne: Standard_Time; theTwo: Standard_Time): Standard_Boolean =
    discard
  ##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_TooManyUsers_HeaderFile [NewLine] # _Standard_TooManyUsers_HeaderFile [NewLine] # Standard_Type.hxx [NewLine] # Standard_DefineException.hxx [NewLine] # Standard_SStream.hxx [NewLine] # Standard_LicenseError.hxx [NewLine] class Standard_TooManyUsers ;
## Error: expected ';'!!!

discard "forward decl of Standard_TooManyUsers"


## !!!Ignored construct:  # ! defined No_Exception && ! defined No_Standard_TooManyUsers [NewLine] # if ( CONDITION ) throw Standard_TooManyUsers ( MESSAGE ) ;
## Error: did not expect [NewLine]!!!

## !!!Ignored construct:  [NewLine] # [NewLine] # [NewLine] # [NewLine] DEFINE_STANDARD_EXCEPTION ( Standard_TooManyUsers , Standard_LicenseError ) #  _Standard_TooManyUsers_HeaderFile [NewLine]
## Error: did not expect [NewLine]!!!
##  Copyright (c) 1998-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.


discard "forward decl of Standard_Type"
discard "forward decl of handle"
## ! Abstract class which forms the root of the entire
## ! Transient class hierarchy.


proc constructStandard_Transient*(): Standard_Transient {.constructor,
    importcpp: "Standard_Transient(@)", header: "Standard_Transient.hxx".}
proc constructStandard_Transient*(a1: Standard_Transient): Standard_Transient {.
    constructor, importcpp: "Standard_Transient(@)",
    header: "Standard_Transient.hxx".}
proc destroyStandard_Transient*(this: var Standard_Transient) {.
    importcpp: "#.~Standard_Transient()", header: "Standard_Transient.hxx".}
proc Delete*(this: Standard_Transient) {.noSideEffect, importcpp: "Delete",
                                      header: "Standard_Transient.hxx".}


proc get_type_name*(): cstring {.importcpp: "Standard_Transient::get_type_name(@)",
                              header: "Standard_Transient.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Standard_Transient::get_type_descriptor(@)",
    header: "Standard_Transient.hxx".}
proc DynamicType*(this: Standard_Transient): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Standard_Transient.hxx".}
proc IsInstance*(this: Standard_Transient; theType: handle[Standard_Type]): Standard_Boolean {.
    noSideEffect, importcpp: "IsInstance", header: "Standard_Transient.hxx".}
proc IsInstance*(this: Standard_Transient; theTypeName: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "IsInstance", header: "Standard_Transient.hxx".}
proc IsKind*(this: Standard_Transient; theType: handle[Standard_Type]): Standard_Boolean {.
    noSideEffect, importcpp: "IsKind", header: "Standard_Transient.hxx".}
proc IsKind*(this: Standard_Transient; theTypeName: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "IsKind", header: "Standard_Transient.hxx".}
proc This*(this: Standard_Transient): ptr Standard_Transient {.noSideEffect,
    importcpp: "This", header: "Standard_Transient.hxx".}
proc GetRefCount*(this: Standard_Transient): Standard_Integer {.noSideEffect,
    importcpp: "GetRefCount", header: "Standard_Transient.hxx".}
proc IncrementRefCounter*(this: Standard_Transient) {.noSideEffect,
    importcpp: "IncrementRefCounter", header: "Standard_Transient.hxx".}
proc DecrementRefCounter*(this: Standard_Transient): Standard_Integer {.
    noSideEffect, importcpp: "DecrementRefCounter",
    header: "Standard_Transient.hxx".}
## ! Computes a hash code for the given transient object, in the range [1, theUpperBound]
## ! @param theTransientObject the transient object which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc HashCode*(theTransientObject: ptr Standard_Transient;
              theUpperBound: Standard_Integer): Standard_Integer =
  discard

## ! Definition of Handle_Standard_Transient as typedef for compatibility


##  Copyright (c) 1998-1999 Matra Datavision
##  Copyright (c) 1999-2013 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

##  VC9 does not have stdint.h



##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_TypeMismatch_HeaderFile [NewLine] # _Standard_TypeMismatch_HeaderFile [NewLine] # Standard_Type.hxx [NewLine] # Standard_DefineException.hxx [NewLine] # Standard_SStream.hxx [NewLine] # Standard_DomainError.hxx [NewLine] class Standard_TypeMismatch ;
## Error: expected ';'!!!

discard "forward decl of Standard_TypeMismatch"


## !!!Ignored construct:  # ! defined No_Exception && ! defined No_Standard_TypeMismatch [NewLine] # if ( CONDITION ) throw Standard_TypeMismatch ( MESSAGE ) ;
## Error: did not expect [NewLine]!!!

## !!!Ignored construct:  [NewLine] # [NewLine] # [NewLine] # [NewLine] DEFINE_STANDARD_EXCEPTION ( Standard_TypeMismatch , Standard_DomainError ) #  _Standard_TypeMismatch_HeaderFile [NewLine]
## Error: did not expect [NewLine]!!!
##  Copyright (c) 1998-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.



##  Created on: 1991-09-05
##  Created by: J.P. TIRAUlt
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## !!!Ignored construct:  # _Standard_Underflow_HeaderFile [NewLine] # _Standard_Underflow_HeaderFile [NewLine] # Standard_Type.hxx [NewLine] # Standard_DefineException.hxx [NewLine] # Standard_SStream.hxx [NewLine] # Standard_NumericError.hxx [NewLine] class Standard_Underflow ;
## Error: expected ';'!!!

discard "forward decl of Standard_Underflow"


## !!!Ignored construct:  # ! defined No_Exception && ! defined No_Standard_Underflow [NewLine] # if ( CONDITION ) throw Standard_Underflow ( MESSAGE ) ;
## Error: did not expect [NewLine]!!!

## !!!Ignored construct:  [NewLine] # [NewLine] # [NewLine] # [NewLine] DEFINE_STANDARD_EXCEPTION ( Standard_Underflow , Standard_NumericError ) #  _Standard_Underflow_HeaderFile [NewLine]
## Error: did not expect [NewLine]!!!
##  Created on: 2002-07-09
##  Created by: Andrey BETENEV
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.
## ======================================================================
## //
## // Purpose:   Defines macros identifying current version of Open CASCADE
## //
## //            OCC_VERSION_MAJOR       : (integer) number identifying major version
## //            OCC_VERSION_MINOR       : (integer) number identifying minor version
## //            OCC_VERSION_MAINTENANCE : (integer) number identifying maintenance version
## //            OCC_VERSION_DEVELOPMENT : (string)  if defined, indicates development or modified version
## //            OCC_VERSION             : (real)    complete number (major.minor)
## //            OCC_VERSION_STRING      : (string)  short version number ("major.minor")
## //            OCC_VERSION_COMPLETE    : (string)  complete version number ("major.minor.maintenance")
## //            OCC_VERSION_STRING_EXT  : (string)  extended version ("major.minor.maintenance.development")
## //            OCC_VERSION_HEX         : (hex)     complete number as hex, two positions per each of major, minor, and patch number
## //
## //======================================================================

## !!!Ignored construct:  # _Standard_Version_HeaderFile [NewLine] # _Standard_Version_HeaderFile [NewLine]  Primary definitions # OCC_VERSION_MAJOR 7 [NewLine] # OCC_VERSION_MINOR 5 [NewLine] # OCC_VERSION_MAINTENANCE 0 [NewLine] ! This macro must be commented in official release, and set to non-empty
## ! string in other situations, to identify specifics of the version, e.g.:
## ! - "dev" for development version between releases
## ! - "beta..." or "rc..." for beta releases or release candidates
## ! - "project..." for version containing project-specific fixes
## #define OCC_VERSION_DEVELOPMENT   "beta"  Derived (manually): version as real and string (major.minor) # OCC_VERSION 7.5 [NewLine] # OCC_VERSION_STRING 7.5 [NewLine] # OCC_VERSION_COMPLETE 7.5.0 [NewLine] ! Derived: extended version as string ("major.minor.maintenance.dev") # OCC_VERSION_DEVELOPMENT [NewLine] # OCC_VERSION_STRING_EXT OCC_VERSION_COMPLETE . OCC_VERSION_DEVELOPMENT [NewLine] # [NewLine] # OCC_VERSION_STRING_EXT OCC_VERSION_COMPLETE [NewLine] # [NewLine]  Derived: complete version as hex (0x0'major'0'minor'0'maintenance') # OCC_VERSION_HEX ( OCC_VERSION_MAJOR << 16 | OCC_VERSION_MINOR << 8 | OCC_VERSION_MAINTENANCE ) [NewLine] #  _Standard_Version_HeaderFile [NewLine]
## Error: expected ';'!!!
##  Copyright (c) 2019 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## ! @file
## ! Include this file to disable GCC warning -Wcast-function-type introduced in GCC 8.1.
## !
## ! This diagnostic warns when a function pointer is cast to an incompatible function pointer.
## ! Existing APIs loading function pointer from library (like dlsym() or wglGetProcAddress()) have no
## ! possibility to return function of specified type nor to verify that exported symbol actually
## ! matches the expected function signature, so that unsafe function cast is unavoidable.
## ! There is no way to prevent this warning at OCCT level (until safer APIs is introduced), thus
## ! suppressing it is the only feasible way to avoid it. As this warning still can point out broken
## ! places, it should be suppressed only locally, where usage of function cast has been verified.

##  Copyright (c) 2018 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.
## !@file
## ! Supresses compiler warnings.
## !
## ! Standard_WarningsDisable.hxx disables all compiler warnings.
## ! Standard_WarningsRestore.hxx restore the previous state of warnings.
## !
## ! Use these headers to wrap include directive containing external (non-OCCT)
## ! header files to avoid compiler warnings to be generated for these files.
## ! They should always be used in pair:
## !
## ! @code
## ! #include <Standard_WarningsDisable.hxx>
## ! #include <dirty_header.h> // some header that can generate warnings
## ! #include <Standard_WarningsRestore.hxx>
## ! @endcode

##  Copyright (c) 2018 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.
## !@file
## ! Restores compiler warnings suppressed by inclusion of Standard_WarningsDisable.hxx.
## !
## ! Standard_WarningsDisable.hxx disables all compiler warnings.
## ! Standard_WarningsRestore.hxx restore the previous state of warnings.
## !
## ! Use these headers to wrap include directive containing external (non-OCCT)
## ! header files to avoid compiler warnings to be generated for these files.
## ! They should always be used in pair:
## !
## ! @code
## ! #include <Standard_WarningsDisable.hxx>
## ! #include <dirty_header.h> // some header that can generate warnings
## ! #include <Standard_WarningsRestore.hxx>
## ! @endcode

##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.



when defined(MSC_VER):
  ##  MSVC versions prior to 12 did not provided acosh, asinh, atanh functions in standard library
  when MSC_VER < 1800:
    proc acosh*(a1: cdouble): cdouble {.cdecl, importcpp: "acosh(@)",
                                    header: "Standard_math.hxx".}
    proc asinh*(a1: cdouble): cdouble {.cdecl, importcpp: "asinh(@)",
                                    header: "Standard_math.hxx".}
    proc atanh*(a1: cdouble): cdouble {.cdecl, importcpp: "atanh(@)",
                                    header: "Standard_math.hxx".}



















































