##  Created on: 1991-09-09
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
discard "forward decl of gp_Pln"
discard "forward decl of gp_Cone"
discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Sphere"
discard "forward decl of gp_Torus"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Ax3"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
type
  ElSLib* {.importcpp: "ElSLib", header: "ElSLib.hxx", bycopy.} = object ## ! For elementary surfaces from the gp package (planes,
                                                                 ## ! cones, cylinders, spheres and tori), computes the point
                                                                 ## ! of parameters (U, V).


proc value*(u: StandardReal; v: StandardReal; pl: GpPln): GpPnt {.
    importcpp: "ElSLib::Value(@)", header: "ElSLib.hxx".}
proc value*(u: StandardReal; v: StandardReal; c: GpCone): GpPnt {.
    importcpp: "ElSLib::Value(@)", header: "ElSLib.hxx".}
proc value*(u: StandardReal; v: StandardReal; c: GpCylinder): GpPnt {.
    importcpp: "ElSLib::Value(@)", header: "ElSLib.hxx".}
proc value*(u: StandardReal; v: StandardReal; s: GpSphere): GpPnt {.
    importcpp: "ElSLib::Value(@)", header: "ElSLib.hxx".}
proc value*(u: StandardReal; v: StandardReal; t: GpTorus): GpPnt {.
    importcpp: "ElSLib::Value(@)", header: "ElSLib.hxx".}
proc dn*(u: StandardReal; v: StandardReal; pl: GpPln; nu: StandardInteger;
        nv: StandardInteger): GpVec {.importcpp: "ElSLib::DN(@)",
                                   header: "ElSLib.hxx".}
proc dn*(u: StandardReal; v: StandardReal; c: GpCone; nu: StandardInteger;
        nv: StandardInteger): GpVec {.importcpp: "ElSLib::DN(@)",
                                   header: "ElSLib.hxx".}
proc dn*(u: StandardReal; v: StandardReal; c: GpCylinder; nu: StandardInteger;
        nv: StandardInteger): GpVec {.importcpp: "ElSLib::DN(@)",
                                   header: "ElSLib.hxx".}
proc dn*(u: StandardReal; v: StandardReal; s: GpSphere; nu: StandardInteger;
        nv: StandardInteger): GpVec {.importcpp: "ElSLib::DN(@)",
                                   header: "ElSLib.hxx".}
proc dn*(u: StandardReal; v: StandardReal; t: GpTorus; nu: StandardInteger;
        nv: StandardInteger): GpVec {.importcpp: "ElSLib::DN(@)",
                                   header: "ElSLib.hxx".}
proc d0*(u: StandardReal; v: StandardReal; pl: GpPln; p: var GpPnt) {.
    importcpp: "ElSLib::D0(@)", header: "ElSLib.hxx".}
proc d0*(u: StandardReal; v: StandardReal; c: GpCone; p: var GpPnt) {.
    importcpp: "ElSLib::D0(@)", header: "ElSLib.hxx".}
proc d0*(u: StandardReal; v: StandardReal; c: GpCylinder; p: var GpPnt) {.
    importcpp: "ElSLib::D0(@)", header: "ElSLib.hxx".}
proc d0*(u: StandardReal; v: StandardReal; s: GpSphere; p: var GpPnt) {.
    importcpp: "ElSLib::D0(@)", header: "ElSLib.hxx".}
proc d0*(u: StandardReal; v: StandardReal; t: GpTorus; p: var GpPnt) {.
    importcpp: "ElSLib::D0(@)", header: "ElSLib.hxx".}
proc d1*(u: StandardReal; v: StandardReal; pl: GpPln; p: var GpPnt; vu: var GpVec;
        vv: var GpVec) {.importcpp: "ElSLib::D1(@)", header: "ElSLib.hxx".}
proc d1*(u: StandardReal; v: StandardReal; c: GpCone; p: var GpPnt; vu: var GpVec;
        vv: var GpVec) {.importcpp: "ElSLib::D1(@)", header: "ElSLib.hxx".}
proc d1*(u: StandardReal; v: StandardReal; c: GpCylinder; p: var GpPnt; vu: var GpVec;
        vv: var GpVec) {.importcpp: "ElSLib::D1(@)", header: "ElSLib.hxx".}
proc d1*(u: StandardReal; v: StandardReal; s: GpSphere; p: var GpPnt; vu: var GpVec;
        vv: var GpVec) {.importcpp: "ElSLib::D1(@)", header: "ElSLib.hxx".}
proc d1*(u: StandardReal; v: StandardReal; t: GpTorus; p: var GpPnt; vu: var GpVec;
        vv: var GpVec) {.importcpp: "ElSLib::D1(@)", header: "ElSLib.hxx".}
proc d2*(u: StandardReal; v: StandardReal; c: GpCone; p: var GpPnt; vu: var GpVec;
        vv: var GpVec; vuu: var GpVec; vvv: var GpVec; vuv: var GpVec) {.
    importcpp: "ElSLib::D2(@)", header: "ElSLib.hxx".}
proc d2*(u: StandardReal; v: StandardReal; c: GpCylinder; p: var GpPnt; vu: var GpVec;
        vv: var GpVec; vuu: var GpVec; vvv: var GpVec; vuv: var GpVec) {.
    importcpp: "ElSLib::D2(@)", header: "ElSLib.hxx".}
proc d2*(u: StandardReal; v: StandardReal; s: GpSphere; p: var GpPnt; vu: var GpVec;
        vv: var GpVec; vuu: var GpVec; vvv: var GpVec; vuv: var GpVec) {.
    importcpp: "ElSLib::D2(@)", header: "ElSLib.hxx".}
proc d2*(u: StandardReal; v: StandardReal; t: GpTorus; p: var GpPnt; vu: var GpVec;
        vv: var GpVec; vuu: var GpVec; vvv: var GpVec; vuv: var GpVec) {.
    importcpp: "ElSLib::D2(@)", header: "ElSLib.hxx".}
proc d3*(u: StandardReal; v: StandardReal; c: GpCone; p: var GpPnt; vu: var GpVec;
        vv: var GpVec; vuu: var GpVec; vvv: var GpVec; vuv: var GpVec; vuuu: var GpVec;
        vvvv: var GpVec; vuuv: var GpVec; vuvv: var GpVec) {.importcpp: "ElSLib::D3(@)",
    header: "ElSLib.hxx".}
proc d3*(u: StandardReal; v: StandardReal; c: GpCylinder; p: var GpPnt; vu: var GpVec;
        vv: var GpVec; vuu: var GpVec; vvv: var GpVec; vuv: var GpVec; vuuu: var GpVec;
        vvvv: var GpVec; vuuv: var GpVec; vuvv: var GpVec) {.importcpp: "ElSLib::D3(@)",
    header: "ElSLib.hxx".}
proc d3*(u: StandardReal; v: StandardReal; s: GpSphere; p: var GpPnt; vu: var GpVec;
        vv: var GpVec; vuu: var GpVec; vvv: var GpVec; vuv: var GpVec; vuuu: var GpVec;
        vvvv: var GpVec; vuuv: var GpVec; vuvv: var GpVec) {.importcpp: "ElSLib::D3(@)",
    header: "ElSLib.hxx".}
proc d3*(u: StandardReal; v: StandardReal; t: GpTorus; p: var GpPnt; vu: var GpVec;
        vv: var GpVec; vuu: var GpVec; vvv: var GpVec; vuv: var GpVec; vuuu: var GpVec;
        vvvv: var GpVec; vuuv: var GpVec; vuvv: var GpVec) {.importcpp: "ElSLib::D3(@)",
    header: "ElSLib.hxx".}
proc planeValue*(u: StandardReal; v: StandardReal; pos: GpAx3): GpPnt {.
    importcpp: "ElSLib::PlaneValue(@)", header: "ElSLib.hxx".}
proc cylinderValue*(u: StandardReal; v: StandardReal; pos: GpAx3; radius: StandardReal): GpPnt {.
    importcpp: "ElSLib::CylinderValue(@)", header: "ElSLib.hxx".}
proc coneValue*(u: StandardReal; v: StandardReal; pos: GpAx3; radius: StandardReal;
               sAngle: StandardReal): GpPnt {.importcpp: "ElSLib::ConeValue(@)",
    header: "ElSLib.hxx".}
proc sphereValue*(u: StandardReal; v: StandardReal; pos: GpAx3; radius: StandardReal): GpPnt {.
    importcpp: "ElSLib::SphereValue(@)", header: "ElSLib.hxx".}
proc torusValue*(u: StandardReal; v: StandardReal; pos: GpAx3;
                majorRadius: StandardReal; minorRadius: StandardReal): GpPnt {.
    importcpp: "ElSLib::TorusValue(@)", header: "ElSLib.hxx".}
proc planeDN*(u: StandardReal; v: StandardReal; pos: GpAx3; nu: StandardInteger;
             nv: StandardInteger): GpVec {.importcpp: "ElSLib::PlaneDN(@)",
                                        header: "ElSLib.hxx".}
proc cylinderDN*(u: StandardReal; v: StandardReal; pos: GpAx3; radius: StandardReal;
                nu: StandardInteger; nv: StandardInteger): GpVec {.
    importcpp: "ElSLib::CylinderDN(@)", header: "ElSLib.hxx".}
proc coneDN*(u: StandardReal; v: StandardReal; pos: GpAx3; radius: StandardReal;
            sAngle: StandardReal; nu: StandardInteger; nv: StandardInteger): GpVec {.
    importcpp: "ElSLib::ConeDN(@)", header: "ElSLib.hxx".}
proc sphereDN*(u: StandardReal; v: StandardReal; pos: GpAx3; radius: StandardReal;
              nu: StandardInteger; nv: StandardInteger): GpVec {.
    importcpp: "ElSLib::SphereDN(@)", header: "ElSLib.hxx".}
proc torusDN*(u: StandardReal; v: StandardReal; pos: GpAx3; majorRadius: StandardReal;
             minorRadius: StandardReal; nu: StandardInteger; nv: StandardInteger): GpVec {.
    importcpp: "ElSLib::TorusDN(@)", header: "ElSLib.hxx".}
proc planeD0*(u: StandardReal; v: StandardReal; pos: GpAx3; p: var GpPnt) {.
    importcpp: "ElSLib::PlaneD0(@)", header: "ElSLib.hxx".}
proc coneD0*(u: StandardReal; v: StandardReal; pos: GpAx3; radius: StandardReal;
            sAngle: StandardReal; p: var GpPnt) {.importcpp: "ElSLib::ConeD0(@)",
    header: "ElSLib.hxx".}
proc cylinderD0*(u: StandardReal; v: StandardReal; pos: GpAx3; radius: StandardReal;
                p: var GpPnt) {.importcpp: "ElSLib::CylinderD0(@)",
                             header: "ElSLib.hxx".}
proc sphereD0*(u: StandardReal; v: StandardReal; pos: GpAx3; radius: StandardReal;
              p: var GpPnt) {.importcpp: "ElSLib::SphereD0(@)", header: "ElSLib.hxx".}
proc torusD0*(u: StandardReal; v: StandardReal; pos: GpAx3; majorRadius: StandardReal;
             minorRadius: StandardReal; p: var GpPnt) {.
    importcpp: "ElSLib::TorusD0(@)", header: "ElSLib.hxx".}
proc planeD1*(u: StandardReal; v: StandardReal; pos: GpAx3; p: var GpPnt; vu: var GpVec;
             vv: var GpVec) {.importcpp: "ElSLib::PlaneD1(@)", header: "ElSLib.hxx".}
proc coneD1*(u: StandardReal; v: StandardReal; pos: GpAx3; radius: StandardReal;
            sAngle: StandardReal; p: var GpPnt; vu: var GpVec; vv: var GpVec) {.
    importcpp: "ElSLib::ConeD1(@)", header: "ElSLib.hxx".}
proc cylinderD1*(u: StandardReal; v: StandardReal; pos: GpAx3; radius: StandardReal;
                p: var GpPnt; vu: var GpVec; vv: var GpVec) {.
    importcpp: "ElSLib::CylinderD1(@)", header: "ElSLib.hxx".}
proc sphereD1*(u: StandardReal; v: StandardReal; pos: GpAx3; radius: StandardReal;
              p: var GpPnt; vu: var GpVec; vv: var GpVec) {.
    importcpp: "ElSLib::SphereD1(@)", header: "ElSLib.hxx".}
proc torusD1*(u: StandardReal; v: StandardReal; pos: GpAx3; majorRadius: StandardReal;
             minorRadius: StandardReal; p: var GpPnt; vu: var GpVec; vv: var GpVec) {.
    importcpp: "ElSLib::TorusD1(@)", header: "ElSLib.hxx".}
proc coneD2*(u: StandardReal; v: StandardReal; pos: GpAx3; radius: StandardReal;
            sAngle: StandardReal; p: var GpPnt; vu: var GpVec; vv: var GpVec;
            vuu: var GpVec; vvv: var GpVec; vuv: var GpVec) {.
    importcpp: "ElSLib::ConeD2(@)", header: "ElSLib.hxx".}
proc cylinderD2*(u: StandardReal; v: StandardReal; pos: GpAx3; radius: StandardReal;
                p: var GpPnt; vu: var GpVec; vv: var GpVec; vuu: var GpVec; vvv: var GpVec;
                vuv: var GpVec) {.importcpp: "ElSLib::CylinderD2(@)",
                               header: "ElSLib.hxx".}
proc sphereD2*(u: StandardReal; v: StandardReal; pos: GpAx3; radius: StandardReal;
              p: var GpPnt; vu: var GpVec; vv: var GpVec; vuu: var GpVec; vvv: var GpVec;
              vuv: var GpVec) {.importcpp: "ElSLib::SphereD2(@)",
                             header: "ElSLib.hxx".}
proc torusD2*(u: StandardReal; v: StandardReal; pos: GpAx3; majorRadius: StandardReal;
             minorRadius: StandardReal; p: var GpPnt; vu: var GpVec; vv: var GpVec;
             vuu: var GpVec; vvv: var GpVec; vuv: var GpVec) {.
    importcpp: "ElSLib::TorusD2(@)", header: "ElSLib.hxx".}
proc coneD3*(u: StandardReal; v: StandardReal; pos: GpAx3; radius: StandardReal;
            sAngle: StandardReal; p: var GpPnt; vu: var GpVec; vv: var GpVec;
            vuu: var GpVec; vvv: var GpVec; vuv: var GpVec; vuuu: var GpVec;
            vvvv: var GpVec; vuuv: var GpVec; vuvv: var GpVec) {.
    importcpp: "ElSLib::ConeD3(@)", header: "ElSLib.hxx".}
proc cylinderD3*(u: StandardReal; v: StandardReal; pos: GpAx3; radius: StandardReal;
                p: var GpPnt; vu: var GpVec; vv: var GpVec; vuu: var GpVec; vvv: var GpVec;
                vuv: var GpVec; vuuu: var GpVec; vvvv: var GpVec; vuuv: var GpVec;
                vuvv: var GpVec) {.importcpp: "ElSLib::CylinderD3(@)",
                                header: "ElSLib.hxx".}
proc sphereD3*(u: StandardReal; v: StandardReal; pos: GpAx3; radius: StandardReal;
              p: var GpPnt; vu: var GpVec; vv: var GpVec; vuu: var GpVec; vvv: var GpVec;
              vuv: var GpVec; vuuu: var GpVec; vvvv: var GpVec; vuuv: var GpVec;
              vuvv: var GpVec) {.importcpp: "ElSLib::SphereD3(@)",
                              header: "ElSLib.hxx".}
proc torusD3*(u: StandardReal; v: StandardReal; pos: GpAx3; majorRadius: StandardReal;
             minorRadius: StandardReal; p: var GpPnt; vu: var GpVec; vv: var GpVec;
             vuu: var GpVec; vvv: var GpVec; vuv: var GpVec; vuuu: var GpVec;
             vvvv: var GpVec; vuuv: var GpVec; vuvv: var GpVec) {.
    importcpp: "ElSLib::TorusD3(@)", header: "ElSLib.hxx".}
proc parameters*(pl: GpPln; p: GpPnt; u: var StandardReal; v: var StandardReal) {.
    importcpp: "ElSLib::Parameters(@)", header: "ElSLib.hxx".}
proc parameters*(c: GpCylinder; p: GpPnt; u: var StandardReal; v: var StandardReal) {.
    importcpp: "ElSLib::Parameters(@)", header: "ElSLib.hxx".}
proc parameters*(c: GpCone; p: GpPnt; u: var StandardReal; v: var StandardReal) {.
    importcpp: "ElSLib::Parameters(@)", header: "ElSLib.hxx".}
proc parameters*(s: GpSphere; p: GpPnt; u: var StandardReal; v: var StandardReal) {.
    importcpp: "ElSLib::Parameters(@)", header: "ElSLib.hxx".}
proc parameters*(t: GpTorus; p: GpPnt; u: var StandardReal; v: var StandardReal) {.
    importcpp: "ElSLib::Parameters(@)", header: "ElSLib.hxx".}
proc planeParameters*(pos: GpAx3; p: GpPnt; u: var StandardReal; v: var StandardReal) {.
    importcpp: "ElSLib::PlaneParameters(@)", header: "ElSLib.hxx".}
proc cylinderParameters*(pos: GpAx3; radius: StandardReal; p: GpPnt;
                        u: var StandardReal; v: var StandardReal) {.
    importcpp: "ElSLib::CylinderParameters(@)", header: "ElSLib.hxx".}
proc coneParameters*(pos: GpAx3; radius: StandardReal; sAngle: StandardReal; p: GpPnt;
                    u: var StandardReal; v: var StandardReal) {.
    importcpp: "ElSLib::ConeParameters(@)", header: "ElSLib.hxx".}
proc sphereParameters*(pos: GpAx3; radius: StandardReal; p: GpPnt; u: var StandardReal;
                      v: var StandardReal) {.
    importcpp: "ElSLib::SphereParameters(@)", header: "ElSLib.hxx".}
proc torusParameters*(pos: GpAx3; majorRadius: StandardReal;
                     minorRadius: StandardReal; p: GpPnt; u: var StandardReal;
                     v: var StandardReal) {.
    importcpp: "ElSLib::TorusParameters(@)", header: "ElSLib.hxx".}
proc planeUIso*(pos: GpAx3; u: StandardReal): GpLin {.
    importcpp: "ElSLib::PlaneUIso(@)", header: "ElSLib.hxx".}
proc cylinderUIso*(pos: GpAx3; radius: StandardReal; u: StandardReal): GpLin {.
    importcpp: "ElSLib::CylinderUIso(@)", header: "ElSLib.hxx".}
proc coneUIso*(pos: GpAx3; radius: StandardReal; sAngle: StandardReal; u: StandardReal): GpLin {.
    importcpp: "ElSLib::ConeUIso(@)", header: "ElSLib.hxx".}
proc sphereUIso*(pos: GpAx3; radius: StandardReal; u: StandardReal): GpCirc {.
    importcpp: "ElSLib::SphereUIso(@)", header: "ElSLib.hxx".}
proc torusUIso*(pos: GpAx3; majorRadius: StandardReal; minorRadius: StandardReal;
               u: StandardReal): GpCirc {.importcpp: "ElSLib::TorusUIso(@)",
                                       header: "ElSLib.hxx".}
proc planeVIso*(pos: GpAx3; v: StandardReal): GpLin {.
    importcpp: "ElSLib::PlaneVIso(@)", header: "ElSLib.hxx".}
proc cylinderVIso*(pos: GpAx3; radius: StandardReal; v: StandardReal): GpCirc {.
    importcpp: "ElSLib::CylinderVIso(@)", header: "ElSLib.hxx".}
proc coneVIso*(pos: GpAx3; radius: StandardReal; sAngle: StandardReal; v: StandardReal): GpCirc {.
    importcpp: "ElSLib::ConeVIso(@)", header: "ElSLib.hxx".}
proc sphereVIso*(pos: GpAx3; radius: StandardReal; v: StandardReal): GpCirc {.
    importcpp: "ElSLib::SphereVIso(@)", header: "ElSLib.hxx".}
proc torusVIso*(pos: GpAx3; majorRadius: StandardReal; minorRadius: StandardReal;
               v: StandardReal): GpCirc {.importcpp: "ElSLib::TorusVIso(@)",
                                       header: "ElSLib.hxx".}

