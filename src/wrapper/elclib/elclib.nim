#import elclib_types
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


proc inPeriod*(u: cfloat; uFirst: cfloat; uLast: cfloat): cfloat {.cdecl,
    importcpp: "ElCLib::InPeriod(@)", header: "ElCLib.hxx".}

proc adjustPeriodic*(uFirst: cfloat; uLast: cfloat; precision: cfloat; u1: var cfloat;
                    u2: var cfloat) {.cdecl, importcpp: "ElCLib::AdjustPeriodic(@)",
                                   header: "ElCLib.hxx".}


proc value*(u: cfloat; L: gp_Lin): gp_Pnt {.cdecl, importcpp: "ElCLib::Value(@)", header: "ElCLib.hxx".}

proc value*(u: cfloat; c: gp_Circ): gp_Pnt {.cdecl, importcpp: "ElCLib::Value(@)",
                                 header: "ElCLib.hxx".}

proc value*(u: cfloat; e: gp_Elips): gp_Pnt {.cdecl, importcpp: "ElCLib::Value(@)",
                                  header: "ElCLib.hxx".}

proc value*(u: cfloat; h: gp_Hypr): gp_Pnt {.cdecl, importcpp: "ElCLib::Value(@)",
                                 header: "ElCLib.hxx".}

proc value*(u: cfloat; prb: gp_Parab): gp_Pnt {.cdecl, importcpp: "ElCLib::Value(@)",
                                    header: "ElCLib.hxx".}


proc d1*(u: cfloat; L: gp_Lin; p: var gp_Pnt; v1: var gp_Vec) {.cdecl, importcpp: "ElCLib::D1(@)",
    header: "ElCLib.hxx".}

proc d1*(u: cfloat; c: gp_Circ; p: var gp_Pnt; v1: var gp_Vec) {.cdecl, importcpp: "ElCLib::D1(@)",
    header: "ElCLib.hxx".}

proc d1*(u: cfloat; e: gp_Elips; p: var gp_Pnt; v1: var gp_Vec) {.cdecl, importcpp: "ElCLib::D1(@)",
    header: "ElCLib.hxx".}

proc d1*(u: cfloat; h: gp_Hypr; p: var gp_Pnt; v1: var gp_Vec) {.cdecl, importcpp: "ElCLib::D1(@)",
    header: "ElCLib.hxx".}

proc d1*(u: cfloat; prb: gp_Parab; p: var gp_Pnt; v1: var gp_Vec) {.cdecl,
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}


proc d2*(u: cfloat; c: gp_Circ; p: var gp_Pnt; v1: var gp_Vec; v2: var gp_Vec) {.cdecl,
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}

proc d2*(u: cfloat; e: gp_Elips; p: var gp_Pnt; v1: var gp_Vec; v2: var gp_Vec) {.cdecl,
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}

proc d2*(u: cfloat; h: gp_Hypr; p: var gp_Pnt; v1: var gp_Vec; v2: var gp_Vec) {.cdecl,
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}

proc d2*(u: cfloat; prb: gp_Parab; p: var gp_Pnt; v1: var gp_Vec; v2: var gp_Vec) {.cdecl,
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}


proc d3*(u: cfloat; c: gp_Circ; p: var gp_Pnt; v1: var gp_Vec; v2: var gp_Vec; v3: var gp_Vec) {.cdecl,
    importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}

proc d3*(u: cfloat; e: gp_Elips; p: var gp_Pnt; v1: var gp_Vec; v2: var gp_Vec; v3: var gp_Vec) {.cdecl,
    importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}

proc d3*(u: cfloat; h: gp_Hypr; p: var gp_Pnt; v1: var gp_Vec; v2: var gp_Vec; v3: var gp_Vec) {.cdecl,
    importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}


proc dn*(u: cfloat; L: gp_Lin; n: cint): gp_Vec {.cdecl, importcpp: "ElCLib::DN(@)",
                                    header: "ElCLib.hxx".}

proc dn*(u: cfloat; c: gp_Circ; n: cint): gp_Vec {.cdecl, importcpp: "ElCLib::DN(@)",
                                     header: "ElCLib.hxx".}

proc dn*(u: cfloat; e: gp_Elips; n: cint): gp_Vec {.cdecl, importcpp: "ElCLib::DN(@)",
                                      header: "ElCLib.hxx".}

proc dn*(u: cfloat; h: gp_Hypr; n: cint): gp_Vec {.cdecl, importcpp: "ElCLib::DN(@)",
                                     header: "ElCLib.hxx".}

proc dn*(u: cfloat; prb: gp_Parab; n: cint): gp_Vec {.cdecl, importcpp: "ElCLib::DN(@)",
                                        header: "ElCLib.hxx".}


proc value*(u: cfloat; L: gp_Lin2d): gp_Pnt2d {.cdecl, importcpp: "ElCLib::Value(@)",
                                    header: "ElCLib.hxx".}

proc value*(u: cfloat; c: gp_Circ2d): gp_Pnt2d {.cdecl, importcpp: "ElCLib::Value(@)",
                                     header: "ElCLib.hxx".}

proc value*(u: cfloat; e: gp_Elips2d): gp_Pnt2d {.cdecl, importcpp: "ElCLib::Value(@)",
                                      header: "ElCLib.hxx".}

proc value*(u: cfloat; h: gp_Hypr2d): gp_Pnt2d {.cdecl, importcpp: "ElCLib::Value(@)",
                                     header: "ElCLib.hxx".}

proc value*(u: cfloat; prb: gp_Parab2d): gp_Pnt2d {.cdecl, importcpp: "ElCLib::Value(@)",
                                        header: "ElCLib.hxx".}


proc d1*(u: cfloat; L: gp_Lin2d; p: var gp_Pnt2d; v1: var gp_Vec2d) {.cdecl,
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}

proc d1*(u: cfloat; c: gp_Circ2d; p: var gp_Pnt2d; v1: var gp_Vec2d) {.cdecl,
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}

proc d1*(u: cfloat; e: gp_Elips2d; p: var gp_Pnt2d; v1: var gp_Vec2d) {.cdecl,
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}

proc d1*(u: cfloat; h: gp_Hypr2d; p: var gp_Pnt2d; v1: var gp_Vec2d) {.cdecl,
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}

proc d1*(u: cfloat; prb: gp_Parab2d; p: var gp_Pnt2d; v1: var gp_Vec2d) {.cdecl,
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}


proc d2*(u: cfloat; c: gp_Circ2d; p: var gp_Pnt2d; v1: var gp_Vec2d; v2: var gp_Vec2d) {.cdecl,
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}

proc d2*(u: cfloat; e: gp_Elips2d; p: var gp_Pnt2d; v1: var gp_Vec2d; v2: var gp_Vec2d) {.cdecl,
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}

proc d2*(u: cfloat; h: gp_Hypr2d; p: var gp_Pnt2d; v1: var gp_Vec2d; v2: var gp_Vec2d) {.cdecl,
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}

proc d2*(u: cfloat; prb: gp_Parab2d; p: var gp_Pnt2d; v1: var gp_Vec2d; v2: var gp_Vec2d) {.cdecl,
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}


proc d3*(u: cfloat; c: gp_Circ2d; p: var gp_Pnt2d; v1: var gp_Vec2d; v2: var gp_Vec2d; v3: var gp_Vec2d) {.
    cdecl, importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}

proc d3*(u: cfloat; e: gp_Elips2d; p: var gp_Pnt2d; v1: var gp_Vec2d; v2: var gp_Vec2d; v3: var gp_Vec2d) {.
    cdecl, importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}
proc d3*(u: cfloat; h: gp_Hypr2d; p: var gp_Pnt2d; v1: var gp_Vec2d; v2: var gp_Vec2d; v3: var gp_Vec2d) {.
    cdecl, importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}

proc dn*(u: cfloat; L: gp_Lin2d; n: cint): gp_Vec2d {.cdecl, importcpp: "ElCLib::DN(@)",
                                        header: "ElCLib.hxx".}
proc dn*(u: cfloat; c: gp_Circ2d; n: cint): gp_Vec2d {.cdecl, importcpp: "ElCLib::DN(@)",
    header: "ElCLib.hxx".}
proc dn*(u: cfloat; e: gp_Elips2d; n: cint): gp_Vec2d {.cdecl, importcpp: "ElCLib::DN(@)",
    header: "ElCLib.hxx".}
proc dn*(u: cfloat; h: gp_Hypr2d; n: cint): gp_Vec2d {.cdecl, importcpp: "ElCLib::DN(@)",
    header: "ElCLib.hxx".}
proc dn*(u: cfloat; prb: gp_Parab2d; n: cint): gp_Vec2d {.cdecl, importcpp: "ElCLib::DN(@)",
    header: "ElCLib.hxx".}

proc lineValue*(u: cfloat; pos: gp_Ax1): gp_Pnt {.cdecl, importcpp: "ElCLib::gp_LineValue(@)",
                                      header: "ElCLib.hxx".}

proc circleValue*(u: cfloat; pos: gp_Ax2; radius: cfloat): gp_Pnt {.cdecl,
    importcpp: "ElCLib::gp_CircleValue(@)", header: "ElCLib.hxx".}

proc ellipseValue*(u: cfloat; pos: gp_Ax2; majorRadius: cfloat; minorRadius: cfloat): gp_Pnt {.
    cdecl, importcpp: "ElCLib::EllipseValue(@)", header: "ElCLib.hxx".}

proc hyperbolaValue*(u: cfloat; pos: gp_Ax2; majorRadius: cfloat; minorRadius: cfloat): gp_Pnt {.
    cdecl, importcpp: "ElCLib::HyperbolaValue(@)", header: "ElCLib.hxx".}

proc parabolaValue*(u: cfloat; pos: gp_Ax2; focal: cfloat): gp_Pnt {.cdecl,
    importcpp: "ElCLib::gp_ParabolaValue(@)", header: "ElCLib.hxx".}

proc lineD1*(u: cfloat; pos: gp_Ax1; p: var gp_Pnt; v1: var gp_Vec) {.cdecl,
    importcpp: "ElCLib::gp_LineD1(@)", header: "ElCLib.hxx".}

proc circleD1*(u: cfloat; pos: gp_Ax2; radius: cfloat; p: var gp_Pnt; v1: var gp_Vec) {.cdecl,
    importcpp: "ElCLib::gp_CircleD1(@)", header: "ElCLib.hxx".}

proc ellipseD1*(u: cfloat; pos: gp_Ax2; majorRadius: cfloat; minorRadius: cfloat;
               p: var gp_Pnt; v1: var gp_Vec) {.cdecl, importcpp: "ElCLib::EllipseD1(@)",
                                    header: "ElCLib.hxx".}

proc hyperbolaD1*(u: cfloat; pos: gp_Ax2; majorRadius: cfloat; minorRadius: cfloat;
                 p: var gp_Pnt; v1: var gp_Vec) {.cdecl, importcpp: "ElCLib::HyperbolaD1(@)",
                                      header: "ElCLib.hxx".}

proc parabolaD1*(u: cfloat; pos: gp_Ax2; focal: cfloat; p: var gp_Pnt; v1: var gp_Vec) {.cdecl,
    importcpp: "ElCLib::gp_ParabolaD1(@)", header: "ElCLib.hxx".}

proc circleD2*(u: cfloat; pos: gp_Ax2; radius: cfloat; p: var gp_Pnt; v1: var gp_Vec; v2: var gp_Vec) {.
    cdecl, importcpp: "ElCLib::gp_CircleD2(@)", header: "ElCLib.hxx".}

proc ellipseD2*(u: cfloat; pos: gp_Ax2; majorRadius: cfloat; minorRadius: cfloat;
               p: var gp_Pnt; v1: var gp_Vec; v2: var gp_Vec) {.cdecl,
    importcpp: "ElCLib::EllipseD2(@)", header: "ElCLib.hxx".}

proc hyperbolaD2*(u: cfloat; pos: gp_Ax2; majorRadius: cfloat; minorRadius: cfloat;
                 p: var gp_Pnt; v1: var gp_Vec; v2: var gp_Vec) {.cdecl,
    importcpp: "ElCLib::HyperbolaD2(@)", header: "ElCLib.hxx".}

proc parabolaD2*(u: cfloat; pos: gp_Ax2; focal: cfloat; p: var gp_Pnt; v1: var gp_Vec; v2: var gp_Vec) {.
    cdecl, importcpp: "ElCLib::gp_ParabolaD2(@)", header: "ElCLib.hxx".}

proc circleD3*(u: cfloat; pos: gp_Ax2; radius: cfloat; p: var gp_Pnt; v1: var gp_Vec; v2: var gp_Vec;
              v3: var gp_Vec) {.cdecl, importcpp: "ElCLib::gp_CircleD3(@)", header: "ElCLib.hxx".}

proc ellipseD3*(u: cfloat; pos: gp_Ax2; majorRadius: cfloat; minorRadius: cfloat;
               p: var gp_Pnt; v1: var gp_Vec; v2: var gp_Vec; v3: var gp_Vec) {.cdecl,
    importcpp: "ElCLib::EllipseD3(@)", header: "ElCLib.hxx".}

proc hyperbolaD3*(u: cfloat; pos: gp_Ax2; majorRadius: cfloat; minorRadius: cfloat;
                 p: var gp_Pnt; v1: var gp_Vec; v2: var gp_Vec; v3: var gp_Vec) {.cdecl,
    importcpp: "ElCLib::HyperbolaD3(@)", header: "ElCLib.hxx".}

proc lineDN*(u: cfloat; pos: gp_Ax1; n: cint): gp_Vec {.cdecl, importcpp: "ElCLib::gp_LineDN(@)",
    header: "ElCLib.hxx".}

proc circleDN*(u: cfloat; pos: gp_Ax2; radius: cfloat; n: cint): gp_Vec {.cdecl,
    importcpp: "ElCLib::gp_CircleDN(@)", header: "ElCLib.hxx".}

proc ellipseDN*(u: cfloat; pos: gp_Ax2; majorRadius: cfloat; minorRadius: cfloat; n: cint): gp_Vec {.
    cdecl, importcpp: "ElCLib::EllipseDN(@)", header: "ElCLib.hxx".}

proc hyperbolaDN*(u: cfloat; pos: gp_Ax2; majorRadius: cfloat; minorRadius: cfloat; n: cint): gp_Vec {.
    cdecl, importcpp: "ElCLib::HyperbolaDN(@)", header: "ElCLib.hxx".}

proc parabolaDN*(u: cfloat; pos: gp_Ax2; focal: cfloat; n: cint): gp_Vec {.cdecl,
    importcpp: "ElCLib::gp_ParabolaDN(@)", header: "ElCLib.hxx".}

proc lineValue*(u: cfloat; pos: gp_Ax2d): gp_Pnt2d {.cdecl,
    importcpp: "ElCLib::gp_LineValue(@)", header: "ElCLib.hxx".}

proc circleValue*(u: cfloat; pos: gp_Ax22d; radius: cfloat): gp_Pnt2d {.cdecl,
    importcpp: "ElCLib::gp_CircleValue(@)", header: "ElCLib.hxx".}

proc ellipseValue*(u: cfloat; pos: gp_Ax22d; majorRadius: cfloat; minorRadius: cfloat): gp_Pnt2d {.
    cdecl, importcpp: "ElCLib::EllipseValue(@)", header: "ElCLib.hxx".}

proc hyperbolaValue*(u: cfloat; pos: gp_Ax22d; majorRadius: cfloat; minorRadius: cfloat): gp_Pnt2d {.
    cdecl, importcpp: "ElCLib::HyperbolaValue(@)", header: "ElCLib.hxx".}

proc parabolaValue*(u: cfloat; pos: gp_Ax22d; focal: cfloat): gp_Pnt2d {.cdecl,
    importcpp: "ElCLib::gp_ParabolaValue(@)", header: "ElCLib.hxx".}

proc lineD1*(u: cfloat; pos: gp_Ax2d; p: var gp_Pnt2d; v1: var gp_Vec2d) {.cdecl,
    importcpp: "ElCLib::gp_LineD1(@)", header: "ElCLib.hxx".}

proc circleD1*(u: cfloat; pos: gp_Ax22d; radius: cfloat; p: var gp_Pnt2d; v1: var gp_Vec2d) {.cdecl,
    importcpp: "ElCLib::gp_CircleD1(@)", header: "ElCLib.hxx".}

proc ellipseD1*(u: cfloat; pos: gp_Ax22d; majorRadius: cfloat; minorRadius: cfloat;
               p: var gp_Pnt2d; v1: var gp_Vec2d) {.cdecl, importcpp: "ElCLib::EllipseD1(@)",
                                        header: "ElCLib.hxx".}

proc hyperbolaD1*(u: cfloat; pos: gp_Ax22d; majorRadius: cfloat; minorRadius: cfloat;
                 p: var gp_Pnt2d; v1: var gp_Vec2d) {.cdecl,
    importcpp: "ElCLib::HyperbolaD1(@)", header: "ElCLib.hxx".}

proc parabolaD1*(u: cfloat; pos: gp_Ax22d; focal: cfloat; p: var gp_Pnt2d; v1: var gp_Vec2d) {.cdecl,
    importcpp: "ElCLib::gp_ParabolaD1(@)", header: "ElCLib.hxx".}

proc circleD2*(u: cfloat; pos: gp_Ax22d; radius: cfloat; p: var gp_Pnt2d; v1: var gp_Vec2d;
              v2: var gp_Vec2d) {.cdecl, importcpp: "ElCLib::gp_CircleD2(@)", header: "ElCLib.hxx".}

proc ellipseD2*(u: cfloat; pos: gp_Ax22d; majorRadius: cfloat; minorRadius: cfloat;
               p: var gp_Pnt2d; v1: var gp_Vec2d; v2: var gp_Vec2d) {.cdecl,
    importcpp: "ElCLib::EllipseD2(@)", header: "ElCLib.hxx".}

proc hyperbolaD2*(u: cfloat; pos: gp_Ax22d; majorRadius: cfloat; minorRadius: cfloat;
                 p: var gp_Pnt2d; v1: var gp_Vec2d; v2: var gp_Vec2d) {.cdecl,
    importcpp: "ElCLib::HyperbolaD2(@)", header: "ElCLib.hxx".}

proc parabolaD2*(u: cfloat; pos: gp_Ax22d; focal: cfloat; p: var gp_Pnt2d; v1: var gp_Vec2d;
                v2: var gp_Vec2d) {.cdecl, importcpp: "ElCLib::gp_ParabolaD2(@)",
                              header: "ElCLib.hxx".}

proc circleD3*(u: cfloat; pos: gp_Ax22d; radius: cfloat; p: var gp_Pnt2d; v1: var gp_Vec2d;
              v2: var gp_Vec2d; v3: var gp_Vec2d) {.cdecl, importcpp: "ElCLib::gp_CircleD3(@)",
                                        header: "ElCLib.hxx".}

proc ellipseD3*(u: cfloat; pos: gp_Ax22d; majorRadius: cfloat; minorRadius: cfloat;
               p: var gp_Pnt2d; v1: var gp_Vec2d; v2: var gp_Vec2d; v3: var gp_Vec2d) {.cdecl,
    importcpp: "ElCLib::EllipseD3(@)", header: "ElCLib.hxx".}

proc hyperbolaD3*(u: cfloat; pos: gp_Ax22d; majorRadius: cfloat; minorRadius: cfloat;
                 p: var gp_Pnt2d; v1: var gp_Vec2d; v2: var gp_Vec2d; v3: var gp_Vec2d) {.cdecl,
    importcpp: "ElCLib::HyperbolaD3(@)", header: "ElCLib.hxx".}

proc lineDN*(u: cfloat; pos: gp_Ax2d; n: cint): gp_Vec2d {.cdecl,
    importcpp: "ElCLib::gp_LineDN(@)", header: "ElCLib.hxx".}

proc circleDN*(u: cfloat; pos: gp_Ax22d; radius: cfloat; n: cint): gp_Vec2d {.cdecl,
    importcpp: "ElCLib::gp_CircleDN(@)", header: "ElCLib.hxx".}

proc ellipseDN*(u: cfloat; pos: gp_Ax22d; majorRadius: cfloat; minorRadius: cfloat; n: cint): gp_Vec2d {.
    cdecl, importcpp: "ElCLib::EllipseDN(@)", header: "ElCLib.hxx".}

proc hyperbolaDN*(u: cfloat; pos: gp_Ax22d; majorRadius: cfloat; minorRadius: cfloat;
                 n: cint): gp_Vec2d {.cdecl, importcpp: "ElCLib::HyperbolaDN(@)",
                                header: "ElCLib.hxx".}

proc parabolaDN*(u: cfloat; pos: gp_Ax22d; focal: cfloat; n: cint): gp_Vec2d {.cdecl,
    importcpp: "ElCLib::gp_ParabolaDN(@)", header: "ElCLib.hxx".}


proc parameter*(L: gp_Lin; p: gp_Pnt): cfloat {.cdecl, importcpp: "ElCLib::Parameter(@)",
                                    header: "ElCLib.hxx".}
proc parameter*(L: gp_Lin2d; p: gp_Pnt2d): cfloat {.cdecl, importcpp: "ElCLib::Parameter(@)",
                                        header: "ElCLib.hxx".}
proc parameter*(c: gp_Circ; p: gp_Pnt): cfloat {.cdecl, importcpp: "ElCLib::Parameter(@)",
                                     header: "ElCLib.hxx".}
proc parameter*(c: gp_Circ2d; p: gp_Pnt2d): cfloat {.cdecl,
    importcpp: "ElCLib::Parameter(@)", header: "ElCLib.hxx".}
proc parameter*(e: gp_Elips; p: gp_Pnt): cfloat {.cdecl, importcpp: "ElCLib::Parameter(@)",
                                      header: "ElCLib.hxx".}
proc parameter*(e: gp_Elips2d; p: gp_Pnt2d): cfloat {.cdecl,
    importcpp: "ElCLib::Parameter(@)", header: "ElCLib.hxx".}
proc parameter*(h: gp_Hypr; p: gp_Pnt): cfloat {.cdecl, importcpp: "ElCLib::Parameter(@)",
                                     header: "ElCLib.hxx".}
proc parameter*(h: gp_Hypr2d; p: gp_Pnt2d): cfloat {.cdecl,
    importcpp: "ElCLib::Parameter(@)", header: "ElCLib.hxx".}


proc parameter*(prb: gp_Parab; p: gp_Pnt): cfloat {.cdecl, importcpp: "ElCLib::Parameter(@)",
                                        header: "ElCLib.hxx".}
proc parameter*(prb: gp_Parab2d; p: gp_Pnt2d): cfloat {.cdecl,
    importcpp: "ElCLib::Parameter(@)", header: "ElCLib.hxx".}


proc lineParameter*(pos: gp_Ax1; p: gp_Pnt): cfloat {.cdecl,
    importcpp: "ElCLib::gp_LineParameter(@)", header: "ElCLib.hxx".}
proc lineParameter*(pos: gp_Ax2d; p: gp_Pnt2d): cfloat {.cdecl,
    importcpp: "ElCLib::gp_LineParameter(@)", header: "ElCLib.hxx".}


proc circleParameter*(pos: gp_Ax2; p: gp_Pnt): cfloat {.cdecl,
    importcpp: "ElCLib::gp_CircleParameter(@)", header: "ElCLib.hxx".}
proc circleParameter*(pos: gp_Ax22d; p: gp_Pnt2d): cfloat {.cdecl,
    importcpp: "ElCLib::gp_CircleParameter(@)", header: "ElCLib.hxx".}


proc ellipseParameter*(pos: gp_Ax2; majorRadius: cfloat; minorRadius: cfloat; p: gp_Pnt): cfloat {.
    cdecl, importcpp: "ElCLib::EllipseParameter(@)", header: "ElCLib.hxx".}
proc ellipseParameter*(pos: gp_Ax22d; majorRadius: cfloat; minorRadius: cfloat; p: gp_Pnt2d): cfloat {.
    cdecl, importcpp: "ElCLib::EllipseParameter(@)", header: "ElCLib.hxx".}


proc hyperbolaParameter*(pos: gp_Ax2; majorRadius: cfloat; minorRadius: cfloat; p: gp_Pnt): cfloat {.
    cdecl, importcpp: "ElCLib::HyperbolaParameter(@)", header: "ElCLib.hxx".}
proc hyperbolaParameter*(pos: gp_Ax22d; majorRadius: cfloat; minorRadius: cfloat; p: gp_Pnt2d): cfloat {.
    cdecl, importcpp: "ElCLib::HyperbolaParameter(@)", header: "ElCLib.hxx".}


proc parabolaParameter*(pos: gp_Ax2; p: gp_Pnt): cfloat {.cdecl,
    importcpp: "ElCLib::gp_ParabolaParameter(@)", header: "ElCLib.hxx".}
proc parabolaParameter*(pos: gp_Ax22d; p: gp_Pnt2d): cfloat {.cdecl,
    importcpp: "ElCLib::gp_ParabolaParameter(@)", header: "ElCLib.hxx".}


{.push cdecl, importcpp: "ElCLib::To3d(@)", header: "ElCLib.hxx".}
proc to3d*(pos: gp_Ax2; p: gp_Pnt2d): gp_Pnt 

proc to3d*(pos: gp_Ax2; v: gp_Vec2d): gp_Vec 

proc to3d*(pos: gp_Ax2; v: gp_Dir2d): gp_Dir 

proc to3d*(pos: gp_Ax2; a: gp_Ax2d): gp_Ax1 

proc to3d*(pos: gp_Ax2; a: gp_Ax22d): gp_Ax2 

proc to3d*(pos: gp_Ax2; L: gp_Lin2d): gp_Lin 

proc to3d*(pos: gp_Ax2; c: gp_Circ2d): gp_Circ 

proc to3d*(pos: gp_Ax2; e: gp_Elips2d): gp_Elips 

proc to3d*(pos: gp_Ax2; h: gp_Hypr2d): gp_Hypr 

proc to3d*(pos: gp_Ax2; prb: gp_Parab2d): gp_Parab 
{.pop.}
