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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_HArray1OfAsciiString, ../Standard/Standard_Real,
  Vrml_AsciiTextJustification, ../Standard/Standard_Transient,
  ../Standard/Standard_OStream

discard "forward decl of Vrml_AsciiText"
discard "forward decl of Vrml_AsciiText"
type
  Handle_Vrml_AsciiText* = handle[Vrml_AsciiText]

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
  Vrml_AsciiText* {.importcpp: "Vrml_AsciiText", header: "Vrml_AsciiText.hxx", bycopy.} = object of Standard_Transient


proc constructVrml_AsciiText*(): Vrml_AsciiText {.constructor,
    importcpp: "Vrml_AsciiText(@)", header: "Vrml_AsciiText.hxx".}
proc constructVrml_AsciiText*(aString: handle[TColStd_HArray1OfAsciiString];
                             aSpacing: Standard_Real;
                             aJustification: Vrml_AsciiTextJustification;
                             aWidth: Standard_Real): Vrml_AsciiText {.constructor,
    importcpp: "Vrml_AsciiText(@)", header: "Vrml_AsciiText.hxx".}
proc SetString*(this: var Vrml_AsciiText;
               aString: handle[TColStd_HArray1OfAsciiString]) {.
    importcpp: "SetString", header: "Vrml_AsciiText.hxx".}
proc String*(this: Vrml_AsciiText): handle[TColStd_HArray1OfAsciiString] {.
    noSideEffect, importcpp: "String", header: "Vrml_AsciiText.hxx".}
proc SetSpacing*(this: var Vrml_AsciiText; aSpacing: Standard_Real) {.
    importcpp: "SetSpacing", header: "Vrml_AsciiText.hxx".}
proc Spacing*(this: Vrml_AsciiText): Standard_Real {.noSideEffect,
    importcpp: "Spacing", header: "Vrml_AsciiText.hxx".}
proc SetJustification*(this: var Vrml_AsciiText;
                      aJustification: Vrml_AsciiTextJustification) {.
    importcpp: "SetJustification", header: "Vrml_AsciiText.hxx".}
proc Justification*(this: Vrml_AsciiText): Vrml_AsciiTextJustification {.
    noSideEffect, importcpp: "Justification", header: "Vrml_AsciiText.hxx".}
proc SetWidth*(this: var Vrml_AsciiText; aWidth: Standard_Real) {.
    importcpp: "SetWidth", header: "Vrml_AsciiText.hxx".}
proc Width*(this: Vrml_AsciiText): Standard_Real {.noSideEffect, importcpp: "Width",
    header: "Vrml_AsciiText.hxx".}
proc Print*(this: Vrml_AsciiText; anOStream: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Print", header: "Vrml_AsciiText.hxx".}
type
  Vrml_AsciiTextbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Vrml_AsciiText::get_type_name(@)",
                              header: "Vrml_AsciiText.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Vrml_AsciiText::get_type_descriptor(@)",
    header: "Vrml_AsciiText.hxx".}
proc DynamicType*(this: Vrml_AsciiText): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Vrml_AsciiText.hxx".}