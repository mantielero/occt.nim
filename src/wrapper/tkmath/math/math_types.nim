type
  Math* {.importcpp: "math", header: "math.hxx", bycopy.} = object
type
  MathBFGS* {.importcpp: "math_BFGS", header: "math_BFGS.hxx", bycopy.} = object ## !
                                                                         ## Initializes the
                                                                         ## computation of the minimum of a
                                                                         ## function with
                                                                         ## !
                                                                         ## NbVariables.
                                                                         ## !
                                                                         ## Tolerance, ZEPS and
                                                                         ## NbIterations are
                                                                         ## described in the method
                                                                         ## Perform.
                                                                         ## !
                                                                         ## Warning:
                                                                         ## ! A call to the Perform method must be made after this
                                                                         ## !
                                                                         ## initialization to
                                                                         ## effectively compute the minimum of the
                                                                         ## !
                                                                         ## function F.
type
  MathBissecNewton* {.importcpp: "math_BissecNewton",
                     header: "math_BissecNewton.hxx", bycopy.} = object ## ! Constructor.
                                                                   ## ! @param theXTolerance - algorithm tolerance.
type
  MathBracketedRoot* {.importcpp: "math_BracketedRoot",
                      header: "math_BracketedRoot.hxx", bycopy.} = object ## ! The Brent method is used to find the root of the function F between
                                                                     ## ! the bounds Bound1 and Bound2 on the function F.
                                                                     ## ! If
                                                                     ## F(Bound1)*F(Bound2) >0 the Brent method fails.
                                                                     ## ! The tolerance required for the root is given by Tolerance.
                                                                     ## ! The solution is found when :
                                                                     ## ! abs(Xi - Xi-1) <= Tolerance;
                                                                     ## ! The maximum number of iterations allowed is given by
                                                                     ## NbIterations.
type
  MathBracketMinimum* {.importcpp: "math_BracketMinimum",
                       header: "math_BracketMinimum.hxx", bycopy.} = object ## !
                                                                       ## Constructor preparing A and B
                                                                       ## parameters only. It does not perform the job.
                                                                       ## ! Limit the given value to become within the range [myLeft, myRight].
type
  MathBrentMinimum* {.importcpp: "math_BrentMinimum",
                     header: "math_BrentMinimum.hxx", bycopy.} = object ## ! This constructor should be used in a sub-class to initialize
                                                                   ## ! correctly all the fields of this class.
type
  MathBullardGenerator* {.importcpp: "math_BullardGenerator",
                         header: "math_BullardGenerator.hxx", bycopy.} = object ## !
                                                                           ## Creates new
                                                                           ## Xorshift
                                                                           ## 64-bit RNG.
type
  MathComputeGaussPointsAndWeights* {.importcpp: "math_ComputeGaussPointsAndWeights", header: "math_ComputeGaussPointsAndWeights.hxx",
                                     bycopy.} = object
type
  MathComputeKronrodPointsAndWeights* {.importcpp: "math_ComputeKronrodPointsAndWeights", header: "math_ComputeKronrodPointsAndWeights.hxx",
                                       bycopy.} = object
type
  MathCrout* {.importcpp: "math_Crout", header: "math_Crout.hxx", bycopy.} = object ## !
                                                                            ## Given an
                                                                            ## input
                                                                            ## matrix A, this
                                                                            ## algorithm
                                                                            ## inverts A by the
                                                                            ## !
                                                                            ## Crout
                                                                            ## algorithm. The user can give only the
                                                                            ## inferior
                                                                            ## !
                                                                            ## triangle for the
                                                                            ## implementation.
                                                                            ## ! A can be
                                                                            ## decomposed like
                                                                            ## this:
                                                                            ## ! A = L * D * T(L)
                                                                            ## where L is
                                                                            ## triangular
                                                                            ## inferior and D is
                                                                            ## !
                                                                            ## diagonal.
                                                                            ## ! If one
                                                                            ## element of A is less than
                                                                            ## MinPivot, A is
                                                                            ## !
                                                                            ## considered as
                                                                            ## singular.
                                                                            ## !
                                                                            ## Exception
                                                                            ## NotSquare is
                                                                            ## raised if A is not a
                                                                            ## square
                                                                            ## matrix.
type
  MathDirectPolynomialRoots* {.importcpp: "math_DirectPolynomialRoots",
                              header: "math_DirectPolynomialRoots.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## computes
                                                                                     ## all
                                                                                     ## the
                                                                                     ## real
                                                                                     ## roots
                                                                                     ## of
                                                                                     ## the
                                                                                     ## polynomial
                                                                                     ##
                                                                                     ## !
                                                                                     ## Ax4
                                                                                     ## +
                                                                                     ## Bx3
                                                                                     ## +
                                                                                     ## Cx2
                                                                                     ## +
                                                                                     ## Dx
                                                                                     ## +
                                                                                     ## E
                                                                                     ## using
                                                                                     ## a
                                                                                     ## direct
                                                                                     ## method.
type
  MathDoubleTab* {.importcpp: "math_DoubleTab", header: "math_DoubleTab.hxx", bycopy.} = object
type
  MathEigenValuesSearcher* {.importcpp: "math_EigenValuesSearcher",
                            header: "math_EigenValuesSearcher.hxx", bycopy.} = object
type
  MathFRPR* {.importcpp: "math_FRPR", header: "math_FRPR.hxx", bycopy.} = object ## !
                                                                         ## Initializes the
                                                                         ## computation of the minimum of F.
                                                                         ## !
                                                                         ## Warning:
                                                                         ## constructor does not perform
                                                                         ## computations.
type
  MathFunction* {.importcpp: "math_Function", header: "math_Function.hxx", bycopy.} = object of RootObj ##
                                                                                     ## !
                                                                                     ## Virtual
                                                                                     ## destructor,
                                                                                     ## for
                                                                                     ## safe
                                                                                     ## inheritance
type
  MathFunctionAllRoots* {.importcpp: "math_FunctionAllRoots",
                         header: "math_FunctionAllRoots.hxx", bycopy.} = object ## ! The
                                                                           ## algorithm uses the
                                                                           ## sample to find
                                                                           ## intervals on which
                                                                           ## ! the
                                                                           ## function is null. An
                                                                           ## interval is found if, for at least
                                                                           ## ! two
                                                                           ## consecutive
                                                                           ## points of the
                                                                           ## sample, Ui and Ui+1, we get
                                                                           ## !
                                                                           ## |F(Ui)|<=EpsNul and
                                                                           ## |F(Ui+1)|<=EpsNul. The real
                                                                           ## bounds of
                                                                           ## ! an
                                                                           ## interval are
                                                                           ## computed with the
                                                                           ## FunctionRoots.
                                                                           ## !
                                                                           ## algorithm.
                                                                           ## !
                                                                           ## Between two
                                                                           ## intervals, the roots of the
                                                                           ## function F are
                                                                           ## !
                                                                           ## calculated using the
                                                                           ## FunctionRoots
                                                                           ## algorithm.
type
  MathFunctionRoot* {.importcpp: "math_FunctionRoot",
                     header: "math_FunctionRoot.hxx", bycopy.} = object ## ! The
                                                                   ## Newton-Raphson method is done to find the root of the function F
                                                                   ## ! from the initial guess Guess.The tolerance required on
                                                                   ## ! the root is given by Tolerance. Iterations are stopped if
                                                                   ## ! the expected solution does not stay in the range A..B.
                                                                   ## ! The solution is found when abs(Xi - Xi-1) <= Tolerance;
                                                                   ## ! The maximum number of iterations allowed is given by NbIterations.
type
  MathFunctionRoots* {.importcpp: "math_FunctionRoots",
                      header: "math_FunctionRoots.hxx", bycopy.} = object ## ! Calculates all the real roots of a function F-K within the range
                                                                     ## ! A..B. whithout conditions on A and B
                                                                     ## ! A solution X is found when
                                                                     ## ! abs(Xi - Xi-1) <= Epsx and
                                                                     ## abs(F(Xi)-K) <= EpsF.
                                                                     ## ! The function is considered as null between A and B if
                                                                     ## ! abs(F-K) <= EpsNull within this range.
type
  MathFunctionSample* {.importcpp: "math_FunctionSample",
                       header: "math_FunctionSample.hxx", bycopy.} = object
type
  MathFunctionSet* {.importcpp: "math_FunctionSet", header: "math_FunctionSet.hxx",
                    bycopy.} = object of RootObj ## ! Returns the number of variables of the function.
type
  MathFunctionSetRoot* {.importcpp: "math_FunctionSetRoot",
                        header: "math_FunctionSetRoot.hxx", bycopy.} = object ## ! is used in a
                                                                         ## sub-class to
                                                                         ## initialize
                                                                         ## correctly all the fields
                                                                         ## ! of this class.
                                                                         ## ! The range (1,
                                                                         ## F.NbVariables()) must be
                                                                         ## especially
                                                                         ## !
                                                                         ## respected for all vectors and matrix
                                                                         ## declarations.
type
  MathFunctionSetWithDerivatives* {.importcpp: "math_FunctionSetWithDerivatives", header: "math_FunctionSetWithDerivatives.hxx",
                                   bycopy.} = object of MathFunctionSet ## ! Returns the number of variables of the function.
type
  MathFunctionWithDerivative* {.importcpp: "math_FunctionWithDerivative",
                               header: "math_FunctionWithDerivative.hxx", bycopy.} = object of MathFunction ##
                                                                                                     ## !
                                                                                                     ## Computes
                                                                                                     ## the
                                                                                                     ## value
                                                                                                     ## <F>of
                                                                                                     ## the
                                                                                                     ## function
                                                                                                     ## for
                                                                                                     ## the
                                                                                                     ## variable
                                                                                                     ## <X>.
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Returns
                                                                                                     ## True
                                                                                                     ## if
                                                                                                     ## the
                                                                                                     ## calculation
                                                                                                     ## were
                                                                                                     ## successfully
                                                                                                     ## done,
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## False
                                                                                                     ## otherwise.
type
  MathGauss* {.importcpp: "math_Gauss", header: "math_Gauss.hxx", bycopy.} = object ## !
                                                                            ## Given an
                                                                            ## input n X n
                                                                            ## matrix A this
                                                                            ## constructor
                                                                            ## performs its LU
                                                                            ## !
                                                                            ## decomposition with
                                                                            ## partial
                                                                            ## pivoting
                                                                            ## (interchange of
                                                                            ## rows).
                                                                            ## ! This LU
                                                                            ## decomposition is
                                                                            ## stored
                                                                            ## internally and may be used to
                                                                            ## ! do
                                                                            ## subsequent
                                                                            ## calculation.
                                                                            ## ! If the
                                                                            ## largest
                                                                            ## pivot
                                                                            ## found is less than
                                                                            ## MinPivot the
                                                                            ## matrix A is
                                                                            ## !
                                                                            ## considered as
                                                                            ## singular.
                                                                            ## !
                                                                            ## Exception
                                                                            ## NotSquare is
                                                                            ## raised if A is not a
                                                                            ## square
                                                                            ## matrix.
type
  MathGaussLeastSquare* {.importcpp: "math_GaussLeastSquare",
                         header: "math_GaussLeastSquare.hxx", bycopy.} = object ## ! Given an input n X m
                                                                           ## matrix A with n >= m this
                                                                           ## constructor
                                                                           ## !
                                                                           ## performs the LU
                                                                           ## decomposition with
                                                                           ## partial
                                                                           ## pivoting
                                                                           ## !
                                                                           ## (interchange of rows) of the
                                                                           ## matrix AA =
                                                                           ## A.Transposed() * A;
                                                                           ## ! This LU
                                                                           ## decomposition is
                                                                           ## stored
                                                                           ## internally and may be used
                                                                           ## ! to do
                                                                           ## subsequent
                                                                           ## calculation.
                                                                           ## ! If the
                                                                           ## largest pivot found is less than
                                                                           ## MinPivot the
                                                                           ## matrix <A>
                                                                           ## ! is
                                                                           ## considered as
                                                                           ## singular.
type
  MathGaussMultipleIntegration* {.importcpp: "math_GaussMultipleIntegration",
                                 header: "math_GaussMultipleIntegration.hxx",
                                 bycopy.} = object ## ! The Gauss-Legendre integration with Order = points of
                                                ## ! integration for each unknow, is done on the function F
                                                ## ! between the bounds Lower and Upper.
type
  MathGaussSetIntegration* {.importcpp: "math_GaussSetIntegration",
                            header: "math_GaussSetIntegration.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## The
                                                                                 ## Gauss-Legendre
                                                                                 ## integration
                                                                                 ## with
                                                                                 ## Order
                                                                                 ## =
                                                                                 ## points
                                                                                 ## of
                                                                                 ##
                                                                                 ## !
                                                                                 ## integration
                                                                                 ## for
                                                                                 ## each
                                                                                 ## unknow,
                                                                                 ## is
                                                                                 ## done
                                                                                 ## on
                                                                                 ## the
                                                                                 ## function
                                                                                 ## F
                                                                                 ##
                                                                                 ## !
                                                                                 ## between
                                                                                 ## the
                                                                                 ## bounds
                                                                                 ## Lower
                                                                                 ## and
                                                                                 ## Upper.
type
  MathGaussSingleIntegration* {.importcpp: "math_GaussSingleIntegration",
                               header: "math_GaussSingleIntegration.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## perfoms
                                                                                       ## actual
                                                                                       ## computation
type
  MathGlobOptMin* {.importcpp: "math_GlobOptMin", header: "math_GlobOptMin.hxx",
                   bycopy.} = object ## ! Constructor. Perform method is not called from it.
                                  ## ! @param theFunc - objective functional.
                                  ## ! @param theLowerBorder - lower corner of the search box.
                                  ## ! @param theUpperBorder - upper corner of the search box.
                                  ## ! @param theC - Lipschitz constant.
                                  ## ! @param theDiscretizationTol - parameter space discretization tolerance.
                                  ## ! @param theSameTol - functional value space indifference tolerance.
                                  ## ! Class for duplicate fast search. For internal usage only.
    ##  Left border on current C2 interval.
    ##  Right border on current C2 interval.
    ##  Global left border.
    ##  Global right border.
    ##  Discretization tolerance, default 1.0e-2.
    ##  points with ||p1 - p2|| < mySameTol is equal,
    ##  function values |val1 - val2| * 0.01 < mySameTol is equal,
    ##  default value is 1.0e-7.
    ## Lipchitz constant, default 9
    ##  Lipchitz constant initial value.
    ##  Default value is false.
    ##  Default value is -Precision::Infinite
    ##  Is constant locked for modifications.
    ##  Output.
    ##  Current solutions.
    ##  Count of solutions.
    ##  Algorithm data.
    ##  Border coefficient.
    ##  Minimum step size.
    ##  Local extrema starting parameter.
    ##  Current modified solution.
    ##  Current modified solution.
    ##  Steps array.
    ##  Max Steps array.
    ##  Last step.
    ##  Continuity of local borders.
    ##  Current value of Global optimum.
type
  MathHouseholder* {.importcpp: "math_Householder", header: "math_Householder.hxx",
                    bycopy.} = object ## ! Given an input matrix A with n>= m, given an input matrix B
                                   ## ! this constructor performs the least square resolution of
                                   ## ! the set of linear equations A.X = B for each column of B.
                                   ## ! If a column norm is less than EPS, the resolution can't
                                   ## ! be done.
                                   ## ! Exception DimensionError is raised if the row number of B
                                   ## ! is different from the A row number.
                                   ## ! This method is used internally for each constructor
                                   ## ! above and can't be used directly.
type
  MathIntegerVector* {.importcpp: "math_IntegerVector",
                      header: "math_IntegerVector.hxx", bycopy.} = object ## ! contructs an
                                                                     ## IntegerVector in the range
                                                                     ## [Lower..Upper]
                                                                     ## ! is used internally to set the Lower value of the
                                                                     ## IntegerVector.
type
  MathJacobi* {.importcpp: "math_Jacobi", header: "math_Jacobi.hxx", bycopy.} = object ## !
                                                                               ## Given a
                                                                               ## Real n X n
                                                                               ## matrix
                                                                               ## A,
                                                                               ## this
                                                                               ## constructor
                                                                               ## computes
                                                                               ## all
                                                                               ## its
                                                                               ## !
                                                                               ## eigenvalues
                                                                               ## and
                                                                               ## eigenvectors
                                                                               ## using
                                                                               ## the
                                                                               ## Jacobi
                                                                               ## method.
                                                                               ## !
                                                                               ## The
                                                                               ## exception
                                                                               ## NotSquare
                                                                               ## is
                                                                               ## raised
                                                                               ## if
                                                                               ## the
                                                                               ## matrix
                                                                               ## is
                                                                               ## not
                                                                               ## square.
                                                                               ## !
                                                                               ## No
                                                                               ## verification
                                                                               ## that
                                                                               ## the
                                                                               ## matrix A
                                                                               ## is
                                                                               ## really
                                                                               ## symmetric
                                                                               ## is
                                                                               ## done.
type
  MathKronrodSingleIntegration* {.importcpp: "math_KronrodSingleIntegration",
                                 header: "math_KronrodSingleIntegration.hxx",
                                 bycopy.} = object ## ! An empty constructor.
type
  MathMatrix* {.importcpp: "math_Matrix", header: "math_Matrix.hxx", bycopy.} = object ## !
                                                                               ## Constructs a
                                                                               ## non-initialized
                                                                               ## matrix
                                                                               ## of
                                                                               ## range
                                                                               ## [LowerRow..UpperRow,
                                                                               ## !
                                                                               ## LowerCol..UpperCol]
                                                                               ## !
                                                                               ## For
                                                                               ## the
                                                                               ## constructed
                                                                               ## matrix:
                                                                               ## ! -
                                                                               ## LowerRow
                                                                               ## and
                                                                               ## UpperRow
                                                                               ## are
                                                                               ## the
                                                                               ## indexes
                                                                               ## of
                                                                               ## the
                                                                               ## !
                                                                               ## lower
                                                                               ## and
                                                                               ## upper
                                                                               ## bounds
                                                                               ## of a
                                                                               ## row,
                                                                               ## and
                                                                               ## ! -
                                                                               ## LowerCol
                                                                               ## and
                                                                               ## UpperCol
                                                                               ## are
                                                                               ## the
                                                                               ## indexes
                                                                               ## of
                                                                               ## the
                                                                               ## !
                                                                               ## lower
                                                                               ## and
                                                                               ## upper
                                                                               ## bounds
                                                                               ## of a
                                                                               ## column.
                                                                               ## !
                                                                               ## The
                                                                               ## new
                                                                               ## lower
                                                                               ## row
                                                                               ## of
                                                                               ## the
                                                                               ## matrix
                                                                               ## is
                                                                               ## set
                                                                               ## to
                                                                               ## <LowerRow>
type
  MathMultipleVarFunction* {.importcpp: "math_MultipleVarFunction",
                            header: "math_MultipleVarFunction.hxx", bycopy.} = object of RootObj ##
                                                                                 ## !
                                                                                 ## Returns
                                                                                 ## the
                                                                                 ## number
                                                                                 ## of
                                                                                 ## variables
                                                                                 ## of
                                                                                 ## the
                                                                                 ## function
type
  MathMultipleVarFunctionWithGradient* {.importcpp: "math_MultipleVarFunctionWithGradient", header: "math_MultipleVarFunctionWithGradient.hxx",
                                        bycopy.} = object of MathMultipleVarFunction ##
                                                                                ## !
                                                                                ## Returns
                                                                                ## the
                                                                                ## number
                                                                                ## of
                                                                                ## variables
                                                                                ## of
                                                                                ## the
                                                                                ## function.
type
  MathMultipleVarFunctionWithHessian* {.importcpp: "math_MultipleVarFunctionWithHessian", header: "math_MultipleVarFunctionWithHessian.hxx",
                                       bycopy.} = object of MathMultipleVarFunctionWithGradient ##
                                                                                           ## !
                                                                                           ## returns
                                                                                           ## the
                                                                                           ## number
                                                                                           ## of
                                                                                           ## variables
                                                                                           ## of
                                                                                           ## the
                                                                                           ## function.
type
  MathNewtonFunctionRoot* {.importcpp: "math_NewtonFunctionRoot",
                           header: "math_NewtonFunctionRoot.hxx", bycopy.} = object ## !
                                                                               ## The
                                                                               ## Newton
                                                                               ## method
                                                                               ## is
                                                                               ## done
                                                                               ## to
                                                                               ## find
                                                                               ## the
                                                                               ## root
                                                                               ## of
                                                                               ## the
                                                                               ## function F
                                                                               ## !
                                                                               ## from
                                                                               ## the
                                                                               ## initial
                                                                               ## guess
                                                                               ## Guess.
                                                                               ## !
                                                                               ## The
                                                                               ## tolerance
                                                                               ## required
                                                                               ## on
                                                                               ## the
                                                                               ## root
                                                                               ## is
                                                                               ## given
                                                                               ## by
                                                                               ## Tolerance.
                                                                               ## !
                                                                               ## The
                                                                               ## solution
                                                                               ## is
                                                                               ## found
                                                                               ## when :
                                                                               ## !
                                                                               ## abs(Xi -
                                                                               ## Xi-1)
                                                                               ## <=
                                                                               ## EpsX
                                                                               ## and
                                                                               ## abs(F(Xi))<=
                                                                               ## EpsF
                                                                               ## !
                                                                               ## The
                                                                               ## maximum
                                                                               ## number
                                                                               ## of
                                                                               ## iterations
                                                                               ## allowed
                                                                               ## is
                                                                               ## given
                                                                               ## by
                                                                               ## NbIterations.
type
  MathNewtonFunctionSetRoot* {.importcpp: "math_NewtonFunctionSetRoot",
                              header: "math_NewtonFunctionSetRoot.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Initialize
                                                                                     ## correctly
                                                                                     ## all
                                                                                     ## the
                                                                                     ## fields
                                                                                     ## of
                                                                                     ## this
                                                                                     ## class.
                                                                                     ##
                                                                                     ## !
                                                                                     ## The
                                                                                     ## range
                                                                                     ## (1,
                                                                                     ## F.NbVariables())
                                                                                     ## must
                                                                                     ## be
                                                                                     ## especially
                                                                                     ## respected
                                                                                     ## for
                                                                                     ##
                                                                                     ## !
                                                                                     ## all
                                                                                     ## vectors
                                                                                     ## and
                                                                                     ## matrix
                                                                                     ## declarations.
type
  MathNewtonMinimum* {.importcpp: "math_NewtonMinimum",
                      header: "math_NewtonMinimum.hxx", bycopy.} = object ## ! The tolerance required on the solution is given by Tolerance.
                                                                     ## ! Iteration are  stopped if
                                                                     ## (!WithSingularity) and H(F(Xi)) is not definite
                                                                     ## ! positive (if the smaller eigenvalue of H < Convexity)
                                                                     ## ! or
                                                                     ## IsConverged() returns True for 2 successives Iterations.
                                                                     ## ! Warning: This constructor does not perform
                                                                     ## computation.
type
  HandleMathNotSquare* = Handle[MathNotSquare]
type
  MathPowell* {.importcpp: "math_Powell", header: "math_Powell.hxx", bycopy.} = object ## !
                                                                               ## Constructor.
                                                                               ## Initialize
                                                                               ## new
                                                                               ## entity.
type
  MathPSO* {.importcpp: "math_PSO", header: "math_PSO.hxx", bycopy.} = object ## *
                                                                      ##  Constructor.
                                                                      ##
                                                                      ##  @param theFunc defines the objective function. It should exist during all lifetime of class instance.
                                                                      ##  @param theLowBorder defines lower border of search space.
                                                                      ##  @param theUppBorder defines upper border of search space.
                                                                      ##  @param theSteps defines steps of regular grid, used for particle generation.
                                                                      ##                     This parameter used to define stop condition (TerminalVelocity).
                                                                      ##  @param theNbParticles defines number of particles.
                                                                      ##  @param theNbIter defines maximum number of iterations.
                                                                      ##
    ##  Lower border.
    ##  Upper border.
    ##  steps used in PSO algorithm.
    ##  Dimension count.
    ##  Particles number.
type
  PSO_Particle* {.importcpp: "PSO_Particle", header: "math_PSOParticlesPool.hxx",
                 bycopy.} = object
    position* {.importc: "Position".}: ptr cfloat ##  Data for pointers allocated within PSOParticlesPool instance.
    velocity* {.importc: "Velocity".}: ptr cfloat ##  Not need to delete it manually.
    bestPosition* {.importc: "BestPosition".}: ptr cfloat
    distance* {.importc: "Distance".}: cfloat
    bestDistance* {.importc: "BestDistance".}: cfloat
type
  MathPSOParticlesPool* {.importcpp: "math_PSOParticlesPool",
                         header: "math_PSOParticlesPool.hxx", bycopy.} = object
    ##  Stores particles vector data.
type
  HandleMathSingularMatrix* = Handle[MathSingularMatrix]
type
  MathSVD* {.importcpp: "math_SVD", header: "math_SVD.hxx", bycopy.} = object ## ! Given as input an n X m matrix A with n < m, n = m or n > m
                                                                      ## ! this
                                                                      ## constructor performs the Singular Value
                                                                      ## Decomposition.
type
  MathTrigonometricEquationFunction* {.importcpp: "math_TrigonometricEquationFunction", header: "math_TrigonometricEquationFunction.hxx",
                                      bycopy.} = object of MathFunctionWithDerivative
type
  MathTrigonometricFunctionRoots* {.importcpp: "math_TrigonometricFunctionRoots", header: "math_TrigonometricFunctionRoots.hxx",
                                   bycopy.} = object ## ! Given coefficients a, b, c, d , e, this constructor
                                                  ## ! performs the resolution of the equation above.
                                                  ## ! The solutions must be contained in [InfBound, SupBound].
                                                  ## ! InfBound and SupBound can be set by default to 0 and 2*PI.
                                                  ## ! is used by the constructors above.
type
  MathUzawa* {.importcpp: "math_Uzawa", header: "math_Uzawa.hxx", bycopy.} = object ## !
                                                                            ## Given an
                                                                            ## input
                                                                            ## matrix
                                                                            ## Cont, two
                                                                            ## input
                                                                            ## vectors
                                                                            ## Secont
                                                                            ## ! and
                                                                            ## StartingPoint, it
                                                                            ## solves
                                                                            ## Cont*X =
                                                                            ## Secont
                                                                            ## (only
                                                                            ## ! =
                                                                            ## equations) with a
                                                                            ## minimization of
                                                                            ## Norme(X-X0).
                                                                            ## ! The
                                                                            ## maximun
                                                                            ## iterations
                                                                            ## number
                                                                            ## allowed is
                                                                            ## fixed to
                                                                            ## !
                                                                            ## NbIterations.
                                                                            ## ! The
                                                                            ## tolerance
                                                                            ## EpsLic is
                                                                            ## fixed for the dual
                                                                            ## variable
                                                                            ## !
                                                                            ## convergence. The
                                                                            ## tolerance
                                                                            ## EpsLix is used for the
                                                                            ## !
                                                                            ## convergence of X.
                                                                            ## !
                                                                            ## Exception
                                                                            ## ConstuctionError is
                                                                            ## raised if the line
                                                                            ## number
                                                                            ## ! of Cont is
                                                                            ## different from the
                                                                            ## length of
                                                                            ## Secont.
                                                                            ## ! Is used
                                                                            ## internally by the two
                                                                            ## constructors
                                                                            ## above.
type
  MathValueAndWeight* {.importcpp: "math_ValueAndWeight",
                       header: "math_ValueAndWeight.hxx", bycopy.} = object
type
  MathVector* {.importcpp: "math_Vector", header: "math_Vector.hxx", bycopy.} = object ## !
                                                                               ## Contructs a
                                                                               ## non-initialized
                                                                               ## vector
                                                                               ## in
                                                                               ## the
                                                                               ## range
                                                                               ## [theLower..theUpper]
                                                                               ## !
                                                                               ## "theLower"
                                                                               ## and
                                                                               ## "theUpper"
                                                                               ## are
                                                                               ## the
                                                                               ## indexes
                                                                               ## of
                                                                               ## the
                                                                               ## lower
                                                                               ## and
                                                                               ## upper
                                                                               ## bounds
                                                                               ## of
                                                                               ## the
                                                                               ## constructed
                                                                               ## vector.
                                                                               ## !
                                                                               ## Is
                                                                               ## used
                                                                               ## internally
                                                                               ## to
                                                                               ## set
                                                                               ## the
                                                                               ## "theLower"
                                                                               ## value
                                                                               ## of
                                                                               ## the
                                                                               ## vector.
