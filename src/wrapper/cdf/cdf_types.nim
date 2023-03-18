import ../cdm/cdm_types
import ../standard/standard_types

type
  CDF_Application* {.importcpp: "CDF_Application", header: "CDF_Application.hxx",
                    bycopy.} = object of CDM_Application 
    myMetaDataDriver* {.importc: "myMetaDataDriver".}: Handle[CDF_MetaDataDriver]
    myDirectory* {.importc: "myDirectory".}: Handle[CDF_Directory]

  HandleCDF_Application* = Handle[CDF_Application]

  CDF_Directory* {.importcpp: "CDF_Directory", header: "CDF_Directory.hxx", bycopy.} = object of StandardTransient 

  HandleCDF_Directory* = Handle[CDF_Directory]

  CDF_DirectoryIterator* {.importcpp: "CDF_DirectoryIterator",
                          header: "CDF_DirectoryIterator.hxx", bycopy.} = object 

  CDF_MetaDataDriver* {.importcpp: "CDF_MetaDataDriver",
                       header: "CDF_MetaDataDriver.hxx", bycopy.} = object of StandardTransient 

  HandleCDF_MetaDataDriver* = Handle[CDF_MetaDataDriver]

  CDF_FWOSDriver* {.importcpp: "CDF_FWOSDriver", header: "CDF_FWOSDriver.hxx", bycopy.} = object of CDF_MetaDataDriver 

  HandleCDF_FWOSDriver* = Handle[CDF_FWOSDriver]

  CDF_MetaDataDriverFactory* {.importcpp: "CDF_MetaDataDriverFactory",
                              header: "CDF_MetaDataDriverFactory.hxx", bycopy.} = object of StandardTransient

  HandleCDF_MetaDataDriverFactory* = Handle[CDF_MetaDataDriverFactory]

  CDF_Store* {.importcpp: "CDF_Store", header: "CDF_Store.hxx", bycopy.} = object 

  CDF_StoreList* {.importcpp: "CDF_StoreList", header: "CDF_StoreList.hxx", bycopy.} = object of StandardTransient

  HandleCDF_StoreList* = Handle[CDF_StoreList]

  CDF_StoreSetNameStatus* {.size: sizeof(cint),
                           importcpp: "CDF_StoreSetNameStatus",
                           header: "CDF_StoreSetNameStatus.hxx".} = enum
    CDF_SSNS_OK, CDF_SSNS_ReplacingAnExistentDocument, CDF_SSNS_OpenDocument

  CDF_SubComponentStatus* {.size: sizeof(cint),
                           importcpp: "CDF_SubComponentStatus",
                           header: "CDF_SubComponentStatus.hxx".} = enum
    CDF_SCS_Consistent, CDF_SCS_Unconsistent, CDF_SCS_Stored, CDF_SCS_Modified

  CDF_TryStoreStatus* {.size: sizeof(cint), importcpp: "CDF_TryStoreStatus",
                       header: "CDF_TryStoreStatus.hxx".} = enum
    CDF_TS_OK, 
    CDF_TS_NoCurrentDocument, 
    CDF_TS_NoDriver,
    CDF_TS_NoSubComponentDriver
    #CDF_TS_NoSubComponentDriver

    #CDF_TS_NoSubComponentDriver
  CDF_TypeOfActivation* {.size: sizeof(cint), importcpp: "CDF_TypeOfActivation",
                         header: "CDF_TypeOfActivation.hxx".} = enum
    CDF_TOA_New, CDF_TOA_Modified, CDF_TOA_Unchanged


