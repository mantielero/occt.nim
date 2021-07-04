##  Created on: 1996-01-09
##  Created by: Denis PASCAL
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_CString,
  ../Draw/Draw_Interpretor, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real

discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Edge"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pln"
discard "forward decl of DrawDim_Dimension"
discard "forward decl of DrawDim_Angle"
discard "forward decl of DrawDim_Distance"
discard "forward decl of DrawDim_Radius"
discard "forward decl of DrawDim_PlanarDimension"
discard "forward decl of DrawDim_PlanarAngle"
discard "forward decl of DrawDim_PlanarDistance"
discard "forward decl of DrawDim_PlanarRadius"
discard "forward decl of DrawDim_PlanarDiameter"
type
  DrawDim* {.importcpp: "DrawDim", header: "DrawDim.hxx", bycopy.} = object ## ! Commands
                                                                    ## ! ========


proc DrawShapeName*(ashape: TopoDS_Shape; aname: Standard_CString) {.
    importcpp: "DrawDim::DrawShapeName(@)", header: "DrawDim.hxx".}
proc AllCommands*(I: var Draw_Interpretor) {.importcpp: "DrawDim::AllCommands(@)",
    header: "DrawDim.hxx".}
proc PlanarDimensionCommands*(I: var Draw_Interpretor) {.
    importcpp: "DrawDim::PlanarDimensionCommands(@)", header: "DrawDim.hxx".}
proc Nearest*(aShape: TopoDS_Shape; apoint: gp_Pnt): gp_Pnt {.
    importcpp: "DrawDim::Nearest(@)", header: "DrawDim.hxx".}
proc Lin*(e: TopoDS_Edge; l: var gp_Lin; infinite: var Standard_Boolean;
         first: var Standard_Real; last: var Standard_Real): Standard_Boolean {.
    importcpp: "DrawDim::Lin(@)", header: "DrawDim.hxx".}
proc Circ*(e: TopoDS_Edge; l: var gp_Circ; first: var Standard_Real;
          last: var Standard_Real): Standard_Boolean {.
    importcpp: "DrawDim::Circ(@)", header: "DrawDim.hxx".}
proc Pln*(f: TopoDS_Face; p: var gp_Pln): Standard_Boolean {.
    importcpp: "DrawDim::Pln(@)", header: "DrawDim.hxx".}