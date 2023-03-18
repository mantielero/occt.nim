import ../standard/standard_types
import cdf_types
import ../cdm/cdm_types




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



proc newCDF_DirectoryIterator*(): CDF_DirectoryIterator {.cdecl, constructor,
    importcpp: "CDF_DirectoryIterator(@)", header: "CDF_DirectoryIterator.hxx".}
proc newCDF_DirectoryIterator*(aDirectory: Handle[CDF_Directory]): CDF_DirectoryIterator {.
    cdecl, constructor, importcpp: "CDF_DirectoryIterator(@)",
    header: "CDF_DirectoryIterator.hxx".}
proc moreDocument*(this: var CDF_DirectoryIterator): bool {.cdecl,
    importcpp: "MoreDocument", header: "CDF_DirectoryIterator.hxx".}
proc nextDocument*(this: var CDF_DirectoryIterator) {.cdecl,
    importcpp: "NextDocument", header: "CDF_DirectoryIterator.hxx".}
proc document*(this: var CDF_DirectoryIterator): Handle[CDM_Document] {.cdecl,
    importcpp: "Document", header: "CDF_DirectoryIterator.hxx".}


