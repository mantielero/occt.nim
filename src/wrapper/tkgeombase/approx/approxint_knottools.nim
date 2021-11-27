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

#when not defined(_Standard_HeaderFile):
#  discard
#when not defined(_Standard_Boolean_HeaderFile):
#  discard
discard "forward decl of math_Vector"
discard "forward decl of NCollection_Sequence"
discard "forward decl of NCollection_List"
discard "forward decl of NCollection_Vector"
type
  ApproxIntKnotTools* {.importcpp: "ApproxInt_KnotTools",
                       header: "ApproxInt_KnotTools.hxx", bycopy.} = object ## ! Main function to build optimal knot sequence.
                                                                       ## ! At least one set from
                                                                       ## (thePntsXYZ,
                                                                       ## thePntsU1V1,
                                                                       ## thePntsU2V2) should exist.
                                                                       ## ! @param
                                                                       ## thePntsXYZ - Set of 3d points.
                                                                       ## ! @param
                                                                       ## thePntsU1V1 - Set of 2d points.
                                                                       ## ! @param
                                                                       ## thePntsU2V2 - Set of 2d points.
                                                                       ## ! @param thePars - Expected
                                                                       ## parameters assoiated with set.
                                                                       ## ! @param
                                                                       ## theApproxXYZ - Flag, existence of 3d set.
                                                                       ## ! @param
                                                                       ## theApproxU1V1 - Flag existence of first 2d set.
                                                                       ## ! @param
                                                                       ## theApproxU2V2 - Flag existence of second 2d set.
                                                                       ## ! @param
                                                                       ## theMinNbPnts - Minimal number of points per knot interval.
                                                                       ## ! @param theKnots - output knots sequence.
                                                                       ## ! Compute indices of knots:
                                                                       ## !
                                                                       ## ! I: Build discrete curvature in points set,
                                                                       ## ! using outer product of two vectors.
                                                                       ## !
                                                                       ## ! II: Put knots in points which has extremity on discrete
                                                                       ## curvature.
                                                                       ## !
                                                                       ## ! III: Put knots in monotone intervals of
                                                                       ## curvature.
                                                                       ## !
                                                                       ## ! IV: Put
                                                                       ## additional knots near extrema points.


proc buildKnots*(thePntsXYZ: TColgpArray1OfPnt; thePntsU1V1: TColgpArray1OfPnt2d;
                thePntsU2V2: TColgpArray1OfPnt2d; thePars: MathVector;
                theApproxXYZ: bool; theApproxU1V1: bool; theApproxU2V2: bool;
                theMinNbPnts: cint; theKnots: var NCollectionVector[cint]) {.cdecl,
    importcpp: "ApproxInt_KnotTools::BuildKnots(@)", header: "ApproxInt_KnotTools.hxx".}