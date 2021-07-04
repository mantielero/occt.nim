##  Created on: 1992-11-18
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, IFSelect_SelectControl,
  ../Standard/Standard_Boolean

discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Graph"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectDiff"
discard "forward decl of IFSelect_SelectDiff"
type
  Handle_IFSelect_SelectDiff* = handle[IFSelect_SelectDiff]

## ! A SelectDiff keeps the entities from a Selection, the Main
## ! Input, which are not listed by the Second Input

type
  IFSelect_SelectDiff* {.importcpp: "IFSelect_SelectDiff",
                        header: "IFSelect_SelectDiff.hxx", bycopy.} = object of IFSelect_SelectControl ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## an
                                                                                                ## empty
                                                                                                ## SelectDiff
                                                                                                ##
                                                                                                ## !
                                                                                                ## Returns
                                                                                                ## always
                                                                                                ## True,
                                                                                                ## because
                                                                                                ## RootResult
                                                                                                ## gives
                                                                                                ## a
                                                                                                ## Unique
                                                                                                ## list


proc constructIFSelect_SelectDiff*(): IFSelect_SelectDiff {.constructor,
    importcpp: "IFSelect_SelectDiff(@)", header: "IFSelect_SelectDiff.hxx".}
proc RootResult*(this: IFSelect_SelectDiff; G: Interface_Graph): Interface_EntityIterator {.
    noSideEffect, importcpp: "RootResult", header: "IFSelect_SelectDiff.hxx".}
proc Label*(this: IFSelect_SelectDiff): TCollection_AsciiString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_SelectDiff.hxx".}
type
  IFSelect_SelectDiffbase_type* = IFSelect_SelectControl

proc get_type_name*(): cstring {.importcpp: "IFSelect_SelectDiff::get_type_name(@)",
                              header: "IFSelect_SelectDiff.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SelectDiff::get_type_descriptor(@)",
    header: "IFSelect_SelectDiff.hxx".}
proc DynamicType*(this: IFSelect_SelectDiff): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_SelectDiff.hxx".}