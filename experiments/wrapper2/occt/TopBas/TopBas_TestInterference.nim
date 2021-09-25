##  Created on: 1992-08-13
##  Created by: Remi LEQUETTE
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

## !!!Ignored construct:  # _TopBas_TestInterference_HeaderFile [NewLine] # _TopBas_TestInterference_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < TopAbs_Orientation . hxx > [NewLine] class TopBas_TestInterference { public : TopBas_TestInterference ( ) ; TopBas_TestInterference ( const Standard_Real & Inters , const Standard_Integer & Bound , const TopAbs_Orientation Orient , const TopAbs_Orientation Trans , const TopAbs_Orientation BTrans ) ; void Intersection ( const Standard_Real & I ) ; void Boundary ( const Standard_Integer & B ) ; void Orientation ( const TopAbs_Orientation O ) ; void Transition ( const TopAbs_Orientation Tr ) ; void BoundaryTransition ( const TopAbs_Orientation BTr ) ; const Standard_Real & Intersection ( ) const ; Standard_Real & ChangeIntersection ( ) ; const Standard_Integer & Boundary ( ) const ; Standard_Integer & ChangeBoundary ( ) ; TopAbs_Orientation Orientation ( ) const ; TopAbs_Orientation Transition ( ) const ; TopAbs_Orientation BoundaryTransition ( ) const ; protected : private : Standard_Real myIntersection ; Standard_Integer myBoundary ; TopAbs_Orientation myOrientation ; TopAbs_Orientation myTransition ; TopAbs_Orientation myBTransition ; } ;
## Error: did not expect <!!!

## !!!Ignored construct:  # TheSubShape Standard_Real [NewLine] # TheSubShape_hxx < Standard_Real . hxx > [NewLine] # TheShape Standard_Integer [NewLine] # TheShape_hxx < Standard_Integer . hxx > [NewLine] # TopBas_Interference TopBas_TestInterference [NewLine] # TopBas_Interference_hxx < TopBas_TestInterference . hxx > [NewLine] # < TopBas_Interference . lxx > [NewLine] # TheSubShape [NewLine] # TheSubShape_hxx [NewLine] # TheShape [NewLine] # TheShape_hxx [NewLine] # TopBas_Interference [NewLine] # TopBas_Interference_hxx [NewLine] #  _TopBas_TestInterference_HeaderFile
## Error: did not expect <!!!

