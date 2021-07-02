##  Created on: 1997-10-22
##  Created by: Jean-Louis Frenkel
##  Copyright (c) 1997-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

discard "forward decl of CDM_Document"
discard "forward decl of CDM_Application"
discard "forward decl of CDM_MetaData"
discard "forward decl of CDM_Reference"
discard "forward decl of CDM_Reference"
type
  HandleCDM_Reference* = Handle[CDM_Reference]
  CDM_Reference* {.importcpp: "CDM_Reference", header: "CDM_Reference.hxx", bycopy.} = object of StandardTransient


proc fromDocument*(this: var CDM_Reference): Handle[CDM_Document] {.
    importcpp: "FromDocument", header: "CDM_Reference.hxx".}
proc toDocument*(this: var CDM_Reference): Handle[CDM_Document] {.
    importcpp: "ToDocument", header: "CDM_Reference.hxx".}
proc referenceIdentifier*(this: var CDM_Reference): StandardInteger {.
    importcpp: "ReferenceIdentifier", header: "CDM_Reference.hxx".}
proc documentVersion*(this: CDM_Reference): StandardInteger {.noSideEffect,
    importcpp: "DocumentVersion", header: "CDM_Reference.hxx".}
proc isReadOnly*(this: CDM_Reference): StandardBoolean {.noSideEffect,
    importcpp: "IsReadOnly", header: "CDM_Reference.hxx".}
proc dumpJson*(this: CDM_Reference; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "CDM_Reference.hxx".}
type
  CDM_ReferencebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "CDM_Reference::get_type_name(@)",
                            header: "CDM_Reference.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "CDM_Reference::get_type_descriptor(@)",
    header: "CDM_Reference.hxx".}
proc dynamicType*(this: CDM_Reference): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "CDM_Reference.hxx".}

