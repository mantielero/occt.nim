# PROVIDES: Standard StandardCLocaleSentry StandardCondition StandardJsonKey StandardDumpValue StandardDump StandardErrorHandler StandardErrorHandlerCallback StandardGUID Handle HandleelementType StandardMMgrOptTPCallBackFunc StandardMMgrRoot StandardMutex StandardMutexSentry StandardReadBuffer StandardReadLineBuffer StandardTransient StandardTransientbaseType TypeInstance StandardReal StandardShortReal StandardByte StandardTime StandardUtf8Char StandardUtf8UChar Streambuf Streamsize
# DEPENDS:  Handle[StandardAbortiveTransaction]  Handle[StandardConstructionError]  Handle[StandardDimensionError]  Handle[StandardDimensionMismatch]  Handle[StandardDivideByZero]  Handle[StandardDomainError]  Handle[StandardImmutableObject]  Handle[StandardLicenseError]  Handle[StandardLicenseNotFound]  Handle[StandardMultiplyDefined]  Handle[StandardNegativeValue]  Handle[StandardNoMoreObject]  Handle[StandardNoSuchObject]  Handle[StandardNotImplemented]  Handle[StandardNullObject]  Handle[StandardNullValue]  Handle[StandardNumericError]  Handle[StandardOutOfMemory]  Handle[StandardOverflow]  Handle[StandardProgramError]  Handle[StandardTooManyUsers]  Handle[StandardTypeMismatch]  Handle[StandardTypeMismatch]  Handle[StandardUnderflow] StandardTransient StandardMMgrRoot StandardMMgrRoot StandardMMgrRoot StandardTransient StandardTransient Streambuf StandardProgramError

#import tkernel/standard/standard_types
#import tkernel/tcollection/tcollection_types
type
  Standard* {.importcpp: "Standard", header: "Standard.hxx", bycopy.} = object 
  
  StandardTransient* {.importcpp: "Standard_Transient",  
                      header: "Standard_Transient.hxx".} = object of RootObj  #, byref, pure, inheritable.} = object 
  
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
    #myValue* {.importc: "myValue".}: TCollectionAsciiString 
    #myStartPosition* {.importc: "myStartPosition".}: cint 

  StandardDump* {.importcpp: "Standard_Dump", header: "Standard_Dump.hxx", bycopy.} = object 
     
  StandardErrorHandler* {.importcpp: "Standard_ErrorHandler",
                         header: "Standard_ErrorHandler.hxx", bycopy.} = object 
                                                                           

  StandardErrorHandlerCallback* {.importcpp: "Standard_ErrorHandler::Callback",
                                 header: "Standard_ErrorHandler.hxx", bycopy.} = object 
  
  StandardGUID* {.importcpp: "Standard_GUID", header: "Standard_GUID.hxx", bycopy.} = object

  Handle*[T] {.importcpp: "opencascade::handle<\'0>",
              header: "Standard_Handle.hxx", bycopy, pure, inheritable.} = object 
                                                          

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

  StandardAbortiveTransaction* = object # FIXME
  StandardConstructionError* = object # FIXME
  StandardDimensionError* = object # FIXME
  StandardDimensionMismatch* = object # FIXME
  StandardDivideByZero* = object # FIXME
  StandardDomainError* = object # FIXME
  StandardImmutableObject* = object # FIXME
  StandardLicenseError* = object # FIXME
  StandardLicenseNotFound* = object # FIXME
  StandardMultiplyDefined* = object # FIXME
  StandardNegativeValue* = object # FIXME
  StandardNoSuchObject* = object # FIXME
  StandardNotImplemented* = object # FIXME
  StandardNullObject* = object # FIXME
  StandardNullValue* = object # FIXME
  StandardNumericError* = object # FIXME
  #StandardOutOfMemory* = object # FIXED
  StandardOverflow* = object # FIXME
  StandardProgramError* = object of RootObj# FIXME
  StandardTooManyUsers* = object # FIXME
  StandardTypeMismatch* = object # FIXME
  StandardUnderflow* = object # FIXME
  StandardNoMoreObject* = object # FIXME
  StandardJmpBuf* = object # FIXME: tkernel/standard/standard_errorhandler.nim(51, 50) Error: undeclared identifier: 'StandardJmpBuf'
  StandardExtCharacter* = object # FIXME: tkernel/standard/standard_extcharacter.nim(30, 37) Error: undeclared identifier: 'StandardExtCharacter'
  StandardExtString* = object # FIXME: tkernel/standard/standard_extstring.nim(26, 30) Error: undeclared identifier: 'StandardExtString'
  StandardUUID* = object # FIXME: tkernel/standard/standard_guid.nim(38, 36) Error: undeclared identifier: 'StandardUUID'
  StandardPCharacter* = object # FIXME: tkernel/standard/standard_guid.nim(44, 47) Error: undeclared identifier: 'StandardPCharacter'
  #StandardPExtCharacter* = object # FIXED
  StandardUtf16Char* = object # FIXME: tkernel/ncollection/ncollection_utfiterator.nim(55, 35) Error: undeclared identifier: 'StandardUtf8Char'

  #StandardByte* = object  # FIXME: tkernel/standard/standard_pbyte.nim(15, 24) Error: undeclared identifier: 'StandardByte'  

 

  StandardPByte* = ptr StandardByte  # FIXME: tkernel/standard/standard_pbyte.nim(15, 24) Error: undeclared identifier: 'StandardByte'


  StandardPExtCharacter* = ptr StandardExtCharacter

  StandardPErrorHandler* = ptr StandardErrorHandler

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



  #HandleStandardTypeMismatch* = Handle[StandardTypeMismatch]


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
                                                                                                
  HandleStandardTransient* {.importcpp: "opencascade::handle<Standard_Transient>", header: "Standard_Transient.hxx", byref, pure, inheritable.} = object of RootObj
