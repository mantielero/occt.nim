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

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of CDF_DirectoryIterator"
discard "forward decl of CDM_Document"
discard "forward decl of CDF_Directory"
discard "forward decl of CDF_Directory"
type
  HandleCDF_Directory* = Handle[CDF_Directory]

## ! A directory is a collection of documents. There is only one instance
## ! of a given document in a directory.
## ! put.

type
  CDF_Directory* {.importcpp: "CDF_Directory", header: "CDF_Directory.hxx", bycopy.} = object of StandardTransient ##
                                                                                                         ## !
                                                                                                         ## Creates
                                                                                                         ## an
                                                                                                         ## empty
                                                                                                         ## directory.


proc constructCDF_Directory*(): CDF_Directory {.constructor,
    importcpp: "CDF_Directory(@)", header: "CDF_Directory.hxx".}
proc add*(this: var CDF_Directory; aDocument: Handle[CDM_Document]) {.
    importcpp: "Add", header: "CDF_Directory.hxx".}
proc remove*(this: var CDF_Directory; aDocument: Handle[CDM_Document]) {.
    importcpp: "Remove", header: "CDF_Directory.hxx".}
proc contains*(this: CDF_Directory; aDocument: Handle[CDM_Document]): bool {.
    noSideEffect, importcpp: "Contains", header: "CDF_Directory.hxx".}
proc last*(this: var CDF_Directory): Handle[CDM_Document] {.importcpp: "Last",
    header: "CDF_Directory.hxx".}
proc length*(this: CDF_Directory): int {.noSideEffect, importcpp: "Length",
                                     header: "CDF_Directory.hxx".}
proc isEmpty*(this: CDF_Directory): bool {.noSideEffect, importcpp: "IsEmpty",
                                       header: "CDF_Directory.hxx".}
type
  CDF_DirectorybaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "CDF_Directory::get_type_name(@)",
                            header: "CDF_Directory.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "CDF_Directory::get_type_descriptor(@)",
    header: "CDF_Directory.hxx".}
proc dynamicType*(this: CDF_Directory): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "CDF_Directory.hxx".}
