##  Created on: 1999-02-24
##  Created by: Christian CAILLET
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  IGESSelect_ModelModifier

discard "forward decl of IFSelect_ContextModif"
discard "forward decl of IGESData_IGESModel"
discard "forward decl of Interface_CopyTool"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_RemoveCurves"
discard "forward decl of IGESSelect_RemoveCurves"
type
  Handle_IGESSelect_RemoveCurves* = handle[IGESSelect_RemoveCurves]

## ! Removes Curves UV or 3D (not both !) from Faces, those
## ! designated by the Selection. No Selection means all the file

type
  IGESSelect_RemoveCurves* {.importcpp: "IGESSelect_RemoveCurves",
                            header: "IGESSelect_RemoveCurves.hxx", bycopy.} = object of IGESSelect_ModelModifier ##
                                                                                                          ## !
                                                                                                          ## Creates
                                                                                                          ## a
                                                                                                          ## RemoveCurves
                                                                                                          ## from
                                                                                                          ## Faces
                                                                                                          ## (141/142/143/144)
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## UV
                                                                                                          ## True
                                                                                                          ## :
                                                                                                          ## Removes
                                                                                                          ## UV
                                                                                                          ## Curves
                                                                                                          ## (pcurves)
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## UV
                                                                                                          ## False
                                                                                                          ## :
                                                                                                          ## Removes
                                                                                                          ## 3D
                                                                                                          ## Curves


proc constructIGESSelect_RemoveCurves*(UV: Standard_Boolean): IGESSelect_RemoveCurves {.
    constructor, importcpp: "IGESSelect_RemoveCurves(@)",
    header: "IGESSelect_RemoveCurves.hxx".}
proc Performing*(this: IGESSelect_RemoveCurves; ctx: var IFSelect_ContextModif;
                target: handle[IGESData_IGESModel]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "Performing", header: "IGESSelect_RemoveCurves.hxx".}
proc Label*(this: IGESSelect_RemoveCurves): TCollection_AsciiString {.noSideEffect,
    importcpp: "Label", header: "IGESSelect_RemoveCurves.hxx".}
type
  IGESSelect_RemoveCurvesbase_type* = IGESSelect_ModelModifier

proc get_type_name*(): cstring {.importcpp: "IGESSelect_RemoveCurves::get_type_name(@)",
                              header: "IGESSelect_RemoveCurves.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_RemoveCurves::get_type_descriptor(@)",
    header: "IGESSelect_RemoveCurves.hxx".}
proc DynamicType*(this: IGESSelect_RemoveCurves): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSelect_RemoveCurves.hxx".}