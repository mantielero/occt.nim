import ../standard/standard_types
import ../ncollection/ncollection_types
import ../tcollection/tcollection_types
import ../tcolstd/tcolstd_types

type
  CDM_Application* {.importcpp: "CDM_Application", header: "CDM_Application.hxx",
                    bycopy.} = object of StandardTransient 

  HandleCDM_Application* = Handle[CDM_Application]

  CDM_CanCloseStatus* {.size: sizeof(cint), importcpp: "CDM_CanCloseStatus",
                       header: "CDM_CanCloseStatus.hxx".} = enum
    CDM_CCS_OK, CDM_CCS_NotOpen, CDM_CCS_UnstoredReferenced,
    CDM_CCS_ModifiedReferenced, CDM_CCS_ReferenceRejection

  CDM_Document* {.importcpp: "CDM_Document", header: "CDM_Document.hxx", bycopy.} = object of StandardTransient 

  HandleCDM_Document* = Handle[CDM_Document]

  CDM_DocumentHasher* = NCollectionDefaultHasher[Handle[CDM_Document]]

  CDM_DocumentPointer* = ptr CDM_Document

  CDM_ListOfDocument* = NCollectionList[Handle[CDM_Document]]

  CDM_ListIteratorOfListOfDocument* = NCollection_ListIterator[Handle[CDM_Document]]

  CDM_ListOfReferences* = NCollectionList[Handle[CDM_Reference]]

  CDM_ListIteratorOfListOfReferences* = NCollection_ListIterator[Handle[CDM_Reference]]

  CDM_MapOfDocument* = NCollectionMap[Handle[CDM_Document], CDM_DocumentHasher]

  CDM_MapIteratorOfMapOfDocument* = NCollection_MapIterator[Handle[CDM_Document],
      CDM_DocumentHasher]

  CDM_MetaData* {.importcpp: "CDM_MetaData", header: "CDM_MetaData.hxx", bycopy.} = object of StandardTransient

  HandleCDM_MetaData* = Handle[CDM_MetaData]

  CDM_MetaDataLookUpTable* = NCollectionDataMap[TCollectionExtendedString,
      Handle[CDM_MetaData], TCollectionExtendedString]

  CDM_DataMapIteratorOfMetaDataLookUpTable* = NCollection_DataMapIterator[TCollectionExtendedString,
      Handle[CDM_MetaData], TCollectionExtendedString]

  # typedef NCollection_DataMap<TCollection_ExtendedString,Handle(CDM_MetaData),TCollection_ExtendedString>::Iterator CDM_DataMapIteratorOfMetaDataLookUpTable;

  CDM_NamesDirectory* = TColStdDataMapOfStringInteger

  CDM_Reference* {.importcpp: "CDM_Reference", header: "CDM_Reference.hxx", bycopy.} = object of StandardTransient

  HandleCDM_Reference* = Handle[CDM_Reference]

  CDM_ReferenceIterator* {.importcpp: "CDM_ReferenceIterator",
                          header: "CDM_ReferenceIterator.hxx", bycopy.} = object


