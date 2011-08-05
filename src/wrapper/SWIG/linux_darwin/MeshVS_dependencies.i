/*

Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%{
#include <AIS_AngleDimension.hxx>
#include <AIS_AttributeFilter.hxx>
#include <AIS_Axis.hxx>
#include <AIS_BadEdgeFilter.hxx>
#include <AIS_C0RegularityFilter.hxx>
#include <AIS_Chamf2dDimension.hxx>
#include <AIS_Chamf3dDimension.hxx>
#include <AIS_Circle.hxx>
#include <AIS_ClearMode.hxx>
#include <AIS_ConcentricRelation.hxx>
#include <AIS_ConnectStatus.hxx>
#include <AIS_ConnectedInteractive.hxx>
#include <AIS_ConnectedShape.hxx>
#include <AIS_DataMapIteratorOfDataMapOfILC.hxx>
#include <AIS_DataMapIteratorOfDataMapOfIOStatus.hxx>
#include <AIS_DataMapIteratorOfDataMapOfSelStat.hxx>
#include <AIS_DataMapIteratorOfDataMapofIntegerListOfinteractive.hxx>
#include <AIS_DataMapNodeOfDataMapOfILC.hxx>
#include <AIS_DataMapNodeOfDataMapOfIOStatus.hxx>
#include <AIS_DataMapNodeOfDataMapOfSelStat.hxx>
#include <AIS_DataMapNodeOfDataMapofIntegerListOfinteractive.hxx>
#include <AIS_DataMapOfILC.hxx>
#include <AIS_DataMapOfIOStatus.hxx>
#include <AIS_DataMapOfSelStat.hxx>
#include <AIS_DataMapofIntegerListOfinteractive.hxx>
#include <AIS_DiameterDimension.hxx>
#include <AIS_DimensionOwner.hxx>
#include <AIS_DisplayMode.hxx>
#include <AIS_DisplayStatus.hxx>
#include <AIS_Drawer.hxx>
#include <AIS_EllipseRadiusDimension.hxx>
#include <AIS_EqualDistanceRelation.hxx>
#include <AIS_EqualRadiusRelation.hxx>
#include <AIS_ExclusionFilter.hxx>
#include <AIS_FixRelation.hxx>
#include <AIS_GlobalStatus.hxx>
#include <AIS_GraphicTool.hxx>
#include <AIS_IdenticRelation.hxx>
#include <AIS_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs.hxx>
#include <AIS_IndexedDataMapOfOwnerPrs.hxx>
#include <AIS_InteractiveContext.hxx>
#include <AIS_InteractiveObject.hxx>
#include <AIS_KindOfDimension.hxx>
#include <AIS_KindOfInteractive.hxx>
#include <AIS_KindOfSurface.hxx>
#include <AIS_KindOfUnit.hxx>
#include <AIS_LengthDimension.hxx>
#include <AIS_Line.hxx>
#include <AIS_ListIteratorOfListOfInteractive.hxx>
#include <AIS_ListNodeOfListOfInteractive.hxx>
#include <AIS_ListOfInteractive.hxx>
#include <AIS_LocalContext.hxx>
#include <AIS_LocalStatus.hxx>
#include <AIS_MapIteratorOfMapOfInteractive.hxx>
#include <AIS_MapOfInteractive.hxx>
#include <AIS_MaxRadiusDimension.hxx>
#include <AIS_MidPointRelation.hxx>
#include <AIS_MinRadiusDimension.hxx>
#include <AIS_MultipleConnectedInteractive.hxx>
#include <AIS_MultipleConnectedShape.hxx>
#include <AIS_NDataMapOfTransientIteratorOfListTransient.hxx>
#include <AIS_NListIteratorOfListTransient.hxx>
#include <AIS_NListTransient.hxx>
#include <AIS_OffsetDimension.hxx>
#include <AIS_PToContext.hxx>
#include <AIS_ParallelRelation.hxx>
#include <AIS_PerpendicularRelation.hxx>
#include <AIS_Plane.hxx>
#include <AIS_PlaneTrihedron.hxx>
#include <AIS_Point.hxx>
#include <AIS_RadiusDimension.hxx>
#include <AIS_Relation.hxx>
#include <AIS_SelectStatus.hxx>
#include <AIS_Selection.hxx>
#include <AIS_SequenceNodeOfSequenceOfDimension.hxx>
#include <AIS_SequenceNodeOfSequenceOfInteractive.hxx>
#include <AIS_SequenceOfDimension.hxx>
#include <AIS_SequenceOfInteractive.hxx>
#include <AIS_Shape.hxx>
#include <AIS_SignatureFilter.hxx>
#include <AIS_StandardDatum.hxx>
#include <AIS_StatusOfDetection.hxx>
#include <AIS_StatusOfPick.hxx>
#include <AIS_StdMapNodeOfMapOfInteractive.hxx>
#include <AIS_SymmetricRelation.hxx>
#include <AIS_TangentRelation.hxx>
#include <AIS_TexturedShape.hxx>
#include <AIS_Triangulation.hxx>
#include <AIS_Trihedron.hxx>
#include <AIS_TypeFilter.hxx>
#include <AIS_TypeOfAttribute.hxx>
#include <AIS_TypeOfAxis.hxx>
#include <AIS_TypeOfDist.hxx>
#include <AIS_TypeOfIso.hxx>
#include <AIS_TypeOfPlane.hxx>
#include <Handle_AIS_AngleDimension.hxx>
#include <Handle_AIS_AttributeFilter.hxx>
#include <Handle_AIS_Axis.hxx>
#include <Handle_AIS_BadEdgeFilter.hxx>
#include <Handle_AIS_C0RegularityFilter.hxx>
#include <Handle_AIS_Chamf2dDimension.hxx>
#include <Handle_AIS_Chamf3dDimension.hxx>
#include <Handle_AIS_Circle.hxx>
#include <Handle_AIS_ConcentricRelation.hxx>
#include <Handle_AIS_ConnectedInteractive.hxx>
#include <Handle_AIS_ConnectedShape.hxx>
#include <Handle_AIS_DataMapNodeOfDataMapOfILC.hxx>
#include <Handle_AIS_DataMapNodeOfDataMapOfIOStatus.hxx>
#include <Handle_AIS_DataMapNodeOfDataMapOfSelStat.hxx>
#include <Handle_AIS_DataMapNodeOfDataMapofIntegerListOfinteractive.hxx>
#include <Handle_AIS_DiameterDimension.hxx>
#include <Handle_AIS_DimensionOwner.hxx>
#include <Handle_AIS_Drawer.hxx>
#include <Handle_AIS_EllipseRadiusDimension.hxx>
#include <Handle_AIS_EqualDistanceRelation.hxx>
#include <Handle_AIS_EqualRadiusRelation.hxx>
#include <Handle_AIS_ExclusionFilter.hxx>
#include <Handle_AIS_FixRelation.hxx>
#include <Handle_AIS_GlobalStatus.hxx>
#include <Handle_AIS_IdenticRelation.hxx>
#include <Handle_AIS_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs.hxx>
#include <Handle_AIS_InteractiveContext.hxx>
#include <Handle_AIS_InteractiveObject.hxx>
#include <Handle_AIS_LengthDimension.hxx>
#include <Handle_AIS_Line.hxx>
#include <Handle_AIS_ListNodeOfListOfInteractive.hxx>
#include <Handle_AIS_LocalContext.hxx>
#include <Handle_AIS_LocalStatus.hxx>
#include <Handle_AIS_MaxRadiusDimension.hxx>
#include <Handle_AIS_MidPointRelation.hxx>
#include <Handle_AIS_MinRadiusDimension.hxx>
#include <Handle_AIS_MultipleConnectedInteractive.hxx>
#include <Handle_AIS_MultipleConnectedShape.hxx>
#include <Handle_AIS_OffsetDimension.hxx>
#include <Handle_AIS_ParallelRelation.hxx>
#include <Handle_AIS_PerpendicularRelation.hxx>
#include <Handle_AIS_Plane.hxx>
#include <Handle_AIS_PlaneTrihedron.hxx>
#include <Handle_AIS_Point.hxx>
#include <Handle_AIS_RadiusDimension.hxx>
#include <Handle_AIS_Relation.hxx>
#include <Handle_AIS_Selection.hxx>
#include <Handle_AIS_SequenceNodeOfSequenceOfDimension.hxx>
#include <Handle_AIS_SequenceNodeOfSequenceOfInteractive.hxx>
#include <Handle_AIS_Shape.hxx>
#include <Handle_AIS_SignatureFilter.hxx>
#include <Handle_AIS_StdMapNodeOfMapOfInteractive.hxx>
#include <Handle_AIS_SymmetricRelation.hxx>
#include <Handle_AIS_TangentRelation.hxx>
#include <Handle_AIS_TexturedShape.hxx>
#include <Handle_AIS_Triangulation.hxx>
#include <Handle_AIS_Trihedron.hxx>
#include <Handle_AIS_TypeFilter.hxx>
#include <Handle_MMgt_TShared.hxx>
#include <Handle_Quantity_ColorDefinitionError.hxx>
#include <Handle_Quantity_DateDefinitionError.hxx>
#include <Handle_Quantity_HArray1OfColor.hxx>
#include <Handle_Quantity_PeriodDefinitionError.hxx>
#include <Handle_Select3D_ListNodeOfListOfSensitive.hxx>
#include <Handle_Select3D_ListNodeOfListOfSensitiveTriangle.hxx>
#include <Handle_Select3D_Projector.hxx>
#include <Handle_Select3D_SensitiveBox.hxx>
#include <Handle_Select3D_SensitiveCircle.hxx>
#include <Handle_Select3D_SensitiveCurve.hxx>
#include <Handle_Select3D_SensitiveEntity.hxx>
#include <Handle_Select3D_SensitiveFace.hxx>
#include <Handle_Select3D_SensitiveGroup.hxx>
#include <Handle_Select3D_SensitivePoint.hxx>
#include <Handle_Select3D_SensitivePoly.hxx>
#include <Handle_Select3D_SensitiveSegment.hxx>
#include <Handle_Select3D_SensitiveTriangle.hxx>
#include <Handle_Select3D_SensitiveTriangulation.hxx>
#include <Handle_Select3D_SensitiveWire.hxx>
#include <Handle_Select3D_SequenceNodeOfSensitiveEntitySequence.hxx>
#include <Handle_SelectBasics_EntityOwner.hxx>
#include <Handle_SelectBasics_ListNodeOfListOfBox2d.hxx>
#include <Handle_SelectBasics_ListNodeOfListOfSensitive.hxx>
#include <Handle_SelectBasics_SensitiveEntity.hxx>
#include <Handle_SelectBasics_SequenceNodeOfSequenceOfOwner.hxx>
#include <Handle_SelectMgr_AndFilter.hxx>
#include <Handle_SelectMgr_CompositionFilter.hxx>
#include <Handle_SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive.hxx>
#include <Handle_SelectMgr_DataMapNodeOfDataMapOfObjectSelectors.hxx>
#include <Handle_SelectMgr_DataMapNodeOfDataMapOfSelectionActivation.hxx>
#include <Handle_SelectMgr_EntityOwner.hxx>
#include <Handle_SelectMgr_Filter.hxx>
#include <Handle_SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion.hxx>
#include <Handle_SelectMgr_IndexedMapNodeOfIndexedMapOfOwner.hxx>
#include <Handle_SelectMgr_ListNodeOfListOfFilter.hxx>
#include <Handle_SelectMgr_OrFilter.hxx>
#include <Handle_SelectMgr_SelectableObject.hxx>
#include <Handle_SelectMgr_Selection.hxx>
#include <Handle_SelectMgr_SelectionManager.hxx>
#include <Handle_SelectMgr_SequenceNodeOfSequenceOfFilter.hxx>
#include <Handle_SelectMgr_SequenceNodeOfSequenceOfOwner.hxx>
#include <Handle_SelectMgr_SequenceNodeOfSequenceOfSelection.hxx>
#include <Handle_SelectMgr_SequenceNodeOfSequenceOfSelector.hxx>
#include <Handle_SelectMgr_ViewerSelector.hxx>
#include <Handle_Standard_AbortiveTransaction.hxx>
#include <Handle_Standard_ConstructionError.hxx>
#include <Handle_Standard_DimensionError.hxx>
#include <Handle_Standard_DimensionMismatch.hxx>
#include <Handle_Standard_DivideByZero.hxx>
#include <Handle_Standard_DomainError.hxx>
#include <Handle_Standard_Failure.hxx>
#include <Handle_Standard_ImmutableObject.hxx>
#include <Handle_Standard_LicenseError.hxx>
#include <Handle_Standard_LicenseNotFound.hxx>
#include <Handle_Standard_MultiplyDefined.hxx>
#include <Handle_Standard_NegativeValue.hxx>
#include <Handle_Standard_NoMoreObject.hxx>
#include <Handle_Standard_NoSuchObject.hxx>
#include <Handle_Standard_NotImplemented.hxx>
#include <Handle_Standard_NullObject.hxx>
#include <Handle_Standard_NullValue.hxx>
#include <Handle_Standard_NumericError.hxx>
#include <Handle_Standard_OutOfMemory.hxx>
#include <Handle_Standard_OutOfRange.hxx>
#include <Handle_Standard_Overflow.hxx>
#include <Handle_Standard_Persistent.hxx>
#include <Handle_Standard_ProgramError.hxx>
#include <Handle_Standard_RangeError.hxx>
#include <Handle_Standard_TooManyUsers.hxx>
#include <Handle_Standard_Transient.hxx>
#include <Handle_Standard_Type.hxx>
#include <Handle_Standard_TypeMismatch.hxx>
#include <Handle_Standard_Underflow.hxx>
#include <Handle_TColStd_DataMapNodeOfDataMapOfAsciiStringInteger.hxx>
#include <Handle_TColStd_DataMapNodeOfDataMapOfIntegerInteger.hxx>
#include <Handle_TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger.hxx>
#include <Handle_TColStd_DataMapNodeOfDataMapOfIntegerReal.hxx>
#include <Handle_TColStd_DataMapNodeOfDataMapOfIntegerTransient.hxx>
#include <Handle_TColStd_DataMapNodeOfDataMapOfStringInteger.hxx>
#include <Handle_TColStd_DataMapNodeOfDataMapOfTransientTransient.hxx>
#include <Handle_TColStd_HArray1OfAsciiString.hxx>
#include <Handle_TColStd_HArray1OfBoolean.hxx>
#include <Handle_TColStd_HArray1OfByte.hxx>
#include <Handle_TColStd_HArray1OfCharacter.hxx>
#include <Handle_TColStd_HArray1OfExtendedString.hxx>
#include <Handle_TColStd_HArray1OfInteger.hxx>
#include <Handle_TColStd_HArray1OfListOfInteger.hxx>
#include <Handle_TColStd_HArray1OfReal.hxx>
#include <Handle_TColStd_HArray1OfTransient.hxx>
#include <Handle_TColStd_HArray2OfBoolean.hxx>
#include <Handle_TColStd_HArray2OfCharacter.hxx>
#include <Handle_TColStd_HArray2OfInteger.hxx>
#include <Handle_TColStd_HArray2OfReal.hxx>
#include <Handle_TColStd_HArray2OfTransient.hxx>
#include <Handle_TColStd_HPackedMapOfInteger.hxx>
#include <Handle_TColStd_HSequenceOfAsciiString.hxx>
#include <Handle_TColStd_HSequenceOfExtendedString.hxx>
#include <Handle_TColStd_HSequenceOfHAsciiString.hxx>
#include <Handle_TColStd_HSequenceOfHExtendedString.hxx>
#include <Handle_TColStd_HSequenceOfInteger.hxx>
#include <Handle_TColStd_HSequenceOfReal.hxx>
#include <Handle_TColStd_HSequenceOfTransient.hxx>
#include <Handle_TColStd_HSetOfInteger.hxx>
#include <Handle_TColStd_HSetOfReal.hxx>
#include <Handle_TColStd_HSetOfTransient.hxx>
#include <Handle_TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient.hxx>
#include <Handle_TColStd_IndexedMapNodeOfIndexedMapOfInteger.hxx>
#include <Handle_TColStd_IndexedMapNodeOfIndexedMapOfReal.hxx>
#include <Handle_TColStd_IndexedMapNodeOfIndexedMapOfTransient.hxx>
#include <Handle_TColStd_ListNodeOfListOfAsciiString.hxx>
#include <Handle_TColStd_ListNodeOfListOfInteger.hxx>
#include <Handle_TColStd_ListNodeOfListOfReal.hxx>
#include <Handle_TColStd_ListNodeOfListOfTransient.hxx>
#include <Handle_TColStd_ListNodeOfSetListOfSetOfInteger.hxx>
#include <Handle_TColStd_ListNodeOfSetListOfSetOfReal.hxx>
#include <Handle_TColStd_ListNodeOfSetListOfSetOfTransient.hxx>
#include <Handle_TColStd_QueueNodeOfQueueOfInteger.hxx>
#include <Handle_TColStd_QueueNodeOfQueueOfReal.hxx>
#include <Handle_TColStd_QueueNodeOfQueueOfTransient.hxx>
#include <Handle_TColStd_SequenceNodeOfSequenceOfAddress.hxx>
#include <Handle_TColStd_SequenceNodeOfSequenceOfAsciiString.hxx>
#include <Handle_TColStd_SequenceNodeOfSequenceOfBoolean.hxx>
#include <Handle_TColStd_SequenceNodeOfSequenceOfExtendedString.hxx>
#include <Handle_TColStd_SequenceNodeOfSequenceOfHAsciiString.hxx>
#include <Handle_TColStd_SequenceNodeOfSequenceOfHExtendedString.hxx>
#include <Handle_TColStd_SequenceNodeOfSequenceOfInteger.hxx>
#include <Handle_TColStd_SequenceNodeOfSequenceOfReal.hxx>
#include <Handle_TColStd_SequenceNodeOfSequenceOfTransient.hxx>
#include <Handle_TColStd_StackNodeOfStackOfInteger.hxx>
#include <Handle_TColStd_StackNodeOfStackOfReal.hxx>
#include <Handle_TColStd_StackNodeOfStackOfTransient.hxx>
#include <Handle_TColStd_StdMapNodeOfMapOfAsciiString.hxx>
#include <Handle_TColStd_StdMapNodeOfMapOfInteger.hxx>
#include <Handle_TColStd_StdMapNodeOfMapOfReal.hxx>
#include <Handle_TColStd_StdMapNodeOfMapOfTransient.hxx>
#include <Handle_TCollection_AVLBaseNode.hxx>
#include <Handle_TCollection_HAsciiString.hxx>
#include <Handle_TCollection_HExtendedString.hxx>
#include <Handle_TCollection_MapNode.hxx>
#include <Handle_TCollection_SeqNode.hxx>
#include <MMgt_StackManager.hxx>
#include <MMgt_TShared.hxx>
#include <Quantity_AbsorbedDose.hxx>
#include <Quantity_Acceleration.hxx>
#include <Quantity_AcousticIntensity.hxx>
#include <Quantity_Activity.hxx>
#include <Quantity_Admittance.hxx>
#include <Quantity_AmountOfSubstance.hxx>
#include <Quantity_AngularVelocity.hxx>
#include <Quantity_Area.hxx>
#include <Quantity_Array1OfCoefficient.hxx>
#include <Quantity_Array1OfColor.hxx>
#include <Quantity_Array2OfColor.hxx>
#include <Quantity_Capacitance.hxx>
#include <Quantity_Coefficient.hxx>
#include <Quantity_CoefficientOfExpansion.hxx>
#include <Quantity_Color.hxx>
#include <Quantity_ColorDefinitionError.hxx>
#include <Quantity_Color_1.hxx>
#include <Quantity_Concentration.hxx>
#include <Quantity_Conductivity.hxx>
#include <Quantity_Constant.hxx>
#include <Quantity_Consumption.hxx>
#include <Quantity_Content.hxx>
#include <Quantity_Convert.hxx>
#include <Quantity_Date.hxx>
#include <Quantity_DateDefinitionError.hxx>
#include <Quantity_Density.hxx>
#include <Quantity_DoseEquivalent.hxx>
#include <Quantity_ElectricCapacitance.hxx>
#include <Quantity_ElectricCharge.hxx>
#include <Quantity_ElectricCurrent.hxx>
#include <Quantity_ElectricFieldStrength.hxx>
#include <Quantity_ElectricPotential.hxx>
#include <Quantity_Energy.hxx>
#include <Quantity_Enthalpy.hxx>
#include <Quantity_Entropy.hxx>
#include <Quantity_Factor.hxx>
#include <Quantity_Force.hxx>
#include <Quantity_Frequency.hxx>
#include <Quantity_HArray1OfColor.hxx>
#include <Quantity_Illuminance.hxx>
#include <Quantity_Impedance.hxx>
#include <Quantity_Index.hxx>
#include <Quantity_Inductance.hxx>
#include <Quantity_KinematicViscosity.hxx>
#include <Quantity_KineticMoment.hxx>
#include <Quantity_Length.hxx>
#include <Quantity_Luminance.hxx>
#include <Quantity_LuminousEfficacity.hxx>
#include <Quantity_LuminousExposition.hxx>
#include <Quantity_LuminousFlux.hxx>
#include <Quantity_LuminousIntensity.hxx>
#include <Quantity_MagneticFieldStrength.hxx>
#include <Quantity_MagneticFlux.hxx>
#include <Quantity_MagneticFluxDensity.hxx>
#include <Quantity_Mass.hxx>
#include <Quantity_MassFlow.hxx>
#include <Quantity_MolarConcentration.hxx>
#include <Quantity_MolarMass.hxx>
#include <Quantity_MolarVolume.hxx>
#include <Quantity_Molarity.hxx>
#include <Quantity_MomentOfAForce.hxx>
#include <Quantity_MomentOfInertia.hxx>
#include <Quantity_Momentum.hxx>
#include <Quantity_NameOfColor.hxx>
#include <Quantity_Normality.hxx>
#include <Quantity_Parameter.hxx>
#include <Quantity_Period.hxx>
#include <Quantity_PeriodDefinitionError.hxx>
#include <Quantity_PhysicalQuantity.hxx>
#include <Quantity_PlaneAngle.hxx>
#include <Quantity_Power.hxx>
#include <Quantity_Pressure.hxx>
#include <Quantity_Quotient.hxx>
#include <Quantity_Rate.hxx>
#include <Quantity_Ratio.hxx>
#include <Quantity_Reluctance.hxx>
#include <Quantity_Resistance.hxx>
#include <Quantity_Resistivity.hxx>
#include <Quantity_Scalaire.hxx>
#include <Quantity_SolidAngle.hxx>
#include <Quantity_SoundIntensity.hxx>
#include <Quantity_SpecificHeatCapacity.hxx>
#include <Quantity_Speed.hxx>
#include <Quantity_SurfaceTension.hxx>
#include <Quantity_Temperature.hxx>
#include <Quantity_ThermalConductivity.hxx>
#include <Quantity_Torque.hxx>
#include <Quantity_TypeOfColor.hxx>
#include <Quantity_Velocity.hxx>
#include <Quantity_Viscosity.hxx>
#include <Quantity_Volume.hxx>
#include <Quantity_VolumeFlow.hxx>
#include <Quantity_Weight.hxx>
#include <Quantity_Work.hxx>
#include <Select3D_Box2d.hxx>
#include <Select3D_ListIteratorOfListOfSensitive.hxx>
#include <Select3D_ListIteratorOfListOfSensitiveTriangle.hxx>
#include <Select3D_ListNodeOfListOfSensitive.hxx>
#include <Select3D_ListNodeOfListOfSensitiveTriangle.hxx>
#include <Select3D_ListOfSensitive.hxx>
#include <Select3D_ListOfSensitiveTriangle.hxx>
#include <Select3D_Macro.hxx>
#include <Select3D_Pnt.hxx>
#include <Select3D_Pnt2d.hxx>
#include <Select3D_Projector.hxx>
#include <Select3D_SensitiveBox.hxx>
#include <Select3D_SensitiveCircle.hxx>
#include <Select3D_SensitiveCurve.hxx>
#include <Select3D_SensitiveEntity.hxx>
#include <Select3D_SensitiveEntitySequence.hxx>
#include <Select3D_SensitiveFace.hxx>
#include <Select3D_SensitiveGroup.hxx>
#include <Select3D_SensitivePoint.hxx>
#include <Select3D_SensitivePoly.hxx>
#include <Select3D_SensitiveSegment.hxx>
#include <Select3D_SensitiveTriangle.hxx>
#include <Select3D_SensitiveTriangulation.hxx>
#include <Select3D_SensitiveWire.hxx>
#include <Select3D_SequenceNodeOfSensitiveEntitySequence.hxx>
#include <Select3D_TypeOfSensitivity.hxx>
#include <SelectBasics_BasicTool.hxx>
#include <SelectBasics_EntityOwner.hxx>
#include <SelectBasics_ListIteratorOfListOfBox2d.hxx>
#include <SelectBasics_ListIteratorOfListOfSensitive.hxx>
#include <SelectBasics_ListNodeOfListOfBox2d.hxx>
#include <SelectBasics_ListNodeOfListOfSensitive.hxx>
#include <SelectBasics_ListOfBox2d.hxx>
#include <SelectBasics_ListOfSensitive.hxx>
#include <SelectBasics_SensitiveEntity.hxx>
#include <SelectBasics_SequenceNodeOfSequenceOfOwner.hxx>
#include <SelectBasics_SequenceOfOwner.hxx>
#include <SelectBasics_SortAlgo.hxx>
#include <SelectMgr_AndFilter.hxx>
#include <SelectMgr_CompareResults.hxx>
#include <SelectMgr_CompositionFilter.hxx>
#include <SelectMgr_DataMapIteratorOfDataMapOfIntegerSensitive.hxx>
#include <SelectMgr_DataMapIteratorOfDataMapOfObjectSelectors.hxx>
#include <SelectMgr_DataMapIteratorOfDataMapOfSelectionActivation.hxx>
#include <SelectMgr_DataMapNodeOfDataMapOfIntegerSensitive.hxx>
#include <SelectMgr_DataMapNodeOfDataMapOfObjectSelectors.hxx>
#include <SelectMgr_DataMapNodeOfDataMapOfSelectionActivation.hxx>
#include <SelectMgr_DataMapOfIntegerSensitive.hxx>
#include <SelectMgr_DataMapOfObjectOwners.hxx>
#include <SelectMgr_DataMapOfObjectSelectors.hxx>
#include <SelectMgr_DataMapOfSelectionActivation.hxx>
#include <SelectMgr_EntityOwner.hxx>
#include <SelectMgr_Filter.hxx>
#include <SelectMgr_IndexedDataMapNodeOfIndexedDataMapOfOwnerCriterion.hxx>
#include <SelectMgr_IndexedDataMapOfOwnerCriterion.hxx>
#include <SelectMgr_IndexedMapNodeOfIndexedMapOfOwner.hxx>
#include <SelectMgr_IndexedMapOfOwner.hxx>
#include <SelectMgr_ListIteratorOfListOfFilter.hxx>
#include <SelectMgr_ListNodeOfListOfFilter.hxx>
#include <SelectMgr_ListOfFilter.hxx>
#include <SelectMgr_OrFilter.hxx>
#include <SelectMgr_SOPtr.hxx>
#include <SelectMgr_SelectableObject.hxx>
#include <SelectMgr_Selection.hxx>
#include <SelectMgr_SequenceNodeOfSequenceOfFilter.hxx>
#include <SelectMgr_SequenceNodeOfSequenceOfOwner.hxx>
#include <SelectMgr_SequenceNodeOfSequenceOfSelection.hxx>
#include <SelectMgr_SequenceNodeOfSequenceOfSelector.hxx>
#include <SelectMgr_SequenceOfFilter.hxx>
#include <SelectMgr_SequenceOfOwner.hxx>
#include <SelectMgr_SequenceOfSelection.hxx>
#include <SelectMgr_SequenceOfSelector.hxx>
#include <SelectMgr_SortCriterion.hxx>
#include <SelectMgr_StateOfSelection.hxx>
#include <SelectMgr_TypeOfUpdate.hxx>
#include <Standard_AbortiveTransaction.hxx>
#include <Standard_Address.hxx>
#include <Standard_AncestorIterator.hxx>
#include <Standard_Boolean.hxx>
#include <Standard_Byte.hxx>
#include <Standard_CString.hxx>
#include <Standard_Character.hxx>
#include <Standard_ConstructionError.hxx>
#include <Standard_DefineException.hxx>
#include <Standard_DefineHandle.hxx>
#include <Standard_DimensionError.hxx>
#include <Standard_DimensionMismatch.hxx>
#include <Standard_DivideByZero.hxx>
#include <Standard_DomainError.hxx>
#include <Standard_ErrorHandler.hxx>
#include <Standard_ErrorHandlerCallback.hxx>
#include <Standard_ExtCharacter.hxx>
#include <Standard_ExtString.hxx>
#include <Standard_Failure.hxx>
#include <Standard_GUID.hxx>
#include <Standard_HandlerStatus.hxx>
#include <Standard_IStream.hxx>
#include <Standard_ImmutableObject.hxx>
#include <Standard_Integer.hxx>
#include <Standard_InternalType.hxx>
#include <Standard_JmpBuf.hxx>
#include <Standard_KindOfType.hxx>
#include <Standard_LicenseError.hxx>
#include <Standard_LicenseNotFound.hxx>
#include <Standard_MMgrOpt.hxx>
#include <Standard_MMgrRaw.hxx>
#include <Standard_MMgrRoot.hxx>
#include <Standard_MMgrTBBalloc.hxx>
#include <Standard_Macro.hxx>
#include <Standard_MultiplyDefined.hxx>
#include <Standard_Mutex.hxx>
#include <Standard_NegativeValue.hxx>
#include <Standard_NoMoreObject.hxx>
#include <Standard_NoSuchObject.hxx>
#include <Standard_NotImplemented.hxx>
#include <Standard_NullObject.hxx>
#include <Standard_NullValue.hxx>
#include <Standard_NumericError.hxx>
#include <Standard_OId.hxx>
#include <Standard_OStream.hxx>
#include <Standard_OutOfMemory.hxx>
#include <Standard_OutOfRange.hxx>
#include <Standard_Overflow.hxx>
#include <Standard_PByte.hxx>
#include <Standard_PCharacter.hxx>
#include <Standard_PErrorHandler.hxx>
#include <Standard_PExtCharacter.hxx>
#include <Standard_Persistent.hxx>
#include <Standard_Persistent_proto.hxx>
#include <Standard_PrimitiveTypes.hxx>
#include <Standard_ProgramError.hxx>
#include <Standard_RangeError.hxx>
#include <Standard_Real.hxx>
#include <Standard_SStream.hxx>
#include <Standard_ShortReal.hxx>
#include <Standard_Size.hxx>
#include <Standard_Static.hxx>
#include <Standard_Storable.hxx>
#include <Standard_Stream.hxx>
#include <Standard_String.hxx>
#include <Standard_ThreadId.hxx>
#include <Standard_TooManyUsers.hxx>
#include <Standard_Transient.hxx>
#include <Standard_Type.hxx>
#include <Standard_TypeDef.hxx>
#include <Standard_TypeMismatch.hxx>
#include <Standard_UUID.hxx>
#include <Standard_Underflow.hxx>
#include <Standard_Version.hxx>
#include <Standard_WayOfLife.hxx>
#include <Standard_ctype.hxx>
#include <Standard_math.hxx>
#include <TColStd_Array1OfAsciiString.hxx>
#include <TColStd_Array1OfBoolean.hxx>
#include <TColStd_Array1OfByte.hxx>
#include <TColStd_Array1OfCharacter.hxx>
#include <TColStd_Array1OfExtendedString.hxx>
#include <TColStd_Array1OfInteger.hxx>
#include <TColStd_Array1OfListOfInteger.hxx>
#include <TColStd_Array1OfReal.hxx>
#include <TColStd_Array1OfTransient.hxx>
#include <TColStd_Array2OfBoolean.hxx>
#include <TColStd_Array2OfCharacter.hxx>
#include <TColStd_Array2OfInteger.hxx>
#include <TColStd_Array2OfReal.hxx>
#include <TColStd_Array2OfTransient.hxx>
#include <TColStd_DataMapIteratorOfDataMapOfAsciiStringInteger.hxx>
#include <TColStd_DataMapIteratorOfDataMapOfIntegerInteger.hxx>
#include <TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger.hxx>
#include <TColStd_DataMapIteratorOfDataMapOfIntegerReal.hxx>
#include <TColStd_DataMapIteratorOfDataMapOfIntegerTransient.hxx>
#include <TColStd_DataMapIteratorOfDataMapOfStringInteger.hxx>
#include <TColStd_DataMapIteratorOfDataMapOfTransientTransient.hxx>
#include <TColStd_DataMapNodeOfDataMapOfAsciiStringInteger.hxx>
#include <TColStd_DataMapNodeOfDataMapOfIntegerInteger.hxx>
#include <TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger.hxx>
#include <TColStd_DataMapNodeOfDataMapOfIntegerReal.hxx>
#include <TColStd_DataMapNodeOfDataMapOfIntegerTransient.hxx>
#include <TColStd_DataMapNodeOfDataMapOfStringInteger.hxx>
#include <TColStd_DataMapNodeOfDataMapOfTransientTransient.hxx>
#include <TColStd_DataMapOfAsciiStringInteger.hxx>
#include <TColStd_DataMapOfIntegerInteger.hxx>
#include <TColStd_DataMapOfIntegerListOfInteger.hxx>
#include <TColStd_DataMapOfIntegerReal.hxx>
#include <TColStd_DataMapOfIntegerTransient.hxx>
#include <TColStd_DataMapOfStringInteger.hxx>
#include <TColStd_DataMapOfTransientTransient.hxx>
#include <TColStd_HArray1OfAsciiString.hxx>
#include <TColStd_HArray1OfBoolean.hxx>
#include <TColStd_HArray1OfByte.hxx>
#include <TColStd_HArray1OfCharacter.hxx>
#include <TColStd_HArray1OfExtendedString.hxx>
#include <TColStd_HArray1OfInteger.hxx>
#include <TColStd_HArray1OfListOfInteger.hxx>
#include <TColStd_HArray1OfReal.hxx>
#include <TColStd_HArray1OfTransient.hxx>
#include <TColStd_HArray2OfBoolean.hxx>
#include <TColStd_HArray2OfCharacter.hxx>
#include <TColStd_HArray2OfInteger.hxx>
#include <TColStd_HArray2OfReal.hxx>
#include <TColStd_HArray2OfTransient.hxx>
#include <TColStd_HPackedMapOfInteger.hxx>
#include <TColStd_HSequenceOfAsciiString.hxx>
#include <TColStd_HSequenceOfExtendedString.hxx>
#include <TColStd_HSequenceOfHAsciiString.hxx>
#include <TColStd_HSequenceOfHExtendedString.hxx>
#include <TColStd_HSequenceOfInteger.hxx>
#include <TColStd_HSequenceOfReal.hxx>
#include <TColStd_HSequenceOfTransient.hxx>
#include <TColStd_HSetOfInteger.hxx>
#include <TColStd_HSetOfReal.hxx>
#include <TColStd_HSetOfTransient.hxx>
#include <TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient.hxx>
#include <TColStd_IndexedDataMapOfTransientTransient.hxx>
#include <TColStd_IndexedMapNodeOfIndexedMapOfInteger.hxx>
#include <TColStd_IndexedMapNodeOfIndexedMapOfReal.hxx>
#include <TColStd_IndexedMapNodeOfIndexedMapOfTransient.hxx>
#include <TColStd_IndexedMapOfInteger.hxx>
#include <TColStd_IndexedMapOfReal.hxx>
#include <TColStd_IndexedMapOfTransient.hxx>
#include <TColStd_ListIteratorOfListOfAsciiString.hxx>
#include <TColStd_ListIteratorOfListOfInteger.hxx>
#include <TColStd_ListIteratorOfListOfReal.hxx>
#include <TColStd_ListIteratorOfListOfTransient.hxx>
#include <TColStd_ListIteratorOfSetListOfSetOfInteger.hxx>
#include <TColStd_ListIteratorOfSetListOfSetOfReal.hxx>
#include <TColStd_ListIteratorOfSetListOfSetOfTransient.hxx>
#include <TColStd_ListNodeOfListOfAsciiString.hxx>
#include <TColStd_ListNodeOfListOfInteger.hxx>
#include <TColStd_ListNodeOfListOfReal.hxx>
#include <TColStd_ListNodeOfListOfTransient.hxx>
#include <TColStd_ListNodeOfSetListOfSetOfInteger.hxx>
#include <TColStd_ListNodeOfSetListOfSetOfReal.hxx>
#include <TColStd_ListNodeOfSetListOfSetOfTransient.hxx>
#include <TColStd_ListOfAsciiString.hxx>
#include <TColStd_ListOfInteger.hxx>
#include <TColStd_ListOfReal.hxx>
#include <TColStd_ListOfTransient.hxx>
#include <TColStd_MapIntegerHasher.hxx>
#include <TColStd_MapIteratorOfMapOfAsciiString.hxx>
#include <TColStd_MapIteratorOfMapOfInteger.hxx>
#include <TColStd_MapIteratorOfMapOfReal.hxx>
#include <TColStd_MapIteratorOfMapOfTransient.hxx>
#include <TColStd_MapIteratorOfPackedMapOfInteger.hxx>
#include <TColStd_MapOfAsciiString.hxx>
#include <TColStd_MapOfInteger.hxx>
#include <TColStd_MapOfReal.hxx>
#include <TColStd_MapOfTransient.hxx>
#include <TColStd_MapRealHasher.hxx>
#include <TColStd_MapTransientHasher.hxx>
#include <TColStd_PackedMapOfInteger.hxx>
#include <TColStd_QueueNodeOfQueueOfInteger.hxx>
#include <TColStd_QueueNodeOfQueueOfReal.hxx>
#include <TColStd_QueueNodeOfQueueOfTransient.hxx>
#include <TColStd_QueueOfInteger.hxx>
#include <TColStd_QueueOfReal.hxx>
#include <TColStd_QueueOfTransient.hxx>
#include <TColStd_SequenceNodeOfSequenceOfAddress.hxx>
#include <TColStd_SequenceNodeOfSequenceOfAsciiString.hxx>
#include <TColStd_SequenceNodeOfSequenceOfBoolean.hxx>
#include <TColStd_SequenceNodeOfSequenceOfExtendedString.hxx>
#include <TColStd_SequenceNodeOfSequenceOfHAsciiString.hxx>
#include <TColStd_SequenceNodeOfSequenceOfHExtendedString.hxx>
#include <TColStd_SequenceNodeOfSequenceOfInteger.hxx>
#include <TColStd_SequenceNodeOfSequenceOfReal.hxx>
#include <TColStd_SequenceNodeOfSequenceOfTransient.hxx>
#include <TColStd_SequenceOfAddress.hxx>
#include <TColStd_SequenceOfAsciiString.hxx>
#include <TColStd_SequenceOfBoolean.hxx>
#include <TColStd_SequenceOfExtendedString.hxx>
#include <TColStd_SequenceOfHAsciiString.hxx>
#include <TColStd_SequenceOfHExtendedString.hxx>
#include <TColStd_SequenceOfInteger.hxx>
#include <TColStd_SequenceOfReal.hxx>
#include <TColStd_SequenceOfTransient.hxx>
#include <TColStd_SetIteratorOfSetOfInteger.hxx>
#include <TColStd_SetIteratorOfSetOfReal.hxx>
#include <TColStd_SetIteratorOfSetOfTransient.hxx>
#include <TColStd_SetListOfSetOfInteger.hxx>
#include <TColStd_SetListOfSetOfReal.hxx>
#include <TColStd_SetListOfSetOfTransient.hxx>
#include <TColStd_SetOfInteger.hxx>
#include <TColStd_SetOfReal.hxx>
#include <TColStd_SetOfTransient.hxx>
#include <TColStd_StackIteratorOfStackOfInteger.hxx>
#include <TColStd_StackIteratorOfStackOfReal.hxx>
#include <TColStd_StackIteratorOfStackOfTransient.hxx>
#include <TColStd_StackNodeOfStackOfInteger.hxx>
#include <TColStd_StackNodeOfStackOfReal.hxx>
#include <TColStd_StackNodeOfStackOfTransient.hxx>
#include <TColStd_StackOfInteger.hxx>
#include <TColStd_StackOfReal.hxx>
#include <TColStd_StackOfTransient.hxx>
#include <TColStd_StdMapNodeOfMapOfAsciiString.hxx>
#include <TColStd_StdMapNodeOfMapOfInteger.hxx>
#include <TColStd_StdMapNodeOfMapOfReal.hxx>
#include <TColStd_StdMapNodeOfMapOfTransient.hxx>
%};

%import TCollection.i
%import MMgt.i
%import AIS.i
%import Select3D.i
%import SelectMgr.i
%import SelectBasics.i
%import Standard.i
%import Quantity.i
%import TColStd.i
