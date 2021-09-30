##  Created on: 1993-02-05
##  Created by: Jacques GOUSSARD
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

## !!!Ignored construct:  # _Contap_TheIWLineOfTheIWalking_HeaderFile [NewLine] # _Contap_TheIWLineOfTheIWalking_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < IntSurf_SequenceOfCouple . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < IntSurf_PathPoint . hxx > [NewLine] # < gp_Vec . hxx > [NewLine] # < Standard_Transient . hxx > [NewLine] # < IntSurf_Allocator . hxx > [NewLine] class IntSurf_LineOn2S ;
## Error: expected ';'!!!

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DomainError"
discard "forward decl of IntSurf_PathPoint"
discard "forward decl of IntSurf_PntOn2S"
discard "forward decl of gp_Vec"
discard "forward decl of Contap_TheIWLineOfTheIWalking"
## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( Contap_TheIWLineOfTheIWalking , Standard_Transient ) class Contap_TheIWLineOfTheIWalking : public Standard_Transient { public : Contap_TheIWLineOfTheIWalking ( const IntSurf_Allocator & theAllocator = 0 ) ; ! reverse the points in the line. Hasfirst, HasLast are kept. void Reverse ( ) ; ! Cut the line at the point of rank Index. void Cut ( const Standard_Integer Index ) ; ! Add a point in the line. void AddPoint ( const IntSurf_PntOn2S & P ) ; void AddStatusFirst ( const Standard_Boolean Closed , const Standard_Boolean HasFirst ) ; void AddStatusFirst ( const Standard_Boolean Closed , const Standard_Boolean HasLast , const Standard_Integer Index , const IntSurf_PathPoint & P ) ; void AddStatusFirstLast ( const Standard_Boolean Closed , const Standard_Boolean HasFirst , const Standard_Boolean HasLast ) ; void AddStatusLast ( const Standard_Boolean HasLast ) ; void AddStatusLast ( const Standard_Boolean HasLast , const Standard_Integer Index , const IntSurf_PathPoint & P ) ; ! associer a l 'indice du point sur la ligne l'indice du point
## ! passant dans l'iterateur de depart void AddIndexPassing ( const Standard_Integer Index ) ; void SetTangentVector ( const gp_Vec & V , const Standard_Integer Index ) ; void SetTangencyAtBegining ( const Standard_Boolean IsTangent ) ; void SetTangencyAtEnd ( const Standard_Boolean IsTangent ) ; ! Returns the number of points of the line (including first
## ! point and end point : see HasLastPoint and HasFirstPoint). Standard_Integer NbPoints ( ) const ; ! Returns the point of range Index.
## ! If index <= 0 or Index > NbPoints, an exception is raised. const IntSurf_PntOn2S & Value ( const Standard_Integer Index ) const ; ! Returns the LineOn2S contained in the walking line. const Handle ( IntSurf_LineOn2S ) & Line ( ) const ; ! Returns True if the line is closed. Standard_Boolean IsClosed ( ) const ; ! Returns True if the first point of the line is a
## ! marching point . when is HasFirstPoint==False ,the line
## ! begins on the natural bound of the surface.the line can be
## ! too long Standard_Boolean HasFirstPoint ( ) const ; ! Returns True if the end point of the line is a
## ! marching point (Point from IntWS).
## ! when is HasFirstPoint==False ,the line ends
## ! on the natural bound of the surface.the line can be
## ! too long. Standard_Boolean HasLastPoint ( ) const ; ! Returns the first point of the line when it is a
## ! marching point.
## ! An exception is raised if HasFirstPoint returns False. const IntSurf_PathPoint & FirstPoint ( ) const ; ! Returns the Index of first point of the line when it is a
## ! marching point.This index is the index in the
## ! PointStartIterator.
## ! An exception is raised if HasFirstPoint returns False. Standard_Integer FirstPointIndex ( ) const ; ! Returns the last point of the line when it is a
## ! marching point.
## ! An exception is raised if HasLastPoint returns False. const IntSurf_PathPoint & LastPoint ( ) const ; ! Returns the index of last point of the line when it is a
## ! marching point.This index is the index in the
## ! PointStartIterator.
## ! An exception is raised if HasLastPoint returns False. Standard_Integer LastPointIndex ( ) const ; ! returns the number of points belonging to Pnts1 which are
## ! passing point. Standard_Integer NbPassingPoint ( ) const ; ! returns the index of the point belonging to the line which
## ! is associated to the passing point belonging to Pnts1
## ! an exception is raised if Index > NbPassingPoint() void PassingPoint ( const Standard_Integer Index , Standard_Integer & IndexLine , Standard_Integer & IndexPnts ) const ; const gp_Vec & TangentVector ( Standard_Integer & Index ) const ; Standard_Boolean IsTangentAtBegining ( ) const ; Standard_Boolean IsTangentAtEnd ( ) const ; public : typedef Standard_Transient base_type ; static const char * get_type_name ( ) { return Contap_TheIWLineOfTheIWalking ; ( Contap_TheIWLineOfTheIWalking , Standard_Transient ) } static const Handle ( Standard_Type ) & get_type_descriptor ( ) { return Standard_Type :: Instance < Contap_TheIWLineOfTheIWalking > ( ) ; } virtual const Handle ( Standard_Type ) & DynamicType ( ) const { return get_type_descriptor ( ) ; } protected : private : Handle ( IntSurf_LineOn2S ) line ; IntSurf_SequenceOfCouple couple ; Standard_Boolean closed ; Standard_Boolean hasFirst ; Standard_Boolean hasLast ; Standard_Integer firstIndex ; Standard_Integer lastIndex ; IntSurf_PathPoint theFirstPoint ; IntSurf_PathPoint theLastPoint ; Standard_Integer indextg ; gp_Vec vcttg ; Standard_Boolean istgtbeg ; Standard_Boolean istgtend ; } ;
## Error: expected ';'!!!

## !!!Ignored construct:  # TheStartPoint IntSurf_PathPoint [NewLine] # TheStartPoint_hxx < IntSurf_PathPoint . hxx > [NewLine] # IntWalk_IWLine Contap_TheIWLineOfTheIWalking [NewLine] # IntWalk_IWLine_hxx < Contap_TheIWLineOfTheIWalking . hxx > [NewLine] # Handle_IntWalk_IWLine Handle ( Contap_TheIWLineOfTheIWalking ) [NewLine] # < IntWalk_IWLine . lxx > [NewLine] # TheStartPoint [NewLine] # TheStartPoint_hxx [NewLine] # IntWalk_IWLine [NewLine] # IntWalk_IWLine_hxx [NewLine] # Handle_IntWalk_IWLine [NewLine] #  _Contap_TheIWLineOfTheIWalking_HeaderFile
## Error: did not expect <!!!














































