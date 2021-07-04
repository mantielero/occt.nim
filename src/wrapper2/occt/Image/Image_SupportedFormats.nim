##  Copyright (c) 2020 OPEN CASCADE SAS
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
  Image_CompressedFormat, ../NCollection/NCollection_Array1,
  ../Standard/Standard_Type

## ! Structure holding information about supported texture formats.

type
  Image_SupportedFormats* {.importcpp: "Image_SupportedFormats",
                           header: "Image_SupportedFormats.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                  ## !
                                                                                                  ## Empty
                                                                                                  ## constructor.
    ## !< list of supported formats
    ## !< flag indicating that some compressed image formats are supported

  Image_SupportedFormatsbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Image_SupportedFormats::get_type_name(@)",
                              header: "Image_SupportedFormats.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Image_SupportedFormats::get_type_descriptor(@)",
    header: "Image_SupportedFormats.hxx".}
proc DynamicType*(this: Image_SupportedFormats): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Image_SupportedFormats.hxx".}
proc constructImage_SupportedFormats*(): Image_SupportedFormats {.constructor,
    importcpp: "Image_SupportedFormats(@)", header: "Image_SupportedFormats.hxx".}
proc IsSupported*(this: Image_SupportedFormats; theFormat: Image_Format): bool {.
    noSideEffect, importcpp: "IsSupported", header: "Image_SupportedFormats.hxx".}
proc Add*(this: var Image_SupportedFormats; theFormat: Image_Format) {.
    importcpp: "Add", header: "Image_SupportedFormats.hxx".}
proc HasCompressed*(this: Image_SupportedFormats): bool {.noSideEffect,
    importcpp: "HasCompressed", header: "Image_SupportedFormats.hxx".}
proc IsSupported*(this: Image_SupportedFormats; theFormat: Image_CompressedFormat): bool {.
    noSideEffect, importcpp: "IsSupported", header: "Image_SupportedFormats.hxx".}
proc Add*(this: var Image_SupportedFormats; theFormat: Image_CompressedFormat) {.
    importcpp: "Add", header: "Image_SupportedFormats.hxx".}
proc Clear*(this: var Image_SupportedFormats) {.importcpp: "Clear",
    header: "Image_SupportedFormats.hxx".}