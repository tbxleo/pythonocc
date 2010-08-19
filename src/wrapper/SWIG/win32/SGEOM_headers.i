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

#include<Handle_SGEOM_Application.hxx>
#include<Handle_SGEOM_DataMapNodeOfDataMapOfAsciiStringTransient.hxx>
#include<SGEOM_Application.hxx>
#include<SGEOM_DataMapIteratorOfDataMapOfAsciiStringTransient.hxx>
#include<SGEOM_DataMapNodeOfDataMapOfAsciiStringTransient.hxx>
#include<SGEOM_DataMapOfAsciiStringTransient.hxx>
#include<SGEOM_Engine.hxx>
#include<SGEOM_Function.hxx>
#include<SGEOM_IOperations.hxx>
#include<SGEOM_ISubShape.hxx>
#include<SGEOM_Object.hxx>
#include<SGEOM_Parameter.hxx>
#include<SGEOM_PythonDump.hxx>
#include<SGEOM_Solver.hxx>
#include<SGEOM_SubShapeDriver.hxx>

// Additional headers necessary for compilation.

#include<CDF.hxx>
#include<CDF_Application.hxx>
#include<CDF_Directory.hxx>
#include<CDF_DirectoryIterator.hxx>
#include<CDF_MetaDataDriver.hxx>
#include<CDF_MetaDataDriverError.hxx>
#include<CDF_MetaDataDriverFactory.hxx>
#include<CDF_RetrievableStatus.hxx>
#include<CDF_Session.hxx>
#include<CDF_Store.hxx>
#include<CDF_StoreList.hxx>
#include<CDF_StoreSetNameStatus.hxx>
#include<CDF_StoreStatus.hxx>
#include<CDF_SubComponentStatus.hxx>
#include<CDF_Timer.hxx>
#include<CDF_TryStoreStatus.hxx>
#include<CDF_TypeOfActivation.hxx>
#include<CDM_Application.hxx>
#include<CDM_COutMessageDriver.hxx>
#include<CDM_CanCloseStatus.hxx>
#include<CDM_DataMapIteratorOfMetaDataLookUpTable.hxx>
#include<CDM_DataMapIteratorOfNamesDirectory.hxx>
#include<CDM_DataMapIteratorOfPresentationDirectory.hxx>
#include<CDM_DataMapNodeOfMetaDataLookUpTable.hxx>
#include<CDM_DataMapNodeOfNamesDirectory.hxx>
#include<CDM_DataMapNodeOfPresentationDirectory.hxx>
#include<CDM_Document.hxx>
#include<CDM_DocumentHasher.hxx>
#include<CDM_DocumentPointer.hxx>
#include<CDM_ListIteratorOfListOfDocument.hxx>
#include<CDM_ListIteratorOfListOfReferences.hxx>
#include<CDM_ListNodeOfListOfDocument.hxx>
#include<CDM_ListNodeOfListOfReferences.hxx>
#include<CDM_ListOfDocument.hxx>
#include<CDM_ListOfReferences.hxx>
#include<CDM_MapIteratorOfMapOfDocument.hxx>
#include<CDM_MapOfDocument.hxx>
#include<CDM_MessageDriver.hxx>
#include<CDM_MetaData.hxx>
#include<CDM_MetaDataLookUpTable.hxx>
#include<CDM_NamesDirectory.hxx>
#include<CDM_NullMessageDriver.hxx>
#include<CDM_PresentationDirectory.hxx>
#include<CDM_Reference.hxx>
#include<CDM_ReferenceIterator.hxx>
#include<CDM_StackIteratorOfStackOfDocument.hxx>
#include<CDM_StackNodeOfStackOfDocument.hxx>
#include<CDM_StackOfDocument.hxx>
#include<CDM_StdMapNodeOfMapOfDocument.hxx>
#include<Quantity_AbsorbedDose.hxx>
#include<Quantity_Acceleration.hxx>
#include<Quantity_AcousticIntensity.hxx>
#include<Quantity_Activity.hxx>
#include<Quantity_Admittance.hxx>
#include<Quantity_AmountOfSubstance.hxx>
#include<Quantity_AngularVelocity.hxx>
#include<Quantity_Area.hxx>
#include<Quantity_Array1OfCoefficient.hxx>
#include<Quantity_Array1OfColor.hxx>
#include<Quantity_Array2OfColor.hxx>
#include<Quantity_Capacitance.hxx>
#include<Quantity_Coefficient.hxx>
#include<Quantity_CoefficientOfExpansion.hxx>
#include<Quantity_Color.hxx>
#include<Quantity_ColorDefinitionError.hxx>
#include<Quantity_Color_1.hxx>
#include<Quantity_Concentration.hxx>
#include<Quantity_Conductivity.hxx>
#include<Quantity_Constant.hxx>
#include<Quantity_Consumption.hxx>
#include<Quantity_Content.hxx>
#include<Quantity_Convert.hxx>
#include<Quantity_Date.hxx>
#include<Quantity_DateDefinitionError.hxx>
#include<Quantity_Density.hxx>
#include<Quantity_DoseEquivalent.hxx>
#include<Quantity_ElectricCapacitance.hxx>
#include<Quantity_ElectricCharge.hxx>
#include<Quantity_ElectricCurrent.hxx>
#include<Quantity_ElectricFieldStrength.hxx>
#include<Quantity_ElectricPotential.hxx>
#include<Quantity_Energy.hxx>
#include<Quantity_Enthalpy.hxx>
#include<Quantity_Entropy.hxx>
#include<Quantity_Factor.hxx>
#include<Quantity_Force.hxx>
#include<Quantity_Frequency.hxx>
#include<Quantity_HArray1OfColor.hxx>
#include<Quantity_Illuminance.hxx>
#include<Quantity_Impedance.hxx>
#include<Quantity_Index.hxx>
#include<Quantity_Inductance.hxx>
#include<Quantity_KinematicViscosity.hxx>
#include<Quantity_KineticMoment.hxx>
#include<Quantity_Length.hxx>
#include<Quantity_Luminance.hxx>
#include<Quantity_LuminousEfficacity.hxx>
#include<Quantity_LuminousExposition.hxx>
#include<Quantity_LuminousFlux.hxx>
#include<Quantity_LuminousIntensity.hxx>
#include<Quantity_MagneticFieldStrength.hxx>
#include<Quantity_MagneticFlux.hxx>
#include<Quantity_MagneticFluxDensity.hxx>
#include<Quantity_Mass.hxx>
#include<Quantity_MassFlow.hxx>
#include<Quantity_MolarConcentration.hxx>
#include<Quantity_MolarMass.hxx>
#include<Quantity_MolarVolume.hxx>
#include<Quantity_Molarity.hxx>
#include<Quantity_MomentOfAForce.hxx>
#include<Quantity_MomentOfInertia.hxx>
#include<Quantity_Momentum.hxx>
#include<Quantity_NameOfColor.hxx>
#include<Quantity_Normality.hxx>
#include<Quantity_Parameter.hxx>
#include<Quantity_Period.hxx>
#include<Quantity_PeriodDefinitionError.hxx>
#include<Quantity_PhysicalQuantity.hxx>
#include<Quantity_PlaneAngle.hxx>
#include<Quantity_Power.hxx>
#include<Quantity_Pressure.hxx>
#include<Quantity_Quotient.hxx>
#include<Quantity_Rate.hxx>
#include<Quantity_Ratio.hxx>
#include<Quantity_Reluctance.hxx>
#include<Quantity_Resistance.hxx>
#include<Quantity_Resistivity.hxx>
#include<Quantity_Scalaire.hxx>
#include<Quantity_SolidAngle.hxx>
#include<Quantity_SoundIntensity.hxx>
#include<Quantity_SpecificHeatCapacity.hxx>
#include<Quantity_Speed.hxx>
#include<Quantity_SurfaceTension.hxx>
#include<Quantity_Temperature.hxx>
#include<Quantity_ThermalConductivity.hxx>
#include<Quantity_Torque.hxx>
#include<Quantity_TypeOfColor.hxx>
#include<Quantity_Velocity.hxx>
#include<Quantity_Viscosity.hxx>
#include<Quantity_Volume.hxx>
#include<Quantity_VolumeFlow.hxx>
#include<Quantity_Weight.hxx>
#include<Quantity_Work.hxx>
#include<TColStd_Array1OfAsciiString.hxx>
#include<TColStd_Array1OfBoolean.hxx>
#include<TColStd_Array1OfCharacter.hxx>
#include<TColStd_Array1OfExtendedString.hxx>
#include<TColStd_Array1OfInteger.hxx>
#include<TColStd_Array1OfListOfInteger.hxx>
#include<TColStd_Array1OfReal.hxx>
#include<TColStd_Array1OfTransient.hxx>
#include<TColStd_Array2OfBoolean.hxx>
#include<TColStd_Array2OfCharacter.hxx>
#include<TColStd_Array2OfInteger.hxx>
#include<TColStd_Array2OfReal.hxx>
#include<TColStd_Array2OfTransient.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfIntegerInteger.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger.hxx>
#include<TColStd_DataMapIteratorOfDataMapOfIntegerReal.hxx>
#include<TColStd_DataMapNodeOfDataMapOfIntegerInteger.hxx>
#include<TColStd_DataMapNodeOfDataMapOfIntegerListOfInteger.hxx>
#include<TColStd_DataMapNodeOfDataMapOfIntegerReal.hxx>
#include<TColStd_DataMapOfIntegerInteger.hxx>
#include<TColStd_DataMapOfIntegerListOfInteger.hxx>
#include<TColStd_DataMapOfIntegerReal.hxx>
#include<TColStd_HArray1OfAsciiString.hxx>
#include<TColStd_HArray1OfBoolean.hxx>
#include<TColStd_HArray1OfCharacter.hxx>
#include<TColStd_HArray1OfExtendedString.hxx>
#include<TColStd_HArray1OfInteger.hxx>
#include<TColStd_HArray1OfListOfInteger.hxx>
#include<TColStd_HArray1OfReal.hxx>
#include<TColStd_HArray1OfTransient.hxx>
#include<TColStd_HArray2OfBoolean.hxx>
#include<TColStd_HArray2OfCharacter.hxx>
#include<TColStd_HArray2OfInteger.hxx>
#include<TColStd_HArray2OfReal.hxx>
#include<TColStd_HArray2OfTransient.hxx>
#include<TColStd_HPackedMapOfInteger.hxx>
#include<TColStd_HSequenceOfAsciiString.hxx>
#include<TColStd_HSequenceOfExtendedString.hxx>
#include<TColStd_HSequenceOfHAsciiString.hxx>
#include<TColStd_HSequenceOfHExtendedString.hxx>
#include<TColStd_HSequenceOfInteger.hxx>
#include<TColStd_HSequenceOfReal.hxx>
#include<TColStd_HSequenceOfTransient.hxx>
#include<TColStd_HSetOfInteger.hxx>
#include<TColStd_HSetOfReal.hxx>
#include<TColStd_HSetOfTransient.hxx>
#include<TColStd_IndexedDataMapNodeOfIndexedDataMapOfTransientTransient.hxx>
#include<TColStd_IndexedDataMapOfTransientTransient.hxx>
#include<TColStd_IndexedMapNodeOfIndexedMapOfInteger.hxx>
#include<TColStd_IndexedMapNodeOfIndexedMapOfReal.hxx>
#include<TColStd_IndexedMapNodeOfIndexedMapOfTransient.hxx>
#include<TColStd_IndexedMapOfInteger.hxx>
#include<TColStd_IndexedMapOfReal.hxx>
#include<TColStd_IndexedMapOfTransient.hxx>
#include<TColStd_ListIteratorOfListOfInteger.hxx>
#include<TColStd_ListIteratorOfListOfReal.hxx>
#include<TColStd_ListIteratorOfListOfTransient.hxx>
#include<TColStd_ListIteratorOfSetListOfSetOfInteger.hxx>
#include<TColStd_ListIteratorOfSetListOfSetOfReal.hxx>
#include<TColStd_ListIteratorOfSetListOfSetOfTransient.hxx>
#include<TColStd_ListNodeOfListOfInteger.hxx>
#include<TColStd_ListNodeOfListOfReal.hxx>
#include<TColStd_ListNodeOfListOfTransient.hxx>
#include<TColStd_ListNodeOfSetListOfSetOfInteger.hxx>
#include<TColStd_ListNodeOfSetListOfSetOfReal.hxx>
#include<TColStd_ListNodeOfSetListOfSetOfTransient.hxx>
#include<TColStd_ListOfInteger.hxx>
#include<TColStd_ListOfReal.hxx>
#include<TColStd_ListOfTransient.hxx>
#include<TColStd_MapIntegerHasher.hxx>
#include<TColStd_MapIteratorOfMapOfInteger.hxx>
#include<TColStd_MapIteratorOfMapOfReal.hxx>
#include<TColStd_MapIteratorOfMapOfTransient.hxx>
#include<TColStd_MapIteratorOfPackedMapOfInteger.hxx>
#include<TColStd_MapOfInteger.hxx>
#include<TColStd_MapOfReal.hxx>
#include<TColStd_MapOfTransient.hxx>
#include<TColStd_MapRealHasher.hxx>
#include<TColStd_MapTransientHasher.hxx>
#include<TColStd_PackedMapOfInteger.hxx>
#include<TColStd_QueueNodeOfQueueOfInteger.hxx>
#include<TColStd_QueueNodeOfQueueOfReal.hxx>
#include<TColStd_QueueNodeOfQueueOfTransient.hxx>
#include<TColStd_QueueOfInteger.hxx>
#include<TColStd_QueueOfReal.hxx>
#include<TColStd_QueueOfTransient.hxx>
#include<TColStd_SequenceNodeOfSequenceOfAsciiString.hxx>
#include<TColStd_SequenceNodeOfSequenceOfExtendedString.hxx>
#include<TColStd_SequenceNodeOfSequenceOfHAsciiString.hxx>
#include<TColStd_SequenceNodeOfSequenceOfHExtendedString.hxx>
#include<TColStd_SequenceNodeOfSequenceOfInteger.hxx>
#include<TColStd_SequenceNodeOfSequenceOfReal.hxx>
#include<TColStd_SequenceNodeOfSequenceOfTransient.hxx>
#include<TColStd_SequenceOfAsciiString.hxx>
#include<TColStd_SequenceOfExtendedString.hxx>
#include<TColStd_SequenceOfHAsciiString.hxx>
#include<TColStd_SequenceOfHExtendedString.hxx>
#include<TColStd_SequenceOfInteger.hxx>
#include<TColStd_SequenceOfReal.hxx>
#include<TColStd_SequenceOfTransient.hxx>
#include<TColStd_SetIteratorOfSetOfInteger.hxx>
#include<TColStd_SetIteratorOfSetOfReal.hxx>
#include<TColStd_SetIteratorOfSetOfTransient.hxx>
#include<TColStd_SetListOfSetOfInteger.hxx>
#include<TColStd_SetListOfSetOfReal.hxx>
#include<TColStd_SetListOfSetOfTransient.hxx>
#include<TColStd_SetOfInteger.hxx>
#include<TColStd_SetOfReal.hxx>
#include<TColStd_SetOfTransient.hxx>
#include<TColStd_StackIteratorOfStackOfInteger.hxx>
#include<TColStd_StackIteratorOfStackOfReal.hxx>
#include<TColStd_StackIteratorOfStackOfTransient.hxx>
#include<TColStd_StackNodeOfStackOfInteger.hxx>
#include<TColStd_StackNodeOfStackOfReal.hxx>
#include<TColStd_StackNodeOfStackOfTransient.hxx>
#include<TColStd_StackOfInteger.hxx>
#include<TColStd_StackOfReal.hxx>
#include<TColStd_StackOfTransient.hxx>
#include<TColStd_StdMapNodeOfMapOfInteger.hxx>
#include<TColStd_StdMapNodeOfMapOfReal.hxx>
#include<TColStd_StdMapNodeOfMapOfTransient.hxx>
#include<TDF.hxx>
#include<TDF_Attribute.hxx>
#include<TDF_AttributeArray1.hxx>
#include<TDF_AttributeDataMap.hxx>
#include<TDF_AttributeDelta.hxx>
#include<TDF_AttributeDeltaList.hxx>
#include<TDF_AttributeDoubleMap.hxx>
#include<TDF_AttributeIndexedMap.hxx>
#include<TDF_AttributeIterator.hxx>
#include<TDF_AttributeList.hxx>
#include<TDF_AttributeMap.hxx>
#include<TDF_AttributeSequence.hxx>
#include<TDF_ChildIDIterator.hxx>
#include<TDF_ChildIterator.hxx>
#include<TDF_ClosureMode.hxx>
#include<TDF_ClosureTool.hxx>
#include<TDF_ComparisonTool.hxx>
#include<TDF_CopyLabel.hxx>
#include<TDF_CopyTool.hxx>
#include<TDF_Data.hxx>
#include<TDF_DataMapIteratorOfAttributeDataMap.hxx>
#include<TDF_DataMapIteratorOfLabelDataMap.hxx>
#include<TDF_DataMapIteratorOfLabelIntegerMap.hxx>
#include<TDF_DataMapIteratorOfLabelLabelMap.hxx>
#include<TDF_DataMapNodeOfAttributeDataMap.hxx>
#include<TDF_DataMapNodeOfLabelDataMap.hxx>
#include<TDF_DataMapNodeOfLabelIntegerMap.hxx>
#include<TDF_DataMapNodeOfLabelLabelMap.hxx>
#include<TDF_DataSet.hxx>
#include<TDF_DefaultDeltaOnModification.hxx>
#include<TDF_DefaultDeltaOnRemoval.hxx>
#include<TDF_Delta.hxx>
#include<TDF_DeltaList.hxx>
#include<TDF_DeltaOnAddition.hxx>
#include<TDF_DeltaOnForget.hxx>
#include<TDF_DeltaOnModification.hxx>
#include<TDF_DeltaOnRemoval.hxx>
#include<TDF_DeltaOnResume.hxx>
#include<TDF_DoubleMapIteratorOfAttributeDoubleMap.hxx>
#include<TDF_DoubleMapIteratorOfGUIDProgIDMap.hxx>
#include<TDF_DoubleMapIteratorOfLabelDoubleMap.hxx>
#include<TDF_DoubleMapNodeOfAttributeDoubleMap.hxx>
#include<TDF_DoubleMapNodeOfGUIDProgIDMap.hxx>
#include<TDF_DoubleMapNodeOfLabelDoubleMap.hxx>
#include<TDF_GUIDProgIDMap.hxx>
#include<TDF_HAllocator.hxx>
#include<TDF_HAttributeArray1.hxx>
#include<TDF_IDFilter.hxx>
#include<TDF_IDList.hxx>
#include<TDF_IDMap.hxx>
#include<TDF_IndexedMapNodeOfAttributeIndexedMap.hxx>
#include<TDF_IndexedMapNodeOfLabelIndexedMap.hxx>
#include<TDF_Label.hxx>
#include<TDF_LabelDataMap.hxx>
#include<TDF_LabelDoubleMap.hxx>
#include<TDF_LabelIndexedMap.hxx>
#include<TDF_LabelIntegerMap.hxx>
#include<TDF_LabelLabelMap.hxx>
#include<TDF_LabelList.hxx>
#include<TDF_LabelMap.hxx>
#include<TDF_LabelMapHasher.hxx>
#include<TDF_LabelNode.hxx>
#include<TDF_LabelNodePtr.hxx>
#include<TDF_LabelSequence.hxx>
#include<TDF_ListIteratorOfAttributeDeltaList.hxx>
#include<TDF_ListIteratorOfAttributeList.hxx>
#include<TDF_ListIteratorOfDeltaList.hxx>
#include<TDF_ListIteratorOfIDList.hxx>
#include<TDF_ListIteratorOfLabelList.hxx>
#include<TDF_ListNodeOfAttributeDeltaList.hxx>
#include<TDF_ListNodeOfAttributeList.hxx>
#include<TDF_ListNodeOfDeltaList.hxx>
#include<TDF_ListNodeOfIDList.hxx>
#include<TDF_ListNodeOfLabelList.hxx>
#include<TDF_MapIteratorOfAttributeMap.hxx>
#include<TDF_MapIteratorOfIDMap.hxx>
#include<TDF_MapIteratorOfLabelMap.hxx>
#include<TDF_Reference.hxx>
#include<TDF_RelocationTable.hxx>
#include<TDF_SequenceNodeOfAttributeSequence.hxx>
#include<TDF_SequenceNodeOfLabelSequence.hxx>
#include<TDF_StdMapNodeOfAttributeMap.hxx>
#include<TDF_StdMapNodeOfIDMap.hxx>
#include<TDF_StdMapNodeOfLabelMap.hxx>
#include<TDF_TagSource.hxx>
#include<TDF_Tool.hxx>
#include<TDF_Transaction.hxx>
#include<TDataStd.hxx>
#include<TDataStd_Array1OfByte.hxx>
#include<TDataStd_Array1OfTrsf.hxx>
#include<TDataStd_AsciiString.hxx>
#include<TDataStd_Axis.hxx>
#include<TDataStd_BooleanArray.hxx>
#include<TDataStd_BooleanList.hxx>
#include<TDataStd_ByteArray.hxx>
#include<TDataStd_ChildNodeIterator.hxx>
#include<TDataStd_Comment.hxx>
#include<TDataStd_Constraint.hxx>
#include<TDataStd_ConstraintEnum.hxx>
#include<TDataStd_Current.hxx>
#include<TDataStd_DataMapIteratorOfDataMapOfStringByte.hxx>
#include<TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfInteger.hxx>
#include<TDataStd_DataMapIteratorOfDataMapOfStringHArray1OfReal.hxx>
#include<TDataStd_DataMapIteratorOfDataMapOfStringInteger.hxx>
#include<TDataStd_DataMapIteratorOfDataMapOfStringReal.hxx>
#include<TDataStd_DataMapIteratorOfDataMapOfStringString.hxx>
#include<TDataStd_DataMapNodeOfDataMapOfStringByte.hxx>
#include<TDataStd_DataMapNodeOfDataMapOfStringHArray1OfInteger.hxx>
#include<TDataStd_DataMapNodeOfDataMapOfStringHArray1OfReal.hxx>
#include<TDataStd_DataMapNodeOfDataMapOfStringInteger.hxx>
#include<TDataStd_DataMapNodeOfDataMapOfStringReal.hxx>
#include<TDataStd_DataMapNodeOfDataMapOfStringString.hxx>
#include<TDataStd_DataMapOfStringByte.hxx>
#include<TDataStd_DataMapOfStringHArray1OfInteger.hxx>
#include<TDataStd_DataMapOfStringHArray1OfReal.hxx>
#include<TDataStd_DataMapOfStringInteger.hxx>
#include<TDataStd_DataMapOfStringReal.hxx>
#include<TDataStd_DataMapOfStringString.hxx>
#include<TDataStd_DeltaOnModificationOfByteArray.hxx>
#include<TDataStd_DeltaOnModificationOfExtStringArray.hxx>
#include<TDataStd_DeltaOnModificationOfIntArray.hxx>
#include<TDataStd_DeltaOnModificationOfIntPackedMap.hxx>
#include<TDataStd_DeltaOnModificationOfRealArray.hxx>
#include<TDataStd_Directory.hxx>
#include<TDataStd_Expression.hxx>
#include<TDataStd_ExtStringArray.hxx>
#include<TDataStd_ExtStringList.hxx>
#include<TDataStd_Geometry.hxx>
#include<TDataStd_GeometryEnum.hxx>
#include<TDataStd_HArray1OfByte.hxx>
#include<TDataStd_HArray1OfTrsf.hxx>
#include<TDataStd_HDataMapOfStringByte.hxx>
#include<TDataStd_HDataMapOfStringHArray1OfInteger.hxx>
#include<TDataStd_HDataMapOfStringHArray1OfReal.hxx>
#include<TDataStd_HDataMapOfStringInteger.hxx>
#include<TDataStd_HDataMapOfStringReal.hxx>
#include<TDataStd_HDataMapOfStringString.hxx>
#include<TDataStd_HLabelArray1.hxx>
#include<TDataStd_IntPackedMap.hxx>
#include<TDataStd_Integer.hxx>
#include<TDataStd_IntegerArray.hxx>
#include<TDataStd_IntegerList.hxx>
#include<TDataStd_LabelArray1.hxx>
#include<TDataStd_ListIteratorOfListOfByte.hxx>
#include<TDataStd_ListIteratorOfListOfExtendedString.hxx>
#include<TDataStd_ListNodeOfListOfByte.hxx>
#include<TDataStd_ListNodeOfListOfExtendedString.hxx>
#include<TDataStd_ListOfByte.hxx>
#include<TDataStd_ListOfExtendedString.hxx>
#include<TDataStd_Name.hxx>
#include<TDataStd_NamedData.hxx>
#include<TDataStd_NoteBook.hxx>
#include<TDataStd_Pattern.hxx>
#include<TDataStd_PatternStd.hxx>
#include<TDataStd_Placement.hxx>
#include<TDataStd_Plane.hxx>
#include<TDataStd_Point.hxx>
#include<TDataStd_Position.hxx>
#include<TDataStd_PtrTreeNode.hxx>
#include<TDataStd_Real.hxx>
#include<TDataStd_RealArray.hxx>
#include<TDataStd_RealEnum.hxx>
#include<TDataStd_RealList.hxx>
#include<TDataStd_ReferenceArray.hxx>
#include<TDataStd_ReferenceList.hxx>
#include<TDataStd_Relation.hxx>
#include<TDataStd_Shape.hxx>
#include<TDataStd_Tick.hxx>
#include<TDataStd_TreeNode.hxx>
#include<TDataStd_UAttribute.hxx>
#include<TDataStd_Variable.hxx>

// Needed headers necessary for compilation.

%}
