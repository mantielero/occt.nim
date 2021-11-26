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

discard "forward decl of Vrml_SFImage"
discard "forward decl of Vrml_SFImage"
type
  HandleC1C1* = Handle[VrmlSFImage]

## ! defines SFImage type of VRML field types.

type
  VrmlSFImage* {.importcpp: "Vrml_SFImage", header: "Vrml_SFImage.hxx", bycopy.} = object of StandardTransient


proc constructVrmlSFImage*(): VrmlSFImage {.constructor,
    importcpp: "Vrml_SFImage(@)", header: "Vrml_SFImage.hxx".}
proc constructVrmlSFImage*(aWidth: cint; aHeight: cint; aNumber: VrmlSFImageNumber;
                          anArray: Handle[TColStdHArray1OfInteger]): VrmlSFImage {.
    constructor, importcpp: "Vrml_SFImage(@)", header: "Vrml_SFImage.hxx".}
proc setWidth*(this: var VrmlSFImage; aWidth: cint) {.importcpp: "SetWidth",
    header: "Vrml_SFImage.hxx".}
proc width*(this: VrmlSFImage): cint {.noSideEffect, importcpp: "Width",
                                   header: "Vrml_SFImage.hxx".}
proc setHeight*(this: var VrmlSFImage; aHeight: cint) {.importcpp: "SetHeight",
    header: "Vrml_SFImage.hxx".}
proc height*(this: VrmlSFImage): cint {.noSideEffect, importcpp: "Height",
                                    header: "Vrml_SFImage.hxx".}
proc setNumber*(this: var VrmlSFImage; aNumber: VrmlSFImageNumber) {.
    importcpp: "SetNumber", header: "Vrml_SFImage.hxx".}
proc number*(this: VrmlSFImage): VrmlSFImageNumber {.noSideEffect,
    importcpp: "Number", header: "Vrml_SFImage.hxx".}
proc setArray*(this: var VrmlSFImage; anArray: Handle[TColStdHArray1OfInteger]) {.
    importcpp: "SetArray", header: "Vrml_SFImage.hxx".}
proc array*(this: VrmlSFImage): Handle[TColStdHArray1OfInteger] {.noSideEffect,
    importcpp: "Array", header: "Vrml_SFImage.hxx".}
proc arrayFlag*(this: VrmlSFImage): bool {.noSideEffect, importcpp: "ArrayFlag",
                                       header: "Vrml_SFImage.hxx".}
type
  VrmlSFImagebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Vrml_SFImage::get_type_name(@)",
                            header: "Vrml_SFImage.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Vrml_SFImage::get_type_descriptor(@)", header: "Vrml_SFImage.hxx".}
proc dynamicType*(this: VrmlSFImage): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Vrml_SFImage.hxx".}

























