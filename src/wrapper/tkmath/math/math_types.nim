# PROVIDES: Math MathBFGS MathBissecNewton MathBracketedRoot MathBracketMinimum MathBrentMinimum MathBullardGenerator MathComputeGaussPointsAndWeights MathComputeKronrodPointsAndWeights MathCrout MathDirectPolynomialRoots MathDoubleTab MathEigenValuesSearcher MathFRPR MathFunction MathFunctionAllRoots MathFunctionRoot MathFunctionRoots MathFunctionSample MathFunctionSet MathFunctionSetRoot MathGauss MathGaussLeastSquare MathGaussMultipleIntegration MathGaussSetIntegration MathGaussSingleIntegration MathGlobOptMin MathHouseholder MathIntegerVector MathJacobi MathKronrodSingleIntegration MathMatrix MathMultipleVarFunction MathNewtonFunctionRoot MathNewtonFunctionSetRoot MathNewtonMinimum MathPowell MathPSO PSO_Particle MathPSOParticlesPool MathSVD MathTrigonometricFunctionRoots MathUzawa MathValueAndWeight MathVector
# DEPENDS:  Handle[MathNotSquare]  Handle[MathSingularMatrix] MathFunctionSet MathFunction MathMultipleVarFunction MathMultipleVarFunctionWithGradient MathFunctionWithDerivative

import tkmath/math/math_types
import tkernel/standard/standard_types
type
  Math* {.importcpp: "math", header: "math.hxx", bycopy.} = object

  MathBFGS* {.importcpp: "math_BFGS", header: "math_BFGS.hxx", bycopy.} = object 
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         

  MathBissecNewton* {.importcpp: "math_BissecNewton",
                     header: "math_BissecNewton.hxx", bycopy.} = object 
                                                                   

  MathBracketedRoot* {.importcpp: "math_BracketedRoot",
                      header: "math_BracketedRoot.hxx", bycopy.} = object 
                                                                     
                                                                     
                                                                     
                                                                     
                                                                     
                                                                     
                                                                     
                                                                     

  MathBracketMinimum* {.importcpp: "math_BracketMinimum",
                       header: "math_BracketMinimum.hxx", bycopy.} = object 
                                                                       
                                                                       
                                                                       

  MathBrentMinimum* {.importcpp: "math_BrentMinimum",
                     header: "math_BrentMinimum.hxx", bycopy.} = object 
                                                                   

  MathBullardGenerator* {.importcpp: "math_BullardGenerator",
                         header: "math_BullardGenerator.hxx", bycopy.} = object 
                                                                           
                                                                           
                                                                           

  MathComputeGaussPointsAndWeights* {.importcpp: "math_ComputeGaussPointsAndWeights", header: "math_ComputeGaussPointsAndWeights.hxx",
                                     bycopy.} = object

  MathComputeKronrodPointsAndWeights* {.importcpp: "math_ComputeKronrodPointsAndWeights", header: "math_ComputeKronrodPointsAndWeights.hxx",
                                       bycopy.} = object

  MathCrout* {.importcpp: "math_Crout", header: "math_Crout.hxx", bycopy.} = object 
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            

  MathDirectPolynomialRoots* {.importcpp: "math_DirectPolynomialRoots",
                              header: "math_DirectPolynomialRoots.hxx", bycopy.} = object 
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     

  MathDoubleTab* {.importcpp: "math_DoubleTab", header: "math_DoubleTab.hxx", bycopy.} = object

  MathEigenValuesSearcher* {.importcpp: "math_EigenValuesSearcher",
                            header: "math_EigenValuesSearcher.hxx", bycopy.} = object

  MathFRPR* {.importcpp: "math_FRPR", header: "math_FRPR.hxx", bycopy.} = object 
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         

  MathFunction* {.importcpp: "math_Function", header: "math_Function.hxx", bycopy.} = object of RootObj 
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     

  MathFunctionAllRoots* {.importcpp: "math_FunctionAllRoots",
                         header: "math_FunctionAllRoots.hxx", bycopy.} = object 
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           

  MathFunctionRoot* {.importcpp: "math_FunctionRoot",
                     header: "math_FunctionRoot.hxx", bycopy.} = object 
                                                                   
                                                                   
                                                                   
                                                                   
                                                                   
                                                                   

  MathFunctionRoots* {.importcpp: "math_FunctionRoots",
                      header: "math_FunctionRoots.hxx", bycopy.} = object 
                                                                     
                                                                     
                                                                     
                                                                     
                                                                     
                                                                     

  MathFunctionSample* {.importcpp: "math_FunctionSample",
                       header: "math_FunctionSample.hxx", bycopy.} = object

  MathFunctionSet* {.importcpp: "math_FunctionSet", header: "math_FunctionSet.hxx",
                    bycopy.} = object of RootObj 

  MathFunctionSetRoot* {.importcpp: "math_FunctionSetRoot",
                        header: "math_FunctionSetRoot.hxx", bycopy.} = object 
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         
                                                                         

  MathGauss* {.importcpp: "math_Gauss", header: "math_Gauss.hxx", bycopy.} = object 
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            

  MathGaussLeastSquare* {.importcpp: "math_GaussLeastSquare",
                         header: "math_GaussLeastSquare.hxx", bycopy.} = object 
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           
                                                                           

  MathGaussMultipleIntegration* {.importcpp: "math_GaussMultipleIntegration",
                                 header: "math_GaussMultipleIntegration.hxx",
                                 bycopy.} = object 
                                                
                                                

  MathGaussSetIntegration* {.importcpp: "math_GaussSetIntegration",
                            header: "math_GaussSetIntegration.hxx", bycopy.} = object 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 

  MathGaussSingleIntegration* {.importcpp: "math_GaussSingleIntegration",
                               header: "math_GaussSingleIntegration.hxx", bycopy.} = object 
                                                                                       
                                                                                       
                                                                                       
                                                                                       

  MathGlobOptMin* {.importcpp: "math_GlobOptMin", header: "math_GlobOptMin.hxx",
                   bycopy.} = object 
                                  
                                  
                                  
                                  
                                  
                                  
                                  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

  MathHouseholder* {.importcpp: "math_Householder", header: "math_Householder.hxx",
                    bycopy.} = object 
                                   
                                   
                                   
                                   
                                   
                                   
                                   
                                   

  MathIntegerVector* {.importcpp: "math_IntegerVector",
                      header: "math_IntegerVector.hxx", bycopy.} = object 
                                                                     
                                                                     
                                                                     
                                                                     

  MathJacobi* {.importcpp: "math_Jacobi", header: "math_Jacobi.hxx", bycopy.} = object 
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               

  MathKronrodSingleIntegration* {.importcpp: "math_KronrodSingleIntegration",
                                 header: "math_KronrodSingleIntegration.hxx",
                                 bycopy.} = object 

  MathMatrix* {.importcpp: "math_Matrix", header: "math_Matrix.hxx", bycopy.} = object 
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               

  MathMultipleVarFunction* {.importcpp: "math_MultipleVarFunction",
                            header: "math_MultipleVarFunction.hxx", bycopy.} = object of RootObj 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 
                                                                                 

  MathNewtonFunctionRoot* {.importcpp: "math_NewtonFunctionRoot",
                           header: "math_NewtonFunctionRoot.hxx", bycopy.} = object 
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               

  MathNewtonFunctionSetRoot* {.importcpp: "math_NewtonFunctionSetRoot",
                              header: "math_NewtonFunctionSetRoot.hxx", bycopy.} = object 
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     
                                                                                     

  MathNewtonMinimum* {.importcpp: "math_NewtonMinimum",
                      header: "math_NewtonMinimum.hxx", bycopy.} = object 
                                                                     
                                                                     
                                                                     
                                                                     
                                                                     
                                                                     
                                                                     

  MathPowell* {.importcpp: "math_Powell", header: "math_Powell.hxx", bycopy.} = object 
                                                                               
                                                                               
                                                                               
                                                                               

  MathPSO* {.importcpp: "math_PSO", header: "math_PSO.hxx", bycopy.} = object 
                                                                      
                                                                      
                                                                      
                                                                      
                                                                      
                                                                      
                                                                      
                                                                      
                                                                      
                                                                      
    
    
    
    
    

  PSO_Particle* {.importcpp: "PSO_Particle", header: "math_PSOParticlesPool.hxx",
                 bycopy.} = object
    position* {.importc: "Position".}: ptr cfloat 
    velocity* {.importc: "Velocity".}: ptr cfloat 
    bestPosition* {.importc: "BestPosition".}: ptr cfloat
    distance* {.importc: "Distance".}: cfloat
    bestDistance* {.importc: "BestDistance".}: cfloat

  MathPSOParticlesPool* {.importcpp: "math_PSOParticlesPool",
                         header: "math_PSOParticlesPool.hxx", bycopy.} = object
    

  MathSVD* {.importcpp: "math_SVD", header: "math_SVD.hxx", bycopy.} = object 
                                                                      
                                                                      
                                                                      

  MathTrigonometricFunctionRoots* {.importcpp: "math_TrigonometricFunctionRoots", header: "math_TrigonometricFunctionRoots.hxx",
                                   bycopy.} = object 
                                                  
                                                  
                                                  
                                                  

  MathUzawa* {.importcpp: "math_Uzawa", header: "math_Uzawa.hxx", bycopy.} = object 
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            

  MathValueAndWeight* {.importcpp: "math_ValueAndWeight",
                       header: "math_ValueAndWeight.hxx", bycopy.} = object
                       header: "math_ValueAndWeight.hxx", bycopy.} = object

  MathVector* {.importcpp: "math_Vector", header: "math_Vector.hxx", bycopy.} = object 
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               

  HandleMathNotSquare* = Handle[MathNotSquare]



  HandleMathSingularMatrix* = Handle[MathSingularMatrix]



  MathFunctionSetWithDerivatives* {.importcpp: "math_FunctionSetWithDerivatives", header: "math_FunctionSetWithDerivatives.hxx",
                                   bycopy.} = object of MathFunctionSet 



  MathFunctionWithDerivative* {.importcpp: "math_FunctionWithDerivative",
                               header: "math_FunctionWithDerivative.hxx", bycopy.} = object of MathFunction 
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     
                                                                                                     



  MathMultipleVarFunctionWithGradient* {.importcpp: "math_MultipleVarFunctionWithGradient", header: "math_MultipleVarFunctionWithGradient.hxx",
                                        bycopy.} = object of MathMultipleVarFunction 
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                



  MathMultipleVarFunctionWithHessian* {.importcpp: "math_MultipleVarFunctionWithHessian", header: "math_MultipleVarFunctionWithHessian.hxx",
                                       bycopy.} = object of MathMultipleVarFunctionWithGradient 
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           
                                                                                           




  MathTrigonometricEquationFunction* {.importcpp: "math_TrigonometricEquationFunction", header: "math_TrigonometricEquationFunction.hxx",
                                      bycopy.} = object of MathFunctionWithDerivative





