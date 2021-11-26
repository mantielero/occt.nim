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


proc value*(u: cfloat; v: cfloat; pl: Pln): Pnt {.importcpp: "ElSLib::Value(@)",
    header: "ElSLib.hxx".}
proc value*(u: cfloat; v: cfloat; c: Cone): Pnt {.importcpp: "ElSLib::Value(@)",
    header: "ElSLib.hxx".}
proc value*(u: cfloat; v: cfloat; c: Cylinder): Pnt {.importcpp: "ElSLib::Value(@)",
    header: "ElSLib.hxx".}
proc value*(u: cfloat; v: cfloat; s: Sphere): Pnt {.importcpp: "ElSLib::Value(@)",
    header: "ElSLib.hxx".}
proc value*(u: cfloat; v: cfloat; t: Torus): Pnt {.importcpp: "ElSLib::Value(@)",
    header: "ElSLib.hxx".}
proc dn*(u: cfloat; v: cfloat; pl: Pln; nu: cint; nv: cint): Vec {.
    importcpp: "ElSLib::DN(@)", header: "ElSLib.hxx".}
proc dn*(u: cfloat; v: cfloat; c: Cone; nu: cint; nv: cint): Vec {.
    importcpp: "ElSLib::DN(@)", header: "ElSLib.hxx".}
proc dn*(u: cfloat; v: cfloat; c: Cylinder; nu: cint; nv: cint): Vec {.
    importcpp: "ElSLib::DN(@)", header: "ElSLib.hxx".}
proc dn*(u: cfloat; v: cfloat; s: Sphere; nu: cint; nv: cint): Vec {.
    importcpp: "ElSLib::DN(@)", header: "ElSLib.hxx".}
proc dn*(u: cfloat; v: cfloat; t: Torus; nu: cint; nv: cint): Vec {.
    importcpp: "ElSLib::DN(@)", header: "ElSLib.hxx".}
proc d0*(u: cfloat; v: cfloat; pl: Pln; p: var Pnt) {.importcpp: "ElSLib::D0(@)",
    header: "ElSLib.hxx".}
proc d0*(u: cfloat; v: cfloat; c: Cone; p: var Pnt) {.importcpp: "ElSLib::D0(@)",
    header: "ElSLib.hxx".}
proc d0*(u: cfloat; v: cfloat; c: Cylinder; p: var Pnt) {.importcpp: "ElSLib::D0(@)",
    header: "ElSLib.hxx".}
proc d0*(u: cfloat; v: cfloat; s: Sphere; p: var Pnt) {.importcpp: "ElSLib::D0(@)",
    header: "ElSLib.hxx".}
proc d0*(u: cfloat; v: cfloat; t: Torus; p: var Pnt) {.importcpp: "ElSLib::D0(@)",
    header: "ElSLib.hxx".}
proc d1*(u: cfloat; v: cfloat; pl: Pln; p: var Pnt; vu: var Vec; vv: var Vec) {.
    importcpp: "ElSLib::D1(@)", header: "ElSLib.hxx".}
proc d1*(u: cfloat; v: cfloat; c: Cone; p: var Pnt; vu: var Vec; vv: var Vec) {.
    importcpp: "ElSLib::D1(@)", header: "ElSLib.hxx".}
proc d1*(u: cfloat; v: cfloat; c: Cylinder; p: var Pnt; vu: var Vec; vv: var Vec) {.
    importcpp: "ElSLib::D1(@)", header: "ElSLib.hxx".}
proc d1*(u: cfloat; v: cfloat; s: Sphere; p: var Pnt; vu: var Vec; vv: var Vec) {.
    importcpp: "ElSLib::D1(@)", header: "ElSLib.hxx".}
proc d1*(u: cfloat; v: cfloat; t: Torus; p: var Pnt; vu: var Vec; vv: var Vec) {.
    importcpp: "ElSLib::D1(@)", header: "ElSLib.hxx".}
proc d2*(u: cfloat; v: cfloat; c: Cone; p: var Pnt; vu: var Vec; vv: var Vec; vuu: var Vec;
        vvv: var Vec; vuv: var Vec) {.importcpp: "ElSLib::D2(@)", header: "ElSLib.hxx".}
proc d2*(u: cfloat; v: cfloat; c: Cylinder; p: var Pnt; vu: var Vec; vv: var Vec; vuu: var Vec;
        vvv: var Vec; vuv: var Vec) {.importcpp: "ElSLib::D2(@)", header: "ElSLib.hxx".}
proc d2*(u: cfloat; v: cfloat; s: Sphere; p: var Pnt; vu: var Vec; vv: var Vec; vuu: var Vec;
        vvv: var Vec; vuv: var Vec) {.importcpp: "ElSLib::D2(@)", header: "ElSLib.hxx".}
proc d2*(u: cfloat; v: cfloat; t: Torus; p: var Pnt; vu: var Vec; vv: var Vec; vuu: var Vec;
        vvv: var Vec; vuv: var Vec) {.importcpp: "ElSLib::D2(@)", header: "ElSLib.hxx".}
proc d3*(u: cfloat; v: cfloat; c: Cone; p: var Pnt; vu: var Vec; vv: var Vec; vuu: var Vec;
        vvv: var Vec; vuv: var Vec; vuuu: var Vec; vvvv: var Vec; vuuv: var Vec; vuvv: var Vec) {.
    importcpp: "ElSLib::D3(@)", header: "ElSLib.hxx".}
proc d3*(u: cfloat; v: cfloat; c: Cylinder; p: var Pnt; vu: var Vec; vv: var Vec; vuu: var Vec;
        vvv: var Vec; vuv: var Vec; vuuu: var Vec; vvvv: var Vec; vuuv: var Vec; vuvv: var Vec) {.
    importcpp: "ElSLib::D3(@)", header: "ElSLib.hxx".}
proc d3*(u: cfloat; v: cfloat; s: Sphere; p: var Pnt; vu: var Vec; vv: var Vec; vuu: var Vec;
        vvv: var Vec; vuv: var Vec; vuuu: var Vec; vvvv: var Vec; vuuv: var Vec; vuvv: var Vec) {.
    importcpp: "ElSLib::D3(@)", header: "ElSLib.hxx".}
proc d3*(u: cfloat; v: cfloat; t: Torus; p: var Pnt; vu: var Vec; vv: var Vec; vuu: var Vec;
        vvv: var Vec; vuv: var Vec; vuuu: var Vec; vvvv: var Vec; vuuv: var Vec; vuvv: var Vec) {.
    importcpp: "ElSLib::D3(@)", header: "ElSLib.hxx".}
proc planeValue*(u: cfloat; v: cfloat; pos: Ax3): Pnt {.
    importcpp: "ElSLib::PlaneValue(@)", header: "ElSLib.hxx".}
proc cylinderValue*(u: cfloat; v: cfloat; pos: Ax3; radius: cfloat): Pnt {.
    importcpp: "ElSLib::CylinderValue(@)", header: "ElSLib.hxx".}
proc coneValue*(u: cfloat; v: cfloat; pos: Ax3; radius: cfloat; sAngle: cfloat): Pnt {.
    importcpp: "ElSLib::ConeValue(@)", header: "ElSLib.hxx".}
proc sphereValue*(u: cfloat; v: cfloat; pos: Ax3; radius: cfloat): Pnt {.
    importcpp: "ElSLib::SphereValue(@)", header: "ElSLib.hxx".}
proc torusValue*(u: cfloat; v: cfloat; pos: Ax3; majorRadius: cfloat; minorRadius: cfloat): Pnt {.
    importcpp: "ElSLib::TorusValue(@)", header: "ElSLib.hxx".}
proc planeDN*(u: cfloat; v: cfloat; pos: Ax3; nu: cint; nv: cint): Vec {.
    importcpp: "ElSLib::PlaneDN(@)", header: "ElSLib.hxx".}
proc cylinderDN*(u: cfloat; v: cfloat; pos: Ax3; radius: cfloat; nu: cint; nv: cint): Vec {.
    importcpp: "ElSLib::CylinderDN(@)", header: "ElSLib.hxx".}
proc coneDN*(u: cfloat; v: cfloat; pos: Ax3; radius: cfloat; sAngle: cfloat; nu: cint;
            nv: cint): Vec {.importcpp: "ElSLib::ConeDN(@)", header: "ElSLib.hxx".}
proc sphereDN*(u: cfloat; v: cfloat; pos: Ax3; radius: cfloat; nu: cint; nv: cint): Vec {.
    importcpp: "ElSLib::SphereDN(@)", header: "ElSLib.hxx".}
proc torusDN*(u: cfloat; v: cfloat; pos: Ax3; majorRadius: cfloat; minorRadius: cfloat;
             nu: cint; nv: cint): Vec {.importcpp: "ElSLib::TorusDN(@)",
                                   header: "ElSLib.hxx".}
proc planeD0*(u: cfloat; v: cfloat; pos: Ax3; p: var Pnt) {.
    importcpp: "ElSLib::PlaneD0(@)", header: "ElSLib.hxx".}
proc coneD0*(u: cfloat; v: cfloat; pos: Ax3; radius: cfloat; sAngle: cfloat; p: var Pnt) {.
    importcpp: "ElSLib::ConeD0(@)", header: "ElSLib.hxx".}
proc cylinderD0*(u: cfloat; v: cfloat; pos: Ax3; radius: cfloat; p: var Pnt) {.
    importcpp: "ElSLib::CylinderD0(@)", header: "ElSLib.hxx".}
proc sphereD0*(u: cfloat; v: cfloat; pos: Ax3; radius: cfloat; p: var Pnt) {.
    importcpp: "ElSLib::SphereD0(@)", header: "ElSLib.hxx".}
proc torusD0*(u: cfloat; v: cfloat; pos: Ax3; majorRadius: cfloat; minorRadius: cfloat;
             p: var Pnt) {.importcpp: "ElSLib::TorusD0(@)", header: "ElSLib.hxx".}
proc planeD1*(u: cfloat; v: cfloat; pos: Ax3; p: var Pnt; vu: var Vec; vv: var Vec) {.
    importcpp: "ElSLib::PlaneD1(@)", header: "ElSLib.hxx".}
proc coneD1*(u: cfloat; v: cfloat; pos: Ax3; radius: cfloat; sAngle: cfloat; p: var Pnt;
            vu: var Vec; vv: var Vec) {.importcpp: "ElSLib::ConeD1(@)",
                                  header: "ElSLib.hxx".}
proc cylinderD1*(u: cfloat; v: cfloat; pos: Ax3; radius: cfloat; p: var Pnt; vu: var Vec;
                vv: var Vec) {.importcpp: "ElSLib::CylinderD1(@)",
                            header: "ElSLib.hxx".}
proc sphereD1*(u: cfloat; v: cfloat; pos: Ax3; radius: cfloat; p: var Pnt; vu: var Vec;
              vv: var Vec) {.importcpp: "ElSLib::SphereD1(@)", header: "ElSLib.hxx".}
proc torusD1*(u: cfloat; v: cfloat; pos: Ax3; majorRadius: cfloat; minorRadius: cfloat;
             p: var Pnt; vu: var Vec; vv: var Vec) {.importcpp: "ElSLib::TorusD1(@)",
    header: "ElSLib.hxx".}
proc coneD2*(u: cfloat; v: cfloat; pos: Ax3; radius: cfloat; sAngle: cfloat; p: var Pnt;
            vu: var Vec; vv: var Vec; vuu: var Vec; vvv: var Vec; vuv: var Vec) {.
    importcpp: "ElSLib::ConeD2(@)", header: "ElSLib.hxx".}
proc cylinderD2*(u: cfloat; v: cfloat; pos: Ax3; radius: cfloat; p: var Pnt; vu: var Vec;
                vv: var Vec; vuu: var Vec; vvv: var Vec; vuv: var Vec) {.
    importcpp: "ElSLib::CylinderD2(@)", header: "ElSLib.hxx".}
proc sphereD2*(u: cfloat; v: cfloat; pos: Ax3; radius: cfloat; p: var Pnt; vu: var Vec;
              vv: var Vec; vuu: var Vec; vvv: var Vec; vuv: var Vec) {.
    importcpp: "ElSLib::SphereD2(@)", header: "ElSLib.hxx".}
proc torusD2*(u: cfloat; v: cfloat; pos: Ax3; majorRadius: cfloat; minorRadius: cfloat;
             p: var Pnt; vu: var Vec; vv: var Vec; vuu: var Vec; vvv: var Vec; vuv: var Vec) {.
    importcpp: "ElSLib::TorusD2(@)", header: "ElSLib.hxx".}
proc coneD3*(u: cfloat; v: cfloat; pos: Ax3; radius: cfloat; sAngle: cfloat; p: var Pnt;
            vu: var Vec; vv: var Vec; vuu: var Vec; vvv: var Vec; vuv: var Vec; vuuu: var Vec;
            vvvv: var Vec; vuuv: var Vec; vuvv: var Vec) {.
    importcpp: "ElSLib::ConeD3(@)", header: "ElSLib.hxx".}
proc cylinderD3*(u: cfloat; v: cfloat; pos: Ax3; radius: cfloat; p: var Pnt; vu: var Vec;
                vv: var Vec; vuu: var Vec; vvv: var Vec; vuv: var Vec; vuuu: var Vec;
                vvvv: var Vec; vuuv: var Vec; vuvv: var Vec) {.
    importcpp: "ElSLib::CylinderD3(@)", header: "ElSLib.hxx".}
proc sphereD3*(u: cfloat; v: cfloat; pos: Ax3; radius: cfloat; p: var Pnt; vu: var Vec;
              vv: var Vec; vuu: var Vec; vvv: var Vec; vuv: var Vec; vuuu: var Vec;
              vvvv: var Vec; vuuv: var Vec; vuvv: var Vec) {.
    importcpp: "ElSLib::SphereD3(@)", header: "ElSLib.hxx".}
proc torusD3*(u: cfloat; v: cfloat; pos: Ax3; majorRadius: cfloat; minorRadius: cfloat;
             p: var Pnt; vu: var Vec; vv: var Vec; vuu: var Vec; vvv: var Vec; vuv: var Vec;
             vuuu: var Vec; vvvv: var Vec; vuuv: var Vec; vuvv: var Vec) {.
    importcpp: "ElSLib::TorusD3(@)", header: "ElSLib.hxx".}
proc parameters*(pl: Pln; p: Pnt; u: var cfloat; v: var cfloat) {.
    importcpp: "ElSLib::Parameters(@)", header: "ElSLib.hxx".}
proc parameters*(c: Cylinder; p: Pnt; u: var cfloat; v: var cfloat) {.
    importcpp: "ElSLib::Parameters(@)", header: "ElSLib.hxx".}
proc parameters*(c: Cone; p: Pnt; u: var cfloat; v: var cfloat) {.
    importcpp: "ElSLib::Parameters(@)", header: "ElSLib.hxx".}
proc parameters*(s: Sphere; p: Pnt; u: var cfloat; v: var cfloat) {.
    importcpp: "ElSLib::Parameters(@)", header: "ElSLib.hxx".}
proc parameters*(t: Torus; p: Pnt; u: var cfloat; v: var cfloat) {.
    importcpp: "ElSLib::Parameters(@)", header: "ElSLib.hxx".}
proc planeParameters*(pos: Ax3; p: Pnt; u: var cfloat; v: var cfloat) {.
    importcpp: "ElSLib::PlaneParameters(@)", header: "ElSLib.hxx".}
proc cylinderParameters*(pos: Ax3; radius: cfloat; p: Pnt; u: var cfloat; v: var cfloat) {.
    importcpp: "ElSLib::CylinderParameters(@)", header: "ElSLib.hxx".}
proc coneParameters*(pos: Ax3; radius: cfloat; sAngle: cfloat; p: Pnt; u: var cfloat;
                    v: var cfloat) {.importcpp: "ElSLib::ConeParameters(@)",
                                  header: "ElSLib.hxx".}
proc sphereParameters*(pos: Ax3; radius: cfloat; p: Pnt; u: var cfloat; v: var cfloat) {.
    importcpp: "ElSLib::SphereParameters(@)", header: "ElSLib.hxx".}
proc torusParameters*(pos: Ax3; majorRadius: cfloat; minorRadius: cfloat; p: Pnt;
                     u: var cfloat; v: var cfloat) {.
    importcpp: "ElSLib::TorusParameters(@)", header: "ElSLib.hxx".}
proc planeUIso*(pos: Ax3; u: cfloat): Lin {.importcpp: "ElSLib::PlaneUIso(@)",
                                      header: "ElSLib.hxx".}
proc cylinderUIso*(pos: Ax3; radius: cfloat; u: cfloat): Lin {.
    importcpp: "ElSLib::CylinderUIso(@)", header: "ElSLib.hxx".}
proc coneUIso*(pos: Ax3; radius: cfloat; sAngle: cfloat; u: cfloat): Lin {.
    importcpp: "ElSLib::ConeUIso(@)", header: "ElSLib.hxx".}
proc sphereUIso*(pos: Ax3; radius: cfloat; u: cfloat): Circ {.
    importcpp: "ElSLib::SphereUIso(@)", header: "ElSLib.hxx".}
proc torusUIso*(pos: Ax3; majorRadius: cfloat; minorRadius: cfloat; u: cfloat): Circ {.
    importcpp: "ElSLib::TorusUIso(@)", header: "ElSLib.hxx".}
proc planeVIso*(pos: Ax3; v: cfloat): Lin {.importcpp: "ElSLib::PlaneVIso(@)",
                                      header: "ElSLib.hxx".}
proc cylinderVIso*(pos: Ax3; radius: cfloat; v: cfloat): Circ {.
    importcpp: "ElSLib::CylinderVIso(@)", header: "ElSLib.hxx".}
proc coneVIso*(pos: Ax3; radius: cfloat; sAngle: cfloat; v: cfloat): Circ {.
    importcpp: "ElSLib::ConeVIso(@)", header: "ElSLib.hxx".}
proc sphereVIso*(pos: Ax3; radius: cfloat; v: cfloat): Circ {.
    importcpp: "ElSLib::SphereVIso(@)", header: "ElSLib.hxx".}
proc torusVIso*(pos: Ax3; majorRadius: cfloat; minorRadius: cfloat; v: cfloat): Circ {.
    importcpp: "ElSLib::TorusVIso(@)", header: "ElSLib.hxx".}

























