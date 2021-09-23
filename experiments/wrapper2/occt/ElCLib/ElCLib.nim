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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real, ../gp/gp_Pnt,
  ../Standard/Standard_Integer, ../gp/gp_Vec, ../gp/gp_Pnt2d, ../gp/gp_Vec2d

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


proc InPeriod*(U: Standard_Real; UFirst: Standard_Real; ULast: Standard_Real): Standard_Real {.
    importcpp: "ElCLib::InPeriod(@)", header: "ElCLib.hxx".}
proc AdjustPeriodic*(UFirst: Standard_Real; ULast: Standard_Real;
                    Precision: Standard_Real; U1: var Standard_Real;
                    U2: var Standard_Real) {.
    importcpp: "ElCLib::AdjustPeriodic(@)", header: "ElCLib.hxx".}
proc Value*(U: Standard_Real; L: gp_Lin): gp_Pnt {.importcpp: "ElCLib::Value(@)",
    header: "ElCLib.hxx".}
proc Value*(U: Standard_Real; C: gp_Circ): gp_Pnt {.importcpp: "ElCLib::Value(@)",
    header: "ElCLib.hxx".}
proc Value*(U: Standard_Real; E: gp_Elips): gp_Pnt {.importcpp: "ElCLib::Value(@)",
    header: "ElCLib.hxx".}
proc Value*(U: Standard_Real; H: gp_Hypr): gp_Pnt {.importcpp: "ElCLib::Value(@)",
    header: "ElCLib.hxx".}
proc Value*(U: Standard_Real; Prb: gp_Parab): gp_Pnt {.importcpp: "ElCLib::Value(@)",
    header: "ElCLib.hxx".}
proc D1*(U: Standard_Real; L: gp_Lin; P: var gp_Pnt; V1: var gp_Vec) {.
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}
proc D1*(U: Standard_Real; C: gp_Circ; P: var gp_Pnt; V1: var gp_Vec) {.
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}
proc D1*(U: Standard_Real; E: gp_Elips; P: var gp_Pnt; V1: var gp_Vec) {.
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}
proc D1*(U: Standard_Real; H: gp_Hypr; P: var gp_Pnt; V1: var gp_Vec) {.
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}
proc D1*(U: Standard_Real; Prb: gp_Parab; P: var gp_Pnt; V1: var gp_Vec) {.
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}
proc D2*(U: Standard_Real; C: gp_Circ; P: var gp_Pnt; V1: var gp_Vec; V2: var gp_Vec) {.
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc D2*(U: Standard_Real; E: gp_Elips; P: var gp_Pnt; V1: var gp_Vec; V2: var gp_Vec) {.
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc D2*(U: Standard_Real; H: gp_Hypr; P: var gp_Pnt; V1: var gp_Vec; V2: var gp_Vec) {.
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc D2*(U: Standard_Real; Prb: gp_Parab; P: var gp_Pnt; V1: var gp_Vec; V2: var gp_Vec) {.
    importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc D3*(U: Standard_Real; C: gp_Circ; P: var gp_Pnt; V1: var gp_Vec; V2: var gp_Vec;
        V3: var gp_Vec) {.importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}
proc D3*(U: Standard_Real; E: gp_Elips; P: var gp_Pnt; V1: var gp_Vec; V2: var gp_Vec;
        V3: var gp_Vec) {.importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}
proc D3*(U: Standard_Real; H: gp_Hypr; P: var gp_Pnt; V1: var gp_Vec; V2: var gp_Vec;
        V3: var gp_Vec) {.importcpp: "ElCLib::D3(@)", header: "ElCLib.hxx".}
proc DN*(U: Standard_Real; L: gp_Lin; N: Standard_Integer): gp_Vec {.
    importcpp: "ElCLib::DN(@)", header: "ElCLib.hxx".}
proc DN*(U: Standard_Real; C: gp_Circ; N: Standard_Integer): gp_Vec {.
    importcpp: "ElCLib::DN(@)", header: "ElCLib.hxx".}
proc DN*(U: Standard_Real; E: gp_Elips; N: Standard_Integer): gp_Vec {.
    importcpp: "ElCLib::DN(@)", header: "ElCLib.hxx".}
proc DN*(U: Standard_Real; H: gp_Hypr; N: Standard_Integer): gp_Vec {.
    importcpp: "ElCLib::DN(@)", header: "ElCLib.hxx".}
proc DN*(U: Standard_Real; Prb: gp_Parab; N: Standard_Integer): gp_Vec {.
    importcpp: "ElCLib::DN(@)", header: "ElCLib.hxx".}
proc Value*(U: Standard_Real; L: gp_Lin2d): gp_Pnt2d {.importcpp: "ElCLib::Value(@)",
    header: "ElCLib.hxx".}
proc Value*(U: Standard_Real; C: gp_Circ2d): gp_Pnt2d {.importcpp: "ElCLib::Value(@)",
    header: "ElCLib.hxx".}
proc Value*(U: Standard_Real; E: gp_Elips2d): gp_Pnt2d {.
    importcpp: "ElCLib::Value(@)", header: "ElCLib.hxx".}
proc Value*(U: Standard_Real; H: gp_Hypr2d): gp_Pnt2d {.importcpp: "ElCLib::Value(@)",
    header: "ElCLib.hxx".}
proc Value*(U: Standard_Real; Prb: gp_Parab2d): gp_Pnt2d {.
    importcpp: "ElCLib::Value(@)", header: "ElCLib.hxx".}
proc D1*(U: Standard_Real; L: gp_Lin2d; P: var gp_Pnt2d; V1: var gp_Vec2d) {.
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}
proc D1*(U: Standard_Real; C: gp_Circ2d; P: var gp_Pnt2d; V1: var gp_Vec2d) {.
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}
proc D1*(U: Standard_Real; E: gp_Elips2d; P: var gp_Pnt2d; V1: var gp_Vec2d) {.
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}
proc D1*(U: Standard_Real; H: gp_Hypr2d; P: var gp_Pnt2d; V1: var gp_Vec2d) {.
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}
proc D1*(U: Standard_Real; Prb: gp_Parab2d; P: var gp_Pnt2d; V1: var gp_Vec2d) {.
    importcpp: "ElCLib::D1(@)", header: "ElCLib.hxx".}
proc D2*(U: Standard_Real; C: gp_Circ2d; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d) {.importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc D2*(U: Standard_Real; E: gp_Elips2d; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d) {.importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc D2*(U: Standard_Real; H: gp_Hypr2d; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d) {.importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc D2*(U: Standard_Real; Prb: gp_Parab2d; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d) {.importcpp: "ElCLib::D2(@)", header: "ElCLib.hxx".}
proc D3*(U: Standard_Real; C: gp_Circ2d; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d; V3: var gp_Vec2d) {.importcpp: "ElCLib::D3(@)",
                                        header: "ElCLib.hxx".}
proc D3*(U: Standard_Real; E: gp_Elips2d; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d; V3: var gp_Vec2d) {.importcpp: "ElCLib::D3(@)",
                                        header: "ElCLib.hxx".}
proc D3*(U: Standard_Real; H: gp_Hypr2d; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d; V3: var gp_Vec2d) {.importcpp: "ElCLib::D3(@)",
                                        header: "ElCLib.hxx".}
proc DN*(U: Standard_Real; L: gp_Lin2d; N: Standard_Integer): gp_Vec2d {.
    importcpp: "ElCLib::DN(@)", header: "ElCLib.hxx".}
proc DN*(U: Standard_Real; C: gp_Circ2d; N: Standard_Integer): gp_Vec2d {.
    importcpp: "ElCLib::DN(@)", header: "ElCLib.hxx".}
proc DN*(U: Standard_Real; E: gp_Elips2d; N: Standard_Integer): gp_Vec2d {.
    importcpp: "ElCLib::DN(@)", header: "ElCLib.hxx".}
proc DN*(U: Standard_Real; H: gp_Hypr2d; N: Standard_Integer): gp_Vec2d {.
    importcpp: "ElCLib::DN(@)", header: "ElCLib.hxx".}
proc DN*(U: Standard_Real; Prb: gp_Parab2d; N: Standard_Integer): gp_Vec2d {.
    importcpp: "ElCLib::DN(@)", header: "ElCLib.hxx".}
proc LineValue*(U: Standard_Real; Pos: gp_Ax1): gp_Pnt {.
    importcpp: "ElCLib::LineValue(@)", header: "ElCLib.hxx".}
proc CircleValue*(U: Standard_Real; Pos: gp_Ax2; Radius: Standard_Real): gp_Pnt {.
    importcpp: "ElCLib::CircleValue(@)", header: "ElCLib.hxx".}
proc EllipseValue*(U: Standard_Real; Pos: gp_Ax2; MajorRadius: Standard_Real;
                  MinorRadius: Standard_Real): gp_Pnt {.
    importcpp: "ElCLib::EllipseValue(@)", header: "ElCLib.hxx".}
proc HyperbolaValue*(U: Standard_Real; Pos: gp_Ax2; MajorRadius: Standard_Real;
                    MinorRadius: Standard_Real): gp_Pnt {.
    importcpp: "ElCLib::HyperbolaValue(@)", header: "ElCLib.hxx".}
proc ParabolaValue*(U: Standard_Real; Pos: gp_Ax2; Focal: Standard_Real): gp_Pnt {.
    importcpp: "ElCLib::ParabolaValue(@)", header: "ElCLib.hxx".}
proc LineD1*(U: Standard_Real; Pos: gp_Ax1; P: var gp_Pnt; V1: var gp_Vec) {.
    importcpp: "ElCLib::LineD1(@)", header: "ElCLib.hxx".}
proc CircleD1*(U: Standard_Real; Pos: gp_Ax2; Radius: Standard_Real; P: var gp_Pnt;
              V1: var gp_Vec) {.importcpp: "ElCLib::CircleD1(@)",
                             header: "ElCLib.hxx".}
proc EllipseD1*(U: Standard_Real; Pos: gp_Ax2; MajorRadius: Standard_Real;
               MinorRadius: Standard_Real; P: var gp_Pnt; V1: var gp_Vec) {.
    importcpp: "ElCLib::EllipseD1(@)", header: "ElCLib.hxx".}
proc HyperbolaD1*(U: Standard_Real; Pos: gp_Ax2; MajorRadius: Standard_Real;
                 MinorRadius: Standard_Real; P: var gp_Pnt; V1: var gp_Vec) {.
    importcpp: "ElCLib::HyperbolaD1(@)", header: "ElCLib.hxx".}
proc ParabolaD1*(U: Standard_Real; Pos: gp_Ax2; Focal: Standard_Real; P: var gp_Pnt;
                V1: var gp_Vec) {.importcpp: "ElCLib::ParabolaD1(@)",
                               header: "ElCLib.hxx".}
proc CircleD2*(U: Standard_Real; Pos: gp_Ax2; Radius: Standard_Real; P: var gp_Pnt;
              V1: var gp_Vec; V2: var gp_Vec) {.importcpp: "ElCLib::CircleD2(@)",
    header: "ElCLib.hxx".}
proc EllipseD2*(U: Standard_Real; Pos: gp_Ax2; MajorRadius: Standard_Real;
               MinorRadius: Standard_Real; P: var gp_Pnt; V1: var gp_Vec; V2: var gp_Vec) {.
    importcpp: "ElCLib::EllipseD2(@)", header: "ElCLib.hxx".}
proc HyperbolaD2*(U: Standard_Real; Pos: gp_Ax2; MajorRadius: Standard_Real;
                 MinorRadius: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
                 V2: var gp_Vec) {.importcpp: "ElCLib::HyperbolaD2(@)",
                                header: "ElCLib.hxx".}
proc ParabolaD2*(U: Standard_Real; Pos: gp_Ax2; Focal: Standard_Real; P: var gp_Pnt;
                V1: var gp_Vec; V2: var gp_Vec) {.importcpp: "ElCLib::ParabolaD2(@)",
    header: "ElCLib.hxx".}
proc CircleD3*(U: Standard_Real; Pos: gp_Ax2; Radius: Standard_Real; P: var gp_Pnt;
              V1: var gp_Vec; V2: var gp_Vec; V3: var gp_Vec) {.
    importcpp: "ElCLib::CircleD3(@)", header: "ElCLib.hxx".}
proc EllipseD3*(U: Standard_Real; Pos: gp_Ax2; MajorRadius: Standard_Real;
               MinorRadius: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
               V2: var gp_Vec; V3: var gp_Vec) {.importcpp: "ElCLib::EllipseD3(@)",
    header: "ElCLib.hxx".}
proc HyperbolaD3*(U: Standard_Real; Pos: gp_Ax2; MajorRadius: Standard_Real;
                 MinorRadius: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
                 V2: var gp_Vec; V3: var gp_Vec) {.
    importcpp: "ElCLib::HyperbolaD3(@)", header: "ElCLib.hxx".}
proc LineDN*(U: Standard_Real; Pos: gp_Ax1; N: Standard_Integer): gp_Vec {.
    importcpp: "ElCLib::LineDN(@)", header: "ElCLib.hxx".}
proc CircleDN*(U: Standard_Real; Pos: gp_Ax2; Radius: Standard_Real;
              N: Standard_Integer): gp_Vec {.importcpp: "ElCLib::CircleDN(@)",
    header: "ElCLib.hxx".}
proc EllipseDN*(U: Standard_Real; Pos: gp_Ax2; MajorRadius: Standard_Real;
               MinorRadius: Standard_Real; N: Standard_Integer): gp_Vec {.
    importcpp: "ElCLib::EllipseDN(@)", header: "ElCLib.hxx".}
proc HyperbolaDN*(U: Standard_Real; Pos: gp_Ax2; MajorRadius: Standard_Real;
                 MinorRadius: Standard_Real; N: Standard_Integer): gp_Vec {.
    importcpp: "ElCLib::HyperbolaDN(@)", header: "ElCLib.hxx".}
proc ParabolaDN*(U: Standard_Real; Pos: gp_Ax2; Focal: Standard_Real;
                N: Standard_Integer): gp_Vec {.importcpp: "ElCLib::ParabolaDN(@)",
    header: "ElCLib.hxx".}
proc LineValue*(U: Standard_Real; Pos: gp_Ax2d): gp_Pnt2d {.
    importcpp: "ElCLib::LineValue(@)", header: "ElCLib.hxx".}
proc CircleValue*(U: Standard_Real; Pos: gp_Ax22d; Radius: Standard_Real): gp_Pnt2d {.
    importcpp: "ElCLib::CircleValue(@)", header: "ElCLib.hxx".}
proc EllipseValue*(U: Standard_Real; Pos: gp_Ax22d; MajorRadius: Standard_Real;
                  MinorRadius: Standard_Real): gp_Pnt2d {.
    importcpp: "ElCLib::EllipseValue(@)", header: "ElCLib.hxx".}
proc HyperbolaValue*(U: Standard_Real; Pos: gp_Ax22d; MajorRadius: Standard_Real;
                    MinorRadius: Standard_Real): gp_Pnt2d {.
    importcpp: "ElCLib::HyperbolaValue(@)", header: "ElCLib.hxx".}
proc ParabolaValue*(U: Standard_Real; Pos: gp_Ax22d; Focal: Standard_Real): gp_Pnt2d {.
    importcpp: "ElCLib::ParabolaValue(@)", header: "ElCLib.hxx".}
proc LineD1*(U: Standard_Real; Pos: gp_Ax2d; P: var gp_Pnt2d; V1: var gp_Vec2d) {.
    importcpp: "ElCLib::LineD1(@)", header: "ElCLib.hxx".}
proc CircleD1*(U: Standard_Real; Pos: gp_Ax22d; Radius: Standard_Real; P: var gp_Pnt2d;
              V1: var gp_Vec2d) {.importcpp: "ElCLib::CircleD1(@)",
                               header: "ElCLib.hxx".}
proc EllipseD1*(U: Standard_Real; Pos: gp_Ax22d; MajorRadius: Standard_Real;
               MinorRadius: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d) {.
    importcpp: "ElCLib::EllipseD1(@)", header: "ElCLib.hxx".}
proc HyperbolaD1*(U: Standard_Real; Pos: gp_Ax22d; MajorRadius: Standard_Real;
                 MinorRadius: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d) {.
    importcpp: "ElCLib::HyperbolaD1(@)", header: "ElCLib.hxx".}
proc ParabolaD1*(U: Standard_Real; Pos: gp_Ax22d; Focal: Standard_Real;
                P: var gp_Pnt2d; V1: var gp_Vec2d) {.
    importcpp: "ElCLib::ParabolaD1(@)", header: "ElCLib.hxx".}
proc CircleD2*(U: Standard_Real; Pos: gp_Ax22d; Radius: Standard_Real; P: var gp_Pnt2d;
              V1: var gp_Vec2d; V2: var gp_Vec2d) {.importcpp: "ElCLib::CircleD2(@)",
    header: "ElCLib.hxx".}
proc EllipseD2*(U: Standard_Real; Pos: gp_Ax22d; MajorRadius: Standard_Real;
               MinorRadius: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
               V2: var gp_Vec2d) {.importcpp: "ElCLib::EllipseD2(@)",
                                header: "ElCLib.hxx".}
proc HyperbolaD2*(U: Standard_Real; Pos: gp_Ax22d; MajorRadius: Standard_Real;
                 MinorRadius: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
                 V2: var gp_Vec2d) {.importcpp: "ElCLib::HyperbolaD2(@)",
                                  header: "ElCLib.hxx".}
proc ParabolaD2*(U: Standard_Real; Pos: gp_Ax22d; Focal: Standard_Real;
                P: var gp_Pnt2d; V1: var gp_Vec2d; V2: var gp_Vec2d) {.
    importcpp: "ElCLib::ParabolaD2(@)", header: "ElCLib.hxx".}
proc CircleD3*(U: Standard_Real; Pos: gp_Ax22d; Radius: Standard_Real; P: var gp_Pnt2d;
              V1: var gp_Vec2d; V2: var gp_Vec2d; V3: var gp_Vec2d) {.
    importcpp: "ElCLib::CircleD3(@)", header: "ElCLib.hxx".}
proc EllipseD3*(U: Standard_Real; Pos: gp_Ax22d; MajorRadius: Standard_Real;
               MinorRadius: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
               V2: var gp_Vec2d; V3: var gp_Vec2d) {.
    importcpp: "ElCLib::EllipseD3(@)", header: "ElCLib.hxx".}
proc HyperbolaD3*(U: Standard_Real; Pos: gp_Ax22d; MajorRadius: Standard_Real;
                 MinorRadius: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
                 V2: var gp_Vec2d; V3: var gp_Vec2d) {.
    importcpp: "ElCLib::HyperbolaD3(@)", header: "ElCLib.hxx".}
proc LineDN*(U: Standard_Real; Pos: gp_Ax2d; N: Standard_Integer): gp_Vec2d {.
    importcpp: "ElCLib::LineDN(@)", header: "ElCLib.hxx".}
proc CircleDN*(U: Standard_Real; Pos: gp_Ax22d; Radius: Standard_Real;
              N: Standard_Integer): gp_Vec2d {.importcpp: "ElCLib::CircleDN(@)",
    header: "ElCLib.hxx".}
proc EllipseDN*(U: Standard_Real; Pos: gp_Ax22d; MajorRadius: Standard_Real;
               MinorRadius: Standard_Real; N: Standard_Integer): gp_Vec2d {.
    importcpp: "ElCLib::EllipseDN(@)", header: "ElCLib.hxx".}
proc HyperbolaDN*(U: Standard_Real; Pos: gp_Ax22d; MajorRadius: Standard_Real;
                 MinorRadius: Standard_Real; N: Standard_Integer): gp_Vec2d {.
    importcpp: "ElCLib::HyperbolaDN(@)", header: "ElCLib.hxx".}
proc ParabolaDN*(U: Standard_Real; Pos: gp_Ax22d; Focal: Standard_Real;
                N: Standard_Integer): gp_Vec2d {.
    importcpp: "ElCLib::ParabolaDN(@)", header: "ElCLib.hxx".}
proc Parameter*(L: gp_Lin; P: gp_Pnt): Standard_Real {.
    importcpp: "ElCLib::Parameter(@)", header: "ElCLib.hxx".}
proc Parameter*(L: gp_Lin2d; P: gp_Pnt2d): Standard_Real {.
    importcpp: "ElCLib::Parameter(@)", header: "ElCLib.hxx".}
proc Parameter*(C: gp_Circ; P: gp_Pnt): Standard_Real {.
    importcpp: "ElCLib::Parameter(@)", header: "ElCLib.hxx".}
proc Parameter*(C: gp_Circ2d; P: gp_Pnt2d): Standard_Real {.
    importcpp: "ElCLib::Parameter(@)", header: "ElCLib.hxx".}
proc Parameter*(E: gp_Elips; P: gp_Pnt): Standard_Real {.
    importcpp: "ElCLib::Parameter(@)", header: "ElCLib.hxx".}
proc Parameter*(E: gp_Elips2d; P: gp_Pnt2d): Standard_Real {.
    importcpp: "ElCLib::Parameter(@)", header: "ElCLib.hxx".}
proc Parameter*(H: gp_Hypr; P: gp_Pnt): Standard_Real {.
    importcpp: "ElCLib::Parameter(@)", header: "ElCLib.hxx".}
proc Parameter*(H: gp_Hypr2d; P: gp_Pnt2d): Standard_Real {.
    importcpp: "ElCLib::Parameter(@)", header: "ElCLib.hxx".}
proc Parameter*(Prb: gp_Parab; P: gp_Pnt): Standard_Real {.
    importcpp: "ElCLib::Parameter(@)", header: "ElCLib.hxx".}
proc Parameter*(Prb: gp_Parab2d; P: gp_Pnt2d): Standard_Real {.
    importcpp: "ElCLib::Parameter(@)", header: "ElCLib.hxx".}
proc LineParameter*(Pos: gp_Ax1; P: gp_Pnt): Standard_Real {.
    importcpp: "ElCLib::LineParameter(@)", header: "ElCLib.hxx".}
proc LineParameter*(Pos: gp_Ax2d; P: gp_Pnt2d): Standard_Real {.
    importcpp: "ElCLib::LineParameter(@)", header: "ElCLib.hxx".}
proc CircleParameter*(Pos: gp_Ax2; P: gp_Pnt): Standard_Real {.
    importcpp: "ElCLib::CircleParameter(@)", header: "ElCLib.hxx".}
proc CircleParameter*(Pos: gp_Ax22d; P: gp_Pnt2d): Standard_Real {.
    importcpp: "ElCLib::CircleParameter(@)", header: "ElCLib.hxx".}
proc EllipseParameter*(Pos: gp_Ax2; MajorRadius: Standard_Real;
                      MinorRadius: Standard_Real; P: gp_Pnt): Standard_Real {.
    importcpp: "ElCLib::EllipseParameter(@)", header: "ElCLib.hxx".}
proc EllipseParameter*(Pos: gp_Ax22d; MajorRadius: Standard_Real;
                      MinorRadius: Standard_Real; P: gp_Pnt2d): Standard_Real {.
    importcpp: "ElCLib::EllipseParameter(@)", header: "ElCLib.hxx".}
proc HyperbolaParameter*(Pos: gp_Ax2; MajorRadius: Standard_Real;
                        MinorRadius: Standard_Real; P: gp_Pnt): Standard_Real {.
    importcpp: "ElCLib::HyperbolaParameter(@)", header: "ElCLib.hxx".}
proc HyperbolaParameter*(Pos: gp_Ax22d; MajorRadius: Standard_Real;
                        MinorRadius: Standard_Real; P: gp_Pnt2d): Standard_Real {.
    importcpp: "ElCLib::HyperbolaParameter(@)", header: "ElCLib.hxx".}
proc ParabolaParameter*(Pos: gp_Ax2; P: gp_Pnt): Standard_Real {.
    importcpp: "ElCLib::ParabolaParameter(@)", header: "ElCLib.hxx".}
proc ParabolaParameter*(Pos: gp_Ax22d; P: gp_Pnt2d): Standard_Real {.
    importcpp: "ElCLib::ParabolaParameter(@)", header: "ElCLib.hxx".}
proc To3d*(Pos: gp_Ax2; P: gp_Pnt2d): gp_Pnt {.importcpp: "ElCLib::To3d(@)",
    header: "ElCLib.hxx".}
proc To3d*(Pos: gp_Ax2; V: gp_Vec2d): gp_Vec {.importcpp: "ElCLib::To3d(@)",
    header: "ElCLib.hxx".}
proc To3d*(Pos: gp_Ax2; V: gp_Dir2d): gp_Dir {.importcpp: "ElCLib::To3d(@)",
    header: "ElCLib.hxx".}
proc To3d*(Pos: gp_Ax2; A: gp_Ax2d): gp_Ax1 {.importcpp: "ElCLib::To3d(@)",
                                        header: "ElCLib.hxx".}
proc To3d*(Pos: gp_Ax2; A: gp_Ax22d): gp_Ax2 {.importcpp: "ElCLib::To3d(@)",
    header: "ElCLib.hxx".}
proc To3d*(Pos: gp_Ax2; L: gp_Lin2d): gp_Lin {.importcpp: "ElCLib::To3d(@)",
    header: "ElCLib.hxx".}
proc To3d*(Pos: gp_Ax2; C: gp_Circ2d): gp_Circ {.importcpp: "ElCLib::To3d(@)",
    header: "ElCLib.hxx".}
proc To3d*(Pos: gp_Ax2; E: gp_Elips2d): gp_Elips {.importcpp: "ElCLib::To3d(@)",
    header: "ElCLib.hxx".}
proc To3d*(Pos: gp_Ax2; H: gp_Hypr2d): gp_Hypr {.importcpp: "ElCLib::To3d(@)",
    header: "ElCLib.hxx".}
proc To3d*(Pos: gp_Ax2; Prb: gp_Parab2d): gp_Parab {.importcpp: "ElCLib::To3d(@)",
    header: "ElCLib.hxx".}