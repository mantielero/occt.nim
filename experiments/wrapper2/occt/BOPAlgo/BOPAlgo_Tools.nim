##  Created by: Peter KURNEV
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

discard "forward decl of BOPDS_PaveBlock"
discard "forward decl of BOPDS_CommonBlock"
discard "forward decl of IntTools_Context"
discard "forward decl of TopoDS_Shape"
type
  BOPAlgoTools* {.importcpp: "BOPAlgo_Tools", header: "BOPAlgo_Tools.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Makes
                                                                                     ## the
                                                                                     ## chains
                                                                                     ## of
                                                                                     ## the
                                                                                     ## connected
                                                                                     ## elements
                                                                                     ## from
                                                                                     ## the
                                                                                     ## given
                                                                                     ## connexity
                                                                                     ## map


## !!!Ignored construct:  public : ! Makes the chains of the connected elements from the given connexity map template < class theType , class theTypeHasher > [end of template] static void MakeBlocks ( const NCollection_IndexedDataMap < theType , NCollection_List < theType > [end of template] , theTypeHasher > [end of template] & theMILI , NCollection_List < NCollection_List < theType > [end of template] > [end of template] & theMBlocks , const Handle ( NCollection_BaseAllocator ) & theAllocator ) { NCollection_Map < theType , theTypeHasher > aMFence ; Standard_Integer i , aNb = theMILI . Extent ( ) ; for ( i = 1 ; i <= aNb ; ++ i ) { const theType & n = theMILI . FindKey ( i ) ; if ( ! aMFence . Add ( n ) ) continue ;
##  Start the chain NCollection_List < theType > & aChain = theMBlocks . Append ( NCollection_List < theType > ( theAllocator ) ) ; aChain . Append ( n ) ;  Look for connected elements typename NCollection_List < theType > :: Iterator aItLChain ( aChain ) ; for ( ; aItLChain . More ( ) ; aItLChain . Next ( ) ) { const theType & n1 = aItLChain . Value ( ) ; const NCollection_List < theType > & aLI = theMILI . FindFromKey ( n1 ) ;  Add connected elements into the chain typename NCollection_List < theType > :: Iterator aItLI ( aLI ) ; for ( ; aItLI . More ( ) ; aItLI . Next ( ) ) { const theType & n2 = aItLI . Value ( ) ; if ( aMFence . Add ( n2 ) ) { aChain . Append ( n2 ) ; } } } } } ! Fills the map with the connected entities template < class theType , class theTypeHasher > static void FillMap ( const theType & n1 , const theType & n2 , NCollection_IndexedDataMap < theType , NCollection_List < theType > , theTypeHasher > & theMILI , const Handle ( NCollection_BaseAllocator ) & theAllocator ) { NCollection_List < theType > * pList1 = theMILI . ChangeSeek ( n1 ) ; if ( ! pList1 ) { pList1 = & theMILI ( theMILI . Add ( n1 , NCollection_List < theType > ( theAllocator ) ) ) ; } pList1 -> Append ( n2 ) ;  NCollection_List < theType > * pList2 = theMILI . ChangeSeek ( n2 ) ; if ( ! pList2 ) { pList2 = & theMILI ( theMILI . Add ( n2 , NCollection_List < theType > ( theAllocator ) ) ) ; } pList2 -> Append ( n1 ) ; } static void FillMap ( const Handle ( BOPDS_PaveBlock ) & thePB1 , const Standard_Integer theF , BOPDS_IndexedDataMapOfPaveBlockListOfInteger & theMILI , const Handle ( NCollection_BaseAllocator ) & theAllocator ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Create Common Blocks from the groups of pave blocks of <theMBlocks>
## ! connection map. static void PerformCommonBlocks ( BOPDS_IndexedDataMapOfPaveBlockListOfPaveBlock & theMBlocks , const Handle ( NCollection_BaseAllocator ) & theAllocator , BOPDS_PDS & theDS , const Handle ( IntTools_Context ) & theContext = Handle ( IntTools_Context ) ( ) ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Create Common Blocks on faces using the PB->Faces connection map <theMBlocks>. static void PerformCommonBlocks ( const BOPDS_IndexedDataMapOfPaveBlockListOfInteger & theMBlocks , const Handle ( NCollection_BaseAllocator ) & theAllocator , BOPDS_PDS & pDS , const Handle ( IntTools_Context ) & theContext = Handle ( IntTools_Context ) ( ) ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  static Standard_Real ComputeToleranceOfCB ( const Handle ( BOPDS_CommonBlock ) & theCB , const BOPDS_PDS theDS , const Handle ( IntTools_Context ) & theContext ) ;
## Error: token expected: ) but got: &!!!

proc edgesToWires*(theEdges: TopoDS_Shape; theWires: var TopoDS_Shape;
                  theShared: bool = false; theAngTol: float = 1.e-8): int {.
    importcpp: "BOPAlgo_Tools::EdgesToWires(@)", header: "BOPAlgo_Tools.hxx".}
proc wiresToFaces*(theWires: TopoDS_Shape; theFaces: var TopoDS_Shape;
                  theAngTol: float = 1.e-8): bool {.
    importcpp: "BOPAlgo_Tools::WiresToFaces(@)", header: "BOPAlgo_Tools.hxx".}
proc intersectVertices*(theVertices: TopToolsIndexedDataMapOfShapeReal;
                       theFuzzyValue: float;
                       theChains: var TopToolsListOfListOfShape) {.
    importcpp: "BOPAlgo_Tools::IntersectVertices(@)", header: "BOPAlgo_Tools.hxx".}
## !!!Ignored construct:  ! Classifies the faces <theFaces> relatively solids <theSolids>.
## ! The IN faces for solids are stored into output data map <theInParts>.
## !
## ! The map <theSolidsIF> contains INTERNAL faces of the solids, to avoid
## ! their additional classification.
## !
## ! Firstly, it checks the intersection of bounding boxes of the shapes.
## ! If the Box is not stored in the <theShapeBoxMap> map, it builds the box.
## ! If the bounding boxes of solid and face are interfering the classification is performed.
## !
## ! It is assumed that all faces and solids are already intersected and
## ! do not have any geometrically coinciding parts without topological
## ! sharing of these parts static void ClassifyFaces ( const TopTools_ListOfShape & theFaces , const TopTools_ListOfShape & theSolids , const Standard_Boolean theRunParallel , Handle ( IntTools_Context ) & theContext , TopTools_IndexedDataMapOfShapeListOfShape & theInParts , const TopTools_DataMapOfShapeBox & theShapeBoxMap = TopTools_DataMapOfShapeBox ( ) , const TopTools_DataMapOfShapeListOfShape & theSolidsIF = TopTools_DataMapOfShapeListOfShape ( ) ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Classifies the given parts relatively the given solids and
## ! fills the solids with the parts classified as INTERNAL.
## !
## ! @param theSolids  - The solids to put internals to
## ! @param theParts   - The parts to classify relatively solids
## ! @param theImages  - Possible images of the parts that has to be classified
## ! @param theContext - Cashed geometrical tools to speed-up classifications static void FillInternals ( const TopTools_ListOfShape & theSolids , const TopTools_ListOfShape & theParts , const TopTools_DataMapOfShapeListOfShape & theImages , const Handle ( IntTools_Context ) & theContext ) ;
## Error: token expected: ) but got: &!!!

proc trsfToPoint*(theBox1: BndBox; theBox2: BndBox; theTrsf: var Trsf;
                 thePoint: Pnt = pnt(0.0, 0.0, 0.0); theCriteria: float = 1.e+5): bool {.
    importcpp: "BOPAlgo_Tools::TrsfToPoint(@)", header: "BOPAlgo_Tools.hxx".}













































