##  Created on: 1997-08-06
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
  GeomFillQuasiAngularConvertor* {.importcpp: "GeomFill_QuasiAngularConvertor",
                                  header: "GeomFill_QuasiAngularConvertor.hxx",
                                  bycopy.} = object


proc newGeomFillQuasiAngularConvertor*(): GeomFillQuasiAngularConvertor {.cdecl,
    constructor, importcpp: "GeomFill_QuasiAngularConvertor(@)", dynlib: tkgeomalgo.}
proc initialized*(this: GeomFillQuasiAngularConvertor): bool {.noSideEffect, cdecl,
    importcpp: "Initialized", dynlib: tkgeomalgo.}
proc init*(this: var GeomFillQuasiAngularConvertor) {.cdecl, importcpp: "Init",
    dynlib: tkgeomalgo.}
proc section*(this: var GeomFillQuasiAngularConvertor; firstPnt: Pnt; center: Pnt;
             dir: Vec; angle: cfloat; poles: var TColgpArray1OfPnt;
             weights: var TColStdArray1OfReal) {.cdecl, importcpp: "Section",
    dynlib: tkgeomalgo.}
proc section*(this: var GeomFillQuasiAngularConvertor; firstPnt: Pnt; dFirstPnt: Vec;
             center: Pnt; dCenter: Vec; dir: Vec; dDir: Vec; angle: cfloat;
             dAngle: cfloat; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec; weights: var TColStdArray1OfReal;
             dWeights: var TColStdArray1OfReal) {.cdecl, importcpp: "Section",
    dynlib: tkgeomalgo.}
proc section*(this: var GeomFillQuasiAngularConvertor; firstPnt: Pnt; dFirstPnt: Vec;
             d2FirstPnt: Vec; center: Pnt; dCenter: Vec; d2Center: Vec; dir: Vec;
             dDir: Vec; d2Dir: Vec; angle: cfloat; dAngle: cfloat; d2Angle: cfloat;
             poles: var TColgpArray1OfPnt; dPoles: var TColgpArray1OfVec;
             d2Poles: var TColgpArray1OfVec; weights: var TColStdArray1OfReal;
             dWeights: var TColStdArray1OfReal; d2Weights: var TColStdArray1OfReal) {.
    cdecl, importcpp: "Section", dynlib: tkgeomalgo.}