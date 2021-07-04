##  Created on: 1997-08-13
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../CDM/CDM_ListIteratorOfListOfDocument,
  ../Standard/Standard_Boolean

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of CDF_Directory"
discard "forward decl of CDM_Document"
type
  CDF_DirectoryIterator* {.importcpp: "CDF_DirectoryIterator",
                          header: "CDF_DirectoryIterator.hxx", bycopy.} = object ## !
                                                                            ## creates an
                                                                            ## Iterator with the
                                                                            ## directory
                                                                            ## ! of the
                                                                            ## current CDF.


proc constructCDF_DirectoryIterator*(): CDF_DirectoryIterator {.constructor,
    importcpp: "CDF_DirectoryIterator(@)", header: "CDF_DirectoryIterator.hxx".}
proc constructCDF_DirectoryIterator*(aDirectory: handle[CDF_Directory]): CDF_DirectoryIterator {.
    constructor, importcpp: "CDF_DirectoryIterator(@)",
    header: "CDF_DirectoryIterator.hxx".}
proc MoreDocument*(this: var CDF_DirectoryIterator): Standard_Boolean {.
    importcpp: "MoreDocument", header: "CDF_DirectoryIterator.hxx".}
proc NextDocument*(this: var CDF_DirectoryIterator) {.importcpp: "NextDocument",
    header: "CDF_DirectoryIterator.hxx".}
proc Document*(this: var CDF_DirectoryIterator): handle[CDM_Document] {.
    importcpp: "Document", header: "CDF_DirectoryIterator.hxx".}