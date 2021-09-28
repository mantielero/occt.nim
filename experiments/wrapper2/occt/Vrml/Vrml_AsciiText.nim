##  Created on: 1996-12-24
##  Created by: Alexander BRIVIN
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

discard "forward decl of Vrml_AsciiText"
discard "forward decl of Vrml_AsciiText"
type
  HandleC1C1* = Handle[VrmlAsciiText]

## ! defines a AsciiText node of VRML specifying geometry shapes.
## ! This  node  represents  strings  of  text  characters  from  ASCII  coded
## ! character  set. All subsequent strings advance y by -( size * spacing).
## ! The justification field determines the placement of the strings in the x
## ! dimension. LEFT (the default) places the left edge of each string at x=0.
## ! CENTER places the center of each string at x=0. RIGHT places the right edge
## ! of each string at x=0. Text is rendered from left to right, top to
## ! bottom in the font set by FontStyle.
## ! The  default  value  for  the  wigth  field  indicates  the  natural  width
## ! should  be  used  for  that  string.

type
  VrmlAsciiText* {.importcpp: "Vrml_AsciiText", header: "Vrml_AsciiText.hxx", bycopy.} = object of StandardTransient


proc constructVrmlAsciiText*(): VrmlAsciiText {.constructor,
    importcpp: "Vrml_AsciiText(@)", header: "Vrml_AsciiText.hxx".}
proc constructVrmlAsciiText*(aString: Handle[TColStdHArray1OfAsciiString];
                            aSpacing: cfloat;
                            aJustification: VrmlAsciiTextJustification;
                            aWidth: cfloat): VrmlAsciiText {.constructor,
    importcpp: "Vrml_AsciiText(@)", header: "Vrml_AsciiText.hxx".}
proc setString*(this: var VrmlAsciiText;
               aString: Handle[TColStdHArray1OfAsciiString]) {.
    importcpp: "SetString", header: "Vrml_AsciiText.hxx".}
proc string*(this: VrmlAsciiText): Handle[TColStdHArray1OfAsciiString] {.
    noSideEffect, importcpp: "String", header: "Vrml_AsciiText.hxx".}
proc setSpacing*(this: var VrmlAsciiText; aSpacing: cfloat) {.importcpp: "SetSpacing",
    header: "Vrml_AsciiText.hxx".}
proc spacing*(this: VrmlAsciiText): cfloat {.noSideEffect, importcpp: "Spacing",
    header: "Vrml_AsciiText.hxx".}
proc setJustification*(this: var VrmlAsciiText;
                      aJustification: VrmlAsciiTextJustification) {.
    importcpp: "SetJustification", header: "Vrml_AsciiText.hxx".}
proc justification*(this: VrmlAsciiText): VrmlAsciiTextJustification {.noSideEffect,
    importcpp: "Justification", header: "Vrml_AsciiText.hxx".}
proc setWidth*(this: var VrmlAsciiText; aWidth: cfloat) {.importcpp: "SetWidth",
    header: "Vrml_AsciiText.hxx".}
proc width*(this: VrmlAsciiText): cfloat {.noSideEffect, importcpp: "Width",
                                       header: "Vrml_AsciiText.hxx".}
proc print*(this: VrmlAsciiText; anOStream: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_AsciiText.hxx".}
type
  VrmlAsciiTextbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Vrml_AsciiText::get_type_name(@)",
                            header: "Vrml_AsciiText.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Vrml_AsciiText::get_type_descriptor(@)",
    header: "Vrml_AsciiText.hxx".}
proc dynamicType*(this: VrmlAsciiText): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Vrml_AsciiText.hxx".}

























