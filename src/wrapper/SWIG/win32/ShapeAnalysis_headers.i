/*

Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_ShapeAnalysis_DataMapNodeOfDataMapOfShapeListOfReal.hxx>
#include<Handle_ShapeAnalysis_DataMapNodeOfDataMapOfShapeReal.hxx>
#include<Handle_ShapeAnalysis_FreeBoundData.hxx>
#include<Handle_ShapeAnalysis_HSequenceOfFreeBounds.hxx>
#include<Handle_ShapeAnalysis_SequenceNodeOfSequenceOfFreeBounds.hxx>
#include<Handle_ShapeAnalysis_Surface.hxx>
#include<Handle_ShapeAnalysis_TransferParameters.hxx>
#include<Handle_ShapeAnalysis_TransferParametersProj.hxx>
#include<Handle_ShapeAnalysis_Wire.hxx>
#include<ShapeAnalysis.hxx>
#include<ShapeAnalysis_BoxBndTree.hxx>
#include<ShapeAnalysis_CheckSmallFace.hxx>
#include<ShapeAnalysis_Curve.hxx>
#include<ShapeAnalysis_DataMapIteratorOfDataMapOfShapeListOfReal.hxx>
#include<ShapeAnalysis_DataMapIteratorOfDataMapOfShapeReal.hxx>
#include<ShapeAnalysis_DataMapNodeOfDataMapOfShapeListOfReal.hxx>
#include<ShapeAnalysis_DataMapNodeOfDataMapOfShapeReal.hxx>
#include<ShapeAnalysis_DataMapOfShapeListOfReal.hxx>
#include<ShapeAnalysis_DataMapOfShapeReal.hxx>
#include<ShapeAnalysis_Edge.hxx>
#include<ShapeAnalysis_FreeBoundData.hxx>
#include<ShapeAnalysis_FreeBounds.hxx>
#include<ShapeAnalysis_FreeBoundsProperties.hxx>
#include<ShapeAnalysis_Geom.hxx>
#include<ShapeAnalysis_HSequenceOfFreeBounds.hxx>
#include<ShapeAnalysis_SequenceNodeOfSequenceOfFreeBounds.hxx>
#include<ShapeAnalysis_SequenceOfFreeBounds.hxx>
#include<ShapeAnalysis_ShapeContents.hxx>
#include<ShapeAnalysis_ShapeTolerance.hxx>
#include<ShapeAnalysis_Shell.hxx>
#include<ShapeAnalysis_Surface.hxx>
#include<ShapeAnalysis_TransferParameters.hxx>
#include<ShapeAnalysis_TransferParametersProj.hxx>
#include<ShapeAnalysis_Wire.hxx>
#include<ShapeAnalysis_WireOrder.hxx>
#include<ShapeAnalysis_WireVertex.hxx>

// Additional headers necessary for compilation.

#include<Geom2dAPI_ExtremaCurveCurve.hxx>
#include<Geom2dAPI_InterCurveCurve.hxx>
#include<Geom2dAPI_Interpolate.hxx>
#include<Geom2dAPI_PointsToBSpline.hxx>
#include<Geom2dAPI_ProjectPointOnCurve.hxx>
#include<Geom2dAdaptor.hxx>
#include<Geom2dAdaptor_Curve.hxx>
#include<Geom2dAdaptor_GHCurve.hxx>
#include<Geom2dAdaptor_HCurve.hxx>
#include<Geom2dConvert.hxx>
#include<Geom2dConvert_ApproxCurve.hxx>
#include<Geom2dConvert_BSplineCurveKnotSplitting.hxx>
#include<Geom2dConvert_BSplineCurveToBezierCurve.hxx>
#include<Geom2dConvert_CompCurveToBSplineCurve.hxx>
#include<Geom2dGcc.hxx>
#include<Geom2dGcc_Circ2d2TanOn.hxx>
#include<Geom2dGcc_Circ2d2TanRad.hxx>
#include<Geom2dGcc_Circ2d3Tan.hxx>
#include<Geom2dGcc_Circ2dTanCen.hxx>
#include<Geom2dGcc_Circ2dTanOnRad.hxx>
#include<Geom2dGcc_CurveTool.hxx>
#include<Geom2dGcc_FuncTCirCuOfMyL2d2Tan.hxx>
#include<Geom2dGcc_FuncTCuCuCuOfMyC2d3Tan.hxx>
#include<Geom2dGcc_FuncTCuCuOfMyL2d2Tan.hxx>
#include<Geom2dGcc_FuncTCuCuOnCuOfMyC2d2TanOn.hxx>
#include<Geom2dGcc_FuncTCuPtOfMyL2d2Tan.hxx>
#include<Geom2dGcc_FuncTOblOfMyL2dTanObl.hxx>
#include<Geom2dGcc_Lin2d2Tan.hxx>
#include<Geom2dGcc_Lin2dTanObl.hxx>
#include<Geom2dGcc_MyC2d2TanOn.hxx>
#include<Geom2dGcc_MyC2d3Tan.hxx>
#include<Geom2dGcc_MyCirc2d2TanOn.hxx>
#include<Geom2dGcc_MyCirc2d2TanRad.hxx>
#include<Geom2dGcc_MyCirc2dTanCen.hxx>
#include<Geom2dGcc_MyCirc2dTanOnRad.hxx>
#include<Geom2dGcc_MyCurveTool.hxx>
#include<Geom2dGcc_MyL2d2Tan.hxx>
#include<Geom2dGcc_MyL2dTanObl.hxx>
#include<Geom2dGcc_MyQCurve.hxx>
#include<Geom2dGcc_QualifiedCurve.hxx>
#include<Geom2dHatch_ClassifierOfHatcher.hxx>
#include<Geom2dHatch_DataMapIteratorOfHatchingsOfHatcher.hxx>
#include<Geom2dHatch_DataMapIteratorOfMapOfElementsOfElementsOfHatcher.hxx>
#include<Geom2dHatch_DataMapNodeOfHatchingsOfHatcher.hxx>
#include<Geom2dHatch_DataMapNodeOfMapOfElementsOfElementsOfHatcher.hxx>
#include<Geom2dHatch_ElementOfHatcher.hxx>
#include<Geom2dHatch_ElementsOfHatcher.hxx>
#include<Geom2dHatch_FClass2dOfClassifierOfHatcher.hxx>
#include<Geom2dHatch_Hatcher.hxx>
#include<Geom2dHatch_HatchingOfHatcher.hxx>
#include<Geom2dHatch_HatchingsOfHatcher.hxx>
#include<Geom2dHatch_Intersector.hxx>
#include<Geom2dHatch_MapOfElementsOfElementsOfHatcher.hxx>
#include<Geom2dInt_ExactIntersectionPointOfTheIntPCurvePCurveOfGInter.hxx>
#include<Geom2dInt_GInter.hxx>
#include<Geom2dInt_Geom2dCurveTool.hxx>
#include<Geom2dInt_IntConicCurveOfGInter.hxx>
#include<Geom2dInt_InterferencePoly2dOfTheIntPCurvePCurveOfGInter.hxx>
#include<Geom2dInt_MyImpParToolOfTheIntersectorOfTheIntConicCurveOfGInter.hxx>
#include<Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx>
#include<Geom2dInt_SeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx>
#include<Geom2dInt_SequenceNodeOfSeqPCOfPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx>
#include<Geom2dInt_TheCurveLocatorOfTheProjPCurOfGInter.hxx>
#include<Geom2dInt_TheDistBetweenPCurvesOfTheIntPCurvePCurveOfGInter.hxx>
#include<Geom2dInt_TheIntConicCurveOfGInter.hxx>
#include<Geom2dInt_TheIntPCurvePCurveOfGInter.hxx>
#include<Geom2dInt_TheIntersectorOfTheIntConicCurveOfGInter.hxx>
#include<Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter.hxx>
#include<Geom2dInt_ThePolygon2dOfTheIntPCurvePCurveOfGInter.hxx>
#include<Geom2dInt_ThePolygon2dToolOfTheIntPCurvePCurveOfGInter.hxx>
#include<Geom2dInt_TheProjPCurOfGInter.hxx>
#include<Geom2dLProp_CLProps2d.hxx>
#include<Geom2dLProp_CurAndInf2d.hxx>
#include<Geom2dLProp_Curve2dTool.hxx>
#include<Geom2dLProp_FCurExtOfNumericCurInf2d.hxx>
#include<Geom2dLProp_FCurNulOfNumericCurInf2d.hxx>
#include<Geom2dLProp_NumericCurInf2d.hxx>
#include<Geom2dToIGES_Geom2dCurve.hxx>
#include<Geom2dToIGES_Geom2dEntity.hxx>
#include<Geom2dToIGES_Geom2dPoint.hxx>
#include<Geom2dToIGES_Geom2dVector.hxx>
#include<Geom2d_AxisPlacement.hxx>
#include<Geom2d_BSplineCurve.hxx>
#include<Geom2d_BezierCurve.hxx>
#include<Geom2d_BoundedCurve.hxx>
#include<Geom2d_CartesianPoint.hxx>
#include<Geom2d_Circle.hxx>
#include<Geom2d_Conic.hxx>
#include<Geom2d_Curve.hxx>
#include<Geom2d_Direction.hxx>
#include<Geom2d_Ellipse.hxx>
#include<Geom2d_Geometry.hxx>
#include<Geom2d_Hyperbola.hxx>
#include<Geom2d_Line.hxx>
#include<Geom2d_OffsetCurve.hxx>
#include<Geom2d_Parabola.hxx>
#include<Geom2d_Point.hxx>
#include<Geom2d_Transformation.hxx>
#include<Geom2d_TrimmedCurve.hxx>
#include<Geom2d_UndefinedDerivative.hxx>
#include<Geom2d_UndefinedValue.hxx>
#include<Geom2d_Vector.hxx>
#include<Geom2d_VectorWithMagnitude.hxx>
#include<GeomAPI.hxx>
#include<GeomAPI_ExtremaCurveCurve.hxx>
#include<GeomAPI_ExtremaCurveSurface.hxx>
#include<GeomAPI_ExtremaSurfaceSurface.hxx>
#include<GeomAPI_IntCS.hxx>
#include<GeomAPI_IntSS.hxx>
#include<GeomAPI_Interpolate.hxx>
#include<GeomAPI_PointsToBSpline.hxx>
#include<GeomAPI_PointsToBSplineSurface.hxx>
#include<GeomAPI_ProjectPointOnCurve.hxx>
#include<GeomAPI_ProjectPointOnSurf.hxx>
#include<GeomAbs_BSplKnotDistribution.hxx>
#include<GeomAbs_CurveForm.hxx>
#include<GeomAbs_CurveType.hxx>
#include<GeomAbs_IsoType.hxx>
#include<GeomAbs_JoinType.hxx>
#include<GeomAbs_Shape.hxx>
#include<GeomAbs_SurfaceForm.hxx>
#include<GeomAbs_SurfaceType.hxx>
#include<GeomAbs_UVSense.hxx>
#include<GeomAdaptor.hxx>
#include<GeomAdaptor_Curve.hxx>
#include<GeomAdaptor_GHCurve.hxx>
#include<GeomAdaptor_GHSurface.hxx>
#include<GeomAdaptor_HCurve.hxx>
#include<GeomAdaptor_HSurface.hxx>
#include<GeomAdaptor_Surface.hxx>
#include<GeomConvert.hxx>
#include<GeomConvert_ApproxCurve.hxx>
#include<GeomConvert_ApproxSurface.hxx>
#include<GeomConvert_BSplineCurveKnotSplitting.hxx>
#include<GeomConvert_BSplineCurveToBezierCurve.hxx>
#include<GeomConvert_BSplineSurfaceKnotSplitting.hxx>
#include<GeomConvert_BSplineSurfaceToBezierSurface.hxx>
#include<GeomConvert_CompBezierSurfacesToBSplineSurface.hxx>
#include<GeomConvert_CompCurveToBSplineCurve.hxx>
#include<GeomFill.hxx>
#include<GeomFill_AppSurf.hxx>
#include<GeomFill_AppSweep.hxx>
#include<GeomFill_ApproxStyle.hxx>
#include<GeomFill_Array1OfLocationLaw.hxx>
#include<GeomFill_Array1OfSectionLaw.hxx>
#include<GeomFill_BSplineCurves.hxx>
#include<GeomFill_BezierCurves.hxx>
#include<GeomFill_BoundWithSurf.hxx>
#include<GeomFill_Boundary.hxx>
#include<GeomFill_CircularBlendFunc.hxx>
#include<GeomFill_ConstantBiNormal.hxx>
#include<GeomFill_ConstrainedFilling.hxx>
#include<GeomFill_Coons.hxx>
#include<GeomFill_CoonsAlgPatch.hxx>
#include<GeomFill_CornerState.hxx>
#include<GeomFill_CorrectedFrenet.hxx>
#include<GeomFill_CurveAndTrihedron.hxx>
#include<GeomFill_Curved.hxx>
#include<GeomFill_Darboux.hxx>
#include<GeomFill_DegeneratedBound.hxx>
#include<GeomFill_DraftTrihedron.hxx>
#include<GeomFill_EvolvedSection.hxx>
#include<GeomFill_Filling.hxx>
#include<GeomFill_FillingStyle.hxx>
#include<GeomFill_Fixed.hxx>
#include<GeomFill_Frenet.hxx>
#include<GeomFill_FunctionDraft.hxx>
#include<GeomFill_FunctionGuide.hxx>
#include<GeomFill_Generator.hxx>
#include<GeomFill_GuideTrihedronAC.hxx>
#include<GeomFill_GuideTrihedronPlan.hxx>
#include<GeomFill_HArray1OfLocationLaw.hxx>
#include<GeomFill_HArray1OfSectionLaw.hxx>
#include<GeomFill_Line.hxx>
#include<GeomFill_LocFunction.hxx>
#include<GeomFill_LocationDraft.hxx>
#include<GeomFill_LocationGuide.hxx>
#include<GeomFill_LocationLaw.hxx>
#include<GeomFill_NSections.hxx>
#include<GeomFill_Pipe.hxx>
#include<GeomFill_PipeError.hxx>
#include<GeomFill_PlanFunc.hxx>
#include<GeomFill_PolynomialConvertor.hxx>
#include<GeomFill_Profiler.hxx>
#include<GeomFill_QuasiAngularConvertor.hxx>
#include<GeomFill_SectionGenerator.hxx>
#include<GeomFill_SectionLaw.hxx>
#include<GeomFill_SectionPlacement.hxx>
#include<GeomFill_SequenceNodeOfSequenceOfCurve.hxx>
#include<GeomFill_SequenceNodeOfSequenceOfTrsf.hxx>
#include<GeomFill_SequenceOfCurve.hxx>
#include<GeomFill_SequenceOfTrsf.hxx>
#include<GeomFill_SimpleBound.hxx>
#include<GeomFill_SnglrFunc.hxx>
#include<GeomFill_Stretch.hxx>
#include<GeomFill_Sweep.hxx>
#include<GeomFill_SweepFunction.hxx>
#include<GeomFill_SweepSectionGenerator.hxx>
#include<GeomFill_Tensor.hxx>
#include<GeomFill_TgtField.hxx>
#include<GeomFill_TgtOnCoons.hxx>
#include<GeomFill_Trihedron.hxx>
#include<GeomFill_TrihedronLaw.hxx>
#include<GeomFill_TrihedronWithGuide.hxx>
#include<GeomFill_UniformSection.hxx>
#include<GeomInt_BSpGradient_BFGSOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx>
#include<GeomInt_BSpParFunctionOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx>
#include<GeomInt_BSpParLeastSquareOfMyBSplGradientOfTheComputeLineOfWLApprox.hxx>
#include<GeomInt_Gradient_BFGSOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx>
#include<GeomInt_Gradient_BFGSOfMyGradientbisOfTheComputeLineOfWLApprox.hxx>
#include<GeomInt_IntSS.hxx>
#include<GeomInt_LineConstructor.hxx>
#include<GeomInt_LineTool.hxx>
#include<GeomInt_MyBSplGradientOfTheComputeLineOfWLApprox.hxx>
#include<GeomInt_MyGradientOfTheComputeLineBezierOfWLApprox.hxx>
#include<GeomInt_MyGradientbisOfTheComputeLineOfWLApprox.hxx>
#include<GeomInt_ParFunctionOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx>
#include<GeomInt_ParFunctionOfMyGradientbisOfTheComputeLineOfWLApprox.hxx>
#include<GeomInt_ParLeastSquareOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx>
#include<GeomInt_ParLeastSquareOfMyGradientbisOfTheComputeLineOfWLApprox.hxx>
#include<GeomInt_ParameterAndOrientation.hxx>
#include<GeomInt_ResConstraintOfMyGradientOfTheComputeLineBezierOfWLApprox.hxx>
#include<GeomInt_ResConstraintOfMyGradientbisOfTheComputeLineOfWLApprox.hxx>
#include<GeomInt_SequenceNodeOfSequenceOfParameterAndOrientation.hxx>
#include<GeomInt_SequenceOfParameterAndOrientation.hxx>
#include<GeomInt_TheComputeLineBezierOfWLApprox.hxx>
#include<GeomInt_TheComputeLineOfWLApprox.hxx>
#include<GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx>
#include<GeomInt_TheImpPrmSvSurfacesOfWLApprox.hxx>
#include<GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox.hxx>
#include<GeomInt_TheMultiLineOfWLApprox.hxx>
#include<GeomInt_TheMultiLineToolOfWLApprox.hxx>
#include<GeomInt_ThePrmPrmSvSurfacesOfWLApprox.hxx>
#include<GeomInt_TheZerImpFuncOfTheImpPrmSvSurfacesOfWLApprox.hxx>
#include<GeomInt_WLApprox.hxx>
#include<GeomLProp.hxx>
#include<GeomLProp_CLProps.hxx>
#include<GeomLProp_CurveTool.hxx>
#include<GeomLProp_SLProps.hxx>
#include<GeomLProp_SurfaceTool.hxx>
#include<GeomLib.hxx>
#include<GeomLib_Array1OfMat.hxx>
#include<GeomLib_Check2dBSplineCurve.hxx>
#include<GeomLib_CheckBSplineCurve.hxx>
#include<GeomLib_DenominatorMultiplier.hxx>
#include<GeomLib_DenominatorMultiplierPtr.hxx>
#include<GeomLib_Interpolate.hxx>
#include<GeomLib_InterpolationErrors.hxx>
#include<GeomLib_IsPlanarSurface.hxx>
#include<GeomLib_LogSample.hxx>
#include<GeomLib_MakeCurvefromApprox.hxx>
#include<GeomLib_PolyFunc.hxx>
#include<GeomLib_Tool.hxx>
#include<GeomPlate_Aij.hxx>
#include<GeomPlate_Array1OfHCurveOnSurface.hxx>
#include<GeomPlate_Array1OfSequenceOfReal.hxx>
#include<GeomPlate_BuildAveragePlane.hxx>
#include<GeomPlate_BuildPlateSurface.hxx>
#include<GeomPlate_CurveConstraint.hxx>
#include<GeomPlate_HArray1OfHCurveOnSurface.hxx>
#include<GeomPlate_HArray1OfSequenceOfReal.hxx>
#include<GeomPlate_HSequenceOfCurveConstraint.hxx>
#include<GeomPlate_HSequenceOfPointConstraint.hxx>
#include<GeomPlate_MakeApprox.hxx>
#include<GeomPlate_PlateG0Criterion.hxx>
#include<GeomPlate_PlateG1Criterion.hxx>
#include<GeomPlate_PointConstraint.hxx>
#include<GeomPlate_SequenceNodeOfSequenceOfAij.hxx>
#include<GeomPlate_SequenceNodeOfSequenceOfCurveConstraint.hxx>
#include<GeomPlate_SequenceNodeOfSequenceOfPointConstraint.hxx>
#include<GeomPlate_SequenceOfAij.hxx>
#include<GeomPlate_SequenceOfCurveConstraint.hxx>
#include<GeomPlate_SequenceOfPointConstraint.hxx>
#include<GeomPlate_Surface.hxx>
#include<GeomProjLib.hxx>
#include<GeomToIGES_GeomCurve.hxx>
#include<GeomToIGES_GeomEntity.hxx>
#include<GeomToIGES_GeomPoint.hxx>
#include<GeomToIGES_GeomSurface.hxx>
#include<GeomToIGES_GeomVector.hxx>
#include<GeomToStep_MakeAxis1Placement.hxx>
#include<GeomToStep_MakeAxis2Placement2d.hxx>
#include<GeomToStep_MakeAxis2Placement3d.hxx>
#include<GeomToStep_MakeBSplineCurveWithKnots.hxx>
#include<GeomToStep_MakeBSplineCurveWithKnotsAndRationalBSplineCurve.hxx>
#include<GeomToStep_MakeBSplineSurfaceWithKnots.hxx>
#include<GeomToStep_MakeBSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx>
#include<GeomToStep_MakeBoundedCurve.hxx>
#include<GeomToStep_MakeBoundedSurface.hxx>
#include<GeomToStep_MakeCartesianPoint.hxx>
#include<GeomToStep_MakeCircle.hxx>
#include<GeomToStep_MakeConic.hxx>
#include<GeomToStep_MakeConicalSurface.hxx>
#include<GeomToStep_MakeCurve.hxx>
#include<GeomToStep_MakeCylindricalSurface.hxx>
#include<GeomToStep_MakeDirection.hxx>
#include<GeomToStep_MakeElementarySurface.hxx>
#include<GeomToStep_MakeEllipse.hxx>
#include<GeomToStep_MakeHyperbola.hxx>
#include<GeomToStep_MakeLine.hxx>
#include<GeomToStep_MakeParabola.hxx>
#include<GeomToStep_MakePlane.hxx>
#include<GeomToStep_MakePolyline.hxx>
#include<GeomToStep_MakeRectangularTrimmedSurface.hxx>
#include<GeomToStep_MakeSphericalSurface.hxx>
#include<GeomToStep_MakeSurface.hxx>
#include<GeomToStep_MakeSurfaceOfLinearExtrusion.hxx>
#include<GeomToStep_MakeSurfaceOfRevolution.hxx>
#include<GeomToStep_MakeSweptSurface.hxx>
#include<GeomToStep_MakeToroidalSurface.hxx>
#include<GeomToStep_MakeVector.hxx>
#include<GeomToStep_Root.hxx>
#include<GeomTools.hxx>
#include<GeomTools_Curve2dSet.hxx>
#include<GeomTools_CurveSet.hxx>
#include<GeomTools_SurfaceSet.hxx>
#include<GeomTools_UndefinedTypeHandler.hxx>
#include<Geom_Axis1Placement.hxx>
#include<Geom_Axis2Placement.hxx>
#include<Geom_AxisPlacement.hxx>
#include<Geom_BSplineCurve.hxx>
#include<Geom_BSplineSurface.hxx>
#include<Geom_BezierCurve.hxx>
#include<Geom_BezierSurface.hxx>
#include<Geom_BoundedCurve.hxx>
#include<Geom_BoundedSurface.hxx>
#include<Geom_CartesianPoint.hxx>
#include<Geom_Circle.hxx>
#include<Geom_Conic.hxx>
#include<Geom_ConicalSurface.hxx>
#include<Geom_Curve.hxx>
#include<Geom_CylindricalSurface.hxx>
#include<Geom_Direction.hxx>
#include<Geom_ElementarySurface.hxx>
#include<Geom_Ellipse.hxx>
#include<Geom_Geometry.hxx>
#include<Geom_HSequenceOfBSplineSurface.hxx>
#include<Geom_HSequenceOfSurface.hxx>
#include<Geom_Hyperbola.hxx>
#include<Geom_Line.hxx>
#include<Geom_OffsetCurve.hxx>
#include<Geom_OffsetSurface.hxx>
#include<Geom_OsculatingSurface.hxx>
#include<Geom_Parabola.hxx>
#include<Geom_Plane.hxx>
#include<Geom_Point.hxx>
#include<Geom_RectangularTrimmedSurface.hxx>
#include<Geom_SequenceNodeOfSequenceOfBSplineSurface.hxx>
#include<Geom_SequenceNodeOfSequenceOfSurface.hxx>
#include<Geom_SequenceOfBSplineSurface.hxx>
#include<Geom_SequenceOfSurface.hxx>
#include<Geom_SphericalSurface.hxx>
#include<Geom_Surface.hxx>
#include<Geom_SurfaceOfLinearExtrusion.hxx>
#include<Geom_SurfaceOfRevolution.hxx>
#include<Geom_SweptSurface.hxx>
#include<Geom_ToroidalSurface.hxx>
#include<Geom_Transformation.hxx>
#include<Geom_TrimmedCurve.hxx>
#include<Geom_UndefinedDerivative.hxx>
#include<Geom_UndefinedValue.hxx>
#include<Geom_Vector.hxx>
#include<Geom_VectorWithMagnitude.hxx>
#include<Handle_Message_Algorithm.hxx>
#include<Message.hxx>
#include<Message_Gravity.hxx>
#include<Message_ListIteratorOfListOfMsg.hxx>
#include<Message_ListNodeOfListOfMsg.hxx>
#include<Message_ListOfMsg.hxx>
#include<Message_Messenger.hxx>
#include<Message_Msg.hxx>
#include<Message_MsgFile.hxx>
#include<Message_Printer.hxx>
#include<Message_PrinterOStream.hxx>
#include<Message_ProgressIndicator.hxx>
#include<Message_ProgressScale.hxx>
#include<Message_ProgressSentry.hxx>
#include<Message_SequenceNodeOfSequenceOfPrinters.hxx>
#include<Message_SequenceNodeOfSequenceOfProgressScale.hxx>
#include<Message_SequenceOfPrinters.hxx>
#include<Message_SequenceOfProgressScale.hxx>
#include<Message_Status.hxx>
#include<Message_StatusType.hxx>
#include<TCollection.hxx>
#include<TCollection_AVLBaseNode.hxx>
#include<TCollection_AVLBaseNodePtr.hxx>
#include<TCollection_Array1Descriptor.hxx>
#include<TCollection_Array2Descriptor.hxx>
#include<TCollection_AsciiString.hxx>
#include<TCollection_BaseSequence.hxx>
#include<TCollection_BasicMap.hxx>
#include<TCollection_BasicMapIterator.hxx>
#include<TCollection_CompareOfInteger.hxx>
#include<TCollection_CompareOfReal.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TCollection_HAsciiString.hxx>
#include<TCollection_HExtendedString.hxx>
#include<TCollection_MapNode.hxx>
#include<TCollection_MapNodePtr.hxx>
#include<TCollection_PrivCompareOfInteger.hxx>
#include<TCollection_PrivCompareOfReal.hxx>
#include<TCollection_SeqNode.hxx>
#include<TCollection_SeqNodePtr.hxx>
#include<TCollection_Side.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<TopoDS_Shape.hxx>
#include<Handle_TopTools_HSequenceOfShape.hxx>
#include<TopTools_DataMapOfShapeShape.hxx>
#include<TopoDS_Compound.hxx>
#include<ShapeAnalysis.hxx>
#include<TopoDS_Wire.hxx>
#include<TopoDS_Face.hxx>
#include<Handle_ShapeExtend_WireData.hxx>
#include<TopoDS_Vertex.hxx>
#include<TopoDS_Edge.hxx>
#include<Handle_TColStd_HSequenceOfReal.hxx>
#include<Handle_Geom_Curve.hxx>
#include<gp_Pnt.hxx>
#include<Adaptor3d_Curve.hxx>
#include<Handle_Geom2d_Curve.hxx>
#include<Bnd_Box2d.hxx>
#include<TColgp_Array1OfPnt.hxx>
#include<gp_XYZ.hxx>
#include<TColgp_SequenceOfPnt2d.hxx>
#include<TColgp_SequenceOfPnt.hxx>
#include<Handle_Geom_Surface.hxx>
#include<TopLoc_Location.hxx>
#include<gp_Pnt2d.hxx>
#include<gp_Vec2d.hxx>
#include<TColStd_ListOfReal.hxx>
#include<TopTools_DataMapOfShapeListOfShape.hxx>
#include<gp_XY.hxx>
#include<IntRes2d_SequenceOfIntersectionPoint.hxx>
#include<TColStd_SequenceOfReal.hxx>
#include<TopTools_IndexedMapOfShape.hxx>
#include<TopTools_MapOfShape.hxx>
#include<gp_Pln.hxx>
#include<Handle_TColStd_HArray2OfReal.hxx>
#include<gp_Trsf.hxx>
#include<TColgp_Array1OfPnt2d.hxx>
%}
