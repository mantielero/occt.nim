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


proc value*(u: float; v: float; pl: Pln): Pnt {.importcpp: "ElSLib::Value(@)",
                                        header: "ElSLib.hxx".}
proc value*(u: float; v: float; c: Cone): Pnt {.importcpp: "ElSLib::Value(@)",
                                        header: "ElSLib.hxx".}
proc value*(u: float; v: float; c: Cylinder): Pnt {.importcpp: "ElSLib::Value(@)",
    header: "ElSLib.hxx".}
proc value*(u: float; v: float; s: Sphere): Pnt {.importcpp: "ElSLib::Value(@)",
    header: "ElSLib.hxx".}
proc value*(u: float; v: float; t: Torus): Pnt {.importcpp: "ElSLib::Value(@)",
    header: "ElSLib.hxx".}
proc dn*(u: float; v: float; pl: Pln; nu: int; nv: int): Vec {.importcpp: "ElSLib::DN(@)",
    header: "ElSLib.hxx".}
proc dn*(u: float; v: float; c: Cone; nu: int; nv: int): Vec {.importcpp: "ElSLib::DN(@)",
    header: "ElSLib.hxx".}
proc dn*(u: float; v: float; c: Cylinder; nu: int; nv: int): Vec {.
    importcpp: "ElSLib::DN(@)", header: "ElSLib.hxx".}
proc dn*(u: float; v: float; s: Sphere; nu: int; nv: int): Vec {.importcpp: "ElSLib::DN(@)",
    header: "ElSLib.hxx".}
proc dn*(u: float; v: float; t: Torus; nu: int; nv: int): Vec {.importcpp: "ElSLib::DN(@)",
    header: "ElSLib.hxx".}
proc d0*(u: float; v: float; pl: Pln; p: var Pnt) {.importcpp: "ElSLib::D0(@)",
    header: "ElSLib.hxx".}
proc d0*(u: float; v: float; c: Cone; p: var Pnt) {.importcpp: "ElSLib::D0(@)",
    header: "ElSLib.hxx".}
proc d0*(u: float; v: float; c: Cylinder; p: var Pnt) {.importcpp: "ElSLib::D0(@)",
    header: "ElSLib.hxx".}
proc d0*(u: float; v: float; s: Sphere; p: var Pnt) {.importcpp: "ElSLib::D0(@)",
    header: "ElSLib.hxx".}
proc d0*(u: float; v: float; t: Torus; p: var Pnt) {.importcpp: "ElSLib::D0(@)",
    header: "ElSLib.hxx".}
proc d1*(u: float; v: float; pl: Pln; p: var Pnt; vu: var Vec; vv: var Vec) {.
    importcpp: "ElSLib::D1(@)", header: "ElSLib.hxx".}
proc d1*(u: float; v: float; c: Cone; p: var Pnt; vu: var Vec; vv: var Vec) {.
    importcpp: "ElSLib::D1(@)", header: "ElSLib.hxx".}
proc d1*(u: float; v: float; c: Cylinder; p: var Pnt; vu: var Vec; vv: var Vec) {.
    importcpp: "ElSLib::D1(@)", header: "ElSLib.hxx".}
proc d1*(u: float; v: float; s: Sphere; p: var Pnt; vu: var Vec; vv: var Vec) {.
    importcpp: "ElSLib::D1(@)", header: "ElSLib.hxx".}
proc d1*(u: float; v: float; t: Torus; p: var Pnt; vu: var Vec; vv: var Vec) {.
    importcpp: "ElSLib::D1(@)", header: "ElSLib.hxx".}
proc d2*(u: float; v: float; c: Cone; p: var Pnt; vu: var Vec; vv: var Vec; vuu: var Vec;
        vvv: var Vec; vuv: var Vec) {.importcpp: "ElSLib::D2(@)", header: "ElSLib.hxx".}
proc d2*(u: float; v: float; c: Cylinder; p: var Pnt; vu: var Vec; vv: var Vec; vuu: var Vec;
        vvv: var Vec; vuv: var Vec) {.importcpp: "ElSLib::D2(@)", header: "ElSLib.hxx".}
proc d2*(u: float; v: float; s: Sphere; p: var Pnt; vu: var Vec; vv: var Vec; vuu: var Vec;
        vvv: var Vec; vuv: var Vec) {.importcpp: "ElSLib::D2(@)", header: "ElSLib.hxx".}
proc d2*(u: float; v: float; t: Torus; p: var Pnt; vu: var Vec; vv: var Vec; vuu: var Vec;
        vvv: var Vec; vuv: var Vec) {.importcpp: "ElSLib::D2(@)", header: "ElSLib.hxx".}
proc d3*(u: float; v: float; c: Cone; p: var Pnt; vu: var Vec; vv: var Vec; vuu: var Vec;
        vvv: var Vec; vuv: var Vec; vuuu: var Vec; vvvv: var Vec; vuuv: var Vec; vuvv: var Vec) {.
    importcpp: "ElSLib::D3(@)", header: "ElSLib.hxx".}
proc d3*(u: float; v: float; c: Cylinder; p: var Pnt; vu: var Vec; vv: var Vec; vuu: var Vec;
        vvv: var Vec; vuv: var Vec; vuuu: var Vec; vvvv: var Vec; vuuv: var Vec; vuvv: var Vec) {.
    importcpp: "ElSLib::D3(@)", header: "ElSLib.hxx".}
proc d3*(u: float; v: float; s: Sphere; p: var Pnt; vu: var Vec; vv: var Vec; vuu: var Vec;
        vvv: var Vec; vuv: var Vec; vuuu: var Vec; vvvv: var Vec; vuuv: var Vec; vuvv: var Vec) {.
    importcpp: "ElSLib::D3(@)", header: "ElSLib.hxx".}
proc d3*(u: float; v: float; t: Torus; p: var Pnt; vu: var Vec; vv: var Vec; vuu: var Vec;
        vvv: var Vec; vuv: var Vec; vuuu: var Vec; vvvv: var Vec; vuuv: var Vec; vuvv: var Vec) {.
    importcpp: "ElSLib::D3(@)", header: "ElSLib.hxx".}
proc planeValue*(u: float; v: float; pos: Ax3): Pnt {.
    importcpp: "ElSLib::PlaneValue(@)", header: "ElSLib.hxx".}
proc cylinderValue*(u: float; v: float; pos: Ax3; radius: float): Pnt {.
    importcpp: "ElSLib::CylinderValue(@)", header: "ElSLib.hxx".}
proc coneValue*(u: float; v: float; pos: Ax3; radius: float; sAngle: float): Pnt {.
    importcpp: "ElSLib::ConeValue(@)", header: "ElSLib.hxx".}
proc sphereValue*(u: float; v: float; pos: Ax3; radius: float): Pnt {.
    importcpp: "ElSLib::SphereValue(@)", header: "ElSLib.hxx".}
proc torusValue*(u: float; v: float; pos: Ax3; majorRadius: float; minorRadius: float): Pnt {.
    importcpp: "ElSLib::TorusValue(@)", header: "ElSLib.hxx".}
proc planeDN*(u: float; v: float; pos: Ax3; nu: int; nv: int): Vec {.
    importcpp: "ElSLib::PlaneDN(@)", header: "ElSLib.hxx".}
proc cylinderDN*(u: float; v: float; pos: Ax3; radius: float; nu: int; nv: int): Vec {.
    importcpp: "ElSLib::CylinderDN(@)", header: "ElSLib.hxx".}
proc coneDN*(u: float; v: float; pos: Ax3; radius: float; sAngle: float; nu: int; nv: int): Vec {.
    importcpp: "ElSLib::ConeDN(@)", header: "ElSLib.hxx".}
proc sphereDN*(u: float; v: float; pos: Ax3; radius: float; nu: int; nv: int): Vec {.
    importcpp: "ElSLib::SphereDN(@)", header: "ElSLib.hxx".}
proc torusDN*(u: float; v: float; pos: Ax3; majorRadius: float; minorRadius: float;
             nu: int; nv: int): Vec {.importcpp: "ElSLib::TorusDN(@)",
                                 header: "ElSLib.hxx".}
proc planeD0*(u: float; v: float; pos: Ax3; p: var Pnt) {.importcpp: "ElSLib::PlaneD0(@)",
    header: "ElSLib.hxx".}
proc coneD0*(u: float; v: float; pos: Ax3; radius: float; sAngle: float; p: var Pnt) {.
    importcpp: "ElSLib::ConeD0(@)", header: "ElSLib.hxx".}
proc cylinderD0*(u: float; v: float; pos: Ax3; radius: float; p: var Pnt) {.
    importcpp: "ElSLib::CylinderD0(@)", header: "ElSLib.hxx".}
proc sphereD0*(u: float; v: float; pos: Ax3; radius: float; p: var Pnt) {.
    importcpp: "ElSLib::SphereD0(@)", header: "ElSLib.hxx".}
proc torusD0*(u: float; v: float; pos: Ax3; majorRadius: float; minorRadius: float;
             p: var Pnt) {.importcpp: "ElSLib::TorusD0(@)", header: "ElSLib.hxx".}
proc planeD1*(u: float; v: float; pos: Ax3; p: var Pnt; vu: var Vec; vv: var Vec) {.
    importcpp: "ElSLib::PlaneD1(@)", header: "ElSLib.hxx".}
proc coneD1*(u: float; v: float; pos: Ax3; radius: float; sAngle: float; p: var Pnt;
            vu: var Vec; vv: var Vec) {.importcpp: "ElSLib::ConeD1(@)",
                                  header: "ElSLib.hxx".}
proc cylinderD1*(u: float; v: float; pos: Ax3; radius: float; p: var Pnt; vu: var Vec;
                vv: var Vec) {.importcpp: "ElSLib::CylinderD1(@)",
                            header: "ElSLib.hxx".}
proc sphereD1*(u: float; v: float; pos: Ax3; radius: float; p: var Pnt; vu: var Vec;
              vv: var Vec) {.importcpp: "ElSLib::SphereD1(@)", header: "ElSLib.hxx".}
proc torusD1*(u: float; v: float; pos: Ax3; majorRadius: float; minorRadius: float;
             p: var Pnt; vu: var Vec; vv: var Vec) {.importcpp: "ElSLib::TorusD1(@)",
    header: "ElSLib.hxx".}
proc coneD2*(u: float; v: float; pos: Ax3; radius: float; sAngle: float; p: var Pnt;
            vu: var Vec; vv: var Vec; vuu: var Vec; vvv: var Vec; vuv: var Vec) {.
    importcpp: "ElSLib::ConeD2(@)", header: "ElSLib.hxx".}
proc cylinderD2*(u: float; v: float; pos: Ax3; radius: float; p: var Pnt; vu: var Vec;
                vv: var Vec; vuu: var Vec; vvv: var Vec; vuv: var Vec) {.
    importcpp: "ElSLib::CylinderD2(@)", header: "ElSLib.hxx".}
proc sphereD2*(u: float; v: float; pos: Ax3; radius: float; p: var Pnt; vu: var Vec;
              vv: var Vec; vuu: var Vec; vvv: var Vec; vuv: var Vec) {.
    importcpp: "ElSLib::SphereD2(@)", header: "ElSLib.hxx".}
proc torusD2*(u: float; v: float; pos: Ax3; majorRadius: float; minorRadius: float;
             p: var Pnt; vu: var Vec; vv: var Vec; vuu: var Vec; vvv: var Vec; vuv: var Vec) {.
    importcpp: "ElSLib::TorusD2(@)", header: "ElSLib.hxx".}
proc coneD3*(u: float; v: float; pos: Ax3; radius: float; sAngle: float; p: var Pnt;
            vu: var Vec; vv: var Vec; vuu: var Vec; vvv: var Vec; vuv: var Vec; vuuu: var Vec;
            vvvv: var Vec; vuuv: var Vec; vuvv: var Vec) {.
    importcpp: "ElSLib::ConeD3(@)", header: "ElSLib.hxx".}
proc cylinderD3*(u: float; v: float; pos: Ax3; radius: float; p: var Pnt; vu: var Vec;
                vv: var Vec; vuu: var Vec; vvv: var Vec; vuv: var Vec; vuuu: var Vec;
                vvvv: var Vec; vuuv: var Vec; vuvv: var Vec) {.
    importcpp: "ElSLib::CylinderD3(@)", header: "ElSLib.hxx".}
proc sphereD3*(u: float; v: float; pos: Ax3; radius: float; p: var Pnt; vu: var Vec;
              vv: var Vec; vuu: var Vec; vvv: var Vec; vuv: var Vec; vuuu: var Vec;
              vvvv: var Vec; vuuv: var Vec; vuvv: var Vec) {.
    importcpp: "ElSLib::SphereD3(@)", header: "ElSLib.hxx".}
proc torusD3*(u: float; v: float; pos: Ax3; majorRadius: float; minorRadius: float;
             p: var Pnt; vu: var Vec; vv: var Vec; vuu: var Vec; vvv: var Vec; vuv: var Vec;
             vuuu: var Vec; vvvv: var Vec; vuuv: var Vec; vuvv: var Vec) {.
    importcpp: "ElSLib::TorusD3(@)", header: "ElSLib.hxx".}
proc parameters*(pl: Pln; p: Pnt; u: var float; v: var float) {.
    importcpp: "ElSLib::Parameters(@)", header: "ElSLib.hxx".}
proc parameters*(c: Cylinder; p: Pnt; u: var float; v: var float) {.
    importcpp: "ElSLib::Parameters(@)", header: "ElSLib.hxx".}
proc parameters*(c: Cone; p: Pnt; u: var float; v: var float) {.
    importcpp: "ElSLib::Parameters(@)", header: "ElSLib.hxx".}
proc parameters*(s: Sphere; p: Pnt; u: var float; v: var float) {.
    importcpp: "ElSLib::Parameters(@)", header: "ElSLib.hxx".}
proc parameters*(t: Torus; p: Pnt; u: var float; v: var float) {.
    importcpp: "ElSLib::Parameters(@)", header: "ElSLib.hxx".}
proc planeParameters*(pos: Ax3; p: Pnt; u: var float; v: var float) {.
    importcpp: "ElSLib::PlaneParameters(@)", header: "ElSLib.hxx".}
proc cylinderParameters*(pos: Ax3; radius: float; p: Pnt; u: var float; v: var float) {.
    importcpp: "ElSLib::CylinderParameters(@)", header: "ElSLib.hxx".}
proc coneParameters*(pos: Ax3; radius: float; sAngle: float; p: Pnt; u: var float;
                    v: var float) {.importcpp: "ElSLib::ConeParameters(@)",
                                 header: "ElSLib.hxx".}
proc sphereParameters*(pos: Ax3; radius: float; p: Pnt; u: var float; v: var float) {.
    importcpp: "ElSLib::SphereParameters(@)", header: "ElSLib.hxx".}
proc torusParameters*(pos: Ax3; majorRadius: float; minorRadius: float; p: Pnt;
                     u: var float; v: var float) {.
    importcpp: "ElSLib::TorusParameters(@)", header: "ElSLib.hxx".}
proc planeUIso*(pos: Ax3; u: float): Lin {.importcpp: "ElSLib::PlaneUIso(@)",
                                     header: "ElSLib.hxx".}
proc cylinderUIso*(pos: Ax3; radius: float; u: float): Lin {.
    importcpp: "ElSLib::CylinderUIso(@)", header: "ElSLib.hxx".}
proc coneUIso*(pos: Ax3; radius: float; sAngle: float; u: float): Lin {.
    importcpp: "ElSLib::ConeUIso(@)", header: "ElSLib.hxx".}
proc sphereUIso*(pos: Ax3; radius: float; u: float): Circ {.
    importcpp: "ElSLib::SphereUIso(@)", header: "ElSLib.hxx".}
proc torusUIso*(pos: Ax3; majorRadius: float; minorRadius: float; u: float): Circ {.
    importcpp: "ElSLib::TorusUIso(@)", header: "ElSLib.hxx".}
proc planeVIso*(pos: Ax3; v: float): Lin {.importcpp: "ElSLib::PlaneVIso(@)",
                                     header: "ElSLib.hxx".}
proc cylinderVIso*(pos: Ax3; radius: float; v: float): Circ {.
    importcpp: "ElSLib::CylinderVIso(@)", header: "ElSLib.hxx".}
proc coneVIso*(pos: Ax3; radius: float; sAngle: float; v: float): Circ {.
    importcpp: "ElSLib::ConeVIso(@)", header: "ElSLib.hxx".}
proc sphereVIso*(pos: Ax3; radius: float; v: float): Circ {.
    importcpp: "ElSLib::SphereVIso(@)", header: "ElSLib.hxx".}
proc torusVIso*(pos: Ax3; majorRadius: float; minorRadius: float; v: float): Circ {.
    importcpp: "ElSLib::TorusVIso(@)", header: "ElSLib.hxx".}
