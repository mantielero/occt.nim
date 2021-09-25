##  Created on: 1993-02-17
##  Created by: Remi LEQUETTE
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

## ! The Precision package offers a set of functions defining precision criteria
## ! for use in conventional situations when comparing two numbers.
## ! Generalities
## ! It is not advisable to use floating number equality. Instead, the difference
## ! between numbers must be compared with a given precision, i.e. :
## ! Standard_Real x1, x2 ;
## ! x1 = ...
## ! x2 = ...
## ! If ( x1 == x2 ) ...
## ! should not be used and must be written as indicated below:
## ! Standard_Real x1, x2 ;
## ! Standard_Real Precision = ...
## ! x1 = ...
## ! x2 = ...
## ! If ( Abs ( x1 - x2 ) < Precision ) ...
## ! Likewise, when ordering floating numbers, you must take the following into account :
## ! Standard_Real x1, x2 ;
## ! Standard_Real Precision = ...
## ! x1 = ...       ! a large number
## ! x2 = ...       ! another large number
## ! If ( x1 < x2 - Precision ) ...
## ! is incorrect when x1 and x2 are large numbers ; it is better to write :
## ! Standard_Real x1, x2 ;
## ! Standard_Real Precision = ...
## ! x1 = ...       ! a large number
## ! x2 = ...       ! another large number
## ! If ( x2 - x1 > Precision ) ...
## ! Precision in Cas.Cade
## ! Generally speaking, the precision criterion is not implicit in Cas.Cade. Low-level geometric algorithms accept
## ! precision criteria as arguments. As a rule, they should not refer directly to the precision criteria provided by the
## ! Precision package.
## ! On the other hand, high-level modeling algorithms have to provide the low-level geometric algorithms that they
## ! call, with a precision criteria. One way of doing this is to use the above precision criteria.
## ! Alternatively, the high-level algorithms can have their own system for precision management. For example, the
## ! Topology Data Structure stores precision criteria for each elementary shape (as a vertex, an edge or a face). When
## ! a new topological object is constructed, the precision criteria are taken from those provided by the Precision
## ! package, and stored in the related data structure. Later, a topological algorithm which analyses these objects will
## ! work with the values stored in the data structure. Also, if this algorithm is to build a new topological object, from
## ! these precision criteria, it will compute a new precision criterion for the new topological object, and write it into the
## ! data structure of the new topological object.
## ! The different precision criteria offered by the Precision package, cover the most common requirements of
## ! geometric algorithms, such as intersections, approximations, and so on.
## ! The choice of precision depends on the algorithm and on the geometric space. The geometric space may be :
## ! -   a "real" 2D or 3D space, where the lengths are measured in meters, millimeters, microns, inches, etc ..., or
## ! -   a "parametric" space, 1D on a curve or 2D on a surface, where lengths have no dimension.
## ! The choice of precision criteria for real space depends on the choice of the product, as it is based on the accuracy
## ! of the machine and the unit of measurement.
## ! The choice of precision criteria for parametric space depends on both the accuracy of the machine and the
## ! dimensions of the curve or the surface, since the parametric precision criterion and the real precision criterion are
## ! linked : if the curve is defined by the equation P(t), the inequation :
## ! Abs ( t2 - t1 ) < ParametricPrecision
## ! means that the parameters t1 and t2 are considered to be equal, and the inequation :
## ! Distance ( P(t2) , P(t1) ) < RealPrecision
## ! means that the points P(t1) and P(t2) are considered to be coincident. It seems to be the same idea, and it
## ! would be wonderful if these two inequations were equivalent. Note that this is rarely the case !
## ! What is provided in this package?
## ! The Precision package provides :
## ! -   a set of real space precision criteria for the algorithms, in view of checking distances and angles,
## ! -   a set of parametric space precision criteria for the algorithms, in view of checking both :
## ! -   the equality of parameters in a parametric space,
## ! -   or the coincidence of points in the real space, by using parameter values,
## ! -   the notion of infinite value, composed of a value assumed to be infinite, and checking tests designed to verify
## ! if any value could be considered as infinite.
## ! All the provided functions are very simple. The returned values result from the adaptation of the applications
## ! developed by the Open CASCADE company to Open CASCADE algorithms. The main interest of these functions
## ! lies in that it incites engineers developing applications to ask questions on precision factors. Which one is to be
## ! used in such or such case ? Tolerance criteria are context dependent. They must first choose :
## ! -   either to work in real space,
## ! -   or to work in parametric space,
## ! -   or to work in a combined real and parametric space.
## ! They must next decide which precision factor will give the best answer to the current problem. Within an application
## ! environment, it is crucial to master precision even though this process may take a great deal of time.

type
  Precision* {.importcpp: "Precision", header: "Precision.hxx", bycopy.} = object ## !
                                                                          ## Returns the
                                                                          ## recommended
                                                                          ## precision value
                                                                          ## ! when
                                                                          ## checking the
                                                                          ## equality of two angles (given in
                                                                          ## radians).
                                                                          ## !
                                                                          ## Standard_Real Angle1 = ... , Angle2 = ... ;
                                                                          ## ! If ( Abs( Angle2 - Angle1 ) <
                                                                          ## Precision::Angular() ) ...
                                                                          ## ! The
                                                                          ## tolerance of
                                                                          ## angular
                                                                          ## equality may be used to check the
                                                                          ## parallelism of two
                                                                          ## vectors :
                                                                          ## ! gp_Vec V1, V2 ;
                                                                          ## ! V1 = ...
                                                                          ## ! V2 = ...
                                                                          ## ! If (
                                                                          ## V1.IsParallel (V2,
                                                                          ## Precision::Angular() ) ) ...
                                                                          ## ! The
                                                                          ## tolerance of
                                                                          ## angular
                                                                          ## equality is equal to
                                                                          ## 1.e-12.
                                                                          ## ! Note : The
                                                                          ## tolerance of
                                                                          ## angular
                                                                          ## equality can be used when
                                                                          ## working with scalar
                                                                          ## products or
                                                                          ## ! cross
                                                                          ## products since sines and angles are
                                                                          ## equivalent for small
                                                                          ## angles.
                                                                          ## Therefore, in order to
                                                                          ## ! check
                                                                          ## whether two unit
                                                                          ## vectors are
                                                                          ## perpendicular :
                                                                          ## ! gp_Dir D1, D2 ;
                                                                          ## ! D1 = ...
                                                                          ## ! D2 = ...
                                                                          ## ! you can use :
                                                                          ## ! If ( Abs( D1.D2 ) <
                                                                          ## Precision::Angular() ) ...
                                                                          ## !
                                                                          ## (although the
                                                                          ## function
                                                                          ## IsNormal does
                                                                          ## exist).


proc angular*(): float {.importcpp: "Precision::Angular(@)", header: "Precision.hxx".}
proc confusion*(): float {.importcpp: "Precision::Confusion(@)",
                        header: "Precision.hxx".}
proc squareConfusion*(): float {.importcpp: "Precision::SquareConfusion(@)",
                              header: "Precision.hxx".}
proc intersection*(): float {.importcpp: "Precision::Intersection(@)",
                           header: "Precision.hxx".}
proc approximation*(): float {.importcpp: "Precision::Approximation(@)",
                            header: "Precision.hxx".}
proc parametric*(p: float; t: float): float {.importcpp: "Precision::Parametric(@)",
                                        header: "Precision.hxx".}
proc pConfusion*(t: float): float {.importcpp: "Precision::PConfusion(@)",
                                header: "Precision.hxx".}
proc squarePConfusion*(): float {.importcpp: "Precision::SquarePConfusion(@)",
                               header: "Precision.hxx".}
proc pIntersection*(t: float): float {.importcpp: "Precision::PIntersection(@)",
                                   header: "Precision.hxx".}
proc pApproximation*(t: float): float {.importcpp: "Precision::PApproximation(@)",
                                    header: "Precision.hxx".}
proc parametric*(p: float): float {.importcpp: "Precision::Parametric(@)",
                                header: "Precision.hxx".}
proc pConfusion*(): float {.importcpp: "Precision::PConfusion(@)",
                         header: "Precision.hxx".}
proc pIntersection*(): float {.importcpp: "Precision::PIntersection(@)",
                            header: "Precision.hxx".}
proc pApproximation*(): float {.importcpp: "Precision::PApproximation(@)",
                             header: "Precision.hxx".}
proc isInfinite*(r: float): bool {.importcpp: "Precision::IsInfinite(@)",
                               header: "Precision.hxx".}
proc isPositiveInfinite*(r: float): bool {.importcpp: "Precision::IsPositiveInfinite(@)",
                                       header: "Precision.hxx".}
proc isNegativeInfinite*(r: float): bool {.importcpp: "Precision::IsNegativeInfinite(@)",
                                       header: "Precision.hxx".}
proc infinite*(): float {.importcpp: "Precision::Infinite(@)",
                       header: "Precision.hxx".}
