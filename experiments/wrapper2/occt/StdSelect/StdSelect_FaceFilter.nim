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

import
  ../Standard/Standard, ../Standard/Standard_Type, StdSelect_TypeOfFace,
  ../SelectMgr/SelectMgr_Filter, ../Standard/Standard_Boolean,
  ../TopAbs/TopAbs_ShapeEnum

discard "forward decl of SelectMgr_EntityOwner"
discard "forward decl of StdSelect_FaceFilter"
discard "forward decl of StdSelect_FaceFilter"
type
  Handle_StdSelect_FaceFilter* = handle[StdSelect_FaceFilter]

## ! A framework to define a filter to select a specific type of face.
## ! The types available include:
## ! -   any face
## ! -   a planar face
## ! -   a cylindrical face
## ! -   a spherical face
## ! -   a toroidal face
## ! -   a revol face.

type
  StdSelect_FaceFilter* {.importcpp: "StdSelect_FaceFilter",
                         header: "StdSelect_FaceFilter.hxx", bycopy.} = object of SelectMgr_Filter ##
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


proc constructStdSelect_FaceFilter*(aTypeOfFace: StdSelect_TypeOfFace): StdSelect_FaceFilter {.
    constructor, importcpp: "StdSelect_FaceFilter(@)",
    header: "StdSelect_FaceFilter.hxx".}
proc SetType*(this: var StdSelect_FaceFilter; aNewType: StdSelect_TypeOfFace) {.
    importcpp: "SetType", header: "StdSelect_FaceFilter.hxx".}
proc Type*(this: StdSelect_FaceFilter): StdSelect_TypeOfFace {.noSideEffect,
    importcpp: "Type", header: "StdSelect_FaceFilter.hxx".}
proc IsOk*(this: StdSelect_FaceFilter; anobj: handle[SelectMgr_EntityOwner]): Standard_Boolean {.
    noSideEffect, importcpp: "IsOk", header: "StdSelect_FaceFilter.hxx".}
proc ActsOn*(this: StdSelect_FaceFilter; aStandardMode: TopAbs_ShapeEnum): Standard_Boolean {.
    noSideEffect, importcpp: "ActsOn", header: "StdSelect_FaceFilter.hxx".}
type
  StdSelect_FaceFilterbase_type* = SelectMgr_Filter

proc get_type_name*(): cstring {.importcpp: "StdSelect_FaceFilter::get_type_name(@)",
                              header: "StdSelect_FaceFilter.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StdSelect_FaceFilter::get_type_descriptor(@)",
    header: "StdSelect_FaceFilter.hxx".}
proc DynamicType*(this: StdSelect_FaceFilter): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StdSelect_FaceFilter.hxx".}