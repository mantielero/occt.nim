import ../ncollection/ncollection_types
import ../standard/standard_types
import ../tcollection/tcollection_types

type
  Storage* {.importcpp: "Storage", header: "Storage.hxx", bycopy.} = object 

  StorageArrayOfCallBack* = NCollectionArray1[Handle[StorageCallBack]]

  StorageArrayOfSchema* = NCollectionArray1[Handle[StorageSchema]]

  StorageBaseDriver* {.importcpp: "Storage_BaseDriver",
                      header: "Storage_BaseDriver.hxx", bycopy.} = object of StandardTransient 

  HandleStorageBaseDriver* = Handle[StorageBaseDriver]

  StorageBucket* {.importcpp: "Storage_Bucket",
                  header: "Storage_BucketOfPersistent.hxx", bycopy.} = object

  StorageBucketOfPersistent* {.importcpp: "Storage_BucketOfPersistent",
                              header: "Storage_BucketOfPersistent.hxx", bycopy.} = object

  StorageBucketIterator* {.importcpp: "Storage_BucketIterator",
                          header: "Storage_BucketOfPersistent.hxx", bycopy.} = object

  StorageCallBack* {.importcpp: "Storage_CallBack", header: "Storage_CallBack.hxx",
                    bycopy.} = object of StandardTransient

  HandleStorageCallBack* = Handle[StorageCallBack]

  StorageData* {.importcpp: "Storage_Data", header: "Storage_Data.hxx", bycopy.} = object of StandardTransient 

  HandleStorageData* = Handle[StorageData]

  StorageDefaultCallBack* {.importcpp: "Storage_DefaultCallBack",
                           header: "Storage_DefaultCallBack.hxx", bycopy.} = object of StorageCallBack

  HandleStorageDefaultCallBack* = Handle[StorageDefaultCallBack]

  StorageError* {.size: sizeof(cint), importcpp: "Storage_Error",
                 header: "Storage_Error.hxx".} = enum
    StorageVSOk, StorageVSOpenError, StorageVSModeError, StorageVSCloseError,
    StorageVSAlreadyOpen, StorageVSNotOpen, StorageVSSectionNotFound,
    StorageVSWriteError, StorageVSFormatError, StorageVSUnknownType,
    StorageVSTypeMismatch, StorageVSInternalError, StorageVSExtCharParityError,
    StorageVSWrongFileDriver

  StorageHArrayOfCallBack* {.importcpp: "Storage_HArrayOfCallBack",
                            header: "Storage_HArrayOfCallBack.hxx", bycopy.} = object of StorageArrayOfCallBack

  StorageHArrayOfSchema* {.importcpp: "Storage_HArrayOfSchema",
                          header: "Storage_HArrayOfSchema.hxx", bycopy.} = object of StorageArrayOfSchema

  StorageHeaderData* {.importcpp: "Storage_HeaderData",
                      header: "Storage_HeaderData.hxx", bycopy.} = object of StandardTransient

  HandleStorageHeaderData* = Handle[StorageHeaderData]

  StorageInternalData* {.importcpp: "Storage_InternalData",
                        header: "Storage_InternalData.hxx", bycopy.} = object of StandardTransient

  HandleStorageInternalData* = Handle[StorageInternalData]

  StorageMapOfCallBack* = NCollectionDataMap[TCollectionAsciiString,
      Handle[StorageTypedCallBack], TCollectionAsciiString]

  StorageDataMapIteratorOfMapOfCallBack* = NCollectionDataMapIterator[TCollectionAsciiString,
      Handle[StorageTypedCallBack], TCollectionAsciiString]

  StorageMapOfPers* = NCollectionDataMap[TCollectionAsciiString,
                                       Handle[StorageRoot],
                                       TCollectionAsciiString]

  StorageDataMapIteratorOfMapOfPers* = NCollectionDataMapIterator[TCollectionAsciiString,
      Handle[StorageRoot], TCollectionAsciiString]

  StorageOpenMode* {.size: sizeof(cint), importcpp: "Storage_OpenMode",
                    header: "Storage_OpenMode.hxx".} = enum
    StorageVSNone, StorageVSRead, StorageVSWrite, StorageVSReadWrite

  StoragePArray* = NCollectionArray1[Handle[StandardPersistent]]

  StorageHPArray* {.importcpp: "Storage_HPArray", header: "Storage_HPArray.hxx",
                   bycopy.} = object of StoragePArray

  StoragePosition* = clong

  StoragePType* = NCollectionIndexedDataMap[TCollectionAsciiString, cint,
      TCollectionAsciiString]

  StorageRoot* {.importcpp: "Storage_Root", header: "Storage_Root.hxx", bycopy.} = object of StandardTransient

  HandleStorageRoot* = Handle[StorageRoot]

  StorageRootData* {.importcpp: "Storage_RootData", header: "Storage_RootData.hxx",
                    bycopy.} = object of StandardTransient

  HandleStorageRootData* = Handle[StorageRootData]

  StorageSchema* {.importcpp: "Storage_Schema", header: "Storage_Schema.hxx", bycopy.} = object of StandardTransient 

  HandleStorageSchema* = Handle[StorageSchema]

  StorageSeqOfRoot* = NCollectionSequence[Handle[StorageRoot]]

  StorageHSeqOfRoot* {.importcpp: "Storage_HSeqOfRoot",
                      header: "Storage_HSeqOfRoot.hxx", bycopy.} = object of StorageSeqOfRoot

  HandleStorageHSeqOfRoot* = Handle[StorageHSeqOfRoot]

  StorageSolveMode* {.size: sizeof(cint), importcpp: "Storage_SolveMode",
                     header: "Storage_SolveMode.hxx".} = enum
    StorageAddSolve, StorageWriteSolve, StorageReadSolve

  #---
  StorageStreamExtCharParityError* {.importcpp: "Storage_StreamExtCharParityError", header: "Storage_StreamExtCharParityError.hxx", bycopy.} = object  
  #---

  HandleStorageStreamExtCharParityError* = Handle[StorageStreamExtCharParityError]

  #---
  StorageStreamFormatError* {.importcpp: "Storage_StreamFormatError", header: "Storage_StreamFormatError.hxx", bycopy.} = object  
  #---

  HandleStorageStreamFormatError* = Handle[StorageStreamFormatError]


  #---
  StorageStreamModeError* {.importcpp: "Storage_StreamModeError", header: "Storage_StreamModeError.hxx", bycopy.} = object  
  #---

  HandleStorageStreamModeError* = Handle[StorageStreamModeError]


  #---
  StorageStreamReadError* {.importcpp: "Storage_StreamReadError", header: "Storage_StreamReadError.hxx", bycopy.} = object  
  #---
  HandleStorageStreamReadError* = Handle[StorageStreamReadError]

  #---
  StorageStreamTypeMismatchError* {.importcpp: "Storage_StreamTypeMismatchError", header: "Storage_StreamTypeMismatchError.hxx", bycopy.} = object  
  #---
  HandleStorageStreamTypeMismatchError* = Handle[StorageStreamTypeMismatchError]



  #---
  StorageStreamUnknownTypeError* {.importcpp: "Storage_StreamUnknownTypeError", header: "Storage_StreamUnknownTypeError.hxx", bycopy.} = object  
  #---
  HandleStorageStreamUnknownTypeError* = Handle[StorageStreamUnknownTypeError]


  #---
  StorageStreamWriteError* {.importcpp: "Storage_StreamWriteError", header: "Storage_StreamWriteError.hxx", bycopy.} = object  
  #---
  HandleStorageStreamWriteError* = Handle[StorageStreamWriteError]

  StorageTypeData* {.importcpp: "Storage_TypeData", header: "Storage_TypeData.hxx",
                    bycopy.} = object of StandardTransient

  HandleStorageTypeData* = Handle[StorageTypeData]

  HandleStorageTypedCallBack* = Handle[StorageTypedCallBack]
  StorageTypedCallBack* {.importcpp: "Storage_TypedCallBack",
                         header: "Storage_TypedCallBack.hxx", bycopy.} = object of StandardTransient

  #HandleStorageTypedCallBack* = Handle[StorageTypedCallBack]


