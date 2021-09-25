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


proc inPeriod*(u: float; uFirst: float; uLast: float): float {.
    importcpp: "ElCLib::InPeriod(@)", header: "ElCLib.hxx".}
proc adjustPeriodic*(uFirst: float; uLast: float; precision: float; u1: var float;
                    u2: var float) {.importcpp: "ElCLib::AdjustPeriodic(@)",
                                  header: "ElCLib.hxx".}
proc value*(u: float; L: Lin): Pnt {.importcpp: "ElCLib::Value(@)", header: "ElCLib.hxx".}
proc value*(u: float; c: Circ): Pnt {.importcpp: "ElCLib::Value(@)",
                                header: "ElCLib.hxx".}
proc value*(u: float; e: Elips): Pnt {.importcpp: "ElCLib::Value(@)",
                                 header: "ElCLib.hxx".}
proc value*(u: float; h: Hypr): Pnt {.importcpp: "ElCLib::Value(@)",
                                header: "ElCLib.hxx".}
proc value*(u: float; prb: Parab): Pnt {.importcpp: "ElCLib::Value(@)",
                                   header: "ElCLib.hxx".}
proc d1*(u: float; L: Lin; p: var Pnt; v1: var Vec) {.importcpp: "ElCLib::D1(@)",
    header: "ElCLib.hxx".}
proc d1*(u: float; c: Circ; p: var Pnt; v1: var Vec) {.importcpp: "ElCLib::D1(@)",
    header: "ElCLib.hxx".}
proc d1*(u: float; e: Elips; p: var Pnt; v1: var Vec) {.importcpp: "ElCLib::D1(@)",
    header: "ElCLib.hxx".}
proc d1*(u: float; h: Hypr; p: var Pnt; v1: var Vec) {.importcpp: "ElCLib::D1(@)",
    header: "ElCLib.hxx".}
proc d1*(u: float; prb: Parab; p: var Pnt; v1: var Vec) {.importcpp: "ElCLib::D1(@)",
    header: "ElCLib.hxx".}
proc d2*(u: float; c: Circ; p: var Pnt; v1: var Vec; v2: var Vec) {.
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc d2*(u: float; e: Elips; p: var Pnt; v1: var Vec; v2: var Vec) {.
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc d2*(u: float; h: Hypr; p: var Pnt; v1: var Vec; v2: var Vec) {.
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc d2*(u: float; prb: Parab; p: var Pnt; v1: var Vec; v2: var Vec) {.
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc d3*(u: float; c: Circ; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}
proc d3*(u: float; e: Elips; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}
proc d3*(u: float; h: Hypr; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}
proc dn*(u: float; L: Lin; n: int): Vec {.importcpp: "ElCLib::DN(@)", header: "ElCLib.hxx".}
proc dn*(u: float; c: Circ; n: int): Vec {.importcpp: "ElCLib::DN(@)",
                                   header: "ElCLib.hxx".}
proc dn*(u: float; e: Elips; n: int): Vec {.importcpp: "ElCLib::DN(@)",
                                    header: "ElCLib.hxx".}
proc dn*(u: float; h: Hypr; n: int): Vec {.importcpp: "ElCLib::DN(@)",
                                   header: "ElCLib.hxx".}
proc dn*(u: float; prb: Parab; n: int): Vec {.importcpp: "ElCLib::DN(@)",
                                      header: "ElCLib.hxx".}
proc value*(u: float; L: Lin2d): Pnt2d {.importcpp: "ElCLib::Value(@)",
                                   header: "ElCLib.hxx".}
proc value*(u: float; c: Circ2d): Pnt2d {.importcpp: "ElCLib::Value(@)",
                                    header: "ElCLib.hxx".}
proc value*(u: float; e: Elips2d): Pnt2d {.importcpp: "ElCLib::Value(@)",
                                     header: "ElCLib.hxx".}
proc value*(u: float; h: Hypr2d): Pnt2d {.importcpp: "ElCLib::Value(@)",
                                    header: "ElCLib.hxx".}
proc value*(u: float; prb: Parab2d): Pnt2d {.importcpp: "ElCLib::Value(@)",
                                       header: "ElCLib.hxx".}
proc d1*(u: float; L: Lin2d; p: var Pnt2d; v1: var Vec2d) {.importcpp: "ElCLib::D1(@)",
    header: "ElCLib.hxx".}
proc d1*(u: float; c: Circ2d; p: var Pnt2d; v1: var Vec2d) {.importcpp: "ElCLib::D1(@)",
    header: "ElCLib.hxx".}
proc d1*(u: float; e: Elips2d; p: var Pnt2d; v1: var Vec2d) {.importcpp: "ElCLib::D1(@)",
    header: "ElCLib.hxx".}
proc d1*(u: float; h: Hypr2d; p: var Pnt2d; v1: var Vec2d) {.importcpp: "ElCLib::D1(@)",
    header: "ElCLib.hxx".}
proc d1*(u: float; prb: Parab2d; p: var Pnt2d; v1: var Vec2d) {.importcpp: "ElCLib::D1(@)",
    header: "ElCLib.hxx".}
proc d2*(u: float; c: Circ2d; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc d2*(u: float; e: Elips2d; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc d2*(u: float; h: Hypr2d; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc d2*(u: float; prb: Parab2d; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc d3*(u: float; c: Circ2d; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d; v3: var Vec2d) {.
    importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}
proc d3*(u: float; e: Elips2d; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d; v3: var Vec2d) {.
    importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}
proc d3*(u: float; h: Hypr2d; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d; v3: var Vec2d) {.
    importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}
proc dn*(u: float; L: Lin2d; n: int): Vec2d {.importcpp: "ElCLib::DN(@)",
                                      header: "ElCLib.hxx".}
proc dn*(u: float; c: Circ2d; n: int): Vec2d {.importcpp: "ElCLib::DN(@)",
                                       header: "ElCLib.hxx".}
proc dn*(u: float; e: Elips2d; n: int): Vec2d {.importcpp: "ElCLib::DN(@)",
                                        header: "ElCLib.hxx".}
proc dn*(u: float; h: Hypr2d; n: int): Vec2d {.importcpp: "ElCLib::DN(@)",
                                       header: "ElCLib.hxx".}
proc dn*(u: float; prb: Parab2d; n: int): Vec2d {.importcpp: "ElCLib::DN(@)",
    header: "ElCLib.hxx".}
proc lineValue*(u: float; pos: Ax1): Pnt {.importcpp: "ElCLib::LineValue(@)",
                                     header: "ElCLib.hxx".}
proc circleValue*(u: float; pos: Ax2; radius: float): Pnt {.
    importcpp: "ElCLib::CircleValue(@)", header: "ElCLib.hxx".}
proc ellipseValue*(u: float; pos: Ax2; majorRadius: float; minorRadius: float): Pnt {.
    importcpp: "ElCLib::EllipseValue(@)", header: "ElCLib.hxx".}
proc hyperbolaValue*(u: float; pos: Ax2; majorRadius: float; minorRadius: float): Pnt {.
    importcpp: "ElCLib::HyperbolaValue(@)", header: "ElCLib.hxx".}
proc parabolaValue*(u: float; pos: Ax2; focal: float): Pnt {.
    importcpp: "ElCLib::ParabolaValue(@)", header: "ElCLib.hxx".}
proc lineD1*(u: float; pos: Ax1; p: var Pnt; v1: var Vec) {.importcpp: "ElCLib::LineD1(@)",
    header: "ElCLib.hxx".}
proc circleD1*(u: float; pos: Ax2; radius: float; p: var Pnt; v1: var Vec) {.
    importcpp: "ElCLib::CircleD1(@)", header: "ElCLib.hxx".}
proc ellipseD1*(u: float; pos: Ax2; majorRadius: float; minorRadius: float; p: var Pnt;
               v1: var Vec) {.importcpp: "ElCLib::EllipseD1(@)", header: "ElCLib.hxx".}
proc hyperbolaD1*(u: float; pos: Ax2; majorRadius: float; minorRadius: float; p: var Pnt;
                 v1: var Vec) {.importcpp: "ElCLib::HyperbolaD1(@)",
                             header: "ElCLib.hxx".}
proc parabolaD1*(u: float; pos: Ax2; focal: float; p: var Pnt; v1: var Vec) {.
    importcpp: "ElCLib::ParabolaD1(@)", header: "ElCLib.hxx".}
proc circleD2*(u: float; pos: Ax2; radius: float; p: var Pnt; v1: var Vec; v2: var Vec) {.
    importcpp: "ElCLib::CircleD2(@)", header: "ElCLib.hxx".}
proc ellipseD2*(u: float; pos: Ax2; majorRadius: float; minorRadius: float; p: var Pnt;
               v1: var Vec; v2: var Vec) {.importcpp: "ElCLib::EllipseD2(@)",
                                     header: "ElCLib.hxx".}
proc hyperbolaD2*(u: float; pos: Ax2; majorRadius: float; minorRadius: float; p: var Pnt;
                 v1: var Vec; v2: var Vec) {.importcpp: "ElCLib::HyperbolaD2(@)",
                                       header: "ElCLib.hxx".}
proc parabolaD2*(u: float; pos: Ax2; focal: float; p: var Pnt; v1: var Vec; v2: var Vec) {.
    importcpp: "ElCLib::ParabolaD2(@)", header: "ElCLib.hxx".}
proc circleD3*(u: float; pos: Ax2; radius: float; p: var Pnt; v1: var Vec; v2: var Vec;
              v3: var Vec) {.importcpp: "ElCLib::CircleD3(@)", header: "ElCLib.hxx".}
proc ellipseD3*(u: float; pos: Ax2; majorRadius: float; minorRadius: float; p: var Pnt;
               v1: var Vec; v2: var Vec; v3: var Vec) {.
    importcpp: "ElCLib::EllipseD3(@)", header: "ElCLib.hxx".}
proc hyperbolaD3*(u: float; pos: Ax2; majorRadius: float; minorRadius: float; p: var Pnt;
                 v1: var Vec; v2: var Vec; v3: var Vec) {.
    importcpp: "ElCLib::HyperbolaD3(@)", header: "ElCLib.hxx".}
proc lineDN*(u: float; pos: Ax1; n: int): Vec {.importcpp: "ElCLib::LineDN(@)",
                                        header: "ElCLib.hxx".}
proc circleDN*(u: float; pos: Ax2; radius: float; n: int): Vec {.
    importcpp: "ElCLib::CircleDN(@)", header: "ElCLib.hxx".}
proc ellipseDN*(u: float; pos: Ax2; majorRadius: float; minorRadius: float; n: int): Vec {.
    importcpp: "ElCLib::EllipseDN(@)", header: "ElCLib.hxx".}
proc hyperbolaDN*(u: float; pos: Ax2; majorRadius: float; minorRadius: float; n: int): Vec {.
    importcpp: "ElCLib::HyperbolaDN(@)", header: "ElCLib.hxx".}
proc parabolaDN*(u: float; pos: Ax2; focal: float; n: int): Vec {.
    importcpp: "ElCLib::ParabolaDN(@)", header: "ElCLib.hxx".}
proc lineValue*(u: float; pos: Ax2d): Pnt2d {.importcpp: "ElCLib::LineValue(@)",
                                        header: "ElCLib.hxx".}
proc circleValue*(u: float; pos: Ax22d; radius: float): Pnt2d {.
    importcpp: "ElCLib::CircleValue(@)", header: "ElCLib.hxx".}
proc ellipseValue*(u: float; pos: Ax22d; majorRadius: float; minorRadius: float): Pnt2d {.
    importcpp: "ElCLib::EllipseValue(@)", header: "ElCLib.hxx".}
proc hyperbolaValue*(u: float; pos: Ax22d; majorRadius: float; minorRadius: float): Pnt2d {.
    importcpp: "ElCLib::HyperbolaValue(@)", header: "ElCLib.hxx".}
proc parabolaValue*(u: float; pos: Ax22d; focal: float): Pnt2d {.
    importcpp: "ElCLib::ParabolaValue(@)", header: "ElCLib.hxx".}
proc lineD1*(u: float; pos: Ax2d; p: var Pnt2d; v1: var Vec2d) {.
    importcpp: "ElCLib::LineD1(@)", header: "ElCLib.hxx".}
proc circleD1*(u: float; pos: Ax22d; radius: float; p: var Pnt2d; v1: var Vec2d) {.
    importcpp: "ElCLib::CircleD1(@)", header: "ElCLib.hxx".}
proc ellipseD1*(u: float; pos: Ax22d; majorRadius: float; minorRadius: float;
               p: var Pnt2d; v1: var Vec2d) {.importcpp: "ElCLib::EllipseD1(@)",
                                        header: "ElCLib.hxx".}
proc hyperbolaD1*(u: float; pos: Ax22d; majorRadius: float; minorRadius: float;
                 p: var Pnt2d; v1: var Vec2d) {.importcpp: "ElCLib::HyperbolaD1(@)",
    header: "ElCLib.hxx".}
proc parabolaD1*(u: float; pos: Ax22d; focal: float; p: var Pnt2d; v1: var Vec2d) {.
    importcpp: "ElCLib::ParabolaD1(@)", header: "ElCLib.hxx".}
proc circleD2*(u: float; pos: Ax22d; radius: float; p: var Pnt2d; v1: var Vec2d;
              v2: var Vec2d) {.importcpp: "ElCLib::CircleD2(@)", header: "ElCLib.hxx".}
proc ellipseD2*(u: float; pos: Ax22d; majorRadius: float; minorRadius: float;
               p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.
    importcpp: "ElCLib::EllipseD2(@)", header: "ElCLib.hxx".}
proc hyperbolaD2*(u: float; pos: Ax22d; majorRadius: float; minorRadius: float;
                 p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.
    importcpp: "ElCLib::HyperbolaD2(@)", header: "ElCLib.hxx".}
proc parabolaD2*(u: float; pos: Ax22d; focal: float; p: var Pnt2d; v1: var Vec2d;
                v2: var Vec2d) {.importcpp: "ElCLib::ParabolaD2(@)",
                              header: "ElCLib.hxx".}
proc circleD3*(u: float; pos: Ax22d; radius: float; p: var Pnt2d; v1: var Vec2d;
              v2: var Vec2d; v3: var Vec2d) {.importcpp: "ElCLib::CircleD3(@)",
                                        header: "ElCLib.hxx".}
proc ellipseD3*(u: float; pos: Ax22d; majorRadius: float; minorRadius: float;
               p: var Pnt2d; v1: var Vec2d; v2: var Vec2d; v3: var Vec2d) {.
    importcpp: "ElCLib::EllipseD3(@)", header: "ElCLib.hxx".}
proc hyperbolaD3*(u: float; pos: Ax22d; majorRadius: float; minorRadius: float;
                 p: var Pnt2d; v1: var Vec2d; v2: var Vec2d; v3: var Vec2d) {.
    importcpp: "ElCLib::HyperbolaD3(@)", header: "ElCLib.hxx".}
proc lineDN*(u: float; pos: Ax2d; n: int): Vec2d {.importcpp: "ElCLib::LineDN(@)",
    header: "ElCLib.hxx".}
proc circleDN*(u: float; pos: Ax22d; radius: float; n: int): Vec2d {.
    importcpp: "ElCLib::CircleDN(@)", header: "ElCLib.hxx".}
proc ellipseDN*(u: float; pos: Ax22d; majorRadius: float; minorRadius: float; n: int): Vec2d {.
    importcpp: "ElCLib::EllipseDN(@)", header: "ElCLib.hxx".}
proc hyperbolaDN*(u: float; pos: Ax22d; majorRadius: float; minorRadius: float; n: int): Vec2d {.
    importcpp: "ElCLib::HyperbolaDN(@)", header: "ElCLib.hxx".}
proc parabolaDN*(u: float; pos: Ax22d; focal: float; n: int): Vec2d {.
    importcpp: "ElCLib::ParabolaDN(@)", header: "ElCLib.hxx".}
proc parameter*(L: Lin; p: Pnt): float {.importcpp: "ElCLib::Parameter(@)",
                                   header: "ElCLib.hxx".}
proc parameter*(L: Lin2d; p: Pnt2d): float {.importcpp: "ElCLib::Parameter(@)",
                                       header: "ElCLib.hxx".}
proc parameter*(c: Circ; p: Pnt): float {.importcpp: "ElCLib::Parameter(@)",
                                    header: "ElCLib.hxx".}
proc parameter*(c: Circ2d; p: Pnt2d): float {.importcpp: "ElCLib::Parameter(@)",
                                        header: "ElCLib.hxx".}
proc parameter*(e: Elips; p: Pnt): float {.importcpp: "ElCLib::Parameter(@)",
                                     header: "ElCLib.hxx".}
proc parameter*(e: Elips2d; p: Pnt2d): float {.importcpp: "ElCLib::Parameter(@)",
    header: "ElCLib.hxx".}
proc parameter*(h: Hypr; p: Pnt): float {.importcpp: "ElCLib::Parameter(@)",
                                    header: "ElCLib.hxx".}
proc parameter*(h: Hypr2d; p: Pnt2d): float {.importcpp: "ElCLib::Parameter(@)",
                                        header: "ElCLib.hxx".}
proc parameter*(prb: Parab; p: Pnt): float {.importcpp: "ElCLib::Parameter(@)",
                                       header: "ElCLib.hxx".}
proc parameter*(prb: Parab2d; p: Pnt2d): float {.importcpp: "ElCLib::Parameter(@)",
    header: "ElCLib.hxx".}
proc lineParameter*(pos: Ax1; p: Pnt): float {.importcpp: "ElCLib::LineParameter(@)",
    header: "ElCLib.hxx".}
proc lineParameter*(pos: Ax2d; p: Pnt2d): float {.
    importcpp: "ElCLib::LineParameter(@)", header: "ElCLib.hxx".}
proc circleParameter*(pos: Ax2; p: Pnt): float {.
    importcpp: "ElCLib::CircleParameter(@)", header: "ElCLib.hxx".}
proc circleParameter*(pos: Ax22d; p: Pnt2d): float {.
    importcpp: "ElCLib::CircleParameter(@)", header: "ElCLib.hxx".}
proc ellipseParameter*(pos: Ax2; majorRadius: float; minorRadius: float; p: Pnt): float {.
    importcpp: "ElCLib::EllipseParameter(@)", header: "ElCLib.hxx".}
proc ellipseParameter*(pos: Ax22d; majorRadius: float; minorRadius: float; p: Pnt2d): float {.
    importcpp: "ElCLib::EllipseParameter(@)", header: "ElCLib.hxx".}
proc hyperbolaParameter*(pos: Ax2; majorRadius: float; minorRadius: float; p: Pnt): float {.
    importcpp: "ElCLib::HyperbolaParameter(@)", header: "ElCLib.hxx".}
proc hyperbolaParameter*(pos: Ax22d; majorRadius: float; minorRadius: float; p: Pnt2d): float {.
    importcpp: "ElCLib::HyperbolaParameter(@)", header: "ElCLib.hxx".}
proc parabolaParameter*(pos: Ax2; p: Pnt): float {.
    importcpp: "ElCLib::ParabolaParameter(@)", header: "ElCLib.hxx".}
proc parabolaParameter*(pos: Ax22d; p: Pnt2d): float {.
    importcpp: "ElCLib::ParabolaParameter(@)", header: "ElCLib.hxx".}
proc to3d*(pos: Ax2; p: Pnt2d): Pnt {.importcpp: "ElCLib::To3d(@)", header: "ElCLib.hxx".}
proc to3d*(pos: Ax2; v: Vec2d): Vec {.importcpp: "ElCLib::To3d(@)", header: "ElCLib.hxx".}
proc to3d*(pos: Ax2; v: Dir2d): Dir {.importcpp: "ElCLib::To3d(@)", header: "ElCLib.hxx".}
proc to3d*(pos: Ax2; a: Ax2d): Ax1 {.importcpp: "ElCLib::To3d(@)", header: "ElCLib.hxx".}
proc to3d*(pos: Ax2; a: Ax22d): Ax2 {.importcpp: "ElCLib::To3d(@)", header: "ElCLib.hxx".}
proc to3d*(pos: Ax2; L: Lin2d): Lin {.importcpp: "ElCLib::To3d(@)", header: "ElCLib.hxx".}
proc to3d*(pos: Ax2; c: Circ2d): Circ {.importcpp: "ElCLib::To3d(@)",
                                  header: "ElCLib.hxx".}
proc to3d*(pos: Ax2; e: Elips2d): Elips {.importcpp: "ElCLib::To3d(@)",
                                    header: "ElCLib.hxx".}
proc to3d*(pos: Ax2; h: Hypr2d): Hypr {.importcpp: "ElCLib::To3d(@)",
                                  header: "ElCLib.hxx".}
proc to3d*(pos: Ax2; prb: Parab2d): Parab {.importcpp: "ElCLib::To3d(@)",
                                      header: "ElCLib.hxx".}
