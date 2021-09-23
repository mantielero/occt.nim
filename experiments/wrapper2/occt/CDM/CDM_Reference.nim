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

import
  ../Standard/Standard, ../Standard/Standard_Type, CDM_DocumentPointer,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient

discard "forward decl of CDM_Document"
discard "forward decl of CDM_Application"
discard "forward decl of CDM_MetaData"
discard "forward decl of CDM_Reference"
discard "forward decl of CDM_Reference"
type
  Handle_CDM_Reference* = handle[CDM_Reference]
  CDM_Reference* {.importcpp: "CDM_Reference", header: "CDM_Reference.hxx", bycopy.} = object of Standard_Transient


proc FromDocument*(this: var CDM_Reference): handle[CDM_Document] {.
    importcpp: "FromDocument", header: "CDM_Reference.hxx".}
proc ToDocument*(this: var CDM_Reference): handle[CDM_Document] {.
    importcpp: "ToDocument", header: "CDM_Reference.hxx".}
proc ReferenceIdentifier*(this: var CDM_Reference): Standard_Integer {.
    importcpp: "ReferenceIdentifier", header: "CDM_Reference.hxx".}
proc DocumentVersion*(this: CDM_Reference): Standard_Integer {.noSideEffect,
    importcpp: "DocumentVersion", header: "CDM_Reference.hxx".}
proc IsReadOnly*(this: CDM_Reference): Standard_Boolean {.noSideEffect,
    importcpp: "IsReadOnly", header: "CDM_Reference.hxx".}
proc DumpJson*(this: CDM_Reference; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "CDM_Reference.hxx".}
type
  CDM_Referencebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "CDM_Reference::get_type_name(@)",
                              header: "CDM_Reference.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "CDM_Reference::get_type_descriptor(@)",
    header: "CDM_Reference.hxx".}
proc DynamicType*(this: CDM_Reference): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "CDM_Reference.hxx".}