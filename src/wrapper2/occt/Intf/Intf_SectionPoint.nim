##  Created on: 1991-06-18
##  Created by: Didier PIFFAULT
##  Copyright (c) 1991-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle, ../gp/gp_Pnt, Intf_PIType,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
type
  Intf_SectionPoint* {.importcpp: "Intf_SectionPoint",
                      header: "Intf_SectionPoint.hxx", bycopy.} = object ## ! Returns the location of the
                                                                    ## SectionPoint.


proc Pnt*(this: Intf_SectionPoint): gp_Pnt {.noSideEffect, importcpp: "Pnt",
    header: "Intf_SectionPoint.hxx".}
proc ParamOnFirst*(this: Intf_SectionPoint): Standard_Real {.noSideEffect,
    importcpp: "ParamOnFirst", header: "Intf_SectionPoint.hxx".}
proc ParamOnSecond*(this: Intf_SectionPoint): Standard_Real {.noSideEffect,
    importcpp: "ParamOnSecond", header: "Intf_SectionPoint.hxx".}
proc TypeOnFirst*(this: Intf_SectionPoint): Intf_PIType {.noSideEffect,
    importcpp: "TypeOnFirst", header: "Intf_SectionPoint.hxx".}
proc TypeOnSecond*(this: Intf_SectionPoint): Intf_PIType {.noSideEffect,
    importcpp: "TypeOnSecond", header: "Intf_SectionPoint.hxx".}
proc InfoFirst*(this: Intf_SectionPoint; Dim: var Intf_PIType;
               Add1: var Standard_Integer; Add2: var Standard_Integer;
               Param: var Standard_Real) {.noSideEffect, importcpp: "InfoFirst",
                                        header: "Intf_SectionPoint.hxx".}
proc InfoFirst*(this: Intf_SectionPoint; Dim: var Intf_PIType;
               Addr: var Standard_Integer; Param: var Standard_Real) {.noSideEffect,
    importcpp: "InfoFirst", header: "Intf_SectionPoint.hxx".}
proc InfoSecond*(this: Intf_SectionPoint; Dim: var Intf_PIType;
                Add1: var Standard_Integer; Add2: var Standard_Integer;
                Param: var Standard_Real) {.noSideEffect, importcpp: "InfoSecond",
    header: "Intf_SectionPoint.hxx".}
proc InfoSecond*(this: Intf_SectionPoint; Dim: var Intf_PIType;
                Addr: var Standard_Integer; Param: var Standard_Real) {.noSideEffect,
    importcpp: "InfoSecond", header: "Intf_SectionPoint.hxx".}
proc Incidence*(this: Intf_SectionPoint): Standard_Real {.noSideEffect,
    importcpp: "Incidence", header: "Intf_SectionPoint.hxx".}
proc IsEqual*(this: Intf_SectionPoint; Other: Intf_SectionPoint): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "Intf_SectionPoint.hxx".}
proc `==`*(this: Intf_SectionPoint; Other: Intf_SectionPoint): Standard_Boolean {.
    noSideEffect, importcpp: "(# == #)", header: "Intf_SectionPoint.hxx".}
proc IsOnSameEdge*(this: Intf_SectionPoint; Other: Intf_SectionPoint): Standard_Boolean {.
    noSideEffect, importcpp: "IsOnSameEdge", header: "Intf_SectionPoint.hxx".}
proc constructIntf_SectionPoint*(): Intf_SectionPoint {.constructor,
    importcpp: "Intf_SectionPoint(@)", header: "Intf_SectionPoint.hxx".}
proc constructIntf_SectionPoint*(Where: gp_Pnt; DimeO: Intf_PIType;
                                AddrO1: Standard_Integer;
                                AddrO2: Standard_Integer; ParamO: Standard_Real;
                                DimeT: Intf_PIType; AddrT1: Standard_Integer;
                                AddrT2: Standard_Integer; ParamT: Standard_Real;
                                Incid: Standard_Real): Intf_SectionPoint {.
    constructor, importcpp: "Intf_SectionPoint(@)", header: "Intf_SectionPoint.hxx".}
proc constructIntf_SectionPoint*(Where: gp_Pnt2d; DimeO: Intf_PIType;
                                AddrO1: Standard_Integer; ParamO: Standard_Real;
                                DimeT: Intf_PIType; AddrT1: Standard_Integer;
                                ParamT: Standard_Real; Incid: Standard_Real): Intf_SectionPoint {.
    constructor, importcpp: "Intf_SectionPoint(@)", header: "Intf_SectionPoint.hxx".}
proc Merge*(this: var Intf_SectionPoint; Other: var Intf_SectionPoint) {.
    importcpp: "Merge", header: "Intf_SectionPoint.hxx".}
proc Dump*(this: Intf_SectionPoint; Indent: Standard_Integer) {.noSideEffect,
    importcpp: "Dump", header: "Intf_SectionPoint.hxx".}