import ../standard/standard_types
import ../storage/storage_types
import ../ldom/ldom_types
import ../ncollection/ncollection_types

type
  Pcdm* {.importcpp: "PCDM", header: "PCDM.hxx", bycopy.} = object

  PCDM_BaseDriverPointer* = Handle[StorageBaseDriver]

  PCDM_Document* {.importcpp: "PCDM_Document", header: "PCDM_Document.hxx", bycopy.} = object of StandardPersistent

  HandlePCDM_Document* = Handle[PCDM_Document]

  PCDM_DOMHeaderParser* {.importcpp: "PCDM_DOMHeaderParser",
                         header: "PCDM_DOMHeaderParser.hxx", bycopy.} = object of LDOMParser 

  #---
  PCDM_DriverError* {.importcpp: "PCDM_DriverError",
                         header: "PCDM_DriverError.hxx", bycopy.} = object #of LDOMParser 
  #---
  HandlePCDM_DriverError* = Handle[PCDM_DriverError]

  PCDM_Reader* {.importcpp: "PCDM_Reader", header: "PCDM_Reader.hxx", bycopy.} = object of StandardTransient 

  HandlePCDM_Reader* = Handle[PCDM_Reader]

  PCDM_ReaderFilter* {.importcpp: "PCDM_ReaderFilter",
                      header: "PCDM_ReaderFilter.hxx", bycopy.} = object of StandardTransient 

  HandlePCDM_ReaderFilter* = Handle[PCDM_ReaderFilter]

  PCDM_ReaderFilterAppendMode* {.size: sizeof(cint),
                                importcpp: "PCDM_ReaderFilter::AppendMode",
                                header: "PCDM_ReaderFilter.hxx".} = enum
    AppendModeForbid = 0,       
    AppendModeProtect = 1,      
    AppendModeOverwrite = 2     

  PCDM_ReaderStatus* {.size: sizeof(cint), importcpp: "PCDM_ReaderStatus",
                      header: "PCDM_ReaderStatus.hxx".} = enum
    PCDM_RS_OK,               
    PCDM_RS_NoDriver,         
    PCDM_RS_UnknownFileDriver, 
    PCDM_RS_OpenError,        
    PCDM_RS_NoVersion,        
    PCDM_RS_NoSchema,         
    PCDM_RS_NoDocument,       
    PCDM_RS_ExtensionFailure, 
    PCDM_RS_WrongStreamMode,  
    PCDM_RS_FormatFailure,    
    PCDM_RS_TypeFailure,      
    PCDM_RS_TypeNotFoundInSchema, 
    PCDM_RS_UnrecognizedFileFormat, 
    PCDM_RS_MakeFailure,      
    PCDM_RS_PermissionDenied, 
    PCDM_RS_DriverFailure,    
    PCDM_RS_AlreadyRetrievedAndModified, 
    PCDM_RS_AlreadyRetrieved, 
    PCDM_RS_UnknownDocument,  
    PCDM_RS_WrongResource,    
    PCDM_RS_ReaderException,  
    PCDM_RS_NoModel,          
    PCDM_RS_UserBreak         

  PCDM_ReadWriter* {.importcpp: "PCDM_ReadWriter", header: "PCDM_ReadWriter.hxx",
                    bycopy.} = object of StandardTransient 

  HandlePCDM_ReadWriter* = Handle[PCDM_ReadWriter]

  PCDM_ReadWriter1* {.importcpp: "PCDM_ReadWriter_1",
                     header: "PCDM_ReadWriter_1.hxx", bycopy.} = object of PCDM_ReadWriter

  HandlePCDM_ReadWriter1* = Handle[PCDM_ReadWriter1]

  PCDM_Reference* {.importcpp: "PCDM_Reference", header: "PCDM_Reference.hxx", bycopy.} = object

  PCDM_ReferenceIterator* {.importcpp: "PCDM_ReferenceIterator",
                           header: "PCDM_ReferenceIterator.hxx", bycopy.} = object of StandardTransient 

  HandlePCDM_ReferenceIterator* = Handle[PCDM_ReferenceIterator]

  PCDM_RetrievalDriver* {.importcpp: "PCDM_RetrievalDriver",
                         header: "PCDM_RetrievalDriver.hxx", bycopy.} = object of PCDM_Reader

  HandlePCDM_RetrievalDriver* = Handle[PCDM_RetrievalDriver]

  PCDM_SequenceOfDocument* = NCollectionSequence[Handle[PCDM_Document]]

  PCDM_SequenceOfReference* = NCollectionSequence[PCDM_Reference]

  PCDM_StoreStatus* {.size: sizeof(cint), importcpp: "PCDM_StoreStatus",
                     header: "PCDM_StoreStatus.hxx".} = enum
    PCDM_SS_OK,               
    PCDM_SS_DriverFailure,    
    PCDM_SS_WriteFailure,     
    PCDM_SS_Failure,          
    PCDM_SS_DocIsNull,        
    PCDM_SS_NoObj,            
    PCDM_SS_InfoSectionError, 
    PCDM_SS_UserBreak,        
    PCDM_SS_UnrecognizedFormat 

  PCDM_TypeOfFileDriver* {.size: sizeof(cint), importcpp: "PCDM_TypeOfFileDriver",
                          header: "PCDM_TypeOfFileDriver.hxx".} = enum
    PCDM_TOFD_File, PCDM_TOFD_CmpFile, PCDM_TOFD_XmlFile, PCDM_TOFD_Unknown

  HandlePCDM_Writer* = Handle[PCDM_Writer]
  PCDM_Writer* {.importcpp: "PCDM_Writer", header: "PCDM_Writer.hxx", bycopy.} = object of StandardTransient

  #HandlePCDM_Writer* = Handle[PCDM_Writer]

  PCDM_StorageDriver* {.importcpp: "PCDM_StorageDriver",
                       header: "PCDM_StorageDriver.hxx", bycopy.} = object of PCDM_Writer 

  HandlePCDM_StorageDriver* = Handle[PCDM_StorageDriver]


