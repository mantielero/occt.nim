import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/standard/standard_types
import ifselect_types





##  Created on: 1993-11-04
##  Created by: Christian CAILLET
##  Copyright (c) 1993-1999 Matra Datavision
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





proc first*(): Handle[IFSelectSessionDumper] {.cdecl,
    importcpp: "IFSelect_SessionDumper::First(@)", header: "IFSelect_SessionDumper.hxx".}
proc next*(this: IFSelectSessionDumper): Handle[IFSelectSessionDumper] {.
    noSideEffect, cdecl, importcpp: "Next", header: "IFSelect_SessionDumper.hxx".}
proc writeOwn*(this: IFSelectSessionDumper; file: var IFSelectSessionFile;
              item: Handle[StandardTransient]): bool {.noSideEffect, cdecl,
    importcpp: "WriteOwn", header: "IFSelect_SessionDumper.hxx".}
proc readOwn*(this: IFSelectSessionDumper; file: var IFSelectSessionFile;
             `type`: TCollectionAsciiString; item: var Handle[StandardTransient]): bool {.
    noSideEffect, cdecl, importcpp: "ReadOwn", header: "IFSelect_SessionDumper.hxx".}


