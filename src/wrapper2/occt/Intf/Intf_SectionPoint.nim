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

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Pnt2d"
type
  IntfSectionPoint* {.importcpp: "Intf_SectionPoint",
                     header: "Intf_SectionPoint.hxx", bycopy.} = object ## ! Returns the location of the SectionPoint.


proc pnt*(this: IntfSectionPoint): GpPnt {.noSideEffect, importcpp: "Pnt",
                                       header: "Intf_SectionPoint.hxx".}
proc paramOnFirst*(this: IntfSectionPoint): StandardReal {.noSideEffect,
    importcpp: "ParamOnFirst", header: "Intf_SectionPoint.hxx".}
proc paramOnSecond*(this: IntfSectionPoint): StandardReal {.noSideEffect,
    importcpp: "ParamOnSecond", header: "Intf_SectionPoint.hxx".}
proc typeOnFirst*(this: IntfSectionPoint): IntfPIType {.noSideEffect,
    importcpp: "TypeOnFirst", header: "Intf_SectionPoint.hxx".}
proc typeOnSecond*(this: IntfSectionPoint): IntfPIType {.noSideEffect,
    importcpp: "TypeOnSecond", header: "Intf_SectionPoint.hxx".}
proc infoFirst*(this: IntfSectionPoint; dim: var IntfPIType;
               add1: var StandardInteger; add2: var StandardInteger;
               param: var StandardReal) {.noSideEffect, importcpp: "InfoFirst",
                                       header: "Intf_SectionPoint.hxx".}
proc infoFirst*(this: IntfSectionPoint; dim: var IntfPIType;
               `addr`: var StandardInteger; param: var StandardReal) {.noSideEffect,
    importcpp: "InfoFirst", header: "Intf_SectionPoint.hxx".}
proc infoSecond*(this: IntfSectionPoint; dim: var IntfPIType;
                add1: var StandardInteger; add2: var StandardInteger;
                param: var StandardReal) {.noSideEffect, importcpp: "InfoSecond",
                                        header: "Intf_SectionPoint.hxx".}
proc infoSecond*(this: IntfSectionPoint; dim: var IntfPIType;
                `addr`: var StandardInteger; param: var StandardReal) {.noSideEffect,
    importcpp: "InfoSecond", header: "Intf_SectionPoint.hxx".}
proc incidence*(this: IntfSectionPoint): StandardReal {.noSideEffect,
    importcpp: "Incidence", header: "Intf_SectionPoint.hxx".}
proc isEqual*(this: IntfSectionPoint; other: IntfSectionPoint): StandardBoolean {.
    noSideEffect, importcpp: "IsEqual", header: "Intf_SectionPoint.hxx".}
proc `==`*(this: IntfSectionPoint; other: IntfSectionPoint): StandardBoolean {.
    noSideEffect, importcpp: "(# == #)", header: "Intf_SectionPoint.hxx".}
proc isOnSameEdge*(this: IntfSectionPoint; other: IntfSectionPoint): StandardBoolean {.
    noSideEffect, importcpp: "IsOnSameEdge", header: "Intf_SectionPoint.hxx".}
proc constructIntfSectionPoint*(): IntfSectionPoint {.constructor,
    importcpp: "Intf_SectionPoint(@)", header: "Intf_SectionPoint.hxx".}
proc constructIntfSectionPoint*(where: GpPnt; dimeO: IntfPIType;
                               addrO1: StandardInteger; addrO2: StandardInteger;
                               paramO: StandardReal; dimeT: IntfPIType;
                               addrT1: StandardInteger; addrT2: StandardInteger;
                               paramT: StandardReal; incid: StandardReal): IntfSectionPoint {.
    constructor, importcpp: "Intf_SectionPoint(@)", header: "Intf_SectionPoint.hxx".}
proc constructIntfSectionPoint*(where: GpPnt2d; dimeO: IntfPIType;
                               addrO1: StandardInteger; paramO: StandardReal;
                               dimeT: IntfPIType; addrT1: StandardInteger;
                               paramT: StandardReal; incid: StandardReal): IntfSectionPoint {.
    constructor, importcpp: "Intf_SectionPoint(@)", header: "Intf_SectionPoint.hxx".}
proc merge*(this: var IntfSectionPoint; other: var IntfSectionPoint) {.
    importcpp: "Merge", header: "Intf_SectionPoint.hxx".}
proc dump*(this: IntfSectionPoint; indent: StandardInteger) {.noSideEffect,
    importcpp: "Dump", header: "Intf_SectionPoint.hxx".}

