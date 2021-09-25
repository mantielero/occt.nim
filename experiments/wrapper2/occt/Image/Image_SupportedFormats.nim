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

## ! Structure holding information about supported texture formats.

type
  ImageSupportedFormats* {.importcpp: "Image_SupportedFormats",
                          header: "Image_SupportedFormats.hxx", bycopy.} = object of StandardTransient ##
                                                                                                ## !
                                                                                                ## Empty
                                                                                                ## constructor.
    ## !< list of supported formats
    ## !< flag indicating that some compressed image formats are supported

  ImageSupportedFormatsbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Image_SupportedFormats::get_type_name(@)",
                            header: "Image_SupportedFormats.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Image_SupportedFormats::get_type_descriptor(@)",
    header: "Image_SupportedFormats.hxx".}
proc dynamicType*(this: ImageSupportedFormats): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Image_SupportedFormats.hxx".}
proc constructImageSupportedFormats*(): ImageSupportedFormats {.constructor,
    importcpp: "Image_SupportedFormats(@)", header: "Image_SupportedFormats.hxx".}
proc isSupported*(this: ImageSupportedFormats; theFormat: ImageFormat): bool {.
    noSideEffect, importcpp: "IsSupported", header: "Image_SupportedFormats.hxx".}
proc add*(this: var ImageSupportedFormats; theFormat: ImageFormat) {.importcpp: "Add",
    header: "Image_SupportedFormats.hxx".}
proc hasCompressed*(this: ImageSupportedFormats): bool {.noSideEffect,
    importcpp: "HasCompressed", header: "Image_SupportedFormats.hxx".}
proc isSupported*(this: ImageSupportedFormats; theFormat: ImageCompressedFormat): bool {.
    noSideEffect, importcpp: "IsSupported", header: "Image_SupportedFormats.hxx".}
proc add*(this: var ImageSupportedFormats; theFormat: ImageCompressedFormat) {.
    importcpp: "Add", header: "Image_SupportedFormats.hxx".}
proc clear*(this: var ImageSupportedFormats) {.importcpp: "Clear",
    header: "Image_SupportedFormats.hxx".}
