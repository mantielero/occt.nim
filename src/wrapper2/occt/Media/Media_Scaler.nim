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

import
  Media_Frame, ../Standard/Standard_Transient, ../Standard/Standard_Type,
  ../Graphic3d/Graphic3d_Vec2

discard "forward decl of SwsContext"
type
  Media_Scaler* {.importcpp: "Media_Scaler", header: "Media_Scaler.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                       ## !
                                                                                                       ## Empty
                                                                                                       ## constructor.
    ## !< conversion context
    ## !< dimensions of input frame
    ## !< pixel format (AVPixelFormat) of input frame
    ## !< dimensions of destination frame
    ## !< pixel format (AVPixelFormat) of destination frame

  Media_Scalerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Media_Scaler::get_type_name(@)",
                              header: "Media_Scaler.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Media_Scaler::get_type_descriptor(@)", header: "Media_Scaler.hxx".}
proc DynamicType*(this: Media_Scaler): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Media_Scaler.hxx".}
proc constructMedia_Scaler*(): Media_Scaler {.constructor,
    importcpp: "Media_Scaler(@)", header: "Media_Scaler.hxx".}
proc destroyMedia_Scaler*(this: var Media_Scaler) {.importcpp: "#.~Media_Scaler()",
    header: "Media_Scaler.hxx".}
proc Release*(this: var Media_Scaler) {.importcpp: "Release",
                                    header: "Media_Scaler.hxx".}
proc Init*(this: var Media_Scaler; theSrcDims: Graphic3d_Vec2i; theSrcFormat: cint;
          theResDims: Graphic3d_Vec2i; theResFormat: cint): bool {.importcpp: "Init",
    header: "Media_Scaler.hxx".}
proc Convert*(this: var Media_Scaler; theSrc: handle[Media_Frame];
             theRes: handle[Media_Frame]): bool {.importcpp: "Convert",
    header: "Media_Scaler.hxx".}
proc IsValid*(this: Media_Scaler): bool {.noSideEffect, importcpp: "IsValid",
                                      header: "Media_Scaler.hxx".}