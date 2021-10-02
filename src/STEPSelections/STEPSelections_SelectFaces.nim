##  Created on: 1999-02-11
##  Created by: Pavel DURANDIN
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

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_Graph"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of STEPSelections_SelectFaces"
discard "forward decl of STEPSelections_SelectFaces"
type
  HandleC1C1* = Handle[STEPSelectionsSelectFaces]

## ! This selection returns "STEP faces"

type
  STEPSelectionsSelectFaces* {.importcpp: "STEPSelections_SelectFaces",
                              header: "STEPSelections_SelectFaces.hxx", bycopy.} = object of IFSelectSelectExplore


proc constructSTEPSelectionsSelectFaces*(): STEPSelectionsSelectFaces {.
    constructor, importcpp: "STEPSelections_SelectFaces(@)",
    header: "STEPSelections_SelectFaces.hxx".}
proc explore*(this: STEPSelectionsSelectFaces; level: int;
             ent: Handle[StandardTransient]; g: InterfaceGraph;
             explored: var InterfaceEntityIterator): StandardBoolean {.noSideEffect,
    importcpp: "Explore", header: "STEPSelections_SelectFaces.hxx".}
proc exploreLabel*(this: STEPSelectionsSelectFaces): TCollectionAsciiString {.
    noSideEffect, importcpp: "ExploreLabel",
    header: "STEPSelections_SelectFaces.hxx".}
type
  STEPSelectionsSelectFacesbaseType* = IFSelectSelectExplore

proc getTypeName*(): cstring {.importcpp: "STEPSelections_SelectFaces::get_type_name(@)",
                            header: "STEPSelections_SelectFaces.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "STEPSelections_SelectFaces::get_type_descriptor(@)",
    header: "STEPSelections_SelectFaces.hxx".}
proc dynamicType*(this: STEPSelectionsSelectFaces): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "STEPSelections_SelectFaces.hxx".}