##  Created on: 1997-08-07
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
  ../Standard/Standard, ../Standard/Standard_Type, ../CDM/CDM_ListOfDocument,
  ../Standard/Standard_Transient, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of CDF_DirectoryIterator"
discard "forward decl of CDM_Document"
discard "forward decl of CDF_Directory"
discard "forward decl of CDF_Directory"
type
  Handle_CDF_Directory* = handle[CDF_Directory]

## ! A directory is a collection of documents. There is only one instance
## ! of a given document in a directory.
## ! put.

type
  CDF_Directory* {.importcpp: "CDF_Directory", header: "CDF_Directory.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                          ## !
                                                                                                          ## Creates
                                                                                                          ## an
                                                                                                          ## empty
                                                                                                          ## directory.


proc constructCDF_Directory*(): CDF_Directory {.constructor,
    importcpp: "CDF_Directory(@)", header: "CDF_Directory.hxx".}
proc Add*(this: var CDF_Directory; aDocument: handle[CDM_Document]) {.
    importcpp: "Add", header: "CDF_Directory.hxx".}
proc Remove*(this: var CDF_Directory; aDocument: handle[CDM_Document]) {.
    importcpp: "Remove", header: "CDF_Directory.hxx".}
proc Contains*(this: CDF_Directory; aDocument: handle[CDM_Document]): Standard_Boolean {.
    noSideEffect, importcpp: "Contains", header: "CDF_Directory.hxx".}
proc Last*(this: var CDF_Directory): handle[CDM_Document] {.importcpp: "Last",
    header: "CDF_Directory.hxx".}
proc Length*(this: CDF_Directory): Standard_Integer {.noSideEffect,
    importcpp: "Length", header: "CDF_Directory.hxx".}
proc IsEmpty*(this: CDF_Directory): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "CDF_Directory.hxx".}
type
  CDF_Directorybase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "CDF_Directory::get_type_name(@)",
                              header: "CDF_Directory.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "CDF_Directory::get_type_descriptor(@)",
    header: "CDF_Directory.hxx".}
proc DynamicType*(this: CDF_Directory): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "CDF_Directory.hxx".}