##  Created on: 2001-07-09
##  Created by: Julia DOROVSKIKH
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

discard "forward decl of Message_Messenger"
discard "forward decl of TDF_Attribute"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of XmlObjMgt_Persistent"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of XmlMDF_ADriver"
discard "forward decl of XmlMDF_ADriver"
type
  HandleC1C1* = Handle[XmlMDF_ADriver]

## ! Attribute Storage/Retrieval Driver.

type
  XmlMDF_ADriver* {.importcpp: "XmlMDF_ADriver", header: "XmlMDF_ADriver.hxx", bycopy.} = object of StandardTransient ##
                                                                                                            ## !
                                                                                                            ## Returns
                                                                                                            ## the
                                                                                                            ## version
                                                                                                            ## number
                                                                                                            ## from
                                                                                                            ## which
                                                                                                            ## the
                                                                                                            ## driver
                                                                                                            ##
                                                                                                            ## !
                                                                                                            ## is
                                                                                                            ## available.


proc versionNumber*(this: XmlMDF_ADriver): cint {.noSideEffect,
    importcpp: "VersionNumber", header: "XmlMDF_ADriver.hxx".}
proc newEmpty*(this: XmlMDF_ADriver): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "XmlMDF_ADriver.hxx".}
proc sourceType*(this: XmlMDF_ADriver): Handle[StandardType] {.noSideEffect,
    importcpp: "SourceType", header: "XmlMDF_ADriver.hxx".}
proc typeName*(this: XmlMDF_ADriver): TCollectionAsciiString {.noSideEffect,
    importcpp: "TypeName", header: "XmlMDF_ADriver.hxx".}
proc namespace*(this: XmlMDF_ADriver): TCollectionAsciiString {.noSideEffect,
    importcpp: "Namespace", header: "XmlMDF_ADriver.hxx".}
proc paste*(this: XmlMDF_ADriver; aSource: XmlObjMgtPersistent;
           aTarget: Handle[TDF_Attribute];
           aRelocTable: var XmlObjMgtRRelocationTable): bool {.noSideEffect,
    importcpp: "Paste", header: "XmlMDF_ADriver.hxx".}
proc paste*(this: XmlMDF_ADriver; aSource: Handle[TDF_Attribute];
           aTarget: var XmlObjMgtPersistent;
           aRelocTable: var XmlObjMgtSRelocationTable) {.noSideEffect,
    importcpp: "Paste", header: "XmlMDF_ADriver.hxx".}
proc messageDriver*(this: XmlMDF_ADriver): Handle[MessageMessenger] {.noSideEffect,
    importcpp: "MessageDriver", header: "XmlMDF_ADriver.hxx".}
type
  XmlMDF_ADriverbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "XmlMDF_ADriver::get_type_name(@)",
                            header: "XmlMDF_ADriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XmlMDF_ADriver::get_type_descriptor(@)",
    header: "XmlMDF_ADriver.hxx".}
proc dynamicType*(this: XmlMDF_ADriver): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "XmlMDF_ADriver.hxx".}

























