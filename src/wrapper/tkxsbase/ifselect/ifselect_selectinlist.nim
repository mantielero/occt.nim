import ifselect_types

##  Created on: 1993-01-07
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of IFSelect_SelectInList"




proc listedEntity*(this: IFSelectSelectInList; num: cint;
                  ent: Handle[StandardTransient]): Handle[StandardTransient] {.
    noSideEffect, cdecl, importcpp: "ListedEntity", header: "IFSelect_SelectInList.hxx".}
proc fillResult*(this: IFSelectSelectInList; n1: cint; n2: cint;
                ent: Handle[StandardTransient];
                result: var InterfaceEntityIterator) {.noSideEffect, cdecl,
    importcpp: "FillResult", header: "IFSelect_SelectInList.hxx".}
