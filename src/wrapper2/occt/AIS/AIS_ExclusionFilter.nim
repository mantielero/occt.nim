##  Created on: 1997-11-28
##  Created by: Robert COUBLANC
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

discard "forward decl of SelectMgr_EntityOwner"
discard "forward decl of AIS_ExclusionFilter"
discard "forward decl of AIS_ExclusionFilter"
type
  HandleAIS_ExclusionFilter* = Handle[AIS_ExclusionFilter]

## ! A framework to reject or to accept only objects of
## ! given types and/or signatures.
## ! Objects are stored, and the stored objects - along
## ! with the flag settings - are used to define the filter.
## ! Objects to be filtered are compared with the stored
## ! objects added to the filter, and are accepted or
## ! rejected according to the exclusion flag setting.
## ! -   Exclusion flag on
## ! -   the function IsOk answers true for all objects,
## ! except those of the types and signatures stored
## ! in the filter framework
## ! -   Exclusion flag off
## ! -   the funciton IsOk answers true for all objects
## ! which have the same type and signature as the stored ones.

type
  AIS_ExclusionFilter* {.importcpp: "AIS_ExclusionFilter",
                        header: "AIS_ExclusionFilter.hxx", bycopy.} = object of SelectMgrFilter ##
                                                                                         ## !
                                                                                         ## Constructs
                                                                                         ## an
                                                                                         ## empty
                                                                                         ## exclusion
                                                                                         ## filter
                                                                                         ## object
                                                                                         ## defined
                                                                                         ## by
                                                                                         ##
                                                                                         ## !
                                                                                         ## the
                                                                                         ## flag
                                                                                         ## setting
                                                                                         ## ExclusionFlagOn.
                                                                                         ##
                                                                                         ## !
                                                                                         ## By
                                                                                         ## default,
                                                                                         ## the
                                                                                         ## flag
                                                                                         ## is
                                                                                         ## set
                                                                                         ## to
                                                                                         ## true.


proc constructAIS_ExclusionFilter*(exclusionFlagOn: StandardBoolean = standardTrue): AIS_ExclusionFilter {.
    constructor, importcpp: "AIS_ExclusionFilter(@)",
    header: "AIS_ExclusionFilter.hxx".}
proc constructAIS_ExclusionFilter*(typeToExclude: AIS_KindOfInteractive;
    exclusionFlagOn: StandardBoolean = standardTrue): AIS_ExclusionFilter {.
    constructor, importcpp: "AIS_ExclusionFilter(@)",
    header: "AIS_ExclusionFilter.hxx".}
proc constructAIS_ExclusionFilter*(typeToExclude: AIS_KindOfInteractive;
                                  signatureInType: StandardInteger;
    exclusionFlagOn: StandardBoolean = standardTrue): AIS_ExclusionFilter {.
    constructor, importcpp: "AIS_ExclusionFilter(@)",
    header: "AIS_ExclusionFilter.hxx".}
proc isOk*(this: AIS_ExclusionFilter; anObj: Handle[SelectMgrEntityOwner]): StandardBoolean {.
    noSideEffect, importcpp: "IsOk", header: "AIS_ExclusionFilter.hxx".}
proc add*(this: var AIS_ExclusionFilter; typeToExclude: AIS_KindOfInteractive): StandardBoolean {.
    importcpp: "Add", header: "AIS_ExclusionFilter.hxx".}
proc add*(this: var AIS_ExclusionFilter; typeToExclude: AIS_KindOfInteractive;
         signatureInType: StandardInteger): StandardBoolean {.importcpp: "Add",
    header: "AIS_ExclusionFilter.hxx".}
proc remove*(this: var AIS_ExclusionFilter; typeToExclude: AIS_KindOfInteractive): StandardBoolean {.
    importcpp: "Remove", header: "AIS_ExclusionFilter.hxx".}
proc remove*(this: var AIS_ExclusionFilter; typeToExclude: AIS_KindOfInteractive;
            signatureInType: StandardInteger): StandardBoolean {.
    importcpp: "Remove", header: "AIS_ExclusionFilter.hxx".}
proc clear*(this: var AIS_ExclusionFilter) {.importcpp: "Clear",
    header: "AIS_ExclusionFilter.hxx".}
proc isExclusionFlagOn*(this: AIS_ExclusionFilter): StandardBoolean {.noSideEffect,
    importcpp: "IsExclusionFlagOn", header: "AIS_ExclusionFilter.hxx".}
proc setExclusionFlag*(this: var AIS_ExclusionFilter; status: StandardBoolean) {.
    importcpp: "SetExclusionFlag", header: "AIS_ExclusionFilter.hxx".}
proc isStored*(this: AIS_ExclusionFilter; aType: AIS_KindOfInteractive): StandardBoolean {.
    noSideEffect, importcpp: "IsStored", header: "AIS_ExclusionFilter.hxx".}
proc listOfStoredTypes*(this: AIS_ExclusionFilter;
                       theList: var TColStdListOfInteger) {.noSideEffect,
    importcpp: "ListOfStoredTypes", header: "AIS_ExclusionFilter.hxx".}
proc listOfSignature*(this: AIS_ExclusionFilter; aType: AIS_KindOfInteractive;
                     theStoredList: var TColStdListOfInteger) {.noSideEffect,
    importcpp: "ListOfSignature", header: "AIS_ExclusionFilter.hxx".}
type
  AIS_ExclusionFilterbaseType* = SelectMgrFilter

proc getTypeName*(): cstring {.importcpp: "AIS_ExclusionFilter::get_type_name(@)",
                            header: "AIS_ExclusionFilter.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AIS_ExclusionFilter::get_type_descriptor(@)",
    header: "AIS_ExclusionFilter.hxx".}
proc dynamicType*(this: AIS_ExclusionFilter): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_ExclusionFilter.hxx".}

