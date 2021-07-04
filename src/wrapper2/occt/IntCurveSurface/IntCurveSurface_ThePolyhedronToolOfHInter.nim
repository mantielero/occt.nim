##  Created on: 1993-04-07
##  Created by: Laurent BUCHARD
##  Copyright (c) 1993-1999 Matra Datavision
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

## !!!Ignored construct:  # _IntCurveSurface_ThePolyhedronToolOfHInter_HeaderFile [NewLine] # _IntCurveSurface_ThePolyhedronToolOfHInter_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Bnd/Bnd_HArray1OfBox.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of IntCurveSurface_ThePolyhedronOfHInter"
discard "forward decl of Bnd_Box"
discard "forward decl of gp_Pnt"
type
  IntCurveSurface_ThePolyhedronToolOfHInter* {.
      importcpp: "IntCurveSurface_ThePolyhedronToolOfHInter",
      header: "IntCurveSurface_ThePolyhedronToolOfHInter.hxx", bycopy.} = object ## ! Give the
                                                                            ## bounding box of the
                                                                            ## PolyhedronTool.


proc Bounding*(thePolyh: IntCurveSurface_ThePolyhedronOfHInter): Bnd_Box {.
    importcpp: "IntCurveSurface_ThePolyhedronToolOfHInter::Bounding(@)",
    header: "IntCurveSurface_ThePolyhedronToolOfHInter.hxx".}
proc ComponentsBounding*(thePolyh: IntCurveSurface_ThePolyhedronOfHInter): handle[
    Bnd_HArray1OfBox] {.importcpp: "IntCurveSurface_ThePolyhedronToolOfHInter::ComponentsBounding(@)",
                       header: "IntCurveSurface_ThePolyhedronToolOfHInter.hxx".}
proc DeflectionOverEstimation*(thePolyh: IntCurveSurface_ThePolyhedronOfHInter): Standard_Real {.importcpp: "IntCurveSurface_ThePolyhedronToolOfHInter::DeflectionOverEstimation(@)",
    header: "IntCurveSurface_ThePolyhedronToolOfHInter.hxx".}
proc NbTriangles*(thePolyh: IntCurveSurface_ThePolyhedronOfHInter): Standard_Integer {.
    importcpp: "IntCurveSurface_ThePolyhedronToolOfHInter::NbTriangles(@)",
    header: "IntCurveSurface_ThePolyhedronToolOfHInter.hxx".}
proc Triangle*(thePolyh: IntCurveSurface_ThePolyhedronOfHInter;
              Index: Standard_Integer; P1: var Standard_Integer;
              P2: var Standard_Integer; P3: var Standard_Integer) {.
    importcpp: "IntCurveSurface_ThePolyhedronToolOfHInter::Triangle(@)",
    header: "IntCurveSurface_ThePolyhedronToolOfHInter.hxx".}
proc Point*(thePolyh: IntCurveSurface_ThePolyhedronOfHInter;
           Index: Standard_Integer): gp_Pnt {.
    importcpp: "IntCurveSurface_ThePolyhedronToolOfHInter::Point(@)",
    header: "IntCurveSurface_ThePolyhedronToolOfHInter.hxx".}
proc TriConnex*(thePolyh: IntCurveSurface_ThePolyhedronOfHInter;
               Triang: Standard_Integer; Pivot: Standard_Integer;
               Pedge: Standard_Integer; TriCon: var Standard_Integer;
               OtherP: var Standard_Integer): Standard_Integer {.
    importcpp: "IntCurveSurface_ThePolyhedronToolOfHInter::TriConnex(@)",
    header: "IntCurveSurface_ThePolyhedronToolOfHInter.hxx".}
proc IsOnBound*(thePolyh: IntCurveSurface_ThePolyhedronOfHInter;
               Index1: Standard_Integer; Index2: Standard_Integer): Standard_Boolean {.
    importcpp: "IntCurveSurface_ThePolyhedronToolOfHInter::IsOnBound(@)",
    header: "IntCurveSurface_ThePolyhedronToolOfHInter.hxx".}
proc GetBorderDeflection*(thePolyh: IntCurveSurface_ThePolyhedronOfHInter): Standard_Real {.importcpp: "IntCurveSurface_ThePolyhedronToolOfHInter::GetBorderDeflection(@)",
    header: "IntCurveSurface_ThePolyhedronToolOfHInter.hxx".}
proc Dump*(thePolyh: IntCurveSurface_ThePolyhedronOfHInter) {.
    importcpp: "IntCurveSurface_ThePolyhedronToolOfHInter::Dump(@)",
    header: "IntCurveSurface_ThePolyhedronToolOfHInter.hxx".}
## !!!Ignored construct:  # ThePolyhedron IntCurveSurface_ThePolyhedronOfHInter [NewLine] # ThePolyhedron_hxx < IntCurveSurface_ThePolyhedronOfHInter . hxx > [NewLine] # IntCurveSurface_PolyhedronTool IntCurveSurface_ThePolyhedronToolOfHInter [NewLine] # IntCurveSurface_PolyhedronTool_hxx < IntCurveSurface_ThePolyhedronToolOfHInter . hxx > [NewLine] # < IntCurveSurface_PolyhedronTool . lxx > [NewLine] # ThePolyhedron [NewLine] # ThePolyhedron_hxx [NewLine] # IntCurveSurface_PolyhedronTool [NewLine] # IntCurveSurface_PolyhedronTool_hxx [NewLine] #  _IntCurveSurface_ThePolyhedronToolOfHInter_HeaderFile [NewLine]
## Error: did not expect <!!!
