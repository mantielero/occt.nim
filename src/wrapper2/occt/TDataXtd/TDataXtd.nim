##  Created on: 2008-05-29
##  Created by: Sergey ZARITCHNY
##  Copyright (c) 2008-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TDF/TDF_IDList, ../Standard/Standard_OStream,
  TDataXtd_GeometryEnum, TDataXtd_ConstraintEnum

discard "forward decl of TDataXtd_Position"
discard "forward decl of TDataXtd_Constraint"
discard "forward decl of TDataXtd_Placement"
discard "forward decl of TDataXtd_Geometry"
discard "forward decl of TDataXtd_Point"
discard "forward decl of TDataXtd_Axis"
discard "forward decl of TDataXtd_Plane"
discard "forward decl of TDataXtd_Pattern"
discard "forward decl of TDataXtd_PatternStd"
discard "forward decl of TDataXtd_Shape"
discard "forward decl of TDataXtd_Triangulation"
type
  TDataXtd* {.importcpp: "TDataXtd", header: "TDataXtd.hxx", bycopy.} = object ## ! Appends to
                                                                       ## <anIDList> the list of the
                                                                       ## attributes
                                                                       ## ! IDs of this package. CAUTION:
                                                                       ## <anIDList> is NOT
                                                                       ## ! cleared before use.
                                                                       ## ! Print of TDataExt
                                                                       ## enumeration
                                                                       ## !
                                                                       ## =============================


proc IDList*(anIDList: var TDF_IDList) {.importcpp: "TDataXtd::IDList(@)",
                                     header: "TDataXtd.hxx".}
proc Print*(GEO: TDataXtd_GeometryEnum; S: var Standard_OStream): var Standard_OStream {.
    importcpp: "TDataXtd::Print(@)", header: "TDataXtd.hxx".}
proc Print*(CTR: TDataXtd_ConstraintEnum; S: var Standard_OStream): var Standard_OStream {.
    importcpp: "TDataXtd::Print(@)", header: "TDataXtd.hxx".}