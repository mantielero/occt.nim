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


proc inPeriod*(u: cfloat; uFirst: cfloat; uLast: cfloat): cfloat {.
    importcpp: "ElCLib::InPeriod(@)", header: "ElCLib.hxx".}
proc adjustPeriodic*(uFirst: cfloat; uLast: cfloat; precision: cfloat; u1: var cfloat;
                    u2: var cfloat) {.importcpp: "ElCLib::AdjustPeriodic(@)",
                                   header: "ElCLib.hxx".}
proc value*(u: cfloat; L: Lin): Pnt {.importcpp: "ElCLib::Value(@)",
                                header: "ElCLib.hxx".}
proc value*(u: cfloat; c: Circ): Pnt {.importcpp: "ElCLib::Value(@)",
                                 header: "ElCLib.hxx".}
proc value*(u: cfloat; e: Elips): Pnt {.importcpp: "ElCLib::Value(@)",
                                  header: "ElCLib.hxx".}
proc value*(u: cfloat; h: Hypr): Pnt {.importcpp: "ElCLib::Value(@)",
                                 header: "ElCLib.hxx".}
proc value*(u: cfloat; prb: Parab): Pnt {.importcpp: "ElCLib::Value(@)",
                                    header: "ElCLib.hxx".}
proc d1*(u: cfloat; L: Lin; p: var Pnt; v1: var Vec) {.importcpp: "ElCLib::D1(@)",
    header: "ElCLib.hxx".}
proc d1*(u: cfloat; c: Circ; p: var Pnt; v1: var Vec) {.importcpp: "ElCLib::D1(@)",
    header: "ElCLib.hxx".}
proc d1*(u: cfloat; e: Elips; p: var Pnt; v1: var Vec) {.importcpp: "ElCLib::D1(@)",
    header: "ElCLib.hxx".}
proc d1*(u: cfloat; h: Hypr; p: var Pnt; v1: var Vec) {.importcpp: "ElCLib::D1(@)",
    header: "ElCLib.hxx".}
proc d1*(u: cfloat; prb: Parab; p: var Pnt; v1: var Vec) {.importcpp: "ElCLib::D1(@)",
    header: "ElCLib.hxx".}
proc d2*(u: cfloat; c: Circ; p: var Pnt; v1: var Vec; v2: var Vec) {.
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc d2*(u: cfloat; e: Elips; p: var Pnt; v1: var Vec; v2: var Vec) {.
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc d2*(u: cfloat; h: Hypr; p: var Pnt; v1: var Vec; v2: var Vec) {.
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc d2*(u: cfloat; prb: Parab; p: var Pnt; v1: var Vec; v2: var Vec) {.
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc d3*(u: cfloat; c: Circ; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}
proc d3*(u: cfloat; e: Elips; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}
proc d3*(u: cfloat; h: Hypr; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}
proc dn*(u: cfloat; L: Lin; n: cint): Vec {.importcpp: "ElCLib::DN(@)",
                                    header: "ElCLib.hxx".}
proc dn*(u: cfloat; c: Circ; n: cint): Vec {.importcpp: "ElCLib::DN(@)",
                                     header: "ElCLib.hxx".}
proc dn*(u: cfloat; e: Elips; n: cint): Vec {.importcpp: "ElCLib::DN(@)",
                                      header: "ElCLib.hxx".}
proc dn*(u: cfloat; h: Hypr; n: cint): Vec {.importcpp: "ElCLib::DN(@)",
                                     header: "ElCLib.hxx".}
proc dn*(u: cfloat; prb: Parab; n: cint): Vec {.importcpp: "ElCLib::DN(@)",
                                        header: "ElCLib.hxx".}
proc value*(u: cfloat; L: Lin2d): Pnt2d {.importcpp: "ElCLib::Value(@)",
                                    header: "ElCLib.hxx".}
proc value*(u: cfloat; c: Circ2d): Pnt2d {.importcpp: "ElCLib::Value(@)",
                                     header: "ElCLib.hxx".}
proc value*(u: cfloat; e: Elips2d): Pnt2d {.importcpp: "ElCLib::Value(@)",
                                      header: "ElCLib.hxx".}
proc value*(u: cfloat; h: Hypr2d): Pnt2d {.importcpp: "ElCLib::Value(@)",
                                     header: "ElCLib.hxx".}
proc value*(u: cfloat; prb: Parab2d): Pnt2d {.importcpp: "ElCLib::Value(@)",
                                        header: "ElCLib.hxx".}
proc d1*(u: cfloat; L: Lin2d; p: var Pnt2d; v1: var Vec2d) {.importcpp: "ElCLib::D1(@)",
    header: "ElCLib.hxx".}
proc d1*(u: cfloat; c: Circ2d; p: var Pnt2d; v1: var Vec2d) {.importcpp: "ElCLib::D1(@)",
    header: "ElCLib.hxx".}
proc d1*(u: cfloat; e: Elips2d; p: var Pnt2d; v1: var Vec2d) {.importcpp: "ElCLib::D1(@)",
    header: "ElCLib.hxx".}
proc d1*(u: cfloat; h: Hypr2d; p: var Pnt2d; v1: var Vec2d) {.importcpp: "ElCLib::D1(@)",
    header: "ElCLib.hxx".}
proc d1*(u: cfloat; prb: Parab2d; p: var Pnt2d; v1: var Vec2d) {.
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}
proc d2*(u: cfloat; c: Circ2d; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc d2*(u: cfloat; e: Elips2d; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc d2*(u: cfloat; h: Hypr2d; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc d2*(u: cfloat; prb: Parab2d; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc d3*(u: cfloat; c: Circ2d; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d; v3: var Vec2d) {.
    importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}
proc d3*(u: cfloat; e: Elips2d; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d; v3: var Vec2d) {.
    importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}
proc d3*(u: cfloat; h: Hypr2d; p: var Pnt2d; v1: var Vec2d; v2: var Vec2d; v3: var Vec2d) {.
    importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}
proc dn*(u: cfloat; L: Lin2d; n: cint): Vec2d {.importcpp: "ElCLib::DN(@)",
                                        header: "ElCLib.hxx".}
proc dn*(u: cfloat; c: Circ2d; n: cint): Vec2d {.importcpp: "ElCLib::DN(@)",
    header: "ElCLib.hxx".}
proc dn*(u: cfloat; e: Elips2d; n: cint): Vec2d {.importcpp: "ElCLib::DN(@)",
    header: "ElCLib.hxx".}
proc dn*(u: cfloat; h: Hypr2d; n: cint): Vec2d {.importcpp: "ElCLib::DN(@)",
    header: "ElCLib.hxx".}
proc dn*(u: cfloat; prb: Parab2d; n: cint): Vec2d {.importcpp: "ElCLib::DN(@)",
    header: "ElCLib.hxx".}
proc lineValue*(u: cfloat; pos: Ax1): Pnt {.importcpp: "ElCLib::LineValue(@)",
                                      header: "ElCLib.hxx".}
proc circleValue*(u: cfloat; pos: Ax2; radius: cfloat): Pnt {.
    importcpp: "ElCLib::CircleValue(@)", header: "ElCLib.hxx".}
proc ellipseValue*(u: cfloat; pos: Ax2; majorRadius: cfloat; minorRadius: cfloat): Pnt {.
    importcpp: "ElCLib::EllipseValue(@)", header: "ElCLib.hxx".}
proc hyperbolaValue*(u: cfloat; pos: Ax2; majorRadius: cfloat; minorRadius: cfloat): Pnt {.
    importcpp: "ElCLib::HyperbolaValue(@)", header: "ElCLib.hxx".}
proc parabolaValue*(u: cfloat; pos: Ax2; focal: cfloat): Pnt {.
    importcpp: "ElCLib::ParabolaValue(@)", header: "ElCLib.hxx".}
proc lineD1*(u: cfloat; pos: Ax1; p: var Pnt; v1: var Vec) {.
    importcpp: "ElCLib::LineD1(@)", header: "ElCLib.hxx".}
proc circleD1*(u: cfloat; pos: Ax2; radius: cfloat; p: var Pnt; v1: var Vec) {.
    importcpp: "ElCLib::CircleD1(@)", header: "ElCLib.hxx".}
proc ellipseD1*(u: cfloat; pos: Ax2; majorRadius: cfloat; minorRadius: cfloat;
               p: var Pnt; v1: var Vec) {.importcpp: "ElCLib::EllipseD1(@)",
                                    header: "ElCLib.hxx".}
proc hyperbolaD1*(u: cfloat; pos: Ax2; majorRadius: cfloat; minorRadius: cfloat;
                 p: var Pnt; v1: var Vec) {.importcpp: "ElCLib::HyperbolaD1(@)",
                                      header: "ElCLib.hxx".}
proc parabolaD1*(u: cfloat; pos: Ax2; focal: cfloat; p: var Pnt; v1: var Vec) {.
    importcpp: "ElCLib::ParabolaD1(@)", header: "ElCLib.hxx".}
proc circleD2*(u: cfloat; pos: Ax2; radius: cfloat; p: var Pnt; v1: var Vec; v2: var Vec) {.
    importcpp: "ElCLib::CircleD2(@)", header: "ElCLib.hxx".}
proc ellipseD2*(u: cfloat; pos: Ax2; majorRadius: cfloat; minorRadius: cfloat;
               p: var Pnt; v1: var Vec; v2: var Vec) {.importcpp: "ElCLib::EllipseD2(@)",
    header: "ElCLib.hxx".}
proc hyperbolaD2*(u: cfloat; pos: Ax2; majorRadius: cfloat; minorRadius: cfloat;
                 p: var Pnt; v1: var Vec; v2: var Vec) {.
    importcpp: "ElCLib::HyperbolaD2(@)", header: "ElCLib.hxx".}
proc parabolaD2*(u: cfloat; pos: Ax2; focal: cfloat; p: var Pnt; v1: var Vec; v2: var Vec) {.
    importcpp: "ElCLib::ParabolaD2(@)", header: "ElCLib.hxx".}
proc circleD3*(u: cfloat; pos: Ax2; radius: cfloat; p: var Pnt; v1: var Vec; v2: var Vec;
              v3: var Vec) {.importcpp: "ElCLib::CircleD3(@)", header: "ElCLib.hxx".}
proc ellipseD3*(u: cfloat; pos: Ax2; majorRadius: cfloat; minorRadius: cfloat;
               p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    importcpp: "ElCLib::EllipseD3(@)", header: "ElCLib.hxx".}
proc hyperbolaD3*(u: cfloat; pos: Ax2; majorRadius: cfloat; minorRadius: cfloat;
                 p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    importcpp: "ElCLib::HyperbolaD3(@)", header: "ElCLib.hxx".}
proc lineDN*(u: cfloat; pos: Ax1; n: cint): Vec {.importcpp: "ElCLib::LineDN(@)",
    header: "ElCLib.hxx".}
proc circleDN*(u: cfloat; pos: Ax2; radius: cfloat; n: cint): Vec {.
    importcpp: "ElCLib::CircleDN(@)", header: "ElCLib.hxx".}
proc ellipseDN*(u: cfloat; pos: Ax2; majorRadius: cfloat; minorRadius: cfloat; n: cint): Vec {.
    importcpp: "ElCLib::EllipseDN(@)", header: "ElCLib.hxx".}
proc hyperbolaDN*(u: cfloat; pos: Ax2; majorRadius: cfloat; minorRadius: cfloat; n: cint): Vec {.
    importcpp: "ElCLib::HyperbolaDN(@)", header: "ElCLib.hxx".}
proc parabolaDN*(u: cfloat; pos: Ax2; focal: cfloat; n: cint): Vec {.
    importcpp: "ElCLib::ParabolaDN(@)", header: "ElCLib.hxx".}
proc lineValue*(u: cfloat; pos: Ax2d): Pnt2d {.importcpp: "ElCLib::LineValue(@)",
    header: "ElCLib.hxx".}
proc circleValue*(u: cfloat; pos: Ax22d; radius: cfloat): Pnt2d {.
    importcpp: "ElCLib::CircleValue(@)", header: "ElCLib.hxx".}
proc ellipseValue*(u: cfloat; pos: Ax22d; majorRadius: cfloat; minorRadius: cfloat): Pnt2d {.
    importcpp: "ElCLib::EllipseValue(@)", header: "ElCLib.hxx".}
proc hyperbolaValue*(u: cfloat; pos: Ax22d; majorRadius: cfloat; minorRadius: cfloat): Pnt2d {.
    importcpp: "ElCLib::HyperbolaValue(@)", header: "ElCLib.hxx".}
proc parabolaValue*(u: cfloat; pos: Ax22d; focal: cfloat): Pnt2d {.
    importcpp: "ElCLib::ParabolaValue(@)", header: "ElCLib.hxx".}
proc lineD1*(u: cfloat; pos: Ax2d; p: var Pnt2d; v1: var Vec2d) {.
    importcpp: "ElCLib::LineD1(@)", header: "ElCLib.hxx".}
proc circleD1*(u: cfloat; pos: Ax22d; radius: cfloat; p: var Pnt2d; v1: var Vec2d) {.
    importcpp: "ElCLib::CircleD1(@)", header: "ElCLib.hxx".}
proc ellipseD1*(u: cfloat; pos: Ax22d; majorRadius: cfloat; minorRadius: cfloat;
               p: var Pnt2d; v1: var Vec2d) {.importcpp: "ElCLib::EllipseD1(@)",
                                        header: "ElCLib.hxx".}
proc hyperbolaD1*(u: cfloat; pos: Ax22d; majorRadius: cfloat; minorRadius: cfloat;
                 p: var Pnt2d; v1: var Vec2d) {.importcpp: "ElCLib::HyperbolaD1(@)",
    header: "ElCLib.hxx".}
proc parabolaD1*(u: cfloat; pos: Ax22d; focal: cfloat; p: var Pnt2d; v1: var Vec2d) {.
    importcpp: "ElCLib::ParabolaD1(@)", header: "ElCLib.hxx".}
proc circleD2*(u: cfloat; pos: Ax22d; radius: cfloat; p: var Pnt2d; v1: var Vec2d;
              v2: var Vec2d) {.importcpp: "ElCLib::CircleD2(@)", header: "ElCLib.hxx".}
proc ellipseD2*(u: cfloat; pos: Ax22d; majorRadius: cfloat; minorRadius: cfloat;
               p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.
    importcpp: "ElCLib::EllipseD2(@)", header: "ElCLib.hxx".}
proc hyperbolaD2*(u: cfloat; pos: Ax22d; majorRadius: cfloat; minorRadius: cfloat;
                 p: var Pnt2d; v1: var Vec2d; v2: var Vec2d) {.
    importcpp: "ElCLib::HyperbolaD2(@)", header: "ElCLib.hxx".}
proc parabolaD2*(u: cfloat; pos: Ax22d; focal: cfloat; p: var Pnt2d; v1: var Vec2d;
                v2: var Vec2d) {.importcpp: "ElCLib::ParabolaD2(@)",
                              header: "ElCLib.hxx".}
proc circleD3*(u: cfloat; pos: Ax22d; radius: cfloat; p: var Pnt2d; v1: var Vec2d;
              v2: var Vec2d; v3: var Vec2d) {.importcpp: "ElCLib::CircleD3(@)",
                                        header: "ElCLib.hxx".}
proc ellipseD3*(u: cfloat; pos: Ax22d; majorRadius: cfloat; minorRadius: cfloat;
               p: var Pnt2d; v1: var Vec2d; v2: var Vec2d; v3: var Vec2d) {.
    importcpp: "ElCLib::EllipseD3(@)", header: "ElCLib.hxx".}
proc hyperbolaD3*(u: cfloat; pos: Ax22d; majorRadius: cfloat; minorRadius: cfloat;
                 p: var Pnt2d; v1: var Vec2d; v2: var Vec2d; v3: var Vec2d) {.
    importcpp: "ElCLib::HyperbolaD3(@)", header: "ElCLib.hxx".}
proc lineDN*(u: cfloat; pos: Ax2d; n: cint): Vec2d {.importcpp: "ElCLib::LineDN(@)",
    header: "ElCLib.hxx".}
proc circleDN*(u: cfloat; pos: Ax22d; radius: cfloat; n: cint): Vec2d {.
    importcpp: "ElCLib::CircleDN(@)", header: "ElCLib.hxx".}
proc ellipseDN*(u: cfloat; pos: Ax22d; majorRadius: cfloat; minorRadius: cfloat; n: cint): Vec2d {.
    importcpp: "ElCLib::EllipseDN(@)", header: "ElCLib.hxx".}
proc hyperbolaDN*(u: cfloat; pos: Ax22d; majorRadius: cfloat; minorRadius: cfloat;
                 n: cint): Vec2d {.importcpp: "ElCLib::HyperbolaDN(@)",
                                header: "ElCLib.hxx".}
proc parabolaDN*(u: cfloat; pos: Ax22d; focal: cfloat; n: cint): Vec2d {.
    importcpp: "ElCLib::ParabolaDN(@)", header: "ElCLib.hxx".}
proc parameter*(L: Lin; p: Pnt): cfloat {.importcpp: "ElCLib::Parameter(@)",
                                    header: "ElCLib.hxx".}
proc parameter*(L: Lin2d; p: Pnt2d): cfloat {.importcpp: "ElCLib::Parameter(@)",
                                        header: "ElCLib.hxx".}
proc parameter*(c: Circ; p: Pnt): cfloat {.importcpp: "ElCLib::Parameter(@)",
                                     header: "ElCLib.hxx".}
proc parameter*(c: Circ2d; p: Pnt2d): cfloat {.importcpp: "ElCLib::Parameter(@)",
    header: "ElCLib.hxx".}
proc parameter*(e: Elips; p: Pnt): cfloat {.importcpp: "ElCLib::Parameter(@)",
                                      header: "ElCLib.hxx".}
proc parameter*(e: Elips2d; p: Pnt2d): cfloat {.importcpp: "ElCLib::Parameter(@)",
    header: "ElCLib.hxx".}
proc parameter*(h: Hypr; p: Pnt): cfloat {.importcpp: "ElCLib::Parameter(@)",
                                     header: "ElCLib.hxx".}
proc parameter*(h: Hypr2d; p: Pnt2d): cfloat {.importcpp: "ElCLib::Parameter(@)",
    header: "ElCLib.hxx".}
proc parameter*(prb: Parab; p: Pnt): cfloat {.importcpp: "ElCLib::Parameter(@)",
                                        header: "ElCLib.hxx".}
proc parameter*(prb: Parab2d; p: Pnt2d): cfloat {.importcpp: "ElCLib::Parameter(@)",
    header: "ElCLib.hxx".}
proc lineParameter*(pos: Ax1; p: Pnt): cfloat {.importcpp: "ElCLib::LineParameter(@)",
    header: "ElCLib.hxx".}
proc lineParameter*(pos: Ax2d; p: Pnt2d): cfloat {.
    importcpp: "ElCLib::LineParameter(@)", header: "ElCLib.hxx".}
proc circleParameter*(pos: Ax2; p: Pnt): cfloat {.
    importcpp: "ElCLib::CircleParameter(@)", header: "ElCLib.hxx".}
proc circleParameter*(pos: Ax22d; p: Pnt2d): cfloat {.
    importcpp: "ElCLib::CircleParameter(@)", header: "ElCLib.hxx".}
proc ellipseParameter*(pos: Ax2; majorRadius: cfloat; minorRadius: cfloat; p: Pnt): cfloat {.
    importcpp: "ElCLib::EllipseParameter(@)", header: "ElCLib.hxx".}
proc ellipseParameter*(pos: Ax22d; majorRadius: cfloat; minorRadius: cfloat; p: Pnt2d): cfloat {.
    importcpp: "ElCLib::EllipseParameter(@)", header: "ElCLib.hxx".}
proc hyperbolaParameter*(pos: Ax2; majorRadius: cfloat; minorRadius: cfloat; p: Pnt): cfloat {.
    importcpp: "ElCLib::HyperbolaParameter(@)", header: "ElCLib.hxx".}
proc hyperbolaParameter*(pos: Ax22d; majorRadius: cfloat; minorRadius: cfloat; p: Pnt2d): cfloat {.
    importcpp: "ElCLib::HyperbolaParameter(@)", header: "ElCLib.hxx".}
proc parabolaParameter*(pos: Ax2; p: Pnt): cfloat {.
    importcpp: "ElCLib::ParabolaParameter(@)", header: "ElCLib.hxx".}
proc parabolaParameter*(pos: Ax22d; p: Pnt2d): cfloat {.
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

























