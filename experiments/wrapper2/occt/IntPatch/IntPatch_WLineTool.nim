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
  ../Standard/Standard_DefineAlloc, IntPatch_SequenceOfLine, IntPatch_WLine,
  ../NCollection/NCollection_List

discard "forward decl of Adaptor3d_TopolTool"
type
  IntPatch_WLineTool* {.importcpp: "IntPatch_WLineTool",
                       header: "IntPatch_WLineTool.hxx", bycopy.} = object ## ! I
                                                                      ## ! Removes equal points (leave one of equal points) from theWLine
                                                                      ## ! and recompute vertex
                                                                      ## parameters.
                                                                      ## !
                                                                      ## ! II
                                                                      ## ! Removes point out of borders in case of non periodic surfaces.
                                                                      ## !
                                                                      ## ! III
                                                                      ## ! Removes exceed points using tube criteria:
                                                                      ## ! delete 7D point if it lies near to expected lines in 2d and 3d.
                                                                      ## ! Each task (2d, 2d, 3d) have its own tolerance and checked
                                                                      ## separately.
                                                                      ## !
                                                                      ## ! Returns new WLine or null WLine if the number
                                                                      ## ! of the points is less than 2.


proc ComputePurgedWLine*(theWLine: handle[IntPatch_WLine];
                        theS1: handle[Adaptor3d_HSurface];
                        theS2: handle[Adaptor3d_HSurface];
                        theDom1: handle[Adaptor3d_TopolTool];
                        theDom2: handle[Adaptor3d_TopolTool]): handle[
    IntPatch_WLine] {.importcpp: "IntPatch_WLineTool::ComputePurgedWLine(@)",
                     header: "IntPatch_WLineTool.hxx".}
proc JoinWLines*(theSlin: var IntPatch_SequenceOfLine;
                theSPnt: var IntPatch_SequenceOfPoint;
                theS1: handle[Adaptor3d_HSurface];
                theS2: handle[Adaptor3d_HSurface]; theTol3D: Standard_Real) {.
    importcpp: "IntPatch_WLineTool::JoinWLines(@)",
    header: "IntPatch_WLineTool.hxx".}
proc ExtendTwoWLines*(theSlin: var IntPatch_SequenceOfLine;
                     theS1: handle[Adaptor3d_HSurface];
                     theS2: handle[Adaptor3d_HSurface]; theToler3D: Standard_Real;
                     theArrPeriods: ptr Standard_Real; theBoxS1: Bnd_Box2d;
                     theBoxS2: Bnd_Box2d;
                     theListOfCriticalPoints: NCollection_List[gp_Pnt]) {.
    importcpp: "IntPatch_WLineTool::ExtendTwoWLines(@)",
    header: "IntPatch_WLineTool.hxx".}