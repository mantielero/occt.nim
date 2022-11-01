# PROVIDES: StandardStaticAssert StandardHandlerStatus StandardJmpBuf StandardPCharacter StandardThreadId Standard StandardTransient StandardCLocaleSentry StandardCondition StandardJsonKey StandardDumpValue StandardDump StandardErrorHandler StandardErrorHandlerCallback StandardGUID Handle HandleelementType StandardMMgrOptTPCallBackFunc StandardMMgrRoot StandardMutex StandardMutexSentry StandardReadBuffer StandardReadLineBuffer StandardTransientbaseType TypeInstance StandardReal StandardShortReal StandardByte StandardTime StandardUtf8Char StandardUtf8UChar Streambuf Streamsize StandardOStream StandardSStream StandardIStream StandardAbortiveTransaction StandardConstructionError StandardDimensionError StandardDimensionMismatch StandardDivideByZero StandardDomainError StandardImmutableObject StandardLicenseError StandardLicenseNotFound StandardMultiplyDefined StandardNegativeValue StandardNoSuchObject StandardNotImplemented StandardNullObject StandardNullValue #StandardOutOfMemory StandardOverflow StandardTooManyUsers StandardTypeMismatch StandardUnderflow StandardNoMoreObject StandardJmpBuf StandardExtCharacter StandardExtString StandardUUID #StandardPExtCharacter #StandardByte StandardPByte StandardPExtCharacter StandardPErrorHandler HandleStandardTransient Ostream Guid StandardUUID
# DEPENDS:  Handle[StandardOutOfRange]  Handle[StandardRangeError] RootObj# StandardProgramError  Handle[StandardAbortiveTransaction]  Handle[StandardConstructionError]  Handle[StandardDimensionError]  Handle[StandardDimensionMismatch]  Handle[StandardDivideByZero]  Handle[StandardDomainError]  Handle[StandardImmutableObject]  Handle[StandardLicenseError]  Handle[StandardLicenseNotFound]  Handle[StandardMultiplyDefined]  Handle[StandardNegativeValue]  Handle[StandardNoMoreObject]  Handle[StandardNoSuchObject]  Handle[StandardNotImplemented]  Handle[StandardNullObject]  Handle[StandardNullValue]  Handle[StandardNumericError]  Handle[StandardOutOfMemory]  Handle[StandardOverflow]  Handle[StandardProgramError]  Handle[StandardTooManyUsers]  Handle[StandardTypeMismatch]  Handle[StandardUnderflow] StandardTransient StandardMMgrRoot StandardMMgrRoot StandardMMgrRoot StandardTransient StandardTransient Streambuf
#[
NOTE: don't mix of RootObj with inheritable, pure pragmas. You can
use the inheritable pragma to introduce new object roots apart from system.RootObj

Note that the quite common .inheritable, pure is unsafe 
and only for C/C++ interop. With pure there is no type 
tag so of cannot work and dynamic type conversions are 
unchecked. I know of no useful application of .inheritable without 
the .pure, better inherit from RootObj then.
]#
import tkernel/standard/standard_types
type
  StandardStaticAssert*[Condition: static[bool]] {.
      importcpp: "Standard_Static_Assert<\'0>", header: "Standard_Assert.hxx",
      bycopy.} = object

  StandardHandlerStatus* {.size: sizeof(cint), importcpp: "Standard_HandlerStatus",
                          header: "Standard_HandlerStatus.hxx".} = enum
    StandardHandlerVoid, StandardHandlerJumped, StandardHandlerProcessed

  StandardJmpBuf* {.importcpp:"jmp_buf", header:"setjmp.h".} = object

  StandardPCharacter* = ptr cchar

  StandardThreadId* = csize_t

  Standard* {.importcpp: "Standard", header: "Standard.hxx", bycopy.} = object 

  StandardTransient* {.importcpp: "Standard_Transient",  
                      header: "Standard_Transient.hxx", pure, inheritable.} = object
                      #header: "Standard_Transient.hxx".} = object of RootObj 

  StandardCLocaleSentry* {.importcpp: "Standard_CLocaleSentry",
                          header: "Standard_CLocaleSentry.hxx", bycopy.} = object 

  StandardCondition* {.importcpp: "Standard_Condition",
                      header: "Standard_Condition.hxx", bycopy.} = object 

  StandardJsonKey* {.size: sizeof(cint), importcpp: "Standard_JsonKey",
                    header: "Standard_Dump.hxx".} = enum
    StandardJsonKeyNone,      
    StandardJsonKeyOpenChild, 
    StandardJsonKeyCloseChild, 
    StandardJsonKeyOpenContainer, 
    StandardJsonKeyCloseContainer, 
    StandardJsonKeyQuote,     
    StandardJsonKeySeparatorKeyToValue, 
    StandardJsonKeySeparatorValueToValue 

  StandardDumpValue* {.importcpp: "Standard_DumpValue",
                      header: "Standard_Dump.hxx", bycopy.} = object
    
    

  StandardDump* {.importcpp: "Standard_Dump", header: "Standard_Dump.hxx", bycopy.} = object 

  StandardErrorHandler* {.importcpp: "Standard_ErrorHandler",
                         header: "Standard_ErrorHandler.hxx", bycopy.} = object 

  StandardErrorHandlerCallback* {.importcpp: "Standard_ErrorHandler::Callback",
                                 header: "Standard_ErrorHandler.hxx", bycopy.} = object 

  StandardGUID* {.importcpp: "Standard_GUID", header: "Standard_GUID.hxx", bycopy.} = object

  Handle*[T] {.importcpp: "opencascade::handle<\'0>",
              header: "Standard_Handle.hxx", bycopy, pure, inheritable.} = object
              #header: "Standard_Handle.hxx", bycopy.} = object of RootObj

  HandleelementType*[T] = T

  StandardMMgrOptTPCallBackFunc* = proc (theIsAlloc: bool; theStorage: pointer;
                                      theRoundSize: csize_t; theSize: csize_t) {.
      cdecl.}

  StandardMMgrRoot* {.importcpp: "Standard_MMgrRoot",
                     header: "Standard_MMgrRoot.hxx", bycopy.} = object of RootObj 

  StandardMutex* {.importcpp: "Standard_Mutex", header: "Standard_Mutex.hxx", bycopy.} = object 

  StandardMutexSentry* {.importcpp: "Standard_Mutex::Sentry",
                        header: "Standard_Mutex.hxx", bycopy.} = object 

  StandardReadBuffer* {.importcpp: "Standard_ReadBuffer",
                       header: "Standard_ReadBuffer.hxx", bycopy.} = object 

  StandardReadLineBuffer* {.importcpp: "Standard_ReadLineBuffer",
                           header: "Standard_ReadLineBuffer.hxx", bycopy.} = object 

  StandardTransientbaseType* = void

  TypeInstance*[T] {.importcpp: "opencascade::type_instance<\'0>",
                    header: "Standard_Type.hxx", bycopy.} = object

  StandardReal* = cdouble

  StandardShortReal* = cfloat

  StandardByte* = uint8

  StandardTime* {.importcpp:"std::time_t".} = object

  StandardUtf8Char* = char

  StandardUtf8UChar* = uint8

  Streambuf* {.importcpp:"std::streambuf".} = object of RootObj

  Streamsize* {.importcpp:"std::streamsize".} = object

  StandardOStream* {.importcpp:"std::ostream".} = object

  StandardSStream* {.importcpp:"std::stringstream".} = object

  StandardIStream* {.importcpp:"std::istream".}= object    

  StandardAbortiveTransaction* = object 

  StandardConstructionError* = object 

  StandardDimensionError* = object 

  StandardDimensionMismatch* = object 

  StandardDivideByZero* = object 

  StandardDomainError* = object 

  StandardImmutableObject* = object 

  StandardLicenseError* = object 

  StandardLicenseNotFound* = object 

  StandardMultiplyDefined* = object 

  StandardNegativeValue* = object 

  StandardNoSuchObject* = object 

  StandardNotImplemented* = object 

  StandardNullObject* = object 

  StandardNullValue* = object 

  StandardNumericError* = object 
  

  StandardOverflow* = object 

  StandardTooManyUsers* = object 

  StandardTypeMismatch* = object 

  StandardUnderflow* = object 

  StandardNoMoreObject* = object 

  #StandardJmpBuf* = object 

  StandardExtCharacter* = object 

  StandardExtString* = object 

  #StandardUUID* = object 

  #StandardPCharacter* = object 
  

  StandardUtf16Char* = object 
  

  StandardPByte* = ptr StandardByte  

  StandardPExtCharacter* = ptr StandardExtCharacter

  StandardPErrorHandler* = ptr StandardErrorHandler

  HandleStandardTransient* {.importcpp: "opencascade::handle<Standard_Transient>", header: "Standard_Transient.hxx", byref, pure, inheritable.} = object of RootObj

  Ostream* = StandardOStream 

  Guid* {.importcpp: "GUID", header: "Standard_UUID.hxx", bycopy.} = object
    data1* {.importc: "Data1".}: culong
    data2* {.importc: "Data2".}: cushort
    data3* {.importc: "Data3".}: cushort
    data4* {.importc: "Data4".}: array[8, uint8]

    #data4* {.importc: "Data4".}: array[8, uint8]
  StandardUUID* = Guid

  StandardOutOfRange* = object # FIXME
  StandardRangeError* = object # FIXME  

  HandleStandardOutOfRange* = Handle[StandardOutOfRange]

  HandleStandardRangeError* = Handle[StandardRangeError]

  StandardProgramError* = object of RootObj

  StandardOutOfMemory* {.importcpp: "Standard_OutOfMemory",
                        header: "Standard_OutOfMemory.hxx", bycopy.} = object of StandardProgramError 

  HandleStandardAbortiveTransaction* = Handle[StandardAbortiveTransaction]

  HandleStandardConstructionError* = Handle[StandardConstructionError]

  HandleStandardDimensionError* = Handle[StandardDimensionError]

  HandleStandardDimensionMismatch* = Handle[StandardDimensionMismatch]

  HandleStandardDivideByZero* = Handle[StandardDivideByZero]

  HandleStandardDomainError* = Handle[StandardDomainError]

  HandleStandardImmutableObject* = Handle[StandardImmutableObject]

  HandleStandardLicenseError* = Handle[StandardLicenseError]

  HandleStandardLicenseNotFound* = Handle[StandardLicenseNotFound]

  HandleStandardMultiplyDefined* = Handle[StandardMultiplyDefined]

  HandleStandardNegativeValue* = Handle[StandardNegativeValue]

  HandleStandardNoMoreObject* = Handle[StandardNoMoreObject]

  HandleStandardNoSuchObject* = Handle[StandardNoSuchObject]

  HandleStandardNotImplemented* = Handle[StandardNotImplemented]

  HandleStandardNullObject* = Handle[StandardNullObject]

  HandleStandardNullValue* = Handle[StandardNullValue]

  HandleStandardNumericError* = Handle[StandardNumericError]

  HandleStandardOutOfMemory* = Handle[StandardOutOfMemory]

  HandleStandardOverflow* = Handle[StandardOverflow]

  HandleStandardProgramError* = Handle[StandardProgramError]

  HandleStandardTooManyUsers* = Handle[StandardTooManyUsers]

  HandleStandardTypeMismatch* = Handle[StandardTypeMismatch]
  

  HandleStandardUnderflow* = Handle[StandardUnderflow]

  StandardFailure* {.importcpp: "Standard_Failure", header: "Standard_Failure.hxx",
                    bycopy.} = object of StandardTransient 

  StandardMMgrOpt* {.importcpp: "Standard_MMgrOpt", header: "Standard_MMgrOpt.hxx",
                    bycopy.} = object of StandardMMgrRoot 

  StandardMMgrRaw* {.importcpp: "Standard_MMgrRaw", header: "Standard_MMgrRaw.hxx",
                    bycopy.} = object of StandardMMgrRoot 

  StandardMMgrTBBalloc* {.importcpp: "Standard_MMgrTBBalloc",
                         header: "Standard_MMgrTBBalloc.hxx", bycopy.} = object of StandardMMgrRoot 

  StandardPersistent* {.importcpp: "Standard_Persistent",
                       header: "Standard_Persistent.hxx", bycopy.} = object of StandardTransient

  StandardType* {.importcpp: "Standard_Type", header: "Standard_Type.hxx", bycopy.} = object of StandardTransient 

  StandardArrayStreamBuffer* {.importcpp: "Standard_ArrayStreamBuffer",
                              header: "Standard_ArrayStreamBuffer.hxx", bycopy.} = object of Streambuf 

