import ../standard/standard_types

type
  LDOM_BasicNode* {.importcpp: "LDOM_BasicNode", header: "LDOM_BasicNode.hxx", 
                    bycopy, pure, inheritable.} = object 

  LDOM_BasicElement* {.importcpp: "LDOM_BasicElement",
                      header: "LDOM_BasicElement.hxx", bycopy.} = object of LDOM_BasicNode 

  LDOM_BasicAttribute* {.importcpp: "LDOM_BasicAttribute",
                        header: "LDOM_BasicAttribute.hxx", bycopy.} = object of LDOM_BasicNode 

  LDOM_BasicText* {.importcpp: "LDOM_BasicText", header: "LDOM_BasicText.hxx", bycopy.} = object of LDOM_BasicNode 

  LDOM_CharReference* {.importcpp: "LDOM_CharReference",
                       header: "LDOM_CharReference.hxx", bycopy.} = object 

  LDOM_Document* {.importcpp: "LDOM_Document", header: "LDOM_Document.hxx", bycopy.} = object 

  LDOM_DocumentType* {.importcpp: "LDOM_DocumentType",
                      header: "LDOM_DocumentType.hxx", bycopy.} = object 

  LDOM_LDOMImplementation* {.importcpp: "LDOM_LDOMImplementation",
                            header: "LDOM_LDOMImplementation.hxx", bycopy.} = object 

  LDOM_MemManager* {.importcpp: "LDOM_MemManager::LDOM_MemManager",
                    header: "LDOM_MemManager.hxx", bycopy.} = object of StandardTransient 

  HandleLDOM_MemManager* = Handle[LDOM_MemManager]

  LDOM_Node* {.importcpp: "LDOM_Node", header: "LDOM_Node.hxx", bycopy,
               pure,inheritable.} = object 

  LDOM_Element* {.importcpp: "LDOM_Element", header: "LDOM_Element.hxx", bycopy.} = object of LDOM_Node 

  LDOM_CharacterData* {.importcpp: "LDOM_CharacterData",
                       header: "LDOM_CharacterData.hxx", bycopy.} = object of LDOM_Node 

  LDOM_Comment* {.importcpp: "LDOM_Comment", header: "LDOM_Comment.hxx", bycopy.} = object of LDOM_CharacterData 

  LDOM_Attr* {.importcpp: "LDOM_Attr", header: "LDOM_Attr.hxx", bycopy.} = object of LDOM_Node 

  LDOM_NodeNodeType* {.size: sizeof(cint), importcpp: "LDOM_Node::NodeType",
                      header: "LDOM_Node.hxx".} = enum
    UNKNOWN = 0, ELEMENT_NODE = 1, ATTRIBUTE_NODE = 2, TEXT_NODE = 3,
    CDATA_SECTION_NODE = 4, COMMENT_NODE = 8

  LDOM_NodeList* {.importcpp: "LDOM_NodeList", header: "LDOM_NodeList.hxx", bycopy.} = object 

  LDOM_SBuffer* {.importcpp: "LDOM_SBuffer", header: "LDOM_OSStream.hxx", bycopy.} = object of Streambuf 

  LDOM_OSStream* {.importcpp: "LDOM_OSStream", header: "LDOM_OSStream.hxx", 
                   bycopy.} = object of StandardOStream 

  LDOM_OSStreamBOMType* {.size: sizeof(cint), importcpp: "LDOM_OSStream::BOMType",
                         header: "LDOM_OSStream.hxx".} = enum
    BOM_UNDEFINED, BOM_UTF8, BOM_UTF16BE, BOM_UTF16LE, BOM_UTF32BE, BOM_UTF32LE,
    BOM_UTF7, BOM_UTF1, BOM_UTFEBCDIC, BOM_SCSU, BOM_BOCU1, BOM_GB18030

  LDOM_Text* {.importcpp: "LDOM_Text", header: "LDOM_Text.hxx", bycopy.} = object of LDOM_CharacterData 

  LDOM_CDATASection* {.importcpp: "LDOM_CDATASection",
                      header: "LDOM_CDATASection.hxx", bycopy.} = object of LDOM_Text 

  LDOM_XmlReader* {.importcpp: "LDOM_XmlReader", header: "LDOM_XmlReader.hxx", bycopy.} = object 

  LDOM_XmlReaderRecordType* {.size: sizeof(cint),
                             importcpp: "LDOM_XmlReader::RecordType",
                             header: "LDOM_XmlReader.hxx".} = enum
    XML_UNKNOWN, XML_HEADER, XML_DOCTYPE, XML_COMMENT, XML_START_ELEMENT,
    XML_END_ELEMENT, XML_FULL_ELEMENT, XML_TEXT, XML_CDATA, XML_EOF

  LDOM_XmlWriter* {.importcpp: "LDOM_XmlWriter", header: "LDOM_XmlWriter.hxx", bycopy.} = object

  LDOMBasicString* {.importcpp: "LDOMBasicString", header: "LDOMBasicString.hxx",
                    bycopy, pure, inheritable.} = object 

  LDOMBasicStringStringType* {.size: sizeof(cint),
                              importcpp: "LDOMBasicString::StringType",
                              header: "LDOMBasicString.hxx".} = enum
    LDOM_NULL = 0, LDOM_Integer, 
    LDOM_AsciiFree,           
    LDOM_AsciiDoc,            
    LDOM_AsciiDocClear,       
    LDOM_AsciiHashed          

  LDOMParser* {.importcpp: "LDOMParser", header: "LDOMParser.hxx", bycopy,
                pure, inheritable.} = object 

  LDOMString* {.importcpp: "LDOMString", header: "LDOMString.hxx", bycopy.} = object of LDOMBasicString 

  LDOM_NullPtr* {.importcpp: "LDOM_NullPtr", header: "LDOM_BasicNode.hxx", bycopy.} = object


  IStream* = StandardIStream
const
  eof* = -1