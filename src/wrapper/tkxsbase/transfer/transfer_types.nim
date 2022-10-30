# PROVIDES: TransferDataInfo TransferTransferInput TransferTransferIterator TransferTransferOutput
# DEPENDS:  Handle[TransferActorDispatch]  Handle[TransferActorOfFinderProcess]  Handle[TransferActorOfTransientProcess]  Handle[TransferBinder]  Handle[  Handle[TransferDispatchControl]  Handle[TransferFinder]  Handle[TransferFinderProcess]  object ## ! Returns hash code for the given finder, in the range [1,  Handle[TransferMultipleBinder]  Handle[TransferProcessForTransient]  Handle[TransferResultFromModel]  Handle[TransferResultFromTransient]  Handle[TransferSimpleBinderOfTransient]  Handle[TransferTransientListBinder]  Handle[TransferTransientProcess]  Handle[TransferVoidBinder] TransferTransferIterator TransferTransferIterator TransferActorOfTransientProcess TransferActorOfProcessForFinder  Handle[TransferActorOfProcessForFinder] StandardTransient  Handle[ StandardTransient TransferActorOfProcessForTransient StandardTransient TransferSimpleBinderOfTransient InterfaceCopyControl StandardTransient TransferProcessForFinder TransferSequenceOfBinder TransferSequenceOfFinder  Handle[TransferMapContainer] StandardTransient TransferBinder  Handle[TransferProcessForFinder] StandardTransient StandardTransient StandardTransient StandardTransient TransferBinder InterfaceCopyTool TransferBinder  Handle[TransferTransientMapper] TransferFinder TransferProcessForTransient TransferBinder

import tkxsbase/transfer/transfer_types
import tkernel/standard/standard_types
type
  TransferDataInfo* {.importcpp: "Transfer_DataInfo",
                     header: "Transfer_DataInfo.hxx", bycopy.} = object 
                                                                   

  TransferTransferInput* {.importcpp: "Transfer_TransferInput",
                          header: "Transfer_TransferInput.hxx", bycopy.} = object 
                                                                             
                                                                             
                                                                             

  TransferTransferIterator* {.importcpp: "Transfer_TransferIterator",
                             header: "Transfer_TransferIterator.hxx", bycopy.} = object of RootObj 
                                                                                   
                                                                                   
                                                                                   
                                                                                   
                                                                                   

  TransferTransferOutput* {.importcpp: "Transfer_TransferOutput",
                           header: "Transfer_TransferOutput.hxx", bycopy.} = object 
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               

  HandleTransferActorDispatch* = Handle[TransferActorDispatch]












  HandleTransferActorOfFinderProcess* = Handle[TransferActorOfFinderProcess]







  HandleTransferActorOfTransientProcess* = Handle[TransferActorOfTransientProcess]




  HandleTransferBinder* = Handle[TransferBinder]

























  HandleTransferBinderOfTransientInteger* = Handle[
      TransferBinderOfTransientInteger]









  HandleTransferDispatchControl* = Handle[TransferDispatchControl]







  HandleTransferFinder* = Handle[TransferFinder]








  HandleTransferFinderProcess* = Handle[TransferFinderProcess]





  TransferFindHasher* {.importcpp: "Transfer_FindHasher",
                       header: "Transfer_FindHasher.hxx", bycopy.} = object 
                                                                       
                                                                       
                                                                       
                                                                       
                                                                       
                                                                       
                                                                       
                                                                       



  HandleTransferMultipleBinder* = Handle[TransferMultipleBinder]





















  HandleTransferProcessForTransient* = Handle[TransferProcessForTransient]








  HandleTransferResultFromModel* = Handle[TransferResultFromModel]


















  HandleTransferResultFromTransient* = Handle[TransferResultFromTransient]











  HandleTransferSimpleBinderOfTransient* = Handle[TransferSimpleBinderOfTransient]






  HandleTransferTransientListBinder* = Handle[TransferTransientListBinder]







  HandleTransferTransientProcess* = Handle[TransferTransientProcess]









  HandleTransferVoidBinder* = Handle[TransferVoidBinder]








  TransferIteratorOfProcessForFinder* {.importcpp: "Transfer_IteratorOfProcessForFinder", header: "Transfer_IteratorOfProcessForFinder.hxx",
                                       bycopy.} = object of TransferTransferIterator 
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                



  TransferIteratorOfProcessForTransient* {.
      importcpp: "Transfer_IteratorOfProcessForTransient",
      header: "Transfer_IteratorOfProcessForTransient.hxx", bycopy.} = object of TransferTransferIterator 
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   
                                                                                                   



  TransferActorDispatch* {.importcpp: "Transfer_ActorDispatch",
                          header: "Transfer_ActorDispatch.hxx", bycopy.} = object of TransferActorOfTransientProcess 
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              
                                                                                                              



  TransferActorOfFinderProcess* {.importcpp: "Transfer_ActorOfFinderProcess",
                                 header: "Transfer_ActorOfFinderProcess.hxx",
                                 bycopy.} = object of TransferActorOfProcessForFinder



  HandleTransferActorOfProcessForFinder* = Handle[TransferActorOfProcessForFinder]


  TransferActorOfProcessForFinder* {.importcpp: "Transfer_ActorOfProcessForFinder", header: "Transfer_ActorOfProcessForFinder.hxx",
                                    bycopy.} = object of StandardTransient



  HandleTransferActorOfProcessForTransient* = Handle[
      TransferActorOfProcessForTransient]


  TransferActorOfProcessForTransient* {.importcpp: "Transfer_ActorOfProcessForTransient", header: "Transfer_ActorOfProcessForTransient.hxx",
                                       bycopy.} = object of StandardTransient



  TransferActorOfTransientProcess* {.importcpp: "Transfer_ActorOfTransientProcess", header: "Transfer_ActorOfTransientProcess.hxx",
                                    bycopy.} = object of TransferActorOfProcessForTransient



  TransferBinder* {.importcpp: "Transfer_Binder", header: "Transfer_Binder.hxx",
                   bycopy.} = object of StandardTransient 
                                                     
                                                     
                                                     
                                                     



  TransferBinderOfTransientInteger* {.importcpp: "Transfer_BinderOfTransientInteger", header: "Transfer_BinderOfTransientInteger.hxx",
                                     bycopy.} = object of TransferSimpleBinderOfTransient 
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     



  TransferDispatchControl* {.importcpp: "Transfer_DispatchControl",
                            header: "Transfer_DispatchControl.hxx", bycopy.} = object of InterfaceCopyControl 
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       



  TransferFinder* {.importcpp: "Transfer_Finder", header: "Transfer_Finder.hxx",
                   bycopy.} = object of StandardTransient 
                                                     
                                                     
                                                     
                                                     



  TransferFinderProcess* {.importcpp: "Transfer_FinderProcess",
                          header: "Transfer_FinderProcess.hxx", bycopy.} = object of TransferProcessForFinder 
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       
                                                                                                       



  TransferHSequenceOfBinder* {.importcpp: "Transfer_HSequenceOfBinder",
                              header: "Transfer_HSequenceOfBinder.hxx", bycopy.} = object of TransferSequenceOfBinder



  TransferHSequenceOfFinder* {.importcpp: "Transfer_HSequenceOfFinder",
                              header: "Transfer_HSequenceOfFinder.hxx", bycopy.} = object of TransferSequenceOfFinder



  HandleTransferMapContainer* = Handle[TransferMapContainer]


  TransferMapContainer* {.importcpp: "Transfer_MapContainer",
                         header: "Transfer_MapContainer.hxx", bycopy.} = object of StandardTransient



  TransferMultipleBinder* {.importcpp: "Transfer_MultipleBinder",
                           header: "Transfer_MultipleBinder.hxx", bycopy.} = object of TransferBinder 
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               
                                                                                               



  HandleTransferProcessForFinder* = Handle[TransferProcessForFinder]


  TransferProcessForFinder* {.importcpp: "Transfer_ProcessForFinder",
                             header: "Transfer_ProcessForFinder.hxx", bycopy.} = object of StandardTransient 
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      



  TransferProcessForTransient* {.importcpp: "Transfer_ProcessForTransient",
                                header: "Transfer_ProcessForTransient.hxx", bycopy.} = object of StandardTransient 
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            



  TransferResultFromModel* {.importcpp: "Transfer_ResultFromModel",
                            header: "Transfer_ResultFromModel.hxx", bycopy.} = object of StandardTransient 
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    



  TransferResultFromTransient* {.importcpp: "Transfer_ResultFromTransient",
                                header: "Transfer_ResultFromTransient.hxx", bycopy.} = object of StandardTransient 
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            



  TransferSimpleBinderOfTransient* {.importcpp: "Transfer_SimpleBinderOfTransient", header: "Transfer_SimpleBinderOfTransient.hxx",
                                    bycopy.} = object of TransferBinder 
                                                                   
                                                                   
                                                                   
                                                                   



  TransferTransferDispatch* {.importcpp: "Transfer_TransferDispatch",
                             header: "Transfer_TransferDispatch.hxx", bycopy.} = object of InterfaceCopyTool 
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      
                                                                                                      



  TransferTransientListBinder* {.importcpp: "Transfer_TransientListBinder",
                                header: "Transfer_TransientListBinder.hxx", bycopy.} = object of TransferBinder



  HandleTransferTransientMapper* = Handle[TransferTransientMapper]


  TransferTransientMapper* {.importcpp: "Transfer_TransientMapper",
                            header: "Transfer_TransientMapper.hxx", bycopy.} = object of TransferFinder 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 
                                                                                                 



  TransferTransientProcess* {.importcpp: "Transfer_TransientProcess",
                             header: "Transfer_TransientProcess.hxx", bycopy.} = object of TransferProcessForTransient 
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                                





  TransferVoidBinder* {.importcpp: "Transfer_VoidBinder",
                       header: "Transfer_VoidBinder.hxx", bycopy.} = object of TransferBinder 
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       
                                                                                       






