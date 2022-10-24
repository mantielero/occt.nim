# PROVIDES: Precision
# DEPENDS:

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


