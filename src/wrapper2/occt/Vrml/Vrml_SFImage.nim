##  Created on: 1996-12-23
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  Vrml_SFImageNumber, ../TColStd/TColStd_HArray1OfInteger,
  ../Standard/Standard_Boolean, ../Standard/Standard_Transient

discard "forward decl of Vrml_SFImage"
discard "forward decl of Vrml_SFImage"
type
  Handle_Vrml_SFImage* = handle[Vrml_SFImage]

## ! defines SFImage type of VRML field types.

type
  Vrml_SFImage* {.importcpp: "Vrml_SFImage", header: "Vrml_SFImage.hxx", bycopy.} = object of Standard_Transient


proc constructVrml_SFImage*(): Vrml_SFImage {.constructor,
    importcpp: "Vrml_SFImage(@)", header: "Vrml_SFImage.hxx".}
proc constructVrml_SFImage*(aWidth: Standard_Integer; aHeight: Standard_Integer;
                           aNumber: Vrml_SFImageNumber;
                           anArray: handle[TColStd_HArray1OfInteger]): Vrml_SFImage {.
    constructor, importcpp: "Vrml_SFImage(@)", header: "Vrml_SFImage.hxx".}
proc SetWidth*(this: var Vrml_SFImage; aWidth: Standard_Integer) {.
    importcpp: "SetWidth", header: "Vrml_SFImage.hxx".}
proc Width*(this: Vrml_SFImage): Standard_Integer {.noSideEffect, importcpp: "Width",
    header: "Vrml_SFImage.hxx".}
proc SetHeight*(this: var Vrml_SFImage; aHeight: Standard_Integer) {.
    importcpp: "SetHeight", header: "Vrml_SFImage.hxx".}
proc Height*(this: Vrml_SFImage): Standard_Integer {.noSideEffect,
    importcpp: "Height", header: "Vrml_SFImage.hxx".}
proc SetNumber*(this: var Vrml_SFImage; aNumber: Vrml_SFImageNumber) {.
    importcpp: "SetNumber", header: "Vrml_SFImage.hxx".}
proc Number*(this: Vrml_SFImage): Vrml_SFImageNumber {.noSideEffect,
    importcpp: "Number", header: "Vrml_SFImage.hxx".}
proc SetArray*(this: var Vrml_SFImage; anArray: handle[TColStd_HArray1OfInteger]) {.
    importcpp: "SetArray", header: "Vrml_SFImage.hxx".}
proc Array*(this: Vrml_SFImage): handle[TColStd_HArray1OfInteger] {.noSideEffect,
    importcpp: "Array", header: "Vrml_SFImage.hxx".}
proc ArrayFlag*(this: Vrml_SFImage): Standard_Boolean {.noSideEffect,
    importcpp: "ArrayFlag", header: "Vrml_SFImage.hxx".}
type
  Vrml_SFImagebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Vrml_SFImage::get_type_name(@)",
                              header: "Vrml_SFImage.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Vrml_SFImage::get_type_descriptor(@)", header: "Vrml_SFImage.hxx".}
proc DynamicType*(this: Vrml_SFImage): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Vrml_SFImage.hxx".}