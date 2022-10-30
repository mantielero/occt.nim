# PROVIDES: TCollection TCollectionAsciiString TCollectionBaseSequence TCollectionBasicMap TCollectionBasicMapIterator TCollectionExtendedString
# DEPENDS:  Handle[TCollectionHAsciiString]  Handle[TCollectionHExtendedString]  Handle[TCollectionMapNode] StandardTransient StandardTransient StandardTransient  Handle[TCollectionSeqNode]  Handle[TCollectionSeqNode] StandardTransient

import tkernel/tcollection/tcollection_types
import tkernel/standard/standard_types
type
  TCollection* {.importcpp: "TCollection", header: "TCollection.hxx", bycopy.} = object 
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                

  TCollectionAsciiString* {.importcpp: "TCollection_AsciiString",
                           header: "TCollection_AsciiString.hxx", bycopy.} = object 
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
    
    

  TCollectionBaseSequence* {.importcpp: "TCollection_BaseSequence",
                            header: "TCollection_BaseSequence.hxx", bycopy.} = object 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 

  TCollectionBasicMap* {.importcpp: "TCollection_BasicMap",
                        header: "TCollection_BasicMap.hxx", bycopy.} = object of RootObj 
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         

  TCollectionBasicMapIterator* {.importcpp: "TCollection_BasicMapIterator",
                                header: "TCollection_BasicMapIterator.hxx", bycopy.} = object of RootObj 
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         

  TCollectionExtendedString* {.importcpp: "TCollection_ExtendedString",
                              header: "TCollection_ExtendedString.hxx", bycopy.} = object 
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
    
    

  HandleTCollectionHAsciiString* = Handle[TCollectionHAsciiString]











  HandleTCollectionHExtendedString* = Handle[TCollectionHExtendedString]














  HandleTCollectionMapNode* = Handle[TCollectionMapNode]




  TCollectionHAsciiString* {.importcpp: "TCollection_HAsciiString",
                            header: "TCollection_HAsciiString.hxx", bycopy.} = object of StandardTransient 
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    



  TCollectionHExtendedString* {.importcpp: "TCollection_HExtendedString",
                               header: "TCollection_HExtendedString.hxx", bycopy.} = object of StandardTransient 
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          
                                                                                                          



  TCollectionMapNode* {.importcpp: "TCollection_MapNode",
                       header: "TCollection_MapNode.hxx", bycopy.} = object of StandardTransient

                       header: "TCollection_MapNode.hxx", bycopy.} = object of StandardTransient


  HandleTCollectionSeqNode* = Handle[TCollectionSeqNode]


  HandleTCollectionSeqNode* = Handle[TCollectionSeqNode]

  HandleTCollectionSeqNode* = Handle[TCollectionSeqNode]
  TCollectionSeqNode* {.importcpp: "TCollection_SeqNode",
                       header: "TCollection_SeqNode.hxx", bycopy.} = object of StandardTransient






