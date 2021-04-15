import topods_types


type
  TopoDS_AlertAttribute* {.header: "TopoDS_AlertAttribute.hxx", importcpp: "TopoDS_AlertAttribute", byref.} = object #of class Message_AttributeStream
    ## Alert attribute object storing TopoDS shape in its field

  Base_type* {.header: "TopoDS_AlertAttribute.hxx", importcpp: "TopoDS_AlertAttribute::base_type".} = Message_AttributeStream


{.push header: "TopoDS_AlertAttribute.hxx".}

proc constructTopoDS_AlertAttribute*(theShape: TopoDS_Shape, theName: TCollection_AsciiString = )): TopoDS_AlertAttribute {.constructor,importcpp: "TopoDS_AlertAttribute::TopoDS_AlertAttribute(@)".}
    ## Constructor with shape argument

proc get_type_name*(this: var TopoDS_AlertAttribute): cstring  {.importcpp: "get_type_name".}

proc get_type_descriptor*(this: var TopoDS_AlertAttribute): handle[Standard_Type]  {.importcpp: "get_type_descriptor".}

proc dynamicType*(this: TopoDS_AlertAttribute): handle[Standard_Type]  {.importcpp: "DynamicType".}

proc getShape*(this: TopoDS_AlertAttribute): TopoDS_Shape  {.importcpp: "GetShape".}
    ## Returns contained shape

proc send*(this: var TopoDS_AlertAttribute, theMessenger: handle[Message_Messenger], theShape: TopoDS_Shape)  {.importcpp: "Send".}
    ## Push shape information into messenger

proc dumpJson*(this: TopoDS_AlertAttribute, theOStream: var Standard_OStream, theDepth: Standard_Integer = 1)  {.importcpp: "DumpJson".}
    ## Dumps the content of me into the stream

{.pop.}  # header: "TopoDS_AlertAttribute.hxx"
