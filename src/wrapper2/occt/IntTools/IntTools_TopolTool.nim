##  Created on: 2002-04-18
##  Created by: Michael KLOKOV
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

discard "forward decl of Standard_DomainError"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Pnt"
discard "forward decl of IntTools_TopolTool"
discard "forward decl of IntTools_TopolTool"
type
  HandleIntToolsTopolTool* = Handle[IntToolsTopolTool]

## ! Class redefine methods of TopolTool from Adaptor3d
## ! concerning sample points

type
  IntToolsTopolTool* {.importcpp: "IntTools_TopolTool",
                      header: "IntTools_TopolTool.hxx", bycopy.} = object of Adaptor3dTopolTool ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## constructor


proc constructIntToolsTopolTool*(): IntToolsTopolTool {.constructor,
    importcpp: "IntTools_TopolTool(@)", header: "IntTools_TopolTool.hxx".}
proc constructIntToolsTopolTool*(theSurface: Handle[Adaptor3dHSurface]): IntToolsTopolTool {.
    constructor, importcpp: "IntTools_TopolTool(@)",
    header: "IntTools_TopolTool.hxx".}
proc initialize*(this: var IntToolsTopolTool) {.importcpp: "Initialize",
    header: "IntTools_TopolTool.hxx".}
proc initialize*(this: var IntToolsTopolTool; theSurface: Handle[Adaptor3dHSurface]) {.
    importcpp: "Initialize", header: "IntTools_TopolTool.hxx".}
proc computeSamplePoints*(this: var IntToolsTopolTool) {.
    importcpp: "ComputeSamplePoints", header: "IntTools_TopolTool.hxx".}
proc nbSamplesU*(this: var IntToolsTopolTool): StandardInteger {.
    importcpp: "NbSamplesU", header: "IntTools_TopolTool.hxx".}
proc nbSamplesV*(this: var IntToolsTopolTool): StandardInteger {.
    importcpp: "NbSamplesV", header: "IntTools_TopolTool.hxx".}
proc nbSamples*(this: var IntToolsTopolTool): StandardInteger {.
    importcpp: "NbSamples", header: "IntTools_TopolTool.hxx".}
proc samplePoint*(this: var IntToolsTopolTool; index: StandardInteger;
                 p2d: var GpPnt2d; p3d: var GpPnt) {.importcpp: "SamplePoint",
    header: "IntTools_TopolTool.hxx".}
proc samplePnts*(this: var IntToolsTopolTool; theDefl: StandardReal;
                theNUmin: StandardInteger; theNVmin: StandardInteger) {.
    importcpp: "SamplePnts", header: "IntTools_TopolTool.hxx".}
type
  IntToolsTopolToolbaseType* = Adaptor3dTopolTool

proc getTypeName*(): cstring {.importcpp: "IntTools_TopolTool::get_type_name(@)",
                            header: "IntTools_TopolTool.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IntTools_TopolTool::get_type_descriptor(@)",
    header: "IntTools_TopolTool.hxx".}
proc dynamicType*(this: IntToolsTopolTool): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IntTools_TopolTool.hxx".}

