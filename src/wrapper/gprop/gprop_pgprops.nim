import gprop_types
import ../gp/gp_types
import ../tcolgp/tcolgp_types
import ../tcolstd/tcolstd_types
##  Created on: 1992-02-14
##  Created by: Jean Claude VAUTHIER
##  Copyright (c) 1992-1999 Matra Datavision
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

{.push header:"GProp_PGProps.hxx".}
proc newGProp_PGProps*(): GProp_PGProps {.cdecl, constructor,
                                       importcpp: "GProp_PGProps(@)",
                                       .}
proc AddPoint*(this: var GProp_PGProps; P: gp_Pnt) {.cdecl, importcpp: "AddPoint",
    .}
proc AddPoint*(this: var GProp_PGProps; P: gp_Pnt; Density: cfloat) {.cdecl,
    importcpp: "AddPoint".}
proc newGProp_PGProps*(Pnts: TColgp_Array1OfPnt): GProp_PGProps {.cdecl, constructor,
    importcpp: "GProp_PGProps(@)".}
proc newGProp_PGProps*(Pnts: TColgp_Array2OfPnt): GProp_PGProps {.cdecl, constructor,
    importcpp: "GProp_PGProps(@)".}
proc newGProp_PGProps*(Pnts: TColgp_Array1OfPnt; Density: TColStd_Array1OfReal): GProp_PGProps {.
    cdecl, constructor, importcpp: "GProp_PGProps(@)".}
proc newGProp_PGProps*(Pnts: TColgp_Array2OfPnt; Density: TColStd_Array2OfReal): GProp_PGProps {.
    cdecl, constructor, importcpp: "GProp_PGProps(@)".}
proc Barycentre*(Pnts: TColgp_Array1OfPnt): gp_Pnt {.cdecl,
    importcpp: "GProp_PGProps::Barycentre(@)".}
proc Barycentre*(Pnts: TColgp_Array2OfPnt): gp_Pnt {.cdecl,
    importcpp: "GProp_PGProps::Barycentre(@)".}
proc Barycentre*(Pnts: TColgp_Array1OfPnt; Density: TColStd_Array1OfReal;
                Mass: var cfloat; G: var gp_Pnt) {.cdecl,
    importcpp: "GProp_PGProps::Barycentre(@)".}
proc Barycentre*(Pnts: TColgp_Array2OfPnt; Density: TColStd_Array2OfReal;
                Mass: var cfloat; G: var gp_Pnt) {.cdecl,
    importcpp: "GProp_PGProps::Barycentre(@)".}
{.pop.}