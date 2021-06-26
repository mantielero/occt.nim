{.passL: "-lTKBO -lTKSTEP -lTKPrim -lTKSTEPAttr -lTKSTEP209 -lTKSTEPBase -lTKXSBase -lTKShHealing -lTKTopAlgo -lTKGeomAlgo -lTKBRep -lTKGeomBase -lTKG3d -lTKG2d -lTKMath -lTKernel", passC:"-I/usr/include/opencascade" .}

type
  Handle* {.importcpp: "opencascade::handle", header: "<map>".} [K] = object  
  Standard_MMgrRoot* {.header: "Standard_MMgrRoot.hxx", importcpp: "Standard_MMgrRoot", byref.} = object
  ## Root class for Open CASCADE mmemory managers. Defines only abstract
  ## interface functions.

  base_type* {.header: "Standard_Transient.hxx", importcpp: "base_type".} = void
  Handle_Standard_Transient* {.header: "Standard_Transient.hxx", importcpp: "Handle_Standard_Transient".} = Handle[Standard_Transient]
  Standard_Transient* {.header: "Standard_Transient.hxx", importcpp: "Standard_Transient", byref.} = object
  ## Abstract class which forms the root of the entire Transient class
  ## hierarchy.

  Handle_Standard_DimensionMismatch* {.header: "Standard_DimensionMismatch.hxx", importcpp: "Handle_Standard_DimensionMismatch".} = Handle[Standard_DimensionMismatch]
  #base_type* {.header: "Standard_DimensionMismatch.hxx", importcpp: "base_type".} = Standard_DimensionError
  Standard_DimensionMismatch* {.header: "Standard_DimensionMismatch.hxx", importcpp: "Standard_DimensionMismatch", byref.} = object

  Handle_Standard_ConstructionError* {.header: "Standard_ConstructionError.hxx", importcpp: "Handle_Standard_ConstructionError".} = Handle[Standard_ConstructionError]
  #base_type* {.header: "Standard_ConstructionError.hxx", importcpp: "base_type".} = Standard_DomainError
  Standard_ConstructionError* {.header: "Standard_ConstructionError.hxx", importcpp: "Standard_ConstructionError", byref.} = object

  Standard_ReadBuffer* {.header: "Standard_ReadBuffer.hxx", importcpp: "Standard_ReadBuffer", byref.} = object
  ## Auxiliary tool for buffered reading from input stream within chunks of
  ## constant size.

  Handle_Standard_LicenseNotFound* {.header: "Standard_LicenseNotFound.hxx", importcpp: "Handle_Standard_LicenseNotFound".} = Handle[Standard_LicenseNotFound]
  ##base_type* {.header: "Standard_LicenseNotFound.hxx", importcpp: "base_type".} = Standard_LicenseError
  Standard_LicenseNotFound* {.header: "Standard_LicenseNotFound.hxx", importcpp: "Standard_LicenseNotFound", byref.} = object

  #Standard_JmpBuf* {.header: "Standard_JmpBuf.hxx", importcpp: "Standard_JmpBuf".} = jmp_buf
  Handle_Standard_NotImplemented* {.header: "Standard_NotImplemented.hxx", importcpp: "Handle_Standard_NotImplemented".} = Handle[Standard_NotImplemented]
  #base_type* {.header: "Standard_NotImplemented.hxx", importcpp: "base_type".} = Standard_ProgramError
  Standard_NotImplemented* {.header: "Standard_NotImplemented.hxx", importcpp: "Standard_NotImplemented", byref.} = object

  #base_type* {.header: "Standard_Type.hxx", importcpp: "base_type".} = Standard_Transient
  Handle_Standard_Type* {.header: "Standard_Type.hxx", importcpp: "Handle_Standard_Type".} = Handle[Standard_Type]
  Standard_Type* {.header: "Standard_Type.hxx", importcpp: "Standard_Type", byref.} = object
  ## This class provides legacy interface (type descriptor) to run-time
  ## type information (RTTI) for OCCT classes inheriting from
  ## Standard_Transient.

  type_instance* {.header: "Standard_Type.hxx", importcpp: "type_instance", byref.} = object
  ## Specialization of type descriptor instance for void; returns null
  ## handle

  Standard_PByte* {.header: "Standard_PByte.hxx", importcpp: "Standard_PByte".} = Standard_Byte #*
  Standard_GUID* {.header: "Standard_GUID.hxx", importcpp: "Standard_GUID", byref.} = object

  Handle_Standard_RangeError* {.header: "Standard_RangeError.hxx", importcpp: "Handle_Standard_RangeError".} = Handle[Standard_RangeError]
  #base_type* {.header: "Standard_RangeError.hxx", importcpp: "base_type".} = Standard_DomainError
  Standard_RangeError* {.header: "Standard_RangeError.hxx", importcpp: "Standard_RangeError", byref.} = object

  Handle_Standard_NullValue* {.header: "Standard_NullValue.hxx", importcpp: "Handle_Standard_NullValue".} = Handle[Standard_NullValue]
  #base_type* {.header: "Standard_NullValue.hxx", importcpp: "base_type".} = Standard_RangeError
  Standard_NullValue* {.header: "Standard_NullValue.hxx", importcpp: "Standard_NullValue", byref.} = object

  Standard_PCharacter* {.header: "Standard_PCharacter.hxx", importcpp: "Standard_PCharacter".} = Standard_Character #*
  #Standard_IStream* {.header: "Standard_IStream.hxx", importcpp: "Standard_IStream".} = Istream[]
  Standard_ReadLineBuffer* {.header: "Standard_ReadLineBuffer.hxx", importcpp: "Standard_ReadLineBuffer", byref.} = object
  ## Auxiliary tool for buffered reading of lines from input stream.

  Standard_ThreadId* {.header: "Standard_ThreadId.hxx", importcpp: "Standard_ThreadId".} = Standard_Size
  Standard_Mutex* {.header: "Standard_Mutex.hxx", importcpp: "Standard_Mutex", byref.} = object
  ## Mutex: a class to synchronize access to shared data.

  Sentry* {.header: "Standard_Mutex.hxx", importcpp: "Sentry", byref.} = object
  ## Simple sentry class providing convenient interface to mutex.

  Handle_Standard_LicenseError* {.header: "Standard_LicenseError.hxx", importcpp: "Handle_Standard_LicenseError".} = Handle[Standard_LicenseError]
  #base_type* {.header: "Standard_LicenseError.hxx", importcpp: "base_type".} = Standard_Failure
  Standard_LicenseError* {.header: "Standard_LicenseError.hxx", importcpp: "Standard_LicenseError", byref.} = object

  Handle_Standard_Underflow* {.header: "Standard_Underflow.hxx", importcpp: "Handle_Standard_Underflow".} = Handle[Standard_Underflow]
  #base_type* {.header: "Standard_Underflow.hxx", importcpp: "base_type".} = Standard_NumericError
  Standard_Underflow* {.header: "Standard_Underflow.hxx", importcpp: "Standard_Underflow", byref.} = object

  Handle_Standard_NumericError* {.header: "Standard_NumericError.hxx", importcpp: "Handle_Standard_NumericError".} = Handle[Standard_NumericError]
  #base_type* {.header: "Standard_NumericError.hxx", importcpp: "base_type".} = Standard_Failure
  Standard_NumericError* {.header: "Standard_NumericError.hxx", importcpp: "Standard_NumericError", byref.} = object

  Handle_Standard_NoSuchObject* {.header: "Standard_NoSuchObject.hxx", importcpp: "Handle_Standard_NoSuchObject".} = Handle[Standard_NoSuchObject]
  #base_type* {.header: "Standard_NoSuchObject.hxx", importcpp: "base_type".} = Standard_DomainError
  Standard_NoSuchObject* {.header: "Standard_NoSuchObject.hxx", importcpp: "Standard_NoSuchObject", byref.} = object

  Handle_Standard_ProgramError* {.header: "Standard_ProgramError.hxx", importcpp: "Handle_Standard_ProgramError".} = Handle[Standard_ProgramError]
  #base_type* {.header: "Standard_ProgramError.hxx", importcpp: "base_type".} = Standard_Failure
  Standard_ProgramError* {.header: "Standard_ProgramError.hxx", importcpp: "Standard_ProgramError", byref.} = object

  #Standard_ErrorHandlerCallback* {.header: "Standard_ErrorHandler.hxx", importcpp: "Standard_ErrorHandlerCallback".} = Callback[]
  Standard_ErrorHandler* {.header: "Standard_ErrorHandler.hxx", importcpp: "Standard_ErrorHandler", byref.} = object
  ## Class implementing mechanics of conversion of signals to exceptions.

  Callback* {.header: "Standard_ErrorHandler.hxx", importcpp: "Callback", byref.} = object
  ## Defines a base class for callback objects that can be registered in
  ## the OCC error handler (the class simulating C++ exceptions) so as to
  ## be correctly destroyed when error handler is activated.

  #`type`* {.header: "Standard_Std.hxx", importcpp: "type".} = TheType
  #Standard_SStream* {.header: "Standard_SStream.hxx", importcpp: "Standard_SStream".} = Stringstream[]
  Handle_Standard_TypeMismatch* {.header: "Standard_TypeMismatch.hxx", importcpp: "Handle_Standard_TypeMismatch".} = Handle[Standard_TypeMismatch]
  #base_type* {.header: "Standard_TypeMismatch.hxx", importcpp: "base_type".} = Standard_DomainError
  Standard_TypeMismatch* {.header: "Standard_TypeMismatch.hxx", importcpp: "Standard_TypeMismatch", byref.} = object

  Handle_Standard_NoMoreObject* {.header: "Standard_NoMoreObject.hxx", importcpp: "Handle_Standard_NoMoreObject".} = Handle[Standard_NoMoreObject]
  #base_type* {.header: "Standard_NoMoreObject.hxx", importcpp: "base_type".} = Standard_DomainError
  Standard_NoMoreObject* {.header: "Standard_NoMoreObject.hxx", importcpp: "Standard_NoMoreObject", byref.} = object

  # Standard_OStream* {.header: "Standard_OStream.hxx", importcpp: "Standard_OStream".} = Ostream[]
  Standard_DumpSentry* {.header: "Standard_Dump.hxx", importcpp: "Standard_DumpSentry", byref.} = object
  ## Simple sentry class providing convenient interface to dump. Appends
  ## start and last rows in dump with class name key. An example of the
  ## using: for ClassName, the result is: "ClassName" { ... } Create
  ## instance of that class in the first row of Dump.

  Standard_Dump* {.header: "Standard_Dump.hxx", importcpp: "Standard_Dump", byref.} = object
  ## This interface has some tool methods for stream (in JSON format)
  ## processing.

  #Standard_PExtCharacter* {.header: "Standard_PExtCharacter.hxx", importcpp: "Standard_PExtCharacter".} = Standard_ExtCharacter #*
  Handle_Standard_DivideByZero* {.header: "Standard_DivideByZero.hxx", importcpp: "Handle_Standard_DivideByZero".} = Handle[Standard_DivideByZero]
  #base_type* {.header: "Standard_DivideByZero.hxx", importcpp: "base_type".} = Standard_NumericError
  Standard_DivideByZero* {.header: "Standard_DivideByZero.hxx", importcpp: "Standard_DivideByZero", byref.} = object

  Handle_Standard_OutOfRange* {.header: "Standard_OutOfRange.hxx", importcpp: "Handle_Standard_OutOfRange".} = Handle[Standard_OutOfRange]
  #base_type* {.header: "Standard_OutOfRange.hxx", importcpp: "base_type".} = Standard_RangeError
  Standard_OutOfRange* {.header: "Standard_OutOfRange.hxx", importcpp: "Standard_OutOfRange", byref.} = object

  Handle_Standard_Failure* {.header: "Standard_Failure.hxx", importcpp: "Handle_Standard_Failure".} = Handle[Standard_Failure]
  #base_type* {.header: "Standard_Failure.hxx", importcpp: "base_type".} = Standard_Transient
  Standard_Failure* {.header: "Standard_Failure.hxx", importcpp: "Standard_Failure", byref.} = object
  ## Forms the root of the entire exception hierarchy.

  Standard_MMgrRaw* {.header: "Standard_MMgrRaw.hxx", importcpp: "Standard_MMgrRaw", byref.} = object
  ## Implementation of raw OCC memory manager which uses standard C
  ## functions: malloc (or calloc), free and realloc without any
  ## optimization

  Standard_Integer* {.header: "Standard_TypeDef.hxx", importcpp: "Standard_Integer".} = cint
  Standard_Real* {.header: "Standard_TypeDef.hxx", importcpp: "Standard_Real".} = cdouble
  Standard_Boolean* {.header: "Standard_TypeDef.hxx", importcpp: "Standard_Boolean".} = bool
  Standard_ShortReal* {.header: "Standard_TypeDef.hxx", importcpp: "Standard_ShortReal".} = cfloat
  Standard_Character* {.header: "Standard_TypeDef.hxx", importcpp: "Standard_Character".} = char
  Standard_Byte* {.header: "Standard_TypeDef.hxx", importcpp: "Standard_Byte".} = cuchar
  Standard_Address* {.header: "Standard_TypeDef.hxx", importcpp: "Standard_Address".} = pointer
  Standard_Size* {.header: "Standard_TypeDef.hxx", importcpp: "Standard_Size".} = cint
  #Standard_Time* {.header: "Standard_TypeDef.hxx", importcpp: "Standard_Time".} = Time_t[]
  Standard_Utf8Char* {.header: "Standard_TypeDef.hxx", importcpp: "Standard_Utf8Char".} = char
  Standard_Utf8UChar* {.header: "Standard_TypeDef.hxx", importcpp: "Standard_Utf8UChar".} = cuchar
  #[
  #Standard_ExtCharacter* {.header: "Standard_TypeDef.hxx", importcpp: "Standard_ExtCharacter".} = char16_t
  Standard_Utf16Char* {.header: "Standard_TypeDef.hxx", importcpp: "Standard_Utf16Char".} = char16_t
  Standard_Utf32Char* {.header: "Standard_TypeDef.hxx", importcpp: "Standard_Utf32Char".} = char32_t
  Standard_WideChar* {.header: "Standard_TypeDef.hxx", importcpp: "Standard_WideChar".} = wchar_t
  Standard_CString* {.header: "Standard_TypeDef.hxx", importcpp: "Standard_CString".} = Standard_Character #*
  Standard_ExtString* {.header: "Standard_TypeDef.hxx", importcpp: "Standard_ExtString".} = Standard_ExtCharacter #*
  ]#
  Handle_Standard_NullObject* {.header: "Standard_NullObject.hxx", importcpp: "Handle_Standard_NullObject".} = Handle[Standard_NullObject]
  #base_type* {.header: "Standard_NullObject.hxx", importcpp: "base_type".} = Standard_DomainError
  Standard_NullObject* {.header: "Standard_NullObject.hxx", importcpp: "Standard_NullObject", byref.} = object

  Handle_Standard_MultiplyDefined* {.header: "Standard_MultiplyDefined.hxx", importcpp: "Handle_Standard_MultiplyDefined".} = Handle[Standard_MultiplyDefined]
  #base_type* {.header: "Standard_MultiplyDefined.hxx", importcpp: "base_type".} = Standard_DomainError
  Standard_MultiplyDefined* {.header: "Standard_MultiplyDefined.hxx", importcpp: "Standard_MultiplyDefined", byref.} = object

  Standard_MMgrTBBalloc* {.header: "Standard_MMgrTBBalloc.hxx", importcpp: "Standard_MMgrTBBalloc", byref.} = object
  ## Implementation of OCC memory manager which uses Intel TBB scalable
  ## allocator.

  #GUID* {.header: "Standard_UUID.hxx", importcpp: "GUID".} = struct GUID
  #Standard_UUID* {.header: "Standard_UUID.hxx", importcpp: "Standard_UUID".} = GUID
  Handle_Standard_DomainError* {.header: "Standard_DomainError.hxx", importcpp: "Handle_Standard_DomainError".} = Handle[Standard_DomainError]
  #base_type* {.header: "Standard_DomainError.hxx", importcpp: "base_type".} = Standard_Failure
  Standard_DomainError* {.header: "Standard_DomainError.hxx", importcpp: "Standard_DomainError", byref.} = object

  #Handle_Standard_Overflow* {.header: "Standard_Overflow.hxx", importcpp: "Handle_Standard_Overflow".} = Handle[Standard_Overflow]
  #base_type* {.header: "Standard_Overflow.hxx", importcpp: "base_type".} = Standard_NumericError
  Standard_Overflow* {.header: "Standard_Overflow.hxx", importcpp: "Standard_Overflow", byref.} = object

  Standard* {.header: "Standard.hxx", importcpp: "Standard", byref.} = object
  ## The package Standard provides global memory allocator and other basic
  ## services used by other OCCT components.

  Handle_Standard_OutOfMemory* {.header: "Standard_OutOfMemory.hxx", importcpp: "Handle_Standard_OutOfMemory".} = Handle[Standard_OutOfMemory]
  #base_type* {.header: "Standard_OutOfMemory.hxx", importcpp: "base_type".} = Standard_ProgramError
  Standard_OutOfMemory* {.header: "Standard_OutOfMemory.hxx", importcpp: "Standard_OutOfMemory", byref.} = object
  ## Standard_OutOfMemory exception is defined explicitly and not by macro
  ## DEFINE_STANDARD_EXCEPTION, to avoid necessity of dynamic memory
  ## allocations during throwing and stack unwinding:

  Handle_Standard_TooManyUsers* {.header: "Standard_TooManyUsers.hxx", importcpp: "Handle_Standard_TooManyUsers".} = Handle[Standard_TooManyUsers]
  #base_type* {.header: "Standard_TooManyUsers.hxx", importcpp: "base_type".} = Standard_LicenseError
  Standard_TooManyUsers* {.header: "Standard_TooManyUsers.hxx", importcpp: "Standard_TooManyUsers", byref.} = object

  Handle_Standard_AbortiveTransaction* {.header: "Standard_AbortiveTransaction.hxx", importcpp: "Handle_Standard_AbortiveTransaction".} = Handle[Standard_AbortiveTransaction]
  #base_type* {.header: "Standard_AbortiveTransaction.hxx", importcpp: "base_type".} = Standard_Failure
  Standard_AbortiveTransaction* {.header: "Standard_AbortiveTransaction.hxx", importcpp: "Standard_AbortiveTransaction", byref.} = object

  Handle_Standard_NegativeValue* {.header: "Standard_NegativeValue.hxx", importcpp: "Handle_Standard_NegativeValue".} = Handle[Standard_NegativeValue]
  #base_type* {.header: "Standard_NegativeValue.hxx", importcpp: "base_type".} = Standard_RangeError
  Standard_NegativeValue* {.header: "Standard_NegativeValue.hxx", importcpp: "Standard_NegativeValue", byref.} = object

  Handle_Standard_ImmutableObject* {.header: "Standard_ImmutableObject.hxx", importcpp: "Handle_Standard_ImmutableObject".} = Handle[Standard_ImmutableObject]
  #base_type* {.header: "Standard_ImmutableObject.hxx", importcpp: "base_type".} = Standard_DomainError
  Standard_ImmutableObject* {.header: "Standard_ImmutableObject.hxx", importcpp: "Standard_ImmutableObject", byref.} = object

  #element_type* {.header: "Standard_Handle.hxx", importcpp: "element_type".} = T
  Standard_PErrorHandler* {.header: "Standard_PErrorHandler.hxx", importcpp: "Standard_PErrorHandler".} = Standard_ErrorHandler #*
  Standard_ArrayStreamBuffer* {.header: "Standard_ArrayStreamBuffer.hxx", importcpp: "Standard_ArrayStreamBuffer", byref.} = object
  ## Custom buffer object implementing STL interface std::streambuf for
  ## streamed reading from allocated memory block. Implements minimal sub-
  ## set of methods for passing buffer to std::istream, including seek
  ## support.

  #TPCallBackFunc* {.header: "Standard_MMgrOpt.hxx", importcpp: "TPCallBackFunc".} = void (*)(const Standard_Boolean, const Standard_Address, const Standard_Size, const Standard_Size)
  Standard_MMgrOpt* {.header: "Standard_MMgrOpt.hxx", importcpp: "Standard_MMgrOpt", byref.} = object
  ## Open CASCADE memory manager optimized for speed.

  Standard_Condition* {.header: "Standard_Condition.hxx", importcpp: "Standard_Condition", byref.} = object
  ## This is boolean flag intended for communication between threads. One
  ## thread sets this flag to TRUE to indicate some event happened and
  ## another thread either waits this event or checks periodically its
  ## state to perform job.

  #clocale_t* {.header: "Standard_CLocaleSentry.hxx", importcpp: "clocale_t".} = locale_t
  Standard_CLocaleSentry* {.header: "Standard_CLocaleSentry.hxx", importcpp: "Standard_CLocaleSentry", byref.} = object
  ## This class intended to temporary switch C locale and logically
  ## equivalent to setlocale(LC_ALL, "C"). It is intended to format text
  ## regardless of user locale settings (for import/export functionality).
  ## Thus following calls to sprintf, atoi and other functions will use "C"
  ## locale. Destructor of this class will return original locale.

  Handle_Standard_DimensionError* {.header: "Standard_DimensionError.hxx", importcpp: "Handle_Standard_DimensionError".} = Handle[Standard_DimensionError]
  #base_type* {.header: "Standard_DimensionError.hxx", importcpp: "base_type".} = Standard_DomainError
  Standard_DimensionError* {.header: "Standard_DimensionError.hxx", importcpp: "Standard_DimensionError", byref.} = object

  #base_type* {.header: "Standard_Persistent.hxx", importcpp: "base_type".} = Standard_Transient
  Standard_Persistent* {.header: "Standard_Persistent.hxx", importcpp: "Standard_Persistent", byref.} = object
  ## Root of "persistent" classes, a legacy support of object oriented
  ## databases, now outdated.



  Istream* {.importcpp: "var std::istream", header: "<map>".} [K] = object

  #Sentry* {.importcpp: "Standard_Mutex::Sentry", header: "<map>".} [K] = object

  #Callback* {.importcpp: "Standard_ErrorHandler::Callback", header: "<map>".} [K] = object

  Stringstream* {.importcpp: "std::stringstream", header: "<map>".} [K] = object

  Ostream* {.importcpp: "std::ostream", header: "<map>".} [K] = object

  Time_t* {.importcpp: "std::time_t", header: "<map>".} [K] = object

  Streamsize* {.importcpp: "std::streamsize", header: "<map>".} [K] = object

  Tpcallbackfunc* {.importcpp: "Standard_MMgrOpt::TPCallBackFunc", header: "<map>".} [K] = object

  Clocale_t* {.importcpp: "Standard_CLocaleSentry::clocale_t", header: "<map>".} [K] = object

#[
include "Standard_MMgrRoot.nim"
include "Standard_Transient.nim"
include "Standard_DimensionMismatch.nim"
include "Standard_ConstructionError.nim"
include "Standard_ReadBuffer.nim"
include "Standard_LicenseNotFound.nim"
include "Standard_JmpBuf.nim"
include "Standard_NotImplemented.nim"
include "Standard_HandlerStatus.nim"
include "Standard_Assert.nim"
include "Standard_Type.nim"
include "Standard_DefineHandle.nim"
include "Standard_CString.nim"
include "Standard_PByte.nim"
include "Standard_WarningsDisable.nim"
include "Standard_Real.nim"
include "Standard_GUID.nim"
include "Standard_RangeError.nim"
include "Standard_NullValue.nim"
include "Standard_ExtString.nim"
include "Standard_PCharacter.nim"
include "Standard_IStream.nim"
include "Standard_ReadLineBuffer.nim"
include "Standard_DefineAlloc.nim"
include "Standard_ThreadId.nim"
include "Standard_math.nim"
include "Standard_Mutex.nim"
include "Standard_LicenseError.nim"
include "Standard_Underflow.nim"
include "Standard_NumericError.nim"
include "Standard_NoSuchObject.nim"
include "Standard_ProgramError.nim"
include "Standard_ExtCharacter.nim"
include "Standard_ErrorHandler.nim"
include "Standard_Std.nim"
include "Standard_Boolean.nim"
include "Standard_SStream.nim"
include "Standard_Atomic.nim"
include "Standard_Address.nim"
include "Standard_TypeMismatch.nim"
include "Standard_Time.nim"
include "Standard_Byte.nim"
include "Standard_NoMoreObject.nim"
include "Standard_OStream.nim"
include "Standard_Stream.nim"
include "Standard_Dump.nim"
include "Standard_PExtCharacter.nim"
include "Standard_DivideByZero.nim"
include "Standard_OutOfRange.nim"
include "Standard_Failure.nim"
include "Standard_MMgrRaw.nim"
include "Standard_TypeDef.nim"
include "Standard_NullObject.nim"
include "Standard_MultiplyDefined.nim"
include "Standard_MMgrTBBalloc.nim"
include "Standard_UUID.nim"
include "Standard_DomainError.nim"
include "Standard_DefineException.nim"
include "Standard_Size.nim"
include "Standard_ShortReal.nim"
include "Standard_Version.nim"
include "Standard_Overflow.nim"
include "Standard.nim"
include "Standard_OutOfMemory.nim"
include "Standard_TooManyUsers.nim"
include "Standard_Character.nim"
include "Standard_AbortiveTransaction.nim"
include "Standard_NegativeValue.nim"
include "Standard_WarningsRestore.nim"
include "Standard_ImmutableObject.nim"
include "Standard_Handle.nim"
include "Standard_Macro.nim"
include "Standard_PErrorHandler.nim"
include "Standard_ArrayStreamBuffer.nim"
include "Standard_MMgrOpt.nim"
include "Standard_Condition.nim"
include "Standard_CLocaleSentry.nim"
include "Standard_DimensionError.nim"
include "Standard_PrimitiveTypes.nim"
include "Standard_Persistent.nim"
include "Standard_Integer.nim"
]#