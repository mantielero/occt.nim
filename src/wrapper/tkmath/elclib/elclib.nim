import elclib_types
import ../gp/gp_types
##  Created on: 1991-09-10
##  Created by: Michel Chauvat
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

discard "forward decl of gp_PntObj"
discard "forward decl of gp_LinObj"
discard "forward decl of gp_CircObj"
discard "forward decl of gp_ElipsObj"
discard "forward decl of gp_HyprObj"
discard "forward decl of gp_ParabObj"
discard "forward decl of gp_VecObj"
discard "forward decl of gp_Lin2dObj"
discard "forward decl of gp_Circ2dObj"
discard "forward decl of gp_Elips2dObj"
discard "forward decl of gp_Hypr2dObj"
discard "forward decl of gp_Parab2dObj"
discard "forward decl of gp_Pnt2dObj"
discard "forward decl of gp_Vec2dObj"
discard "forward decl of gp_Ax1Obj"
discard "forward decl of gp_Ax2Obj"
discard "forward decl of gp_Ax2dObj"
discard "forward decl of gp_Ax22dObj"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Dir2dObj"

proc inPeriod*(u: cfloat; uFirst: cfloat; uLast: cfloat): cfloat {.cdecl,
    importcpp: "ElCLib::InPeriod(@)", header: "ElCLib.hxx".}
proc adjustPeriodic*(uFirst: cfloat; uLast: cfloat; precision: cfloat; u1: var cfloat;
                    u2: var cfloat) {.cdecl, importcpp: "ElCLib::AdjustPeriodic(@)",
                                   header: "ElCLib.hxx".}
proc value*(u: cfloat; L: LinObj): PntObj {.cdecl, importcpp: "ElCLib::Value(@)", header: "ElCLib.hxx".}
proc value*(u: cfloat; c: CircObj): PntObj {.cdecl, importcpp: "ElCLib::Value(@)",
                                 header: "ElCLib.hxx".}
proc value*(u: cfloat; e: ElipsObj): PntObj {.cdecl, importcpp: "ElCLib::Value(@)",
                                  header: "ElCLib.hxx".}
proc value*(u: cfloat; h: HyprObj): PntObj {.cdecl, importcpp: "ElCLib::Value(@)",
                                 header: "ElCLib.hxx".}
proc value*(u: cfloat; prb: ParabObj): PntObj {.cdecl, importcpp: "ElCLib::Value(@)",
                                    header: "ElCLib.hxx".}
proc d1*(u: cfloat; L: LinObj; p: var PntObj; v1: var VecObj) {.cdecl, importcpp: "ElCLib::D1(@)",
    header: "ElCLib.hxx".}
proc d1*(u: cfloat; c: CircObj; p: var PntObj; v1: var VecObj) {.cdecl, importcpp: "ElCLib::D1(@)",
    header: "ElCLib.hxx".}
proc d1*(u: cfloat; e: ElipsObj; p: var PntObj; v1: var VecObj) {.cdecl, importcpp: "ElCLib::D1(@)",
    header: "ElCLib.hxx".}
proc d1*(u: cfloat; h: HyprObj; p: var PntObj; v1: var VecObj) {.cdecl, importcpp: "ElCLib::D1(@)",
    header: "ElCLib.hxx".}
proc d1*(u: cfloat; prb: ParabObj; p: var PntObj; v1: var VecObj) {.cdecl,
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}
proc d2*(u: cfloat; c: CircObj; p: var PntObj; v1: var VecObj; v2: var VecObj) {.cdecl,
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc d2*(u: cfloat; e: ElipsObj; p: var PntObj; v1: var VecObj; v2: var VecObj) {.cdecl,
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc d2*(u: cfloat; h: HyprObj; p: var PntObj; v1: var VecObj; v2: var VecObj) {.cdecl,
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc d2*(u: cfloat; prb: ParabObj; p: var PntObj; v1: var VecObj; v2: var VecObj) {.cdecl,
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc d3*(u: cfloat; c: CircObj; p: var PntObj; v1: var VecObj; v2: var VecObj; v3: var VecObj) {.cdecl,
    importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}
proc d3*(u: cfloat; e: ElipsObj; p: var PntObj; v1: var VecObj; v2: var VecObj; v3: var VecObj) {.cdecl,
    importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}
proc d3*(u: cfloat; h: HyprObj; p: var PntObj; v1: var VecObj; v2: var VecObj; v3: var VecObj) {.cdecl,
    importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}
proc dn*(u: cfloat; L: LinObj; n: cint): VecObj {.cdecl, importcpp: "ElCLib::DN(@)",
                                    header: "ElCLib.hxx".}
proc dn*(u: cfloat; c: CircObj; n: cint): VecObj {.cdecl, importcpp: "ElCLib::DN(@)",
                                     header: "ElCLib.hxx".}
proc dn*(u: cfloat; e: ElipsObj; n: cint): VecObj {.cdecl, importcpp: "ElCLib::DN(@)",
                                      header: "ElCLib.hxx".}
proc dn*(u: cfloat; h: HyprObj; n: cint): VecObj {.cdecl, importcpp: "ElCLib::DN(@)",
                                     header: "ElCLib.hxx".}
proc dn*(u: cfloat; prb: ParabObj; n: cint): VecObj {.cdecl, importcpp: "ElCLib::DN(@)",
                                        header: "ElCLib.hxx".}
proc value*(u: cfloat; L: Lin2dObj): Pnt2dObj {.cdecl, importcpp: "ElCLib::Value(@)",
                                    header: "ElCLib.hxx".}
proc value*(u: cfloat; c: Circ2dObj): Pnt2dObj {.cdecl, importcpp: "ElCLib::Value(@)",
                                     header: "ElCLib.hxx".}
proc value*(u: cfloat; e: Elips2dObj): Pnt2dObj {.cdecl, importcpp: "ElCLib::Value(@)",
                                      header: "ElCLib.hxx".}
proc value*(u: cfloat; h: Hypr2dObj): Pnt2dObj {.cdecl, importcpp: "ElCLib::Value(@)",
                                     header: "ElCLib.hxx".}
proc value*(u: cfloat; prb: Parab2dObj): Pnt2dObj {.cdecl, importcpp: "ElCLib::Value(@)",
                                        header: "ElCLib.hxx".}
proc d1*(u: cfloat; L: Lin2dObj; p: var Pnt2dObj; v1: var Vec2dObj) {.cdecl,
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}
proc d1*(u: cfloat; c: Circ2dObj; p: var Pnt2dObj; v1: var Vec2dObj) {.cdecl,
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}
proc d1*(u: cfloat; e: Elips2dObj; p: var Pnt2dObj; v1: var Vec2dObj) {.cdecl,
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}
proc d1*(u: cfloat; h: Hypr2dObj; p: var Pnt2dObj; v1: var Vec2dObj) {.cdecl,
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}
proc d1*(u: cfloat; prb: Parab2dObj; p: var Pnt2dObj; v1: var Vec2dObj) {.cdecl,
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}
proc d2*(u: cfloat; c: Circ2dObj; p: var Pnt2dObj; v1: var Vec2dObj; v2: var Vec2dObj) {.cdecl,
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc d2*(u: cfloat; e: Elips2dObj; p: var Pnt2dObj; v1: var Vec2dObj; v2: var Vec2dObj) {.cdecl,
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc d2*(u: cfloat; h: Hypr2dObj; p: var Pnt2dObj; v1: var Vec2dObj; v2: var Vec2dObj) {.cdecl,
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc d2*(u: cfloat; prb: Parab2dObj; p: var Pnt2dObj; v1: var Vec2dObj; v2: var Vec2dObj) {.cdecl,
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc d3*(u: cfloat; c: Circ2dObj; p: var Pnt2dObj; v1: var Vec2dObj; v2: var Vec2dObj; v3: var Vec2dObj) {.
    cdecl, importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}
proc d3*(u: cfloat; e: Elips2dObj; p: var Pnt2dObj; v1: var Vec2dObj; v2: var Vec2dObj; v3: var Vec2dObj) {.
    cdecl, importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}
proc d3*(u: cfloat; h: Hypr2dObj; p: var Pnt2dObj; v1: var Vec2dObj; v2: var Vec2dObj; v3: var Vec2dObj) {.
    cdecl, importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}
proc dn*(u: cfloat; L: Lin2dObj; n: cint): Vec2dObj {.cdecl, importcpp: "ElCLib::DN(@)",
                                        header: "ElCLib.hxx".}
proc dn*(u: cfloat; c: Circ2dObj; n: cint): Vec2dObj {.cdecl, importcpp: "ElCLib::DN(@)",
    header: "ElCLib.hxx".}
proc dn*(u: cfloat; e: Elips2dObj; n: cint): Vec2dObj {.cdecl, importcpp: "ElCLib::DN(@)",
    header: "ElCLib.hxx".}
proc dn*(u: cfloat; h: Hypr2dObj; n: cint): Vec2dObj {.cdecl, importcpp: "ElCLib::DN(@)",
    header: "ElCLib.hxx".}
proc dn*(u: cfloat; prb: Parab2dObj; n: cint): Vec2dObj {.cdecl, importcpp: "ElCLib::DN(@)",
    header: "ElCLib.hxx".}
proc lineValue*(u: cfloat; pos: Ax1Obj): PntObj {.cdecl, importcpp: "ElCLib::LinObjeValue(@)",
                                      header: "ElCLib.hxx".}
proc circleValue*(u: cfloat; pos: Ax2Obj; radius: cfloat): PntObj {.cdecl,
    importcpp: "ElCLib::CircObjleValue(@)", header: "ElCLib.hxx".}
proc ellipseValue*(u: cfloat; pos: Ax2Obj; majorRadius: cfloat; minorRadius: cfloat): PntObj {.
    cdecl, importcpp: "ElCLib::EllipseValue(@)", header: "ElCLib.hxx".}
proc hyperbolaValue*(u: cfloat; pos: Ax2Obj; majorRadius: cfloat; minorRadius: cfloat): PntObj {.
    cdecl, importcpp: "ElCLib::HyperbolaValue(@)", header: "ElCLib.hxx".}
proc parabolaValue*(u: cfloat; pos: Ax2Obj; focal: cfloat): PntObj {.cdecl,
    importcpp: "ElCLib::ParabObjolaValue(@)", header: "ElCLib.hxx".}
proc lineD1*(u: cfloat; pos: Ax1Obj; p: var PntObj; v1: var VecObj) {.cdecl,
    importcpp: "ElCLib::LinObjeD1(@)", header: "ElCLib.hxx".}
proc circleD1*(u: cfloat; pos: Ax2Obj; radius: cfloat; p: var PntObj; v1: var VecObj) {.cdecl,
    importcpp: "ElCLib::CircObjleD1(@)", header: "ElCLib.hxx".}
proc ellipseD1*(u: cfloat; pos: Ax2Obj; majorRadius: cfloat; minorRadius: cfloat;
               p: var PntObj; v1: var VecObj) {.cdecl, importcpp: "ElCLib::EllipseD1(@)",
                                    header: "ElCLib.hxx".}
proc hyperbolaD1*(u: cfloat; pos: Ax2Obj; majorRadius: cfloat; minorRadius: cfloat;
                 p: var PntObj; v1: var VecObj) {.cdecl, importcpp: "ElCLib::HyperbolaD1(@)",
                                      header: "ElCLib.hxx".}
proc parabolaD1*(u: cfloat; pos: Ax2Obj; focal: cfloat; p: var PntObj; v1: var VecObj) {.cdecl,
    importcpp: "ElCLib::ParabObjolaD1(@)", header: "ElCLib.hxx".}
proc circleD2*(u: cfloat; pos: Ax2Obj; radius: cfloat; p: var PntObj; v1: var VecObj; v2: var VecObj) {.
    cdecl, importcpp: "ElCLib::CircObjleD2(@)", header: "ElCLib.hxx".}
proc ellipseD2*(u: cfloat; pos: Ax2Obj; majorRadius: cfloat; minorRadius: cfloat;
               p: var PntObj; v1: var VecObj; v2: var VecObj) {.cdecl,
    importcpp: "ElCLib::EllipseD2(@)", header: "ElCLib.hxx".}
proc hyperbolaD2*(u: cfloat; pos: Ax2Obj; majorRadius: cfloat; minorRadius: cfloat;
                 p: var PntObj; v1: var VecObj; v2: var VecObj) {.cdecl,
    importcpp: "ElCLib::HyperbolaD2(@)", header: "ElCLib.hxx".}
proc parabolaD2*(u: cfloat; pos: Ax2Obj; focal: cfloat; p: var PntObj; v1: var VecObj; v2: var VecObj) {.
    cdecl, importcpp: "ElCLib::ParabObjolaD2(@)", header: "ElCLib.hxx".}
proc circleD3*(u: cfloat; pos: Ax2Obj; radius: cfloat; p: var PntObj; v1: var VecObj; v2: var VecObj;
              v3: var VecObj) {.cdecl, importcpp: "ElCLib::CircObjleD3(@)", header: "ElCLib.hxx".}
proc ellipseD3*(u: cfloat; pos: Ax2Obj; majorRadius: cfloat; minorRadius: cfloat;
               p: var PntObj; v1: var VecObj; v2: var VecObj; v3: var VecObj) {.cdecl,
    importcpp: "ElCLib::EllipseD3(@)", header: "ElCLib.hxx".}
proc hyperbolaD3*(u: cfloat; pos: Ax2Obj; majorRadius: cfloat; minorRadius: cfloat;
                 p: var PntObj; v1: var VecObj; v2: var VecObj; v3: var VecObj) {.cdecl,
    importcpp: "ElCLib::HyperbolaD3(@)", header: "ElCLib.hxx".}
proc lineDN*(u: cfloat; pos: Ax1Obj; n: cint): VecObj {.cdecl, importcpp: "ElCLib::LinObjeDN(@)",
    header: "ElCLib.hxx".}
proc circleDN*(u: cfloat; pos: Ax2Obj; radius: cfloat; n: cint): VecObj {.cdecl,
    importcpp: "ElCLib::CircObjleDN(@)", header: "ElCLib.hxx".}
proc ellipseDN*(u: cfloat; pos: Ax2Obj; majorRadius: cfloat; minorRadius: cfloat; n: cint): VecObj {.
    cdecl, importcpp: "ElCLib::EllipseDN(@)", header: "ElCLib.hxx".}
proc hyperbolaDN*(u: cfloat; pos: Ax2Obj; majorRadius: cfloat; minorRadius: cfloat; n: cint): VecObj {.
    cdecl, importcpp: "ElCLib::HyperbolaDN(@)", header: "ElCLib.hxx".}
proc parabolaDN*(u: cfloat; pos: Ax2Obj; focal: cfloat; n: cint): VecObj {.cdecl,
    importcpp: "ElCLib::ParabObjolaDN(@)", header: "ElCLib.hxx".}
proc lineValue*(u: cfloat; pos: Ax2dObj): Pnt2dObj {.cdecl,
    importcpp: "ElCLib::LinObjeValue(@)", header: "ElCLib.hxx".}
proc circleValue*(u: cfloat; pos: Ax22dObj; radius: cfloat): Pnt2dObj {.cdecl,
    importcpp: "ElCLib::CircObjleValue(@)", header: "ElCLib.hxx".}
proc ellipseValue*(u: cfloat; pos: Ax22dObj; majorRadius: cfloat; minorRadius: cfloat): Pnt2dObj {.
    cdecl, importcpp: "ElCLib::EllipseValue(@)", header: "ElCLib.hxx".}
proc hyperbolaValue*(u: cfloat; pos: Ax22dObj; majorRadius: cfloat; minorRadius: cfloat): Pnt2dObj {.
    cdecl, importcpp: "ElCLib::HyperbolaValue(@)", header: "ElCLib.hxx".}
proc parabolaValue*(u: cfloat; pos: Ax22dObj; focal: cfloat): Pnt2dObj {.cdecl,
    importcpp: "ElCLib::ParabObjolaValue(@)", header: "ElCLib.hxx".}
proc lineD1*(u: cfloat; pos: Ax2dObj; p: var Pnt2dObj; v1: var Vec2dObj) {.cdecl,
    importcpp: "ElCLib::LinObjeD1(@)", header: "ElCLib.hxx".}
proc circleD1*(u: cfloat; pos: Ax22dObj; radius: cfloat; p: var Pnt2dObj; v1: var Vec2dObj) {.cdecl,
    importcpp: "ElCLib::CircObjleD1(@)", header: "ElCLib.hxx".}
proc ellipseD1*(u: cfloat; pos: Ax22dObj; majorRadius: cfloat; minorRadius: cfloat;
               p: var Pnt2dObj; v1: var Vec2dObj) {.cdecl, importcpp: "ElCLib::EllipseD1(@)",
                                        header: "ElCLib.hxx".}
proc hyperbolaD1*(u: cfloat; pos: Ax22dObj; majorRadius: cfloat; minorRadius: cfloat;
                 p: var Pnt2dObj; v1: var Vec2dObj) {.cdecl,
    importcpp: "ElCLib::HyperbolaD1(@)", header: "ElCLib.hxx".}
proc parabolaD1*(u: cfloat; pos: Ax22dObj; focal: cfloat; p: var Pnt2dObj; v1: var Vec2dObj) {.cdecl,
    importcpp: "ElCLib::ParabObjolaD1(@)", header: "ElCLib.hxx".}
proc circleD2*(u: cfloat; pos: Ax22dObj; radius: cfloat; p: var Pnt2dObj; v1: var Vec2dObj;
              v2: var Vec2dObj) {.cdecl, importcpp: "ElCLib::CircObjleD2(@)", header: "ElCLib.hxx".}
proc ellipseD2*(u: cfloat; pos: Ax22dObj; majorRadius: cfloat; minorRadius: cfloat;
               p: var Pnt2dObj; v1: var Vec2dObj; v2: var Vec2dObj) {.cdecl,
    importcpp: "ElCLib::EllipseD2(@)", header: "ElCLib.hxx".}
proc hyperbolaD2*(u: cfloat; pos: Ax22dObj; majorRadius: cfloat; minorRadius: cfloat;
                 p: var Pnt2dObj; v1: var Vec2dObj; v2: var Vec2dObj) {.cdecl,
    importcpp: "ElCLib::HyperbolaD2(@)", header: "ElCLib.hxx".}
proc parabolaD2*(u: cfloat; pos: Ax22dObj; focal: cfloat; p: var Pnt2dObj; v1: var Vec2dObj;
                v2: var Vec2dObj) {.cdecl, importcpp: "ElCLib::ParabObjolaD2(@)",
                              header: "ElCLib.hxx".}
proc circleD3*(u: cfloat; pos: Ax22dObj; radius: cfloat; p: var Pnt2dObj; v1: var Vec2dObj;
              v2: var Vec2dObj; v3: var Vec2dObj) {.cdecl, importcpp: "ElCLib::CircObjleD3(@)",
                                        header: "ElCLib.hxx".}
proc ellipseD3*(u: cfloat; pos: Ax22dObj; majorRadius: cfloat; minorRadius: cfloat;
               p: var Pnt2dObj; v1: var Vec2dObj; v2: var Vec2dObj; v3: var Vec2dObj) {.cdecl,
    importcpp: "ElCLib::EllipseD3(@)", header: "ElCLib.hxx".}
proc hyperbolaD3*(u: cfloat; pos: Ax22dObj; majorRadius: cfloat; minorRadius: cfloat;
                 p: var Pnt2dObj; v1: var Vec2dObj; v2: var Vec2dObj; v3: var Vec2dObj) {.cdecl,
    importcpp: "ElCLib::HyperbolaD3(@)", header: "ElCLib.hxx".}
proc lineDN*(u: cfloat; pos: Ax2dObj; n: cint): Vec2dObj {.cdecl,
    importcpp: "ElCLib::LinObjeDN(@)", header: "ElCLib.hxx".}
proc circleDN*(u: cfloat; pos: Ax22dObj; radius: cfloat; n: cint): Vec2dObj {.cdecl,
    importcpp: "ElCLib::CircObjleDN(@)", header: "ElCLib.hxx".}
proc ellipseDN*(u: cfloat; pos: Ax22dObj; majorRadius: cfloat; minorRadius: cfloat; n: cint): Vec2dObj {.
    cdecl, importcpp: "ElCLib::EllipseDN(@)", header: "ElCLib.hxx".}
proc hyperbolaDN*(u: cfloat; pos: Ax22dObj; majorRadius: cfloat; minorRadius: cfloat;
                 n: cint): Vec2dObj {.cdecl, importcpp: "ElCLib::HyperbolaDN(@)",
                                header: "ElCLib.hxx".}
proc parabolaDN*(u: cfloat; pos: Ax22dObj; focal: cfloat; n: cint): Vec2dObj {.cdecl,
    importcpp: "ElCLib::ParabObjolaDN(@)", header: "ElCLib.hxx".}
proc parameter*(L: LinObj; p: PntObj): cfloat {.cdecl, importcpp: "ElCLib::Parameter(@)",
                                    header: "ElCLib.hxx".}
proc parameter*(L: Lin2dObj; p: Pnt2dObj): cfloat {.cdecl, importcpp: "ElCLib::Parameter(@)",
                                        header: "ElCLib.hxx".}
proc parameter*(c: CircObj; p: PntObj): cfloat {.cdecl, importcpp: "ElCLib::Parameter(@)",
                                     header: "ElCLib.hxx".}
proc parameter*(c: Circ2dObj; p: Pnt2dObj): cfloat {.cdecl,
    importcpp: "ElCLib::Parameter(@)", header: "ElCLib.hxx".}
proc parameter*(e: ElipsObj; p: PntObj): cfloat {.cdecl, importcpp: "ElCLib::Parameter(@)",
                                      header: "ElCLib.hxx".}
proc parameter*(e: Elips2dObj; p: Pnt2dObj): cfloat {.cdecl,
    importcpp: "ElCLib::Parameter(@)", header: "ElCLib.hxx".}
proc parameter*(h: HyprObj; p: PntObj): cfloat {.cdecl, importcpp: "ElCLib::Parameter(@)",
                                     header: "ElCLib.hxx".}
proc parameter*(h: Hypr2dObj; p: Pnt2dObj): cfloat {.cdecl,
    importcpp: "ElCLib::Parameter(@)", header: "ElCLib.hxx".}
proc parameter*(prb: ParabObj; p: PntObj): cfloat {.cdecl, importcpp: "ElCLib::Parameter(@)",
                                        header: "ElCLib.hxx".}
proc parameter*(prb: Parab2dObj; p: Pnt2dObj): cfloat {.cdecl,
    importcpp: "ElCLib::Parameter(@)", header: "ElCLib.hxx".}
proc lineParameter*(pos: Ax1Obj; p: PntObj): cfloat {.cdecl,
    importcpp: "ElCLib::LinObjeParameter(@)", header: "ElCLib.hxx".}
proc lineParameter*(pos: Ax2dObj; p: Pnt2dObj): cfloat {.cdecl,
    importcpp: "ElCLib::LinObjeParameter(@)", header: "ElCLib.hxx".}
proc circleParameter*(pos: Ax2Obj; p: PntObj): cfloat {.cdecl,
    importcpp: "ElCLib::CircObjleParameter(@)", header: "ElCLib.hxx".}
proc circleParameter*(pos: Ax22dObj; p: Pnt2dObj): cfloat {.cdecl,
    importcpp: "ElCLib::CircObjleParameter(@)", header: "ElCLib.hxx".}
proc ellipseParameter*(pos: Ax2Obj; majorRadius: cfloat; minorRadius: cfloat; p: PntObj): cfloat {.
    cdecl, importcpp: "ElCLib::EllipseParameter(@)", header: "ElCLib.hxx".}
proc ellipseParameter*(pos: Ax22dObj; majorRadius: cfloat; minorRadius: cfloat; p: Pnt2dObj): cfloat {.
    cdecl, importcpp: "ElCLib::EllipseParameter(@)", header: "ElCLib.hxx".}
proc hyperbolaParameter*(pos: Ax2Obj; majorRadius: cfloat; minorRadius: cfloat; p: PntObj): cfloat {.
    cdecl, importcpp: "ElCLib::HyperbolaParameter(@)", header: "ElCLib.hxx".}
proc hyperbolaParameter*(pos: Ax22dObj; majorRadius: cfloat; minorRadius: cfloat; p: Pnt2dObj): cfloat {.
    cdecl, importcpp: "ElCLib::HyperbolaParameter(@)", header: "ElCLib.hxx".}
proc parabolaParameter*(pos: Ax2Obj; p: PntObj): cfloat {.cdecl,
    importcpp: "ElCLib::ParabObjolaParameter(@)", header: "ElCLib.hxx".}
proc parabolaParameter*(pos: Ax22dObj; p: Pnt2dObj): cfloat {.cdecl,
    importcpp: "ElCLib::ParabObjolaParameter(@)", header: "ElCLib.hxx".}
proc to3d*(pos: Ax2Obj; p: Pnt2dObj): PntObj {.cdecl, importcpp: "ElCLib::To3d(@)", header: "ElCLib.hxx".}
proc to3d*(pos: Ax2Obj; v: Vec2dObj): VecObj {.cdecl, importcpp: "ElCLib::To3d(@)", header: "ElCLib.hxx".}
proc to3d*(pos: Ax2Obj; v: Dir2dObj): DirObj {.cdecl, importcpp: "ElCLib::To3d(@)", header: "ElCLib.hxx".}
proc to3d*(pos: Ax2Obj; a: Ax2dObj): Ax1Obj {.cdecl, importcpp: "ElCLib::To3d(@)", header: "ElCLib.hxx".}
proc to3d*(pos: Ax2Obj; a: Ax22dObj): Ax2Obj {.cdecl, importcpp: "ElCLib::To3d(@)", header: "ElCLib.hxx".}
proc to3d*(pos: Ax2Obj; L: Lin2dObj): LinObj {.cdecl, importcpp: "ElCLib::To3d(@)", header: "ElCLib.hxx".}
proc to3d*(pos: Ax2Obj; c: Circ2dObj): CircObj {.cdecl, importcpp: "ElCLib::To3d(@)",
                                  header: "ElCLib.hxx".}
proc to3d*(pos: Ax2Obj; e: Elips2dObj): ElipsObj {.cdecl, importcpp: "ElCLib::To3d(@)",
                                    header: "ElCLib.hxx".}
proc to3d*(pos: Ax2Obj; h: Hypr2dObj): HyprObj {.cdecl, importcpp: "ElCLib::To3d(@)",
                                  header: "ElCLib.hxx".}
proc to3d*(pos: Ax2Obj; prb: Parab2dObj): ParabObj {.cdecl, importcpp: "ElCLib::To3d(@)",
                                      header: "ElCLib.hxx".}