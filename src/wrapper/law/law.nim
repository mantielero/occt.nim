import law_types
import ../standard/standard_types
import ../adaptor3d/adaptor3d_types
import ../tcolstd/tcolstd_types





##  Created on: 1994-04-07
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1994-1999 Matra Datavision
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



proc mixBnd*(lin: Handle[LawLinear]): Handle[LawBSpFunc] {.cdecl,
    importcpp: "Law::MixBnd(@)", header: "Law.hxx".}
proc mixBnd*(degree: cint; knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
            lin: Handle[LawLinear]): Handle[TColStdHArray1OfReal] {.cdecl,
    importcpp: "Law::MixBnd(@)", header: "Law.hxx".}
proc mixTgt*(degree: cint; knots: TColStdArray1OfReal; mults: TColStdArray1OfInteger;
            nulOnTheRight: bool; index: cint): Handle[TColStdHArray1OfReal] {.cdecl,
    importcpp: "Law::MixTgt(@)", header: "Law.hxx".}
proc reparametrize*(curve: Adaptor3dCurve; first: cfloat; last: cfloat; hasDF: bool;
                   hasDL: bool; dFirst: cfloat; dLast: cfloat; rev: bool; nbPoints: cint): Handle[
    LawBSpline] {.cdecl, importcpp: "Law::Reparametrize(@)", header: "Law.hxx".}
proc scale*(first: cfloat; last: cfloat; hasF: bool; hasL: bool; vFirst: cfloat;
           vLast: cfloat): Handle[LawBSpline] {.cdecl, importcpp: "Law::Scale(@)",
    header: "Law.hxx".}
proc scaleCub*(first: cfloat; last: cfloat; hasF: bool; hasL: bool; vFirst: cfloat;
              vLast: cfloat): Handle[LawBSpline] {.cdecl,
    importcpp: "Law::ScaleCub(@)", header: "Law.hxx".}


