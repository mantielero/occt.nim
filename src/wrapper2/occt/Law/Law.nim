##  Created on: 1994-04-07
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TColStd/TColStd_HArray1OfReal,
  ../Standard/Standard_Integer, ../TColStd/TColStd_Array1OfReal,
  ../TColStd/TColStd_Array1OfInteger, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real

discard "forward decl of Law_BSpFunc"
discard "forward decl of Law_Linear"
discard "forward decl of Law_BSpline"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Law_BSpline"
discard "forward decl of Law_Interpolate"
discard "forward decl of Law_Function"
discard "forward decl of Law_Constant"
discard "forward decl of Law_Linear"
discard "forward decl of Law_BSpFunc"
discard "forward decl of Law_S"
discard "forward decl of Law_Interpol"
discard "forward decl of Law_Composite"
discard "forward decl of Law_BSplineKnotSplitting"
type
  Law* {.importcpp: "Law", header: "Law.hxx", bycopy.} = object ## ! This algorithm searches the knot values corresponding to the
                                                        ## ! splitting of a given B-spline law into  several arcs with
                                                        ## ! the same continuity. The continuity order is given at the
                                                        ## ! construction time.
                                                        ## ! Builds a 1d bspline that   is near from Lin with  null
                                                        ## ! derivatives at the extremities.


proc MixBnd*(Lin: handle[Law_Linear]): handle[Law_BSpFunc] {.
    importcpp: "Law::MixBnd(@)", header: "Law.hxx".}
proc MixBnd*(Degree: Standard_Integer; Knots: TColStd_Array1OfReal;
            Mults: TColStd_Array1OfInteger; Lin: handle[Law_Linear]): handle[
    TColStd_HArray1OfReal] {.importcpp: "Law::MixBnd(@)", header: "Law.hxx".}
proc MixTgt*(Degree: Standard_Integer; Knots: TColStd_Array1OfReal;
            Mults: TColStd_Array1OfInteger; NulOnTheRight: Standard_Boolean;
            Index: Standard_Integer): handle[TColStd_HArray1OfReal] {.
    importcpp: "Law::MixTgt(@)", header: "Law.hxx".}
proc Reparametrize*(Curve: Adaptor3d_Curve; First: Standard_Real;
                   Last: Standard_Real; HasDF: Standard_Boolean;
                   HasDL: Standard_Boolean; DFirst: Standard_Real;
                   DLast: Standard_Real; Rev: Standard_Boolean;
                   NbPoints: Standard_Integer): handle[Law_BSpline] {.
    importcpp: "Law::Reparametrize(@)", header: "Law.hxx".}
proc Scale*(First: Standard_Real; Last: Standard_Real; HasF: Standard_Boolean;
           HasL: Standard_Boolean; VFirst: Standard_Real; VLast: Standard_Real): handle[
    Law_BSpline] {.importcpp: "Law::Scale(@)", header: "Law.hxx".}
proc ScaleCub*(First: Standard_Real; Last: Standard_Real; HasF: Standard_Boolean;
              HasL: Standard_Boolean; VFirst: Standard_Real; VLast: Standard_Real): handle[
    Law_BSpline] {.importcpp: "Law::ScaleCub(@)", header: "Law.hxx".}