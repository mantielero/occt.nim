##  Created on: 2016-11-14
##  Created by: Varvara POSKONINA
##  Copyright (c) 2016 OPEN CASCADE SAS
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

## ! A class that provides an API to use standard OCCT hatch styles
## ! defined in Aspect_HatchStyle enum or to create custom styles
## ! from a user-defined bitmap

type
  Graphic3dHatchStyle* {.importcpp: "Graphic3d_HatchStyle",
                        header: "Graphic3d_HatchStyle.hxx", bycopy.} = object of StandardTransient ##  Type definition
                                                                                            ## ! Creates a new custom hatch style with the given pattern and unique style id
                                                                                            ## ! @warning Raises a program error if given pattern image is not a valid 32*32 bitmap
    ## !< Image bitmap with custom hatch pattern
    ## !< Index of used style


proc newGraphic3dHatchStyle*(thePattern: Handle[ImagePixMap]): Graphic3dHatchStyle {.
    cdecl, constructor, importcpp: "Graphic3d_HatchStyle(@)", header: "Graphic3d_HatchStyle.hxx".}
proc newGraphic3dHatchStyle*(theType: AspectHatchStyle): Graphic3dHatchStyle {.
    cdecl, constructor, importcpp: "Graphic3d_HatchStyle(@)", header: "Graphic3d_HatchStyle.hxx".}
proc pattern*(this: Graphic3dHatchStyle): ptr StandardByte {.noSideEffect, cdecl,
    importcpp: "Pattern", header: "Graphic3d_HatchStyle.hxx".}
proc hatchType*(this: Graphic3dHatchStyle): cint {.noSideEffect, cdecl,
    importcpp: "HatchType", header: "Graphic3d_HatchStyle.hxx".}
proc dumpJson*(this: Graphic3dHatchStyle; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Graphic3d_HatchStyle.hxx".}
type
  HandleGraphic3dHatchStyle* = Handle[Graphic3dHatchStyle]
