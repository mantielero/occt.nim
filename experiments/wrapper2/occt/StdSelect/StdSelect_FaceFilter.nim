##  Created on: 1996-03-08
##  Created by: Robert COUBLANC
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

discard "forward decl of SelectMgr_EntityOwner"
discard "forward decl of StdSelect_FaceFilter"
discard "forward decl of StdSelect_FaceFilter"
type
  HandleStdSelectFaceFilter* = Handle[StdSelectFaceFilter]

## ! A framework to define a filter to select a specific type of face.
## ! The types available include:
## ! -   any face
## ! -   a planar face
## ! -   a cylindrical face
## ! -   a spherical face
## ! -   a toroidal face
## ! -   a revol face.

type
  StdSelectFaceFilter* {.importcpp: "StdSelect_FaceFilter",
                        header: "StdSelect_FaceFilter.hxx", bycopy.} = object of SelectMgrFilter ##
                                                                                          ## !
                                                                                          ## Constructs
                                                                                          ## a
                                                                                          ## face
                                                                                          ## filter
                                                                                          ## object
                                                                                          ## defined
                                                                                          ## by
                                                                                          ## the
                                                                                          ## type
                                                                                          ## of
                                                                                          ## face
                                                                                          ## aTypeOfFace.


proc constructStdSelectFaceFilter*(aTypeOfFace: StdSelectTypeOfFace): StdSelectFaceFilter {.
    constructor, importcpp: "StdSelect_FaceFilter(@)",
    header: "StdSelect_FaceFilter.hxx".}
proc setType*(this: var StdSelectFaceFilter; aNewType: StdSelectTypeOfFace) {.
    importcpp: "SetType", header: "StdSelect_FaceFilter.hxx".}
proc `type`*(this: StdSelectFaceFilter): StdSelectTypeOfFace {.noSideEffect,
    importcpp: "Type", header: "StdSelect_FaceFilter.hxx".}
proc isOk*(this: StdSelectFaceFilter; anobj: Handle[SelectMgrEntityOwner]): bool {.
    noSideEffect, importcpp: "IsOk", header: "StdSelect_FaceFilter.hxx".}
proc actsOn*(this: StdSelectFaceFilter; aStandardMode: TopAbsShapeEnum): bool {.
    noSideEffect, importcpp: "ActsOn", header: "StdSelect_FaceFilter.hxx".}
type
  StdSelectFaceFilterbaseType* = SelectMgrFilter

proc getTypeName*(): cstring {.importcpp: "StdSelect_FaceFilter::get_type_name(@)",
                            header: "StdSelect_FaceFilter.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StdSelect_FaceFilter::get_type_descriptor(@)",
    header: "StdSelect_FaceFilter.hxx".}
proc dynamicType*(this: StdSelectFaceFilter): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StdSelect_FaceFilter.hxx".}
