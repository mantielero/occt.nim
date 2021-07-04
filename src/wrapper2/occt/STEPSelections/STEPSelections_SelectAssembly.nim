##  Created on: 1999-03-25
##  Created by: data exchange team
##  Copyright (c) 1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../IFSelect/IFSelect_SelectExplore, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of STEPSelections_SelectAssembly"
discard "forward decl of STEPSelections_SelectAssembly"
type
  Handle_STEPSelections_SelectAssembly* = handle[STEPSelections_SelectAssembly]
  STEPSelections_SelectAssembly* {.importcpp: "STEPSelections_SelectAssembly",
                                  header: "STEPSelections_SelectAssembly.hxx",
                                  bycopy.} = object of IFSelect_SelectExplore


proc constructSTEPSelections_SelectAssembly*(): STEPSelections_SelectAssembly {.
    constructor, importcpp: "STEPSelections_SelectAssembly(@)",
    header: "STEPSelections_SelectAssembly.hxx".}
proc Explore*(this: STEPSelections_SelectAssembly; level: Standard_Integer;
             ent: handle[Standard_Transient]; G: Interface_Graph;
             explored: var Interface_EntityIterator): Standard_Boolean {.
    noSideEffect, importcpp: "Explore", header: "STEPSelections_SelectAssembly.hxx".}
proc ExploreLabel*(this: STEPSelections_SelectAssembly): TCollection_AsciiString {.
    noSideEffect, importcpp: "ExploreLabel",
    header: "STEPSelections_SelectAssembly.hxx".}
type
  STEPSelections_SelectAssemblybase_type* = IFSelect_SelectExplore

proc get_type_name*(): cstring {.importcpp: "STEPSelections_SelectAssembly::get_type_name(@)",
                              header: "STEPSelections_SelectAssembly.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "STEPSelections_SelectAssembly::get_type_descriptor(@)",
    header: "STEPSelections_SelectAssembly.hxx".}
proc DynamicType*(this: STEPSelections_SelectAssembly): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "STEPSelections_SelectAssembly.hxx".}