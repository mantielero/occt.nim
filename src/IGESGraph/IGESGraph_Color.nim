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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESGraph_Color"
discard "forward decl of IGESGraph_Color"
type
  HandleC1C1* = Handle[IGESGraphColor]

## ! defines IGESColor, Type <314> Form <0>
## ! in package IGESGraph
## !
## ! The Color Definition Entity is used to communicate the
## ! relationship of primary colors to the intensity level of
## ! the respective graphics devices as a percent of full
## ! intensity range.

type
  IGESGraphColor* {.importcpp: "IGESGraph_Color", header: "IGESGraph_Color.hxx",
                   bycopy.} = object of IGESDataColorEntity


proc constructIGESGraphColor*(): IGESGraphColor {.constructor,
    importcpp: "IGESGraph_Color(@)", header: "IGESGraph_Color.hxx".}
proc init*(this: var IGESGraphColor; red: cfloat; green: cfloat; blue: cfloat;
          aColorName: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "IGESGraph_Color.hxx".}
proc rGBIntensity*(this: IGESGraphColor; red: var cfloat; green: var cfloat;
                  blue: var cfloat) {.noSideEffect, importcpp: "RGBIntensity",
                                   header: "IGESGraph_Color.hxx".}
proc cMYIntensity*(this: IGESGraphColor; cyan: var cfloat; magenta: var cfloat;
                  yellow: var cfloat) {.noSideEffect, importcpp: "CMYIntensity",
                                     header: "IGESGraph_Color.hxx".}
proc hLSPercentage*(this: IGESGraphColor; hue: var cfloat; lightness: var cfloat;
                   saturation: var cfloat) {.noSideEffect,
    importcpp: "HLSPercentage", header: "IGESGraph_Color.hxx".}
proc hasColorName*(this: IGESGraphColor): bool {.noSideEffect,
    importcpp: "HasColorName", header: "IGESGraph_Color.hxx".}
proc colorName*(this: IGESGraphColor): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "ColorName", header: "IGESGraph_Color.hxx".}
type
  IGESGraphColorbaseType* = IGESDataColorEntity

proc getTypeName*(): cstring {.importcpp: "IGESGraph_Color::get_type_name(@)",
                            header: "IGESGraph_Color.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGraph_Color::get_type_descriptor(@)",
    header: "IGESGraph_Color.hxx".}
proc dynamicType*(this: IGESGraphColor): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGraph_Color.hxx".}

























