##  Created on: 1997-07-18
##  Created by: Philippe MANGIN
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  GeomFillPolynomialConvertor* {.importcpp: "GeomFill_PolynomialConvertor",
                                header: "GeomFill_PolynomialConvertor.hxx", bycopy.} = object


proc `new`*(this: var GeomFillPolynomialConvertor; theSize: csize_t): pointer {.
    importcpp: "GeomFill_PolynomialConvertor::operator new",
    header: "GeomFill_PolynomialConvertor.hxx".}
proc `delete`*(this: var GeomFillPolynomialConvertor; theAddress: pointer) {.
    importcpp: "GeomFill_PolynomialConvertor::operator delete",
    header: "GeomFill_PolynomialConvertor.hxx".}
proc `new[]`*(this: var GeomFillPolynomialConvertor; theSize: csize_t): pointer {.
    importcpp: "GeomFill_PolynomialConvertor::operator new[]",
    header: "GeomFill_PolynomialConvertor.hxx".}
proc `delete[]`*(this: var GeomFillPolynomialConvertor; theAddress: pointer) {.
    importcpp: "GeomFill_PolynomialConvertor::operator delete[]",
    header: "GeomFill_PolynomialConvertor.hxx".}
proc `new`*(this: var GeomFillPolynomialConvertor; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomFill_PolynomialConvertor::operator new",
    header: "GeomFill_PolynomialConvertor.hxx".}
proc `delete`*(this: var GeomFillPolynomialConvertor; a2: pointer; a3: pointer) {.
    importcpp: "GeomFill_PolynomialConvertor::operator delete",
    header: "GeomFill_PolynomialConvertor.hxx".}
proc constructGeomFillPolynomialConvertor*(): GeomFillPolynomialConvertor {.
    constructor, importcpp: "GeomFill_PolynomialConvertor(@)",
    header: "GeomFill_PolynomialConvertor.hxx".}
proc initialized*(this: GeomFillPolynomialConvertor): StandardBoolean {.
    noSideEffect, importcpp: "Initialized",
    header: "GeomFill_PolynomialConvertor.hxx".}
proc init*(this: var GeomFillPolynomialConvertor) {.importcpp: "Init",
    header: "GeomFill_PolynomialConvertor.hxx".}
proc section*(this: GeomFillPolynomialConvertor; firstPnt: Pnt; center: Pnt; dir: Vec;
             angle: StandardReal; poles: var TColgpArray1OfPnt) {.noSideEffect,
    importcpp: "Section", header: "GeomFill_PolynomialConvertor.hxx".}
proc section*(this: GeomFillPolynomialConvertor; firstPnt: Pnt; dFirstPnt: Vec;
             center: Pnt; dCenter: Vec; dir: Vec; dDir: Vec; angle: StandardReal;
             dAngle: StandardReal; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec) {.noSideEffect, importcpp: "Section",
    header: "GeomFill_PolynomialConvertor.hxx".}
proc section*(this: GeomFillPolynomialConvertor; firstPnt: Pnt; dFirstPnt: Vec;
             d2FirstPnt: Vec; center: Pnt; dCenter: Vec; d2Center: Vec; dir: Vec;
             dDir: Vec; d2Dir: Vec; angle: StandardReal; dAngle: StandardReal;
             d2Angle: StandardReal; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec; d2Poles: var TColgpArray1OfVec) {.
    noSideEffect, importcpp: "Section", header: "GeomFill_PolynomialConvertor.hxx".}