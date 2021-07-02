##  Created by: Kirill GAVRILOV
##  Copyright (c) 2019 OPEN CASCADE SAS
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

discard "forward decl of SwsContext"
type
  MediaScaler* {.importcpp: "Media_Scaler", header: "Media_Scaler.hxx", bycopy.} = object of StandardTransient ##
                                                                                                     ## !
                                                                                                     ## Empty
                                                                                                     ## constructor.
    ## !< conversion context
    ## !< dimensions of input frame
    ## !< pixel format (AVPixelFormat) of input frame
    ## !< dimensions of destination frame
    ## !< pixel format (AVPixelFormat) of destination frame

  MediaScalerbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Media_Scaler::get_type_name(@)",
                            header: "Media_Scaler.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Media_Scaler::get_type_descriptor(@)", header: "Media_Scaler.hxx".}
proc dynamicType*(this: MediaScaler): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Media_Scaler.hxx".}
proc constructMediaScaler*(): MediaScaler {.constructor,
    importcpp: "Media_Scaler(@)", header: "Media_Scaler.hxx".}
proc destroyMediaScaler*(this: var MediaScaler) {.importcpp: "#.~Media_Scaler()",
    header: "Media_Scaler.hxx".}
proc release*(this: var MediaScaler) {.importcpp: "Release",
                                   header: "Media_Scaler.hxx".}
proc init*(this: var MediaScaler; theSrcDims: Graphic3dVec2i; theSrcFormat: cint;
          theResDims: Graphic3dVec2i; theResFormat: cint): bool {.importcpp: "Init",
    header: "Media_Scaler.hxx".}
proc convert*(this: var MediaScaler; theSrc: Handle[MediaFrame];
             theRes: Handle[MediaFrame]): bool {.importcpp: "Convert",
    header: "Media_Scaler.hxx".}
proc isValid*(this: MediaScaler): bool {.noSideEffect, importcpp: "IsValid",
                                     header: "Media_Scaler.hxx".}

