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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real, ../gp/gp_Pnt,
  ../Standard/Standard_Integer, ../gp/gp_Vec

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


proc Value*(U: Standard_Real; V: Standard_Real; Pl: gp_Pln): gp_Pnt {.
    importcpp: "ElSLib::Value(@)", header: "ElSLib.hxx".}
proc Value*(U: Standard_Real; V: Standard_Real; C: gp_Cone): gp_Pnt {.
    importcpp: "ElSLib::Value(@)", header: "ElSLib.hxx".}
proc Value*(U: Standard_Real; V: Standard_Real; C: gp_Cylinder): gp_Pnt {.
    importcpp: "ElSLib::Value(@)", header: "ElSLib.hxx".}
proc Value*(U: Standard_Real; V: Standard_Real; S: gp_Sphere): gp_Pnt {.
    importcpp: "ElSLib::Value(@)", header: "ElSLib.hxx".}
proc Value*(U: Standard_Real; V: Standard_Real; T: gp_Torus): gp_Pnt {.
    importcpp: "ElSLib::Value(@)", header: "ElSLib.hxx".}
proc DN*(U: Standard_Real; V: Standard_Real; Pl: gp_Pln; Nu: Standard_Integer;
        Nv: Standard_Integer): gp_Vec {.importcpp: "ElSLib::DN(@)",
                                     header: "ElSLib.hxx".}
proc DN*(U: Standard_Real; V: Standard_Real; C: gp_Cone; Nu: Standard_Integer;
        Nv: Standard_Integer): gp_Vec {.importcpp: "ElSLib::DN(@)",
                                     header: "ElSLib.hxx".}
proc DN*(U: Standard_Real; V: Standard_Real; C: gp_Cylinder; Nu: Standard_Integer;
        Nv: Standard_Integer): gp_Vec {.importcpp: "ElSLib::DN(@)",
                                     header: "ElSLib.hxx".}
proc DN*(U: Standard_Real; V: Standard_Real; S: gp_Sphere; Nu: Standard_Integer;
        Nv: Standard_Integer): gp_Vec {.importcpp: "ElSLib::DN(@)",
                                     header: "ElSLib.hxx".}
proc DN*(U: Standard_Real; V: Standard_Real; T: gp_Torus; Nu: Standard_Integer;
        Nv: Standard_Integer): gp_Vec {.importcpp: "ElSLib::DN(@)",
                                     header: "ElSLib.hxx".}
proc D0*(U: Standard_Real; V: Standard_Real; Pl: gp_Pln; P: var gp_Pnt) {.
    importcpp: "ElSLib::D0(@)", header: "ElSLib.hxx".}
proc D0*(U: Standard_Real; V: Standard_Real; C: gp_Cone; P: var gp_Pnt) {.
    importcpp: "ElSLib::D0(@)", header: "ElSLib.hxx".}
proc D0*(U: Standard_Real; V: Standard_Real; C: gp_Cylinder; P: var gp_Pnt) {.
    importcpp: "ElSLib::D0(@)", header: "ElSLib.hxx".}
proc D0*(U: Standard_Real; V: Standard_Real; S: gp_Sphere; P: var gp_Pnt) {.
    importcpp: "ElSLib::D0(@)", header: "ElSLib.hxx".}
proc D0*(U: Standard_Real; V: Standard_Real; T: gp_Torus; P: var gp_Pnt) {.
    importcpp: "ElSLib::D0(@)", header: "ElSLib.hxx".}
proc D1*(U: Standard_Real; V: Standard_Real; Pl: gp_Pln; P: var gp_Pnt; Vu: var gp_Vec;
        Vv: var gp_Vec) {.importcpp: "ElSLib::D1(@)", header: "ElSLib.hxx".}
proc D1*(U: Standard_Real; V: Standard_Real; C: gp_Cone; P: var gp_Pnt; Vu: var gp_Vec;
        Vv: var gp_Vec) {.importcpp: "ElSLib::D1(@)", header: "ElSLib.hxx".}
proc D1*(U: Standard_Real; V: Standard_Real; C: gp_Cylinder; P: var gp_Pnt;
        Vu: var gp_Vec; Vv: var gp_Vec) {.importcpp: "ElSLib::D1(@)",
                                    header: "ElSLib.hxx".}
proc D1*(U: Standard_Real; V: Standard_Real; S: gp_Sphere; P: var gp_Pnt; Vu: var gp_Vec;
        Vv: var gp_Vec) {.importcpp: "ElSLib::D1(@)", header: "ElSLib.hxx".}
proc D1*(U: Standard_Real; V: Standard_Real; T: gp_Torus; P: var gp_Pnt; Vu: var gp_Vec;
        Vv: var gp_Vec) {.importcpp: "ElSLib::D1(@)", header: "ElSLib.hxx".}
proc D2*(U: Standard_Real; V: Standard_Real; C: gp_Cone; P: var gp_Pnt; Vu: var gp_Vec;
        Vv: var gp_Vec; Vuu: var gp_Vec; Vvv: var gp_Vec; Vuv: var gp_Vec) {.
    importcpp: "ElSLib::D2(@)", header: "ElSLib.hxx".}
proc D2*(U: Standard_Real; V: Standard_Real; C: gp_Cylinder; P: var gp_Pnt;
        Vu: var gp_Vec; Vv: var gp_Vec; Vuu: var gp_Vec; Vvv: var gp_Vec; Vuv: var gp_Vec) {.
    importcpp: "ElSLib::D2(@)", header: "ElSLib.hxx".}
proc D2*(U: Standard_Real; V: Standard_Real; S: gp_Sphere; P: var gp_Pnt; Vu: var gp_Vec;
        Vv: var gp_Vec; Vuu: var gp_Vec; Vvv: var gp_Vec; Vuv: var gp_Vec) {.
    importcpp: "ElSLib::D2(@)", header: "ElSLib.hxx".}
proc D2*(U: Standard_Real; V: Standard_Real; T: gp_Torus; P: var gp_Pnt; Vu: var gp_Vec;
        Vv: var gp_Vec; Vuu: var gp_Vec; Vvv: var gp_Vec; Vuv: var gp_Vec) {.
    importcpp: "ElSLib::D2(@)", header: "ElSLib.hxx".}
proc D3*(U: Standard_Real; V: Standard_Real; C: gp_Cone; P: var gp_Pnt; Vu: var gp_Vec;
        Vv: var gp_Vec; Vuu: var gp_Vec; Vvv: var gp_Vec; Vuv: var gp_Vec; Vuuu: var gp_Vec;
        Vvvv: var gp_Vec; Vuuv: var gp_Vec; Vuvv: var gp_Vec) {.
    importcpp: "ElSLib::D3(@)", header: "ElSLib.hxx".}
proc D3*(U: Standard_Real; V: Standard_Real; C: gp_Cylinder; P: var gp_Pnt;
        Vu: var gp_Vec; Vv: var gp_Vec; Vuu: var gp_Vec; Vvv: var gp_Vec; Vuv: var gp_Vec;
        Vuuu: var gp_Vec; Vvvv: var gp_Vec; Vuuv: var gp_Vec; Vuvv: var gp_Vec) {.
    importcpp: "ElSLib::D3(@)", header: "ElSLib.hxx".}
proc D3*(U: Standard_Real; V: Standard_Real; S: gp_Sphere; P: var gp_Pnt; Vu: var gp_Vec;
        Vv: var gp_Vec; Vuu: var gp_Vec; Vvv: var gp_Vec; Vuv: var gp_Vec; Vuuu: var gp_Vec;
        Vvvv: var gp_Vec; Vuuv: var gp_Vec; Vuvv: var gp_Vec) {.
    importcpp: "ElSLib::D3(@)", header: "ElSLib.hxx".}
proc D3*(U: Standard_Real; V: Standard_Real; T: gp_Torus; P: var gp_Pnt; Vu: var gp_Vec;
        Vv: var gp_Vec; Vuu: var gp_Vec; Vvv: var gp_Vec; Vuv: var gp_Vec; Vuuu: var gp_Vec;
        Vvvv: var gp_Vec; Vuuv: var gp_Vec; Vuvv: var gp_Vec) {.
    importcpp: "ElSLib::D3(@)", header: "ElSLib.hxx".}
proc PlaneValue*(U: Standard_Real; V: Standard_Real; Pos: gp_Ax3): gp_Pnt {.
    importcpp: "ElSLib::PlaneValue(@)", header: "ElSLib.hxx".}
proc CylinderValue*(U: Standard_Real; V: Standard_Real; Pos: gp_Ax3;
                   Radius: Standard_Real): gp_Pnt {.
    importcpp: "ElSLib::CylinderValue(@)", header: "ElSLib.hxx".}
proc ConeValue*(U: Standard_Real; V: Standard_Real; Pos: gp_Ax3; Radius: Standard_Real;
               SAngle: Standard_Real): gp_Pnt {.importcpp: "ElSLib::ConeValue(@)",
    header: "ElSLib.hxx".}
proc SphereValue*(U: Standard_Real; V: Standard_Real; Pos: gp_Ax3;
                 Radius: Standard_Real): gp_Pnt {.
    importcpp: "ElSLib::SphereValue(@)", header: "ElSLib.hxx".}
proc TorusValue*(U: Standard_Real; V: Standard_Real; Pos: gp_Ax3;
                MajorRadius: Standard_Real; MinorRadius: Standard_Real): gp_Pnt {.
    importcpp: "ElSLib::TorusValue(@)", header: "ElSLib.hxx".}
proc PlaneDN*(U: Standard_Real; V: Standard_Real; Pos: gp_Ax3; Nu: Standard_Integer;
             Nv: Standard_Integer): gp_Vec {.importcpp: "ElSLib::PlaneDN(@)",
    header: "ElSLib.hxx".}
proc CylinderDN*(U: Standard_Real; V: Standard_Real; Pos: gp_Ax3;
                Radius: Standard_Real; Nu: Standard_Integer; Nv: Standard_Integer): gp_Vec {.
    importcpp: "ElSLib::CylinderDN(@)", header: "ElSLib.hxx".}
proc ConeDN*(U: Standard_Real; V: Standard_Real; Pos: gp_Ax3; Radius: Standard_Real;
            SAngle: Standard_Real; Nu: Standard_Integer; Nv: Standard_Integer): gp_Vec {.
    importcpp: "ElSLib::ConeDN(@)", header: "ElSLib.hxx".}
proc SphereDN*(U: Standard_Real; V: Standard_Real; Pos: gp_Ax3; Radius: Standard_Real;
              Nu: Standard_Integer; Nv: Standard_Integer): gp_Vec {.
    importcpp: "ElSLib::SphereDN(@)", header: "ElSLib.hxx".}
proc TorusDN*(U: Standard_Real; V: Standard_Real; Pos: gp_Ax3;
             MajorRadius: Standard_Real; MinorRadius: Standard_Real;
             Nu: Standard_Integer; Nv: Standard_Integer): gp_Vec {.
    importcpp: "ElSLib::TorusDN(@)", header: "ElSLib.hxx".}
proc PlaneD0*(U: Standard_Real; V: Standard_Real; Pos: gp_Ax3; P: var gp_Pnt) {.
    importcpp: "ElSLib::PlaneD0(@)", header: "ElSLib.hxx".}
proc ConeD0*(U: Standard_Real; V: Standard_Real; Pos: gp_Ax3; Radius: Standard_Real;
            SAngle: Standard_Real; P: var gp_Pnt) {.importcpp: "ElSLib::ConeD0(@)",
    header: "ElSLib.hxx".}
proc CylinderD0*(U: Standard_Real; V: Standard_Real; Pos: gp_Ax3;
                Radius: Standard_Real; P: var gp_Pnt) {.
    importcpp: "ElSLib::CylinderD0(@)", header: "ElSLib.hxx".}
proc SphereD0*(U: Standard_Real; V: Standard_Real; Pos: gp_Ax3; Radius: Standard_Real;
              P: var gp_Pnt) {.importcpp: "ElSLib::SphereD0(@)", header: "ElSLib.hxx".}
proc TorusD0*(U: Standard_Real; V: Standard_Real; Pos: gp_Ax3;
             MajorRadius: Standard_Real; MinorRadius: Standard_Real; P: var gp_Pnt) {.
    importcpp: "ElSLib::TorusD0(@)", header: "ElSLib.hxx".}
proc PlaneD1*(U: Standard_Real; V: Standard_Real; Pos: gp_Ax3; P: var gp_Pnt;
             Vu: var gp_Vec; Vv: var gp_Vec) {.importcpp: "ElSLib::PlaneD1(@)",
    header: "ElSLib.hxx".}
proc ConeD1*(U: Standard_Real; V: Standard_Real; Pos: gp_Ax3; Radius: Standard_Real;
            SAngle: Standard_Real; P: var gp_Pnt; Vu: var gp_Vec; Vv: var gp_Vec) {.
    importcpp: "ElSLib::ConeD1(@)", header: "ElSLib.hxx".}
proc CylinderD1*(U: Standard_Real; V: Standard_Real; Pos: gp_Ax3;
                Radius: Standard_Real; P: var gp_Pnt; Vu: var gp_Vec; Vv: var gp_Vec) {.
    importcpp: "ElSLib::CylinderD1(@)", header: "ElSLib.hxx".}
proc SphereD1*(U: Standard_Real; V: Standard_Real; Pos: gp_Ax3; Radius: Standard_Real;
              P: var gp_Pnt; Vu: var gp_Vec; Vv: var gp_Vec) {.
    importcpp: "ElSLib::SphereD1(@)", header: "ElSLib.hxx".}
proc TorusD1*(U: Standard_Real; V: Standard_Real; Pos: gp_Ax3;
             MajorRadius: Standard_Real; MinorRadius: Standard_Real; P: var gp_Pnt;
             Vu: var gp_Vec; Vv: var gp_Vec) {.importcpp: "ElSLib::TorusD1(@)",
    header: "ElSLib.hxx".}
proc ConeD2*(U: Standard_Real; V: Standard_Real; Pos: gp_Ax3; Radius: Standard_Real;
            SAngle: Standard_Real; P: var gp_Pnt; Vu: var gp_Vec; Vv: var gp_Vec;
            Vuu: var gp_Vec; Vvv: var gp_Vec; Vuv: var gp_Vec) {.
    importcpp: "ElSLib::ConeD2(@)", header: "ElSLib.hxx".}
proc CylinderD2*(U: Standard_Real; V: Standard_Real; Pos: gp_Ax3;
                Radius: Standard_Real; P: var gp_Pnt; Vu: var gp_Vec; Vv: var gp_Vec;
                Vuu: var gp_Vec; Vvv: var gp_Vec; Vuv: var gp_Vec) {.
    importcpp: "ElSLib::CylinderD2(@)", header: "ElSLib.hxx".}
proc SphereD2*(U: Standard_Real; V: Standard_Real; Pos: gp_Ax3; Radius: Standard_Real;
              P: var gp_Pnt; Vu: var gp_Vec; Vv: var gp_Vec; Vuu: var gp_Vec;
              Vvv: var gp_Vec; Vuv: var gp_Vec) {.importcpp: "ElSLib::SphereD2(@)",
    header: "ElSLib.hxx".}
proc TorusD2*(U: Standard_Real; V: Standard_Real; Pos: gp_Ax3;
             MajorRadius: Standard_Real; MinorRadius: Standard_Real; P: var gp_Pnt;
             Vu: var gp_Vec; Vv: var gp_Vec; Vuu: var gp_Vec; Vvv: var gp_Vec;
             Vuv: var gp_Vec) {.importcpp: "ElSLib::TorusD2(@)", header: "ElSLib.hxx".}
proc ConeD3*(U: Standard_Real; V: Standard_Real; Pos: gp_Ax3; Radius: Standard_Real;
            SAngle: Standard_Real; P: var gp_Pnt; Vu: var gp_Vec; Vv: var gp_Vec;
            Vuu: var gp_Vec; Vvv: var gp_Vec; Vuv: var gp_Vec; Vuuu: var gp_Vec;
            Vvvv: var gp_Vec; Vuuv: var gp_Vec; Vuvv: var gp_Vec) {.
    importcpp: "ElSLib::ConeD3(@)", header: "ElSLib.hxx".}
proc CylinderD3*(U: Standard_Real; V: Standard_Real; Pos: gp_Ax3;
                Radius: Standard_Real; P: var gp_Pnt; Vu: var gp_Vec; Vv: var gp_Vec;
                Vuu: var gp_Vec; Vvv: var gp_Vec; Vuv: var gp_Vec; Vuuu: var gp_Vec;
                Vvvv: var gp_Vec; Vuuv: var gp_Vec; Vuvv: var gp_Vec) {.
    importcpp: "ElSLib::CylinderD3(@)", header: "ElSLib.hxx".}
proc SphereD3*(U: Standard_Real; V: Standard_Real; Pos: gp_Ax3; Radius: Standard_Real;
              P: var gp_Pnt; Vu: var gp_Vec; Vv: var gp_Vec; Vuu: var gp_Vec;
              Vvv: var gp_Vec; Vuv: var gp_Vec; Vuuu: var gp_Vec; Vvvv: var gp_Vec;
              Vuuv: var gp_Vec; Vuvv: var gp_Vec) {.importcpp: "ElSLib::SphereD3(@)",
    header: "ElSLib.hxx".}
proc TorusD3*(U: Standard_Real; V: Standard_Real; Pos: gp_Ax3;
             MajorRadius: Standard_Real; MinorRadius: Standard_Real; P: var gp_Pnt;
             Vu: var gp_Vec; Vv: var gp_Vec; Vuu: var gp_Vec; Vvv: var gp_Vec;
             Vuv: var gp_Vec; Vuuu: var gp_Vec; Vvvv: var gp_Vec; Vuuv: var gp_Vec;
             Vuvv: var gp_Vec) {.importcpp: "ElSLib::TorusD3(@)",
                              header: "ElSLib.hxx".}
proc Parameters*(Pl: gp_Pln; P: gp_Pnt; U: var Standard_Real; V: var Standard_Real) {.
    importcpp: "ElSLib::Parameters(@)", header: "ElSLib.hxx".}
proc Parameters*(C: gp_Cylinder; P: gp_Pnt; U: var Standard_Real; V: var Standard_Real) {.
    importcpp: "ElSLib::Parameters(@)", header: "ElSLib.hxx".}
proc Parameters*(C: gp_Cone; P: gp_Pnt; U: var Standard_Real; V: var Standard_Real) {.
    importcpp: "ElSLib::Parameters(@)", header: "ElSLib.hxx".}
proc Parameters*(S: gp_Sphere; P: gp_Pnt; U: var Standard_Real; V: var Standard_Real) {.
    importcpp: "ElSLib::Parameters(@)", header: "ElSLib.hxx".}
proc Parameters*(T: gp_Torus; P: gp_Pnt; U: var Standard_Real; V: var Standard_Real) {.
    importcpp: "ElSLib::Parameters(@)", header: "ElSLib.hxx".}
proc PlaneParameters*(Pos: gp_Ax3; P: gp_Pnt; U: var Standard_Real; V: var Standard_Real) {.
    importcpp: "ElSLib::PlaneParameters(@)", header: "ElSLib.hxx".}
proc CylinderParameters*(Pos: gp_Ax3; Radius: Standard_Real; P: gp_Pnt;
                        U: var Standard_Real; V: var Standard_Real) {.
    importcpp: "ElSLib::CylinderParameters(@)", header: "ElSLib.hxx".}
proc ConeParameters*(Pos: gp_Ax3; Radius: Standard_Real; SAngle: Standard_Real;
                    P: gp_Pnt; U: var Standard_Real; V: var Standard_Real) {.
    importcpp: "ElSLib::ConeParameters(@)", header: "ElSLib.hxx".}
proc SphereParameters*(Pos: gp_Ax3; Radius: Standard_Real; P: gp_Pnt;
                      U: var Standard_Real; V: var Standard_Real) {.
    importcpp: "ElSLib::SphereParameters(@)", header: "ElSLib.hxx".}
proc TorusParameters*(Pos: gp_Ax3; MajorRadius: Standard_Real;
                     MinorRadius: Standard_Real; P: gp_Pnt; U: var Standard_Real;
                     V: var Standard_Real) {.
    importcpp: "ElSLib::TorusParameters(@)", header: "ElSLib.hxx".}
proc PlaneUIso*(Pos: gp_Ax3; U: Standard_Real): gp_Lin {.
    importcpp: "ElSLib::PlaneUIso(@)", header: "ElSLib.hxx".}
proc CylinderUIso*(Pos: gp_Ax3; Radius: Standard_Real; U: Standard_Real): gp_Lin {.
    importcpp: "ElSLib::CylinderUIso(@)", header: "ElSLib.hxx".}
proc ConeUIso*(Pos: gp_Ax3; Radius: Standard_Real; SAngle: Standard_Real;
              U: Standard_Real): gp_Lin {.importcpp: "ElSLib::ConeUIso(@)",
                                       header: "ElSLib.hxx".}
proc SphereUIso*(Pos: gp_Ax3; Radius: Standard_Real; U: Standard_Real): gp_Circ {.
    importcpp: "ElSLib::SphereUIso(@)", header: "ElSLib.hxx".}
proc TorusUIso*(Pos: gp_Ax3; MajorRadius: Standard_Real; MinorRadius: Standard_Real;
               U: Standard_Real): gp_Circ {.importcpp: "ElSLib::TorusUIso(@)",
    header: "ElSLib.hxx".}
proc PlaneVIso*(Pos: gp_Ax3; V: Standard_Real): gp_Lin {.
    importcpp: "ElSLib::PlaneVIso(@)", header: "ElSLib.hxx".}
proc CylinderVIso*(Pos: gp_Ax3; Radius: Standard_Real; V: Standard_Real): gp_Circ {.
    importcpp: "ElSLib::CylinderVIso(@)", header: "ElSLib.hxx".}
proc ConeVIso*(Pos: gp_Ax3; Radius: Standard_Real; SAngle: Standard_Real;
              V: Standard_Real): gp_Circ {.importcpp: "ElSLib::ConeVIso(@)",
                                        header: "ElSLib.hxx".}
proc SphereVIso*(Pos: gp_Ax3; Radius: Standard_Real; V: Standard_Real): gp_Circ {.
    importcpp: "ElSLib::SphereVIso(@)", header: "ElSLib.hxx".}
proc TorusVIso*(Pos: gp_Ax3; MajorRadius: Standard_Real; MinorRadius: Standard_Real;
               V: Standard_Real): gp_Circ {.importcpp: "ElSLib::TorusVIso(@)",
    header: "ElSLib.hxx".}