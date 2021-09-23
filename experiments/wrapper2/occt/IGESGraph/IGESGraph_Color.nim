##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen ( Niraj RANGWALA )
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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../IGESData/IGESData_ColorEntity, ../Standard/Standard_Boolean

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESGraph_Color"
discard "forward decl of IGESGraph_Color"
type
  Handle_IGESGraph_Color* = handle[IGESGraph_Color]

## ! defines IGESColor, Type <314> Form <0>
## ! in package IGESGraph
## !
## ! The Color Definition Entity is used to communicate the
## ! relationship of primary colors to the intensity level of
## ! the respective graphics devices as a percent of full
## ! intensity range.

type
  IGESGraph_Color* {.importcpp: "IGESGraph_Color", header: "IGESGraph_Color.hxx",
                    bycopy.} = object of IGESData_ColorEntity


proc constructIGESGraph_Color*(): IGESGraph_Color {.constructor,
    importcpp: "IGESGraph_Color(@)", header: "IGESGraph_Color.hxx".}
proc Init*(this: var IGESGraph_Color; red: Standard_Real; green: Standard_Real;
          blue: Standard_Real; aColorName: handle[TCollection_HAsciiString]) {.
    importcpp: "Init", header: "IGESGraph_Color.hxx".}
proc RGBIntensity*(this: IGESGraph_Color; Red: var Standard_Real;
                  Green: var Standard_Real; Blue: var Standard_Real) {.noSideEffect,
    importcpp: "RGBIntensity", header: "IGESGraph_Color.hxx".}
proc CMYIntensity*(this: IGESGraph_Color; Cyan: var Standard_Real;
                  Magenta: var Standard_Real; Yellow: var Standard_Real) {.
    noSideEffect, importcpp: "CMYIntensity", header: "IGESGraph_Color.hxx".}
proc HLSPercentage*(this: IGESGraph_Color; Hue: var Standard_Real;
                   Lightness: var Standard_Real; Saturation: var Standard_Real) {.
    noSideEffect, importcpp: "HLSPercentage", header: "IGESGraph_Color.hxx".}
proc HasColorName*(this: IGESGraph_Color): Standard_Boolean {.noSideEffect,
    importcpp: "HasColorName", header: "IGESGraph_Color.hxx".}
proc ColorName*(this: IGESGraph_Color): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "ColorName", header: "IGESGraph_Color.hxx".}
type
  IGESGraph_Colorbase_type* = IGESData_ColorEntity

proc get_type_name*(): cstring {.importcpp: "IGESGraph_Color::get_type_name(@)",
                              header: "IGESGraph_Color.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGraph_Color::get_type_descriptor(@)",
    header: "IGESGraph_Color.hxx".}
proc DynamicType*(this: IGESGraph_Color): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGraph_Color.hxx".}