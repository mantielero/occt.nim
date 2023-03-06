import ../tcolgp/tcolgp_types
import ../math/math_types
import ../ncollection/ncollection_types





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


proc buildKnots*(thePntsXYZ: TColgpArray1OfPnt; thePntsU1V1: TColgpArray1OfPnt2d;
                thePntsU2V2: TColgpArray1OfPnt2d; thePars: MathVector;
                theApproxXYZ: bool; theApproxU1V1: bool; theApproxU2V2: bool;
                theMinNbPnts: cint; theKnots: var NCollectionVector[cint]) {.cdecl,
    importcpp: "ApproxInt_KnotTools::BuildKnots(@)", header: "ApproxInt_KnotTools.hxx".}


