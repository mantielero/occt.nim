import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/standard/standard_types
import ifselect_types
import "../interface/interface_types"




##  Created on: 1996-09-25
##  Created by: Christian CAILLET
##  Copyright (c) 1996-1999 Matra Datavision
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





proc level*(this: IFSelectSelectExplore): cint {.noSideEffect, cdecl,
    importcpp: "Level", header: "IFSelect_SelectExplore.hxx".}
proc rootResult*(this: IFSelectSelectExplore; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "RootResult", header: "IFSelect_SelectExplore.hxx".}
proc explore*(this: IFSelectSelectExplore; level: cint;
             ent: Handle[StandardTransient]; g: InterfaceGraph;
             explored: var InterfaceEntityIterator): bool {.noSideEffect, cdecl,
    importcpp: "Explore", header: "IFSelect_SelectExplore.hxx".}
proc label*(this: IFSelectSelectExplore): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "Label", header: "IFSelect_SelectExplore.hxx".}
proc exploreLabel*(this: IFSelectSelectExplore): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "ExploreLabel", header: "IFSelect_SelectExplore.hxx".}


