##  Created on: 2012-02-03
##
##  Copyright (c) 2012-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Transient, ../Standard/Standard, ../Standard/Standard_Macro

discard "forward decl of Draw_Interpretor"
discard "forward decl of WNT_WClass"
type
  IVtkDraw* {.importcpp: "IVtkDraw", header: "IVtkDraw.hxx", bycopy.} = object ## ! VTK window creation
                                                                       ## parameters.

  IVtkDrawIVtkWinParams* {.importcpp: "IVtkDraw::IVtkWinParams",
                          header: "IVtkDraw.hxx", bycopy.} = object
    TopLeft* {.importc: "TopLeft".}: Graphic3d_Vec2i
    Size* {.importc: "Size".}: Graphic3d_Vec2i
    NbMsaaSample* {.importc: "NbMsaaSample".}: Standard_Integer
    UseSRGBColorSpace* {.importc: "UseSRGBColorSpace".}: Standard_Boolean


proc constructIVtkDrawIVtkWinParams*(): IVtkDrawIVtkWinParams {.constructor,
    importcpp: "IVtkDraw::IVtkWinParams(@)", header: "IVtkDraw.hxx".}
proc ViewerInit*(theParams: IVtkDrawIVtkWinParams) {.
    importcpp: "IVtkDraw::ViewerInit(@)", header: "IVtkDraw.hxx".}
proc ViewerInit*(thePxLeft: Standard_Integer; thePxTop: Standard_Integer;
                thePxWidth: Standard_Integer; thePxHeight: Standard_Integer) {.
    importcpp: "IVtkDraw::ViewerInit(@)", header: "IVtkDraw.hxx".}
proc Factory*(theDI: var Draw_Interpretor) {.importcpp: "IVtkDraw::Factory(@)",
    header: "IVtkDraw.hxx".}
proc Commands*(theCommands: var Draw_Interpretor) {.
    importcpp: "IVtkDraw::Commands(@)", header: "IVtkDraw.hxx".}