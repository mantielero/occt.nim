# PROVIDES: Poly PolyCoherentLink PolyCoherentTriangle PolyBaseIteratorOfCoherentTriangle PolyBaseIteratorOfCoherentNode PolyBaseIteratorOfCoherentLink PolyCoherentTriangulationTwoIntegers PolyCoherentTriPtr PolyCoherentTriPtrIterator PolyConnect PolyMakeLoopsLink PolyMakeLoopsLoop PolyMakeLoopsHelper PolyMakeLoopsHeapOfInteger PolyMakeLoopsResultCode PolyTriangle PolyMakeLoopsLinkFlag
# DEPENDS:  Handle[PolyCoherentTriangulation]  NCollectionList[PolyMakeLoopsLink]  Handle[PolyPolygon2D]  Handle[PolyPolygon3D]  Handle[PolyPolygonOnTriangulation]  Handle[PolyTriangulation] PolyBaseIteratorOfCoherentLink PolyMakeLoops PolyMakeLoopsHelper PolyMakeLoops PolyMakeLoopsHelper XyzObj StandardTransient PolyBaseIteratorOfCoherentTriangle PolyBaseIteratorOfCoherentNode PolyArray1OfTriangle RootObj## StandardTransient StandardTransient StandardTransient StandardTransient

import tkmath/poly/poly_types
import tkernel/ncollection/ncollection_types
import tkernel/standard/standard_types
type
  Poly* {.importcpp: "Poly", header: "Poly.hxx", bycopy.} = object 
                                                           
                                                           
                                                           
                                                           
                                                           
                                                           
                                                           
                                                           
                                                           

  PolyCoherentLink* {.importcpp: "Poly_CoherentLink",
                     header: "Poly_CoherentLink.hxx", bycopy.} = object 
                                                                   
                                                                   
                                                                   
                                                                   
                                                                   

  PolyCoherentTriangle* {.importcpp: "Poly_CoherentTriangle",
                         header: "Poly_CoherentTriangle.hxx", bycopy.} = object 
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           

  PolyBaseIteratorOfCoherentTriangle* {.importcpp:"NCollection_Vector<Poly_CoherentTriangle>::Iterator", header:"Poly_CoherentTriangulation.hxx",bycopy.} = object of RootObj

  PolyBaseIteratorOfCoherentNode* {.importcpp:"NCollection_Vector<PolyCoherentNode>::Iterator", header:"Poly_CoherentTriangulation.hxx",bycopy.} = object of RootObj

  PolyBaseIteratorOfCoherentLink* {.importcpp:"NCollection_Vector<PolyCoherentLink>::Iterator", header:"Poly_CoherentTriangulation.hxx",bycopy.} = object of RootObj

  PolyCoherentTriangulationTwoIntegers* {.
      importcpp: "Poly_CoherentTriangulation::TwoIntegers",
      header: "Poly_CoherentTriangulation.hxx", bycopy.} = object
    myValue* {.importc: "myValue".}: array[2, cint]

  PolyCoherentTriPtr* {.importcpp: "Poly_CoherentTriPtr",
                       header: "Poly_CoherentTriPtr.hxx", bycopy.} = object 
                                                                       
                                                                       
                                                                       
                                                                       
                                                                       
                                                                       
                                                                       
                                                                       
                                                                       

  PolyCoherentTriPtrIterator* {.importcpp: "Poly_CoherentTriPtr::Iterator",
                               header: "Poly_CoherentTriPtr.hxx", bycopy.} = object 
                                                                               
                                                                               

  PolyConnect* {.importcpp: "Poly_Connect", header: "Poly_Connect.hxx", bycopy.} = object 
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  
                                                                                  

  PolyMakeLoopsLink* {.importcpp: "Poly_MakeLoops::Link",
                      header: "Poly_MakeLoops.hxx", bycopy.} = object
    node1* {.importc: "node1".}: cint
    node2* {.importc: "node2".}: cint
    flags* {.importc: "flags".}: cint

  PolyMakeLoopsLoop* = PolyMakeLoopsListOfLink

  PolyMakeLoopsHelper* {.importcpp: "Poly_MakeLoops::Helper",
                        header: "Poly_MakeLoops.hxx", bycopy.} = object of RootObj 

  PolyMakeLoopsHeapOfInteger* {.importcpp: "Poly_MakeLoops::HeapOfInteger",
                               header: "Poly_MakeLoops.hxx", bycopy.} = object

  PolyMakeLoopsResultCode* {.size: sizeof(cint),
                            importcpp: "Poly_MakeLoops::ResultCode",
                            header: "Poly_MakeLoops.hxx".} = enum
    RC_LoopsDone = 1, RC_HangingLinks = 2, RC_Failure = 4

  PolyTriangle* {.importcpp: "Poly_Triangle", header: "Poly_Triangle.hxx", bycopy.} = object 
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     

  PolyMakeLoopsLinkFlag* {.size: sizeof(cint),
                          importcpp: "Poly_MakeLoops::LinkFlag",
                          header: "Poly_MakeLoops.hxx".} = enum
    LF_None = 0, LF_Fwd = 1,       
    LF_Rev = 2,                 
    LF_Both = 3,                
    LF_Reversed = 4

  HandlePolyCoherentTriangulation* = Handle[PolyCoherentTriangulation]





























































  PolyMakeLoopsListOfLink* = NCollectionList[PolyMakeLoopsLink]


  HandlePolyPolygon2D* = Handle[PolyPolygon2D]









  HandlePolyPolygon3D* = Handle[PolyPolygon3D]










  HandlePolyPolygonOnTriangulation* = Handle[PolyPolygonOnTriangulation]















  HandlePolyTriangulation* = Handle[PolyTriangulation]




























  PolyCoherentTriangulationIteratorOfLink* {.
      importcpp: "Poly_CoherentTriangulation::IteratorOfLink",
      header: "Poly_CoherentTriangulation.hxx", bycopy.} = object of PolyBaseIteratorOfCoherentLink 
                                                                                             
                                                                                             



  PolyMakeLoops3D* {.importcpp: "Poly_MakeLoops3D", header: "Poly_MakeLoops.hxx",
                    bycopy.} = object of PolyMakeLoops 


  PolyMakeLoops3DHelper* {.importcpp: "Poly_MakeLoops3D::Helper",
                          header: "Poly_MakeLoops.hxx", bycopy.} = object of PolyMakeLoopsHelper 
                                                                                          
                                                                                          



  PolyMakeLoops2D* {.importcpp: "Poly_MakeLoops2D", header: "Poly_MakeLoops.hxx",
                    bycopy.} = object of PolyMakeLoops 
                                                  


  PolyMakeLoops2DHelper* {.importcpp: "Poly_MakeLoops2D::Helper",
                          header: "Poly_MakeLoops.hxx", bycopy.} = object of PolyMakeLoopsHelper 
                                                                                          
                                                                                          



  PolyCoherentNode* {.importcpp: "Poly_CoherentNode",
                     header: "Poly_CoherentNode.hxx", bycopy.} = object of XyzObj 
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        



  PolyCoherentTriangulation* {.importcpp: "Poly_CoherentTriangulation",
                              header: "Poly_CoherentTriangulation.hxx", bycopy.} = object of StandardTransient 
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        


  PolyCoherentTriangulationIteratorOfTriangle* {.
      importcpp: "Poly_CoherentTriangulation::IteratorOfTriangle",
      header: "Poly_CoherentTriangulation.hxx", bycopy.} = object of PolyBaseIteratorOfCoherentTriangle 
                                                                                                 
                                                                                                 



  PolyCoherentTriangulationIteratorOfNode* {.
      importcpp: "Poly_CoherentTriangulation::IteratorOfNode",
      header: "Poly_CoherentTriangulation.hxx", bycopy.} = object of PolyBaseIteratorOfCoherentNode 
                                                                                             
                                                                                             



  PolyHArray1OfTriangle* {.importcpp: "Poly_HArray1OfTriangle",
                          header: "Poly_HArray1OfTriangle.hxx", bycopy.} = object of PolyArray1OfTriangle



  PolyMakeLoops* {.importcpp: "Poly_MakeLoops", header: "Poly_MakeLoops.hxx", bycopy.} = object of RootObj
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        


  PolyPolygon2D* {.importcpp: "Poly_Polygon2D", header: "Poly_Polygon2D.hxx", bycopy.} = object of StandardTransient 
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           



  PolyPolygon3D* {.importcpp: "Poly_Polygon3D", header: "Poly_Polygon3D.hxx", bycopy.} = object of StandardTransient 
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           



  PolyPolygonOnTriangulation* {.importcpp: "Poly_PolygonOnTriangulation",
                               header: "Poly_PolygonOnTriangulation.hxx", bycopy.} = object of StandardTransient 
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          





  PolyTriangulation* {.importcpp: "Poly_Triangulation",
                      header: "Poly_Triangulation.hxx", bycopy.} = object of StandardTransient 
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        






