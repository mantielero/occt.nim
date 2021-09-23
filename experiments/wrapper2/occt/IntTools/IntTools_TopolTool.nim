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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../Adaptor3d/Adaptor3d_TopolTool

discard "forward decl of Standard_DomainError"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Pnt"
discard "forward decl of IntTools_TopolTool"
discard "forward decl of IntTools_TopolTool"
type
  Handle_IntTools_TopolTool* = handle[IntTools_TopolTool]

## ! Class redefine methods of TopolTool from Adaptor3d
## ! concerning sample points

type
  IntTools_TopolTool* {.importcpp: "IntTools_TopolTool",
                       header: "IntTools_TopolTool.hxx", bycopy.} = object of Adaptor3d_TopolTool ##
                                                                                           ## !
                                                                                           ## Empty
                                                                                           ## constructor


proc constructIntTools_TopolTool*(): IntTools_TopolTool {.constructor,
    importcpp: "IntTools_TopolTool(@)", header: "IntTools_TopolTool.hxx".}
proc constructIntTools_TopolTool*(theSurface: handle[Adaptor3d_HSurface]): IntTools_TopolTool {.
    constructor, importcpp: "IntTools_TopolTool(@)",
    header: "IntTools_TopolTool.hxx".}
proc Initialize*(this: var IntTools_TopolTool) {.importcpp: "Initialize",
    header: "IntTools_TopolTool.hxx".}
proc Initialize*(this: var IntTools_TopolTool;
                theSurface: handle[Adaptor3d_HSurface]) {.importcpp: "Initialize",
    header: "IntTools_TopolTool.hxx".}
proc ComputeSamplePoints*(this: var IntTools_TopolTool) {.
    importcpp: "ComputeSamplePoints", header: "IntTools_TopolTool.hxx".}
proc NbSamplesU*(this: var IntTools_TopolTool): Standard_Integer {.
    importcpp: "NbSamplesU", header: "IntTools_TopolTool.hxx".}
proc NbSamplesV*(this: var IntTools_TopolTool): Standard_Integer {.
    importcpp: "NbSamplesV", header: "IntTools_TopolTool.hxx".}
proc NbSamples*(this: var IntTools_TopolTool): Standard_Integer {.
    importcpp: "NbSamples", header: "IntTools_TopolTool.hxx".}
proc SamplePoint*(this: var IntTools_TopolTool; Index: Standard_Integer;
                 P2d: var gp_Pnt2d; P3d: var gp_Pnt) {.importcpp: "SamplePoint",
    header: "IntTools_TopolTool.hxx".}
proc SamplePnts*(this: var IntTools_TopolTool; theDefl: Standard_Real;
                theNUmin: Standard_Integer; theNVmin: Standard_Integer) {.
    importcpp: "SamplePnts", header: "IntTools_TopolTool.hxx".}
type
  IntTools_TopolToolbase_type* = Adaptor3d_TopolTool

proc get_type_name*(): cstring {.importcpp: "IntTools_TopolTool::get_type_name(@)",
                              header: "IntTools_TopolTool.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IntTools_TopolTool::get_type_descriptor(@)",
    header: "IntTools_TopolTool.hxx".}
proc DynamicType*(this: IntTools_TopolTool): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IntTools_TopolTool.hxx".}