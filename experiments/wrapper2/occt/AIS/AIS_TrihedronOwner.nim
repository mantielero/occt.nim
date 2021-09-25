##  Created by: Ilya SEVRIKOV
##  Copyright (c) 2016 OPEN CASCADE SAS
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

## ! Entity owner for selection management of AIS_Trihedron object.

type
  AIS_TrihedronOwner* {.importcpp: "AIS_TrihedronOwner",
                       header: "AIS_TrihedronOwner.hxx", bycopy.} = object of SelectMgrEntityOwner ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## an
                                                                                            ## owner
                                                                                            ## of
                                                                                            ## AIS_Trihedron
                                                                                            ## object.
    ## !< part of datum selected

  AIS_TrihedronOwnerbaseType* = SelectMgrEntityOwner

proc getTypeName*(): cstring {.importcpp: "AIS_TrihedronOwner::get_type_name(@)",
                            header: "AIS_TrihedronOwner.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AIS_TrihedronOwner::get_type_descriptor(@)",
    header: "AIS_TrihedronOwner.hxx".}
proc dynamicType*(this: AIS_TrihedronOwner): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_TrihedronOwner.hxx".}
proc constructAIS_TrihedronOwner*(theSelObject: Handle[SelectMgrSelectableObject];
                                 theDatumPart: Prs3dDatumParts; thePriority: int): AIS_TrihedronOwner {.
    constructor, importcpp: "AIS_TrihedronOwner(@)",
    header: "AIS_TrihedronOwner.hxx".}
proc datumPart*(this: AIS_TrihedronOwner): Prs3dDatumParts {.noSideEffect,
    importcpp: "DatumPart", header: "AIS_TrihedronOwner.hxx".}
proc hilightWithColor*(this: var AIS_TrihedronOwner;
                      thePM: Handle[PrsMgrPresentationManager3d];
                      theStyle: Handle[Prs3dDrawer]; theMode: int) {.
    importcpp: "HilightWithColor", header: "AIS_TrihedronOwner.hxx".}
proc isHilighted*(this: AIS_TrihedronOwner;
                 thePM: Handle[PrsMgrPresentationManager]; theMode: int): bool {.
    noSideEffect, importcpp: "IsHilighted", header: "AIS_TrihedronOwner.hxx".}
proc unhilight*(this: var AIS_TrihedronOwner;
               thePM: Handle[PrsMgrPresentationManager]; theMode: int) {.
    importcpp: "Unhilight", header: "AIS_TrihedronOwner.hxx".}
discard "forward decl of AIS_TrihedronOwner"
type
  HandleAIS_TrihedronOwner* = Handle[AIS_TrihedronOwner]

