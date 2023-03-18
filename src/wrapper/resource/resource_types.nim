import ../ncollection/ncollection_types
import ../tcollection/tcollection_types
import ../standard/standard_types
type
  ResourceDataMapOfAsciiStringAsciiString* = NCollectionDataMap[
      TCollectionAsciiString, TCollectionAsciiString, TCollectionAsciiString]

  ResourceDataMapIteratorOfDataMapOfAsciiStringAsciiString* = NCollectionDataMapIterator[
      TCollectionAsciiString, TCollectionAsciiString, TCollectionAsciiString]

  ResourceDataMapOfAsciiStringExtendedString* = NCollectionDataMap[
      TCollectionAsciiString, TCollectionExtendedString, TCollectionAsciiString]

  ResourceDataMapIteratorOfDataMapOfAsciiStringExtendedString* = NCollectionDataMapIterator[
      TCollectionAsciiString, TCollectionExtendedString, TCollectionAsciiString]

  ResourceFormatType* {.size: sizeof(cint), importcpp: "Resource_FormatType",
                       header: "Resource_FormatType.hxx".} = enum
    resourceFormatTypeSJIS,   
    resourceFormatTypeEUC,    
    resourceFormatTypeNoConversion, 
    resourceFormatTypeGB,     
    resourceFormatTypeUTF8,   
    resourceFormatTypeSystemLocale, 
    resourceFormatTypeCP1250, 
    resourceFormatTypeCP1251, 
    resourceFormatTypeCP1252, 
    resourceFormatTypeCP1253, 
    resourceFormatTypeCP1254, 
    resourceFormatTypeCP1255, 
    resourceFormatTypeCP1256, 
    resourceFormatTypeCP1257, 
    resourceFormatTypeCP1258, 
    resourceFormatTypeIso88591, 
    resourceFormatTypeIso88592, 
    resourceFormatTypeIso88593, 
    resourceFormatTypeIso88594, 
    resourceFormatTypeIso88595, 
    resourceFormatTypeIso88596, 
    resourceFormatTypeIso88597, 
    resourceFormatTypeIso88598, 
    resourceFormatTypeIso88599, 
    resourceFormatTypeCP850,  
    resourceFormatTypeGBK,    
    resourceFormatTypeBig5


  ResourceLexicalCompare* {.importcpp: "Resource_LexicalCompare",
                           header: "Resource_LexicalCompare.hxx", bycopy.} = object

  ResourceManager* {.importcpp: "Resource_Manager", header: "Resource_Manager.hxx",
                    bycopy.} = object of StandardTransient 

  HandleResourceManager* = Handle[ResourceManager]

  ResourceNoSuchResource* {.importcpp: "NoSuchResource",
                           header: "Resource_NoSuchResource.hxx", bycopy.} = object
  HandleResourceNoSuchResource* = Handle[ResourceNoSuchResource]

  #HandleResourceNoSuchResource* = Handle[ResourceNoSuchResource]
  ResourceUnicode* {.importcpp: "Resource_Unicode", header: "Resource_Unicode.hxx",
                    bycopy.} = object 


const
    resourceFormatTypeANSI* = resourceFormatTypeNoConversion
    resourceSJIS* = resourceFormatTypeSJIS
    resourceEUC* = resourceFormatTypeEUC
    resourceANSI* = resourceFormatTypeANSI
    resourceGB* = resourceFormatTypeGB