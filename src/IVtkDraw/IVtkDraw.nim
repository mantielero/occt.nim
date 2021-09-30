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

discard "forward decl of Draw_Interpretor"
discard "forward decl of WNT_WClass"
type
  IVtkDraw* {.importcpp: "IVtkDraw", header: "IVtkDraw.hxx", bycopy.} = object ## ! VTK window creation
                                                                       ## parameters.

  IVtkDrawIVtkWinParams* {.importcpp: "IVtkDraw::IVtkWinParams",
                          header: "IVtkDraw.hxx", bycopy.} = object
    topLeft* {.importc: "TopLeft".}: Graphic3dVec2i
    size* {.importc: "Size".}: Graphic3dVec2i
    nbMsaaSample* {.importc: "NbMsaaSample".}: cint
    useSRGBColorSpace* {.importc: "UseSRGBColorSpace".}: bool


proc constructIVtkDrawIVtkWinParams*(): IVtkDrawIVtkWinParams {.constructor,
    importcpp: "IVtkDraw::IVtkWinParams(@)", header: "IVtkDraw.hxx".}
proc viewerInit*(theParams: IVtkDrawIVtkWinParams) {.
    importcpp: "IVtkDraw::ViewerInit(@)", header: "IVtkDraw.hxx".}
proc viewerInit*(thePxLeft: cint; thePxTop: cint; thePxWidth: cint; thePxHeight: cint) {.
    importcpp: "IVtkDraw::ViewerInit(@)", header: "IVtkDraw.hxx".}
proc factory*(theDI: var DrawInterpretor) {.importcpp: "IVtkDraw::Factory(@)",
                                        header: "IVtkDraw.hxx".}
proc commands*(theCommands: var DrawInterpretor) {.
    importcpp: "IVtkDraw::Commands(@)", header: "IVtkDraw.hxx".}

























