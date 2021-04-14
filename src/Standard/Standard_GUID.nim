{.push header: "Standard_GUID.hxx".}


# Constructors and methods
proc constructor_Standard_GUID*(): Standard_GUID {.constructor,importcpp: "Standard_GUID".}

proc constructor_Standard_GUID*(aGuid: Standard_CString): Standard_GUID {.constructor,importcpp: "Standard_GUID(@)".}
  ## build a GUID from an ascii string with the following format: Length :
  ## 36 char "00000000-0000-0000-0000-000000000000"

proc constructor_Standard_GUID*(aGuid: Standard_ExtString): Standard_GUID {.constructor,importcpp: "Standard_GUID(@)".}
  ## build a GUID from an unicode string with the following format:

proc constructor_Standard_GUID*(a32b: Standard_Integer, a16b1: Standard_ExtCharacter, a16b2: Standard_ExtCharacter, a16b3: Standard_ExtCharacter, a8b1: Standard_Byte, a8b2: Standard_Byte, a8b3: Standard_Byte, a8b4: Standard_Byte, a8b5: Standard_Byte, a8b6: Standard_Byte): Standard_GUID {.constructor,importcpp: "Standard_GUID(@)".}

proc constructor_Standard_GUID*(aGuid: Standard_UUID): Standard_GUID {.constructor,importcpp: "Standard_GUID(@)".}

proc constructor_Standard_GUID*(aGuid: Standard_GUID): Standard_GUID {.constructor,importcpp: "Standard_GUID(@)".}

proc ` new`*(this: var Standard_GUID, theSize: cint)  {.importcpp: "` new`".}

proc ` delete`*(this: var Standard_GUID, theAddress: pointer)  {.importcpp: "` delete`".}

proc ` new[]`*(this: var Standard_GUID, theSize: cint)  {.importcpp: "` new[]`".}

proc ` delete[]`*(this: var Standard_GUID, theAddress: pointer)  {.importcpp: "` delete[]`".}

proc ` new`*(this: var Standard_GUID, cint, theAddress: pointer)  {.importcpp: "` new`".}

proc ` delete`*(this: var Standard_GUID, pointer, pointer)  {.importcpp: "` delete`".}

proc ToUUID*(this: Standard_GUID): Standard_UUID  {.importcpp: "ToUUID".}

proc ToCString*(this: Standard_GUID, aStrGuid: Standard_PCharacter)  {.importcpp: "ToCString".}
  ## translate the GUID into ascii string the aStrGuid is allocated by
  ## user. the guid have the following format:

proc ToExtString*(this: Standard_GUID, aStrGuid: Standard_PExtCharacter)  {.importcpp: "ToExtString".}
  ## translate the GUID into unicode string the aStrGuid is allocated by
  ## user. the guid have the following format:

proc IsSame*(this: Standard_GUID, uid: Standard_GUID): Standard_Boolean  {.importcpp: "IsSame".}

proc `==`*(this: Standard_GUID, uid: Standard_GUID): Standard_Boolean  {.importcpp: "`==`".}

proc IsNotSame*(this: Standard_GUID, uid: Standard_GUID): Standard_Boolean  {.importcpp: "IsNotSame".}

proc `!=`*(this: Standard_GUID, uid: Standard_GUID): Standard_Boolean  {.importcpp: "`!=`".}

proc Assign*(this: var Standard_GUID, uid: Standard_GUID)  {.importcpp: "Assign".}

proc `=`*(this: var Standard_GUID, uid: Standard_GUID)  {.importcpp: "`=`".}

proc Assign*(this: var Standard_GUID, uid: Standard_UUID)  {.importcpp: "Assign".}

proc `=`*(this: var Standard_GUID, uid: Standard_UUID)  {.importcpp: "`=`".}

proc ShallowDump*(this: Standard_GUID, aStream: var Standard_OStream)  {.importcpp: "ShallowDump".}
  ## Display the GUID with the following format:

proc CheckGUIDFormat*(this: var Standard_GUID, aGuid: Standard_CString): Standard_Boolean  {.importcpp: "CheckGUIDFormat".}
  ## Check the format of a GUID string. It checks the size, the position of
  ## the '-' and the correct size of fields.

proc Hash*(this: Standard_GUID, Upper: Standard_Integer): Standard_Integer  {.importcpp: "Hash".}
  ## Hash function for GUID.

proc HashCode*(this: var Standard_GUID, theGUID: Standard_GUID, theUpperBound: Standard_Integer): Standard_Integer  {.importcpp: "HashCode".}
  ## Computes a hash code for the given GUID of the Standard_Integer type,
  ## in the range [1, theUpperBound]

proc IsEqual*(this: var Standard_GUID, string1: Standard_GUID, string2: Standard_GUID): Standard_Boolean  {.importcpp: "IsEqual".}
  ## Returns True when the two GUID are the same.

{.pop.} # header: "Standard_GUID.hxx
