##  Copyright (c) 2015 OPEN CASCADE SAS
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

## !!!Ignored construct:  # _ShapePersistent_TopoDS_HeaderFile [NewLine] # _ShapePersistent_TopoDS_HeaderFile [NewLine] # < ShapePersistent_TriangleMode . hxx > [NewLine] # < StdPersistent_TopoDS . hxx > [NewLine] # < StdPersistent_HArray1 . hxx > [NewLine] # < StdLPersistent_HArray1 . hxx > [NewLine] # < StdObject_Shape . hxx > [NewLine] # < StdObjMgt_TransientPersistentMap . hxx > [NewLine] # < TopoDS_TWire . hxx > [NewLine] # < TopoDS_TShell . hxx > [NewLine] # < TopoDS_TSolid . hxx > [NewLine] # < TopoDS_TCompSolid . hxx > [NewLine] # < TopoDS_TCompound . hxx > [NewLine] class ShapePersistent_TopoDS : public StdPersistent_TopoDS { public : class HShape : public StdObjMgt_Persistent , public StdObject_Shape { public : ! Read persistent data from a file. virtual void Read ( StdObjMgt_ReadData & theReadData ) ; ! Write persistent data to a file virtual void Write ( StdObjMgt_WriteData & theWriteData ) const ; ! Gets persistent child objects virtual void PChildren ( SequenceOfPersistent & theChildren ) const ; ! Returns persistent type name virtual Standard_CString PName ( ) const { return PTopoDS_HShape ; } private : Handle ( StdObjMgt_Persistent ) myEntry ; } ; protected : class pTBase : public pTShape { public : inline Handle ( TopoDS_TShape ) Import ( ) const { Handle ( TopoDS_TShape ) aTShape = createTShape ( ) ; TopoDS_Shape aWrapperShape ; aWrapperShape . TShape ( aTShape ) ; addShapes ( aWrapperShape ) ; setFlags ( aTShape ) ; return aTShape ; } private : virtual Handle ( TopoDS_TShape ) createTShape ( ) const = 0 ; virtual void addShapes ( TopoDS_Shape & theParent ) const = 0 ; void setFlags ( const Handle ( TopoDS_TShape ) & theTShape ) const ; protected : template < class ShapesArray > [end of template] void addShapesT ( TopoDS_Shape & theParent ) const ; } ; private : template < class Target > [end of template] class pTSimple : public pTBase { virtual Handle ( TopoDS_TShape ) createTShape ( ) const ; public : inline Standard_CString PName ( ) const ; } ; template < class Persistent , class ShapesArray > [end of template] class pTObject : public Persistent { virtual void addShapes ( TopoDS_Shape & theParent ) const { pTBase :: addShapesT < ShapesArray > [end of template] ( theParent ) ; } } ; template < class Persistent , class ShapesArray > [end of template] struct tObjectT : public Delayed < DelayedBase < TShape , TopoDS_TShape , pTBase > [end of template] , pTObject < Persistent , ShapesArray > [end of template] > [end of template] { typedef pTObject < Persistent , ShapesArray > [end of template] pTObjectT ; } ; protected : template < class Persistent > [end of template] struct tObject : public tObjectT < Persistent , StdLPersistent_HArray1 :: Persistent > [end of template] { } ; template < class Persistent > [end of template] struct tObject1 : public tObjectT < Persistent , StdPersistent_HArray1 :: Shape1 > [end of template] { } ; public : typedef tObject < pTSimple < TopoDS_TWire > [end of template] > [end of template] TWire ; typedef tObject < pTSimple < TopoDS_TShell > [end of template] > [end of template] TShell ; typedef tObject < pTSimple < TopoDS_TSolid > [end of template] > [end of template] TSolid ; typedef tObject < pTSimple < TopoDS_TCompSolid > [end of template] > [end of template] TCompSolid ; typedef tObject < pTSimple < TopoDS_TCompound > [end of template] > [end of template] TCompound ; typedef tObject1 < pTSimple < TopoDS_TWire > [end of template] > [end of template] TWire1 ; typedef tObject1 < pTSimple < TopoDS_TShell > [end of template] > [end of template] TShell1 ; typedef tObject1 < pTSimple < TopoDS_TSolid > [end of template] > [end of template] TSolid1 ; typedef tObject1 < pTSimple < TopoDS_TCompSolid > [end of template] > [end of template] TCompSolid1 ; typedef tObject1 < pTSimple < TopoDS_TCompound > [end of template] > [end of template] TCompound1 ; public : ! Create a persistent object for a shape static Handle ( HShape ) Translate ( const TopoDS_Shape & theShape , StdObjMgt_TransientPersistentMap & theMap , ShapePersistent_TriangleMode theTriangleMode ) ; } ;
## Error: token expected: ( but got: <!!!

## !!!Ignored construct:  template < > [end of template] inline Standard_CString ShapePersistent_TopoDS :: pTSimple < TopoDS_TWire > :: PName ( ) const { return PTopoDS_TWire ; } template < > inline Standard_CString ShapePersistent_TopoDS :: pTSimple < TopoDS_TShell > :: PName ( ) const { return PTopoDS_TShell ; } template < > inline Standard_CString ShapePersistent_TopoDS :: pTSimple < TopoDS_TSolid > :: PName ( ) const { return PTopoDS_TSolid ; } template < > inline Standard_CString ShapePersistent_TopoDS :: pTSimple < TopoDS_TCompSolid > :: PName ( ) const { return PTopoDS_TCompSolid ; } template < > inline Standard_CString ShapePersistent_TopoDS :: pTSimple < TopoDS_TCompound > :: PName ( ) const { return PTopoDS_TCompound ; } # [NewLine]
## Error: token expected: ( but got: <!!!














































