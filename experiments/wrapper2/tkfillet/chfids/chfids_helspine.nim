##  Created on: 1993-11-17
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of ChFiDS_ElSpine"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of ChFiDS_HElSpine"
type
  HandleChFiDS_HElSpine* = Handle[ChFiDS_HElSpine]
  ChFiDS_HElSpine* {.importcpp: "ChFiDS_HElSpine", header: "ChFiDS_HElSpine.hxx",
                    bycopy.} = object of Adaptor3dHCurve ## ! Creates an empty GenHCurve.


proc newChFiDS_HElSpine*(): ChFiDS_HElSpine {.cdecl, constructor,
    importcpp: "ChFiDS_HElSpine(@)", dynlib: tkfillet.}
proc newChFiDS_HElSpine*(c: ChFiDS_ElSpine): ChFiDS_HElSpine {.cdecl, constructor,
    importcpp: "ChFiDS_HElSpine(@)", dynlib: tkfillet.}
proc set*(this: var ChFiDS_HElSpine; c: ChFiDS_ElSpine) {.cdecl, importcpp: "Set",
    dynlib: tkfillet.}
proc curve*(this: ChFiDS_HElSpine): Adaptor3dCurve {.noSideEffect, cdecl,
    importcpp: "Curve", dynlib: tkfillet.}
proc getCurve*(this: var ChFiDS_HElSpine): var Adaptor3dCurve {.cdecl,
    importcpp: "GetCurve", dynlib: tkfillet.}
proc changeCurve*(this: var ChFiDS_HElSpine): var ChFiDS_ElSpine {.cdecl,
    importcpp: "ChangeCurve", dynlib: tkfillet.}
type
  ChFiDS_HElSpinebaseType* = Adaptor3dHCurve

##  #define TheCurve ChFiDS_ElSpine
##  #define TheCurve_hxx <ChFiDS_ElSpine.hxx>
##  #define Adaptor3d_GenHCurve ChFiDS_HElSpine
##  #define Adaptor3d_GenHCurve_hxx <ChFiDS_HElSpine.hxx>
##  #define Handle_Adaptor3d_GenHCurve Handle(ChFiDS_HElSpine)
##
##  #include <Adaptor3d_GenHCurve.lxx>
##
##  #undef TheCurve
##  #undef TheCurve_hxx
##  #undef Adaptor3d_GenHCurve
##  #undef Adaptor3d_GenHCurve_hxx
##  #undef Handle_Adaptor3d_GenHCurve
