import ../standard/standard_types
import cdf_types
import ../cdm/cdm_types




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





proc newCDF_Directory*(): CDF_Directory {.cdecl, constructor,
                                       importcpp: "CDF_Directory(@)",
                                       header: "CDF_Directory.hxx".}
proc add*(this: var CDF_Directory; aDocument: Handle[CDM_Document]) {.cdecl,
    importcpp: "Add", header: "CDF_Directory.hxx".}
proc remove*(this: var CDF_Directory; aDocument: Handle[CDM_Document]) {.cdecl,
    importcpp: "Remove", header: "CDF_Directory.hxx".}
proc contains*(this: CDF_Directory; aDocument: Handle[CDM_Document]): bool {.
    noSideEffect, cdecl, importcpp: "Contains", header: "CDF_Directory.hxx".}
proc last*(this: var CDF_Directory): Handle[CDM_Document] {.cdecl, importcpp: "Last",
    header: "CDF_Directory.hxx".}
proc length*(this: CDF_Directory): cint {.noSideEffect, cdecl, importcpp: "Length",
                                      header: "CDF_Directory.hxx".}
proc isEmpty*(this: CDF_Directory): bool {.noSideEffect, cdecl, importcpp: "IsEmpty",
                                       header: "CDF_Directory.hxx".}


