# PROVIDES:
# DEPENDS: BRepBuilderAPI_MakeShape BRepPrimAPI_MakeOneAxis BRepPrimAPI_MakeOneAxis BRepBuilderAPI_MakeShape BRepBuilderAPI_MakeShape BRepPrimAPI_MakeSweep BRepPrimAPI_MakeSweep BRepPrimAPI_MakeOneAxis BRepPrimAPI_MakeOneAxis BRepBuilderAPI_MakeShape BRepPrimAPI_MakeOneAxis BRepBuilderAPI_MakeShape

import tkprim/brepprim/brepprim_types
import tkbrep/brep/brep_types
import tktopalgo/brepbuilderapi/brepbuilderapi_types
import tkprim/brepprimapi/brepprimapi_types
type
  BRepPrimAPI_MakeBox* {.importcpp: "BRepPrimAPI_MakeBox",
                        header: "BRepPrimAPI_MakeBox.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape 
                                                                                                  
                                                                                                  
                                                                                                  



  BRepPrimAPI_MakeCone* {.importcpp: "BRepPrimAPI_MakeCone",
                         header: "BRepPrimAPI_MakeCone.hxx", bycopy.} = object of BRepPrimAPI_MakeOneAxis 
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   



  BRepPrimAPI_MakeCylinder* {.importcpp: "BRepPrimAPI_MakeCylinder",
                             header: "BRepPrimAPI_MakeCylinder.hxx", bycopy.} = object of BRepPrimAPI_MakeOneAxis 
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                           



  BRepPrimAPI_MakeHalfSpace* {.importcpp: "BRepPrimAPI_MakeHalfSpace",
                              header: "BRepPrimAPI_MakeHalfSpace.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape 
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              



  BRepPrimAPI_MakeOneAxis* {.importcpp: "BRepPrimAPI_MakeOneAxis",
                            header: "BRepPrimAPI_MakeOneAxis.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape 
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          



  BRepPrimAPI_MakePrism* {.importcpp: "BRepPrimAPI_MakePrism",
                          header: "BRepPrimAPI_MakePrism.hxx", bycopy.} = object of BRepPrimAPI_MakeSweep 
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   



  BRepPrimAPI_MakeRevol* {.importcpp: "BRepPrimAPI_MakeRevol",
                          header: "BRepPrimAPI_MakeRevol.hxx", bycopy.} = object of BRepPrimAPI_MakeSweep 
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   



  BRepPrimAPI_MakeRevolution* {.importcpp: "BRepPrimAPI_MakeRevolution",
                               header: "BRepPrimAPI_MakeRevolution.hxx", bycopy.} = object of BRepPrimAPI_MakeOneAxis 
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                               



  BRepPrimAPI_MakeSphere* {.importcpp: "BRepPrimAPI_MakeSphere",
                           header: "BRepPrimAPI_MakeSphere.hxx", bycopy.} = object of BRepPrimAPI_MakeOneAxis 
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       



  BRepPrimAPI_MakeSweep* {.importcpp: "BRepPrimAPI_MakeSweep",
                          header: "BRepPrimAPI_MakeSweep.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape 
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      



  BRepPrimAPI_MakeTorus* {.importcpp: "BRepPrimAPI_MakeTorus",
                          header: "BRepPrimAPI_MakeTorus.hxx", bycopy.} = object of BRepPrimAPI_MakeOneAxis 
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     

                                                                                                     



  BRepPrimAPI_MakeWedge* {.importcpp: "BRepPrimAPI_MakeWedge",
                          header: "BRepPrimAPI_MakeWedge.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape 
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      






