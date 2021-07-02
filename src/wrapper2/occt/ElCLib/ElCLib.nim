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

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Hypr"
discard "forward decl of gp_Parab"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Elips2d"
discard "forward decl of gp_Hypr2d"
discard "forward decl of gp_Parab2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Ax2d"
discard "forward decl of gp_Ax22d"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Dir2d"
type
  ElCLib* {.importcpp: "ElCLib", header: "ElCLib.hxx", bycopy.} = object ## ! Return a value in   the  range <UFirst, ULast>  by
                                                                 ## ! adding or removing the period <ULast -  UFirst> to
                                                                 ## ! <U>.
                                                                 ## ! ATTENTION!!!
                                                                 ## !   It is expected but not checked that (ULast > UFirst)


proc inPeriod*(u: StandardReal; uFirst: StandardReal; uLast: StandardReal): StandardReal {.
    importcpp: "ElCLib::InPeriod(@)", header: "ElCLib.hxx".}
proc adjustPeriodic*(uFirst: StandardReal; uLast: StandardReal;
                    precision: StandardReal; u1: var StandardReal;
                    u2: var StandardReal) {.importcpp: "ElCLib::AdjustPeriodic(@)",
    header: "ElCLib.hxx".}
proc value*(u: StandardReal; L: GpLin): GpPnt {.importcpp: "ElCLib::Value(@)",
    header: "ElCLib.hxx".}
proc value*(u: StandardReal; c: GpCirc): GpPnt {.importcpp: "ElCLib::Value(@)",
    header: "ElCLib.hxx".}
proc value*(u: StandardReal; e: GpElips): GpPnt {.importcpp: "ElCLib::Value(@)",
    header: "ElCLib.hxx".}
proc value*(u: StandardReal; h: GpHypr): GpPnt {.importcpp: "ElCLib::Value(@)",
    header: "ElCLib.hxx".}
proc value*(u: StandardReal; prb: GpParab): GpPnt {.importcpp: "ElCLib::Value(@)",
    header: "ElCLib.hxx".}
proc d1*(u: StandardReal; L: GpLin; p: var GpPnt; v1: var GpVec) {.
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}
proc d1*(u: StandardReal; c: GpCirc; p: var GpPnt; v1: var GpVec) {.
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}
proc d1*(u: StandardReal; e: GpElips; p: var GpPnt; v1: var GpVec) {.
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}
proc d1*(u: StandardReal; h: GpHypr; p: var GpPnt; v1: var GpVec) {.
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}
proc d1*(u: StandardReal; prb: GpParab; p: var GpPnt; v1: var GpVec) {.
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}
proc d2*(u: StandardReal; c: GpCirc; p: var GpPnt; v1: var GpVec; v2: var GpVec) {.
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc d2*(u: StandardReal; e: GpElips; p: var GpPnt; v1: var GpVec; v2: var GpVec) {.
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc d2*(u: StandardReal; h: GpHypr; p: var GpPnt; v1: var GpVec; v2: var GpVec) {.
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc d2*(u: StandardReal; prb: GpParab; p: var GpPnt; v1: var GpVec; v2: var GpVec) {.
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc d3*(u: StandardReal; c: GpCirc; p: var GpPnt; v1: var GpVec; v2: var GpVec; v3: var GpVec) {.
    importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}
proc d3*(u: StandardReal; e: GpElips; p: var GpPnt; v1: var GpVec; v2: var GpVec;
        v3: var GpVec) {.importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}
proc d3*(u: StandardReal; h: GpHypr; p: var GpPnt; v1: var GpVec; v2: var GpVec; v3: var GpVec) {.
    importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}
proc dn*(u: StandardReal; L: GpLin; n: StandardInteger): GpVec {.
    importcpp: "ElCLib::DN(@)", header: "ElCLib.hxx".}
proc dn*(u: StandardReal; c: GpCirc; n: StandardInteger): GpVec {.
    importcpp: "ElCLib::DN(@)", header: "ElCLib.hxx".}
proc dn*(u: StandardReal; e: GpElips; n: StandardInteger): GpVec {.
    importcpp: "ElCLib::DN(@)", header: "ElCLib.hxx".}
proc dn*(u: StandardReal; h: GpHypr; n: StandardInteger): GpVec {.
    importcpp: "ElCLib::DN(@)", header: "ElCLib.hxx".}
proc dn*(u: StandardReal; prb: GpParab; n: StandardInteger): GpVec {.
    importcpp: "ElCLib::DN(@)", header: "ElCLib.hxx".}
proc value*(u: StandardReal; L: GpLin2d): GpPnt2d {.importcpp: "ElCLib::Value(@)",
    header: "ElCLib.hxx".}
proc value*(u: StandardReal; c: GpCirc2d): GpPnt2d {.importcpp: "ElCLib::Value(@)",
    header: "ElCLib.hxx".}
proc value*(u: StandardReal; e: GpElips2d): GpPnt2d {.importcpp: "ElCLib::Value(@)",
    header: "ElCLib.hxx".}
proc value*(u: StandardReal; h: GpHypr2d): GpPnt2d {.importcpp: "ElCLib::Value(@)",
    header: "ElCLib.hxx".}
proc value*(u: StandardReal; prb: GpParab2d): GpPnt2d {.importcpp: "ElCLib::Value(@)",
    header: "ElCLib.hxx".}
proc d1*(u: StandardReal; L: GpLin2d; p: var GpPnt2d; v1: var GpVec2d) {.
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}
proc d1*(u: StandardReal; c: GpCirc2d; p: var GpPnt2d; v1: var GpVec2d) {.
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}
proc d1*(u: StandardReal; e: GpElips2d; p: var GpPnt2d; v1: var GpVec2d) {.
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}
proc d1*(u: StandardReal; h: GpHypr2d; p: var GpPnt2d; v1: var GpVec2d) {.
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}
proc d1*(u: StandardReal; prb: GpParab2d; p: var GpPnt2d; v1: var GpVec2d) {.
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}
proc d2*(u: StandardReal; c: GpCirc2d; p: var GpPnt2d; v1: var GpVec2d; v2: var GpVec2d) {.
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc d2*(u: StandardReal; e: GpElips2d; p: var GpPnt2d; v1: var GpVec2d; v2: var GpVec2d) {.
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc d2*(u: StandardReal; h: GpHypr2d; p: var GpPnt2d; v1: var GpVec2d; v2: var GpVec2d) {.
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc d2*(u: StandardReal; prb: GpParab2d; p: var GpPnt2d; v1: var GpVec2d; v2: var GpVec2d) {.
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc d3*(u: StandardReal; c: GpCirc2d; p: var GpPnt2d; v1: var GpVec2d; v2: var GpVec2d;
        v3: var GpVec2d) {.importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}
proc d3*(u: StandardReal; e: GpElips2d; p: var GpPnt2d; v1: var GpVec2d; v2: var GpVec2d;
        v3: var GpVec2d) {.importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}
proc d3*(u: StandardReal; h: GpHypr2d; p: var GpPnt2d; v1: var GpVec2d; v2: var GpVec2d;
        v3: var GpVec2d) {.importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}
proc dn*(u: StandardReal; L: GpLin2d; n: StandardInteger): GpVec2d {.
    importcpp: "ElCLib::DN(@)", header: "ElCLib.hxx".}
proc dn*(u: StandardReal; c: GpCirc2d; n: StandardInteger): GpVec2d {.
    importcpp: "ElCLib::DN(@)", header: "ElCLib.hxx".}
proc dn*(u: StandardReal; e: GpElips2d; n: StandardInteger): GpVec2d {.
    importcpp: "ElCLib::DN(@)", header: "ElCLib.hxx".}
proc dn*(u: StandardReal; h: GpHypr2d; n: StandardInteger): GpVec2d {.
    importcpp: "ElCLib::DN(@)", header: "ElCLib.hxx".}
proc dn*(u: StandardReal; prb: GpParab2d; n: StandardInteger): GpVec2d {.
    importcpp: "ElCLib::DN(@)", header: "ElCLib.hxx".}
proc lineValue*(u: StandardReal; pos: GpAx1): GpPnt {.
    importcpp: "ElCLib::LineValue(@)", header: "ElCLib.hxx".}
proc circleValue*(u: StandardReal; pos: GpAx2; radius: StandardReal): GpPnt {.
    importcpp: "ElCLib::CircleValue(@)", header: "ElCLib.hxx".}
proc ellipseValue*(u: StandardReal; pos: GpAx2; majorRadius: StandardReal;
                  minorRadius: StandardReal): GpPnt {.
    importcpp: "ElCLib::EllipseValue(@)", header: "ElCLib.hxx".}
proc hyperbolaValue*(u: StandardReal; pos: GpAx2; majorRadius: StandardReal;
                    minorRadius: StandardReal): GpPnt {.
    importcpp: "ElCLib::HyperbolaValue(@)", header: "ElCLib.hxx".}
proc parabolaValue*(u: StandardReal; pos: GpAx2; focal: StandardReal): GpPnt {.
    importcpp: "ElCLib::ParabolaValue(@)", header: "ElCLib.hxx".}
proc lineD1*(u: StandardReal; pos: GpAx1; p: var GpPnt; v1: var GpVec) {.
    importcpp: "ElCLib::LineD1(@)", header: "ElCLib.hxx".}
proc circleD1*(u: StandardReal; pos: GpAx2; radius: StandardReal; p: var GpPnt;
              v1: var GpVec) {.importcpp: "ElCLib::CircleD1(@)", header: "ElCLib.hxx".}
proc ellipseD1*(u: StandardReal; pos: GpAx2; majorRadius: StandardReal;
               minorRadius: StandardReal; p: var GpPnt; v1: var GpVec) {.
    importcpp: "ElCLib::EllipseD1(@)", header: "ElCLib.hxx".}
proc hyperbolaD1*(u: StandardReal; pos: GpAx2; majorRadius: StandardReal;
                 minorRadius: StandardReal; p: var GpPnt; v1: var GpVec) {.
    importcpp: "ElCLib::HyperbolaD1(@)", header: "ElCLib.hxx".}
proc parabolaD1*(u: StandardReal; pos: GpAx2; focal: StandardReal; p: var GpPnt;
                v1: var GpVec) {.importcpp: "ElCLib::ParabolaD1(@)",
                              header: "ElCLib.hxx".}
proc circleD2*(u: StandardReal; pos: GpAx2; radius: StandardReal; p: var GpPnt;
              v1: var GpVec; v2: var GpVec) {.importcpp: "ElCLib::CircleD2(@)",
                                        header: "ElCLib.hxx".}
proc ellipseD2*(u: StandardReal; pos: GpAx2; majorRadius: StandardReal;
               minorRadius: StandardReal; p: var GpPnt; v1: var GpVec; v2: var GpVec) {.
    importcpp: "ElCLib::EllipseD2(@)", header: "ElCLib.hxx".}
proc hyperbolaD2*(u: StandardReal; pos: GpAx2; majorRadius: StandardReal;
                 minorRadius: StandardReal; p: var GpPnt; v1: var GpVec; v2: var GpVec) {.
    importcpp: "ElCLib::HyperbolaD2(@)", header: "ElCLib.hxx".}
proc parabolaD2*(u: StandardReal; pos: GpAx2; focal: StandardReal; p: var GpPnt;
                v1: var GpVec; v2: var GpVec) {.importcpp: "ElCLib::ParabolaD2(@)",
    header: "ElCLib.hxx".}
proc circleD3*(u: StandardReal; pos: GpAx2; radius: StandardReal; p: var GpPnt;
              v1: var GpVec; v2: var GpVec; v3: var GpVec) {.
    importcpp: "ElCLib::CircleD3(@)", header: "ElCLib.hxx".}
proc ellipseD3*(u: StandardReal; pos: GpAx2; majorRadius: StandardReal;
               minorRadius: StandardReal; p: var GpPnt; v1: var GpVec; v2: var GpVec;
               v3: var GpVec) {.importcpp: "ElCLib::EllipseD3(@)",
                             header: "ElCLib.hxx".}
proc hyperbolaD3*(u: StandardReal; pos: GpAx2; majorRadius: StandardReal;
                 minorRadius: StandardReal; p: var GpPnt; v1: var GpVec; v2: var GpVec;
                 v3: var GpVec) {.importcpp: "ElCLib::HyperbolaD3(@)",
                               header: "ElCLib.hxx".}
proc lineDN*(u: StandardReal; pos: GpAx1; n: StandardInteger): GpVec {.
    importcpp: "ElCLib::LineDN(@)", header: "ElCLib.hxx".}
proc circleDN*(u: StandardReal; pos: GpAx2; radius: StandardReal; n: StandardInteger): GpVec {.
    importcpp: "ElCLib::CircleDN(@)", header: "ElCLib.hxx".}
proc ellipseDN*(u: StandardReal; pos: GpAx2; majorRadius: StandardReal;
               minorRadius: StandardReal; n: StandardInteger): GpVec {.
    importcpp: "ElCLib::EllipseDN(@)", header: "ElCLib.hxx".}
proc hyperbolaDN*(u: StandardReal; pos: GpAx2; majorRadius: StandardReal;
                 minorRadius: StandardReal; n: StandardInteger): GpVec {.
    importcpp: "ElCLib::HyperbolaDN(@)", header: "ElCLib.hxx".}
proc parabolaDN*(u: StandardReal; pos: GpAx2; focal: StandardReal; n: StandardInteger): GpVec {.
    importcpp: "ElCLib::ParabolaDN(@)", header: "ElCLib.hxx".}
proc lineValue*(u: StandardReal; pos: GpAx2d): GpPnt2d {.
    importcpp: "ElCLib::LineValue(@)", header: "ElCLib.hxx".}
proc circleValue*(u: StandardReal; pos: GpAx22d; radius: StandardReal): GpPnt2d {.
    importcpp: "ElCLib::CircleValue(@)", header: "ElCLib.hxx".}
proc ellipseValue*(u: StandardReal; pos: GpAx22d; majorRadius: StandardReal;
                  minorRadius: StandardReal): GpPnt2d {.
    importcpp: "ElCLib::EllipseValue(@)", header: "ElCLib.hxx".}
proc hyperbolaValue*(u: StandardReal; pos: GpAx22d; majorRadius: StandardReal;
                    minorRadius: StandardReal): GpPnt2d {.
    importcpp: "ElCLib::HyperbolaValue(@)", header: "ElCLib.hxx".}
proc parabolaValue*(u: StandardReal; pos: GpAx22d; focal: StandardReal): GpPnt2d {.
    importcpp: "ElCLib::ParabolaValue(@)", header: "ElCLib.hxx".}
proc lineD1*(u: StandardReal; pos: GpAx2d; p: var GpPnt2d; v1: var GpVec2d) {.
    importcpp: "ElCLib::LineD1(@)", header: "ElCLib.hxx".}
proc circleD1*(u: StandardReal; pos: GpAx22d; radius: StandardReal; p: var GpPnt2d;
              v1: var GpVec2d) {.importcpp: "ElCLib::CircleD1(@)",
                              header: "ElCLib.hxx".}
proc ellipseD1*(u: StandardReal; pos: GpAx22d; majorRadius: StandardReal;
               minorRadius: StandardReal; p: var GpPnt2d; v1: var GpVec2d) {.
    importcpp: "ElCLib::EllipseD1(@)", header: "ElCLib.hxx".}
proc hyperbolaD1*(u: StandardReal; pos: GpAx22d; majorRadius: StandardReal;
                 minorRadius: StandardReal; p: var GpPnt2d; v1: var GpVec2d) {.
    importcpp: "ElCLib::HyperbolaD1(@)", header: "ElCLib.hxx".}
proc parabolaD1*(u: StandardReal; pos: GpAx22d; focal: StandardReal; p: var GpPnt2d;
                v1: var GpVec2d) {.importcpp: "ElCLib::ParabolaD1(@)",
                                header: "ElCLib.hxx".}
proc circleD2*(u: StandardReal; pos: GpAx22d; radius: StandardReal; p: var GpPnt2d;
              v1: var GpVec2d; v2: var GpVec2d) {.importcpp: "ElCLib::CircleD2(@)",
    header: "ElCLib.hxx".}
proc ellipseD2*(u: StandardReal; pos: GpAx22d; majorRadius: StandardReal;
               minorRadius: StandardReal; p: var GpPnt2d; v1: var GpVec2d;
               v2: var GpVec2d) {.importcpp: "ElCLib::EllipseD2(@)",
                               header: "ElCLib.hxx".}
proc hyperbolaD2*(u: StandardReal; pos: GpAx22d; majorRadius: StandardReal;
                 minorRadius: StandardReal; p: var GpPnt2d; v1: var GpVec2d;
                 v2: var GpVec2d) {.importcpp: "ElCLib::HyperbolaD2(@)",
                                 header: "ElCLib.hxx".}
proc parabolaD2*(u: StandardReal; pos: GpAx22d; focal: StandardReal; p: var GpPnt2d;
                v1: var GpVec2d; v2: var GpVec2d) {.
    importcpp: "ElCLib::ParabolaD2(@)", header: "ElCLib.hxx".}
proc circleD3*(u: StandardReal; pos: GpAx22d; radius: StandardReal; p: var GpPnt2d;
              v1: var GpVec2d; v2: var GpVec2d; v3: var GpVec2d) {.
    importcpp: "ElCLib::CircleD3(@)", header: "ElCLib.hxx".}
proc ellipseD3*(u: StandardReal; pos: GpAx22d; majorRadius: StandardReal;
               minorRadius: StandardReal; p: var GpPnt2d; v1: var GpVec2d;
               v2: var GpVec2d; v3: var GpVec2d) {.importcpp: "ElCLib::EllipseD3(@)",
    header: "ElCLib.hxx".}
proc hyperbolaD3*(u: StandardReal; pos: GpAx22d; majorRadius: StandardReal;
                 minorRadius: StandardReal; p: var GpPnt2d; v1: var GpVec2d;
                 v2: var GpVec2d; v3: var GpVec2d) {.
    importcpp: "ElCLib::HyperbolaD3(@)", header: "ElCLib.hxx".}
proc lineDN*(u: StandardReal; pos: GpAx2d; n: StandardInteger): GpVec2d {.
    importcpp: "ElCLib::LineDN(@)", header: "ElCLib.hxx".}
proc circleDN*(u: StandardReal; pos: GpAx22d; radius: StandardReal; n: StandardInteger): GpVec2d {.
    importcpp: "ElCLib::CircleDN(@)", header: "ElCLib.hxx".}
proc ellipseDN*(u: StandardReal; pos: GpAx22d; majorRadius: StandardReal;
               minorRadius: StandardReal; n: StandardInteger): GpVec2d {.
    importcpp: "ElCLib::EllipseDN(@)", header: "ElCLib.hxx".}
proc hyperbolaDN*(u: StandardReal; pos: GpAx22d; majorRadius: StandardReal;
                 minorRadius: StandardReal; n: StandardInteger): GpVec2d {.
    importcpp: "ElCLib::HyperbolaDN(@)", header: "ElCLib.hxx".}
proc parabolaDN*(u: StandardReal; pos: GpAx22d; focal: StandardReal; n: StandardInteger): GpVec2d {.
    importcpp: "ElCLib::ParabolaDN(@)", header: "ElCLib.hxx".}
proc parameter*(L: GpLin; p: GpPnt): StandardReal {.importcpp: "ElCLib::Parameter(@)",
    header: "ElCLib.hxx".}
proc parameter*(L: GpLin2d; p: GpPnt2d): StandardReal {.
    importcpp: "ElCLib::Parameter(@)", header: "ElCLib.hxx".}
proc parameter*(c: GpCirc; p: GpPnt): StandardReal {.
    importcpp: "ElCLib::Parameter(@)", header: "ElCLib.hxx".}
proc parameter*(c: GpCirc2d; p: GpPnt2d): StandardReal {.
    importcpp: "ElCLib::Parameter(@)", header: "ElCLib.hxx".}
proc parameter*(e: GpElips; p: GpPnt): StandardReal {.
    importcpp: "ElCLib::Parameter(@)", header: "ElCLib.hxx".}
proc parameter*(e: GpElips2d; p: GpPnt2d): StandardReal {.
    importcpp: "ElCLib::Parameter(@)", header: "ElCLib.hxx".}
proc parameter*(h: GpHypr; p: GpPnt): StandardReal {.
    importcpp: "ElCLib::Parameter(@)", header: "ElCLib.hxx".}
proc parameter*(h: GpHypr2d; p: GpPnt2d): StandardReal {.
    importcpp: "ElCLib::Parameter(@)", header: "ElCLib.hxx".}
proc parameter*(prb: GpParab; p: GpPnt): StandardReal {.
    importcpp: "ElCLib::Parameter(@)", header: "ElCLib.hxx".}
proc parameter*(prb: GpParab2d; p: GpPnt2d): StandardReal {.
    importcpp: "ElCLib::Parameter(@)", header: "ElCLib.hxx".}
proc lineParameter*(pos: GpAx1; p: GpPnt): StandardReal {.
    importcpp: "ElCLib::LineParameter(@)", header: "ElCLib.hxx".}
proc lineParameter*(pos: GpAx2d; p: GpPnt2d): StandardReal {.
    importcpp: "ElCLib::LineParameter(@)", header: "ElCLib.hxx".}
proc circleParameter*(pos: GpAx2; p: GpPnt): StandardReal {.
    importcpp: "ElCLib::CircleParameter(@)", header: "ElCLib.hxx".}
proc circleParameter*(pos: GpAx22d; p: GpPnt2d): StandardReal {.
    importcpp: "ElCLib::CircleParameter(@)", header: "ElCLib.hxx".}
proc ellipseParameter*(pos: GpAx2; majorRadius: StandardReal;
                      minorRadius: StandardReal; p: GpPnt): StandardReal {.
    importcpp: "ElCLib::EllipseParameter(@)", header: "ElCLib.hxx".}
proc ellipseParameter*(pos: GpAx22d; majorRadius: StandardReal;
                      minorRadius: StandardReal; p: GpPnt2d): StandardReal {.
    importcpp: "ElCLib::EllipseParameter(@)", header: "ElCLib.hxx".}
proc hyperbolaParameter*(pos: GpAx2; majorRadius: StandardReal;
                        minorRadius: StandardReal; p: GpPnt): StandardReal {.
    importcpp: "ElCLib::HyperbolaParameter(@)", header: "ElCLib.hxx".}
proc hyperbolaParameter*(pos: GpAx22d; majorRadius: StandardReal;
                        minorRadius: StandardReal; p: GpPnt2d): StandardReal {.
    importcpp: "ElCLib::HyperbolaParameter(@)", header: "ElCLib.hxx".}
proc parabolaParameter*(pos: GpAx2; p: GpPnt): StandardReal {.
    importcpp: "ElCLib::ParabolaParameter(@)", header: "ElCLib.hxx".}
proc parabolaParameter*(pos: GpAx22d; p: GpPnt2d): StandardReal {.
    importcpp: "ElCLib::ParabolaParameter(@)", header: "ElCLib.hxx".}
proc to3d*(pos: GpAx2; p: GpPnt2d): GpPnt {.importcpp: "ElCLib::To3d(@)",
                                      header: "ElCLib.hxx".}
proc to3d*(pos: GpAx2; v: GpVec2d): GpVec {.importcpp: "ElCLib::To3d(@)",
                                      header: "ElCLib.hxx".}
proc to3d*(pos: GpAx2; v: GpDir2d): GpDir {.importcpp: "ElCLib::To3d(@)",
                                      header: "ElCLib.hxx".}
proc to3d*(pos: GpAx2; a: GpAx2d): GpAx1 {.importcpp: "ElCLib::To3d(@)",
                                     header: "ElCLib.hxx".}
proc to3d*(pos: GpAx2; a: GpAx22d): GpAx2 {.importcpp: "ElCLib::To3d(@)",
                                      header: "ElCLib.hxx".}
proc to3d*(pos: GpAx2; L: GpLin2d): GpLin {.importcpp: "ElCLib::To3d(@)",
                                      header: "ElCLib.hxx".}
proc to3d*(pos: GpAx2; c: GpCirc2d): GpCirc {.importcpp: "ElCLib::To3d(@)",
                                        header: "ElCLib.hxx".}
proc to3d*(pos: GpAx2; e: GpElips2d): GpElips {.importcpp: "ElCLib::To3d(@)",
    header: "ElCLib.hxx".}
proc to3d*(pos: GpAx2; h: GpHypr2d): GpHypr {.importcpp: "ElCLib::To3d(@)",
                                        header: "ElCLib.hxx".}
proc to3d*(pos: GpAx2; prb: GpParab2d): GpParab {.importcpp: "ElCLib::To3d(@)",
    header: "ElCLib.hxx".}

