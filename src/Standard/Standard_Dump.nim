{.push header: "Standard_Dump.hxx".}


# Constructors and methods
proc constructor_Standard_DumpSentry*(theOStream: var Standard_OStream, theClassName: cstring): Standard_DumpSentry {.constructor,importcpp: "Standard_DumpSentry(@)".}
  ## Constructor - add parameters of start class name definition in the
  ## stream

proc Text*(this: var Standard_Dump, theStream: Standard_SStream): TCollection_AsciiString  {.importcpp: "Text".}
  ## Converts stream value to string value. The result is original stream
  ## value.

proc FormatJson*(this: var Standard_Dump, theStream: Standard_SStream, theIndent: Standard_Integer): TCollection_AsciiString  {.importcpp: "FormatJson".}
  ## Converts stream value to string value. Improves the text presentation
  ## with the following cases: - for '{' append after '' and indent to the
  ## next value, increment current indent value - for '}' append '' and
  ## current indent before it, decrement indent value - for ',' append
  ## after '' and indent to the next value. If the current symbol is in
  ## massive container [], do nothing

proc AddValuesSeparator*(this: var Standard_Dump, theOStream: var Standard_OStream)  {.importcpp: "AddValuesSeparator".}
  ## Add Json values separator if the stream last symbol is not an open
  ## brace.

proc GetPointerPrefix*(this: var Standard_Dump): TCollection_AsciiString  {.importcpp: "GetPointerPrefix".}
  ## Returns default prefix added for each pointer info string if short
  ## presentation of pointer used

proc GetPointerInfo*(this: var Standard_Dump, thePointer: Handle[Standard_Transient], isShortInfo: bool): TCollection_AsciiString  {.importcpp: "GetPointerInfo".}
  ## Convert handle pointer to address of the pointer. If the handle is
  ## NULL, the result is an empty string.

proc GetPointerInfo*(this: var Standard_Dump, thePointer: pointer, isShortInfo: bool): TCollection_AsciiString  {.importcpp: "GetPointerInfo".}
  ## Convert pointer to address of the pointer. If the handle is NULL, the
  ## result is an empty string.

proc DumpKeyToClass*(this: var Standard_Dump, theOStream: var Standard_OStream, theKey: cstring, theField: TCollection_AsciiString)  {.importcpp: "DumpKeyToClass".}
  ## Append into output value: "Name": { Field }

proc DumpCharacterValues*(this: var Standard_Dump, theOStream: var Standard_OStream, theCount: cint)  {.importcpp: "DumpCharacterValues".}
  ## Unite values in one value using template: "value_1", "value_2", ...,
  ## "value_n"

proc DumpRealValues*(this: var Standard_Dump, theOStream: var Standard_OStream, theCount: cint)  {.importcpp: "DumpRealValues".}
  ## Unite values in one value using template: value_1, value_2, ...,
  ## value_n

proc DumpFieldToName*(this: var Standard_Dump, theField: cstring): cstring  {.importcpp: "DumpFieldToName".}
  ## Convert field name into dump text value, removes "&" and "my" prefixes
  ## An example, for field myValue, theName is Value, for &myCLass, the
  ## name is Class

{.pop.} # header: "Standard_Dump.hxx
