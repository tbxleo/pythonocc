/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
*/
%{

// Headers necessary to define wrapped classes.

#include<RWStepShape_RWAdvancedBrepShapeRepresentation.hxx>
#include<RWStepShape_RWAdvancedFace.hxx>
#include<RWStepShape_RWAngularLocation.hxx>
#include<RWStepShape_RWAngularSize.hxx>
#include<RWStepShape_RWBlock.hxx>
#include<RWStepShape_RWBooleanResult.hxx>
#include<RWStepShape_RWBoxDomain.hxx>
#include<RWStepShape_RWBoxedHalfSpace.hxx>
#include<RWStepShape_RWBrepWithVoids.hxx>
#include<RWStepShape_RWClosedShell.hxx>
#include<RWStepShape_RWCompoundShapeRepresentation.hxx>
#include<RWStepShape_RWConnectedEdgeSet.hxx>
#include<RWStepShape_RWConnectedFaceSet.hxx>
#include<RWStepShape_RWConnectedFaceShapeRepresentation.hxx>
#include<RWStepShape_RWConnectedFaceSubSet.hxx>
#include<RWStepShape_RWContextDependentShapeRepresentation.hxx>
#include<RWStepShape_RWCsgShapeRepresentation.hxx>
#include<RWStepShape_RWCsgSolid.hxx>
#include<RWStepShape_RWDefinitionalRepresentationAndShapeRepresentation.hxx>
#include<RWStepShape_RWDimensionalCharacteristicRepresentation.hxx>
#include<RWStepShape_RWDimensionalLocation.hxx>
#include<RWStepShape_RWDimensionalLocationWithPath.hxx>
#include<RWStepShape_RWDimensionalSize.hxx>
#include<RWStepShape_RWDimensionalSizeWithPath.hxx>
#include<RWStepShape_RWEdge.hxx>
#include<RWStepShape_RWEdgeBasedWireframeModel.hxx>
#include<RWStepShape_RWEdgeBasedWireframeShapeRepresentation.hxx>
#include<RWStepShape_RWEdgeCurve.hxx>
#include<RWStepShape_RWEdgeLoop.hxx>
#include<RWStepShape_RWExtrudedAreaSolid.hxx>
#include<RWStepShape_RWExtrudedFaceSolid.hxx>
#include<RWStepShape_RWFace.hxx>
#include<RWStepShape_RWFaceBasedSurfaceModel.hxx>
#include<RWStepShape_RWFaceBound.hxx>
#include<RWStepShape_RWFaceOuterBound.hxx>
#include<RWStepShape_RWFaceSurface.hxx>
#include<RWStepShape_RWFacetedBrep.hxx>
#include<RWStepShape_RWFacetedBrepAndBrepWithVoids.hxx>
#include<RWStepShape_RWFacetedBrepShapeRepresentation.hxx>
#include<RWStepShape_RWGeometricallyBoundedSurfaceShapeRepresentation.hxx>
#include<RWStepShape_RWGeometricallyBoundedWireframeShapeRepresentation.hxx>
#include<RWStepShape_RWGeometricCurveSet.hxx>
#include<RWStepShape_RWGeometricSet.hxx>
#include<RWStepShape_RWHalfSpaceSolid.hxx>
#include<RWStepShape_RWLimitsAndFits.hxx>
#include<RWStepShape_RWLoop.hxx>
#include<RWStepShape_RWLoopAndPath.hxx>
#include<RWStepShape_RWManifoldSolidBrep.hxx>
#include<RWStepShape_RWManifoldSurfaceShapeRepresentation.hxx>
#include<RWStepShape_RWMeasureQualification.hxx>
#include<RWStepShape_RWMeasureRepresentationItemAndQualifiedRepresentationItem.hxx>
#include<RWStepShape_RWNonManifoldSurfaceShapeRepresentation.hxx>
#include<RWStepShape_RWOpenShell.hxx>
#include<RWStepShape_RWOrientedClosedShell.hxx>
#include<RWStepShape_RWOrientedEdge.hxx>
#include<RWStepShape_RWOrientedFace.hxx>
#include<RWStepShape_RWOrientedOpenShell.hxx>
#include<RWStepShape_RWOrientedPath.hxx>
#include<RWStepShape_RWPath.hxx>
#include<RWStepShape_RWPlusMinusTolerance.hxx>
#include<RWStepShape_RWPointRepresentation.hxx>
#include<RWStepShape_RWPolyLoop.hxx>
#include<RWStepShape_RWPrecisionQualifier.hxx>
#include<RWStepShape_RWQualifiedRepresentationItem.hxx>
#include<RWStepShape_RWRevolvedAreaSolid.hxx>
#include<RWStepShape_RWRevolvedFaceSolid.hxx>
#include<RWStepShape_RWRightAngularWedge.hxx>
#include<RWStepShape_RWRightCircularCone.hxx>
#include<RWStepShape_RWRightCircularCylinder.hxx>
#include<RWStepShape_RWSeamEdge.hxx>
#include<RWStepShape_RWShapeDefinitionRepresentation.hxx>
#include<RWStepShape_RWShapeDimensionRepresentation.hxx>
#include<RWStepShape_RWShapeRepresentation.hxx>
#include<RWStepShape_RWShapeRepresentationWithParameters.hxx>
#include<RWStepShape_RWShellBasedSurfaceModel.hxx>
#include<RWStepShape_RWSolidModel.hxx>
#include<RWStepShape_RWSolidReplica.hxx>
#include<RWStepShape_RWSphere.hxx>
#include<RWStepShape_RWSubedge.hxx>
#include<RWStepShape_RWSubface.hxx>
#include<RWStepShape_RWSweptAreaSolid.hxx>
#include<RWStepShape_RWSweptFaceSolid.hxx>
#include<RWStepShape_RWToleranceValue.hxx>
#include<RWStepShape_RWTopologicalRepresentationItem.hxx>
#include<RWStepShape_RWTorus.hxx>
#include<RWStepShape_RWTransitionalShapeRepresentation.hxx>
#include<RWStepShape_RWTypeQualifier.hxx>
#include<RWStepShape_RWVertex.hxx>
#include<RWStepShape_RWVertexLoop.hxx>
#include<RWStepShape_RWVertexPoint.hxx>

// Additional headers necessary for compilation.

#include<MoniTool_AttrList.hxx>
#include<MoniTool_CaseData.hxx>
#include<MoniTool_DataInfo.hxx>
#include<MoniTool_DataMapIteratorOfDataMapOfShapeTransient.hxx>
#include<MoniTool_DataMapIteratorOfDataMapOfTimer.hxx>
#include<MoniTool_DataMapNodeOfDataMapOfShapeTransient.hxx>
#include<MoniTool_DataMapNodeOfDataMapOfTimer.hxx>
#include<MoniTool_DataMapOfShapeTransient.hxx>
#include<MoniTool_DataMapOfTimer.hxx>
#include<MoniTool_Element.hxx>
#include<MoniTool_ElemHasher.hxx>
#include<MoniTool_HSequenceOfElement.hxx>
#include<MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient.hxx>
#include<MoniTool_IndexedDataMapOfShapeTransient.hxx>
#include<MoniTool_IntVal.hxx>
#include<MoniTool_Macros.hxx>
#include<MoniTool_MTHasher.hxx>
#include<MoniTool_Option.hxx>
#include<MoniTool_OptValue.hxx>
#include<MoniTool_Profile.hxx>
#include<MoniTool_RealVal.hxx>
#include<MoniTool_SequenceNodeOfSequenceOfElement.hxx>
#include<MoniTool_SequenceOfElement.hxx>
#include<MoniTool_SignShape.hxx>
#include<MoniTool_SignText.hxx>
#include<MoniTool_Stat.hxx>
#include<MoniTool_Timer.hxx>
#include<MoniTool_TimerSentry.hxx>
#include<MoniTool_TransientElem.hxx>
#include<MoniTool_TypedValue.hxx>
#include<MoniTool_ValueInterpret.hxx>
#include<MoniTool_ValueSatisfies.hxx>
#include<MoniTool_ValueType.hxx>
#include<InterfaceGraphic_Aspect.hxx>
#include<InterfaceGraphic_Cextern.hxx>
#include<InterfaceGraphic_Graphic3d.hxx>
#include<InterfaceGraphic_Labels.hxx>
#include<InterfaceGraphic_Portability.hxx>
#include<InterfaceGraphic_PrimitiveArray.hxx>
#include<InterfaceGraphic_Visual3d.hxx>
#include<InterfaceGraphic_WNT.hxx>
#include<Interface_Array1OfFileParameter.hxx>
#include<Interface_Array1OfHAsciiString.hxx>
#include<Interface_BitMap.hxx>
#include<Interface_Category.hxx>
#include<Interface_Check.hxx>
#include<Interface_CheckFailure.hxx>
#include<Interface_CheckIterator.hxx>
#include<Interface_CheckStatus.hxx>
#include<Interface_CheckTool.hxx>
#include<Interface_CopyControl.hxx>
#include<Interface_CopyMap.hxx>
#include<Interface_CopyTool.hxx>
#include<Interface_DataMapIteratorOfDataMapOfIntegerTransient.hxx>
#include<Interface_DataMapIteratorOfDataMapOfTransientInteger.hxx>
#include<Interface_DataMapNodeOfDataMapOfIntegerTransient.hxx>
#include<Interface_DataMapNodeOfDataMapOfTransientInteger.hxx>
#include<Interface_DataMapOfIntegerTransient.hxx>
#include<Interface_DataMapOfTransientInteger.hxx>
#include<Interface_DataState.hxx>
#include<Interface_EntityCluster.hxx>
#include<Interface_EntityIterator.hxx>
#include<Interface_EntityList.hxx>
#include<Interface_FileParameter.hxx>
#include<Interface_FileReaderData.hxx>
#include<Interface_FileReaderTool.hxx>
#include<Interface_FloatWriter.hxx>
#include<Interface_GeneralLib.hxx>
#include<Interface_GeneralModule.hxx>
#include<Interface_GlobalNodeOfGeneralLib.hxx>
#include<Interface_GlobalNodeOfReaderLib.hxx>
#include<Interface_Graph.hxx>
#include<Interface_GraphContent.hxx>
#include<Interface_GTool.hxx>
#include<Interface_HArray1OfHAsciiString.hxx>
#include<Interface_HGraph.hxx>
#include<Interface_HSequenceOfCheck.hxx>
#include<Interface_IndexedMapNodeOfIndexedMapOfAsciiString.hxx>
#include<Interface_IndexedMapOfAsciiString.hxx>
#include<Interface_InterfaceError.hxx>
#include<Interface_InterfaceMismatch.hxx>
#include<Interface_InterfaceModel.hxx>
#include<Interface_IntList.hxx>
#include<Interface_IntVal.hxx>
#include<Interface_LineBuffer.hxx>
#include<Interface_Macros.hxx>
#include<Interface_MapAsciiStringHasher.hxx>
#include<Interface_MSG.hxx>
#include<Interface_NodeOfGeneralLib.hxx>
#include<Interface_NodeOfReaderLib.hxx>
#include<Interface_ParamList.hxx>
#include<Interface_ParamSet.hxx>
#include<Interface_ParamType.hxx>
#include<Interface_Protocol.hxx>
#include<Interface_ReaderLib.hxx>
#include<Interface_ReaderModule.hxx>
#include<Interface_ReportEntity.hxx>
#include<Interface_SequenceNodeOfSequenceOfCheck.hxx>
#include<Interface_SequenceOfCheck.hxx>
#include<Interface_ShareFlags.hxx>
#include<Interface_ShareTool.hxx>
#include<Interface_SignLabel.hxx>
#include<Interface_SignType.hxx>
#include<Interface_STAT.hxx>
#include<Interface_Static.hxx>
#include<Interface_Statics.hxx>
#include<Interface_StaticSatisfies.hxx>
#include<Interface_Translates.hxx>
#include<Interface_TypedValue.hxx>
#include<Interface_UndefinedContent.hxx>
#include<Interface_ValueInterpret.hxx>
#include<Interface_ValueSatisfies.hxx>
#include<Interface_VectorOfFileParameter.hxx>
#include<Interface_Version.hxx>
#include<StepBasic_Action.hxx>
#include<StepBasic_ActionAssignment.hxx>
#include<StepBasic_ActionMethod.hxx>
#include<StepBasic_ActionRequestAssignment.hxx>
#include<StepBasic_ActionRequestSolution.hxx>
#include<StepBasic_Address.hxx>
#include<StepBasic_AheadOrBehind.hxx>
#include<StepBasic_ApplicationContext.hxx>
#include<StepBasic_ApplicationContextElement.hxx>
#include<StepBasic_ApplicationProtocolDefinition.hxx>
#include<StepBasic_Approval.hxx>
#include<StepBasic_ApprovalAssignment.hxx>
#include<StepBasic_ApprovalDateTime.hxx>
#include<StepBasic_ApprovalPersonOrganization.hxx>
#include<StepBasic_ApprovalRelationship.hxx>
#include<StepBasic_ApprovalRole.hxx>
#include<StepBasic_ApprovalStatus.hxx>
#include<StepBasic_AreaUnit.hxx>
#include<StepBasic_Array1OfApproval.hxx>
#include<StepBasic_Array1OfDerivedUnitElement.hxx>
#include<StepBasic_Array1OfDocument.hxx>
#include<StepBasic_Array1OfNamedUnit.hxx>
#include<StepBasic_Array1OfOrganization.hxx>
#include<StepBasic_Array1OfPerson.hxx>
#include<StepBasic_Array1OfProduct.hxx>
#include<StepBasic_Array1OfProductContext.hxx>
#include<StepBasic_Array1OfProductDefinition.hxx>
#include<StepBasic_Array1OfUncertaintyMeasureWithUnit.hxx>
#include<StepBasic_CalendarDate.hxx>
#include<StepBasic_Certification.hxx>
#include<StepBasic_CertificationAssignment.hxx>
#include<StepBasic_CertificationType.hxx>
#include<StepBasic_CharacterizedObject.hxx>
#include<StepBasic_Contract.hxx>
#include<StepBasic_ContractAssignment.hxx>
#include<StepBasic_ContractType.hxx>
#include<StepBasic_ConversionBasedUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndAreaUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndLengthUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndMassUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndPlaneAngleUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndRatioUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndSolidAngleUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndTimeUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndVolumeUnit.hxx>
#include<StepBasic_CoordinatedUniversalTimeOffset.hxx>
#include<StepBasic_Date.hxx>
#include<StepBasic_DateAndTime.hxx>
#include<StepBasic_DateAndTimeAssignment.hxx>
#include<StepBasic_DateAssignment.hxx>
#include<StepBasic_DateRole.hxx>
#include<StepBasic_DateTimeRole.hxx>
#include<StepBasic_DateTimeSelect.hxx>
#include<StepBasic_DerivedUnit.hxx>
#include<StepBasic_DerivedUnitElement.hxx>
#include<StepBasic_DesignContext.hxx>
#include<StepBasic_DigitalDocument.hxx>
#include<StepBasic_DimensionalExponents.hxx>
#include<StepBasic_Document.hxx>
#include<StepBasic_DocumentFile.hxx>
#include<StepBasic_DocumentProductAssociation.hxx>
#include<StepBasic_DocumentProductEquivalence.hxx>
#include<StepBasic_DocumentReference.hxx>
#include<StepBasic_DocumentRelationship.hxx>
#include<StepBasic_DocumentRepresentationType.hxx>
#include<StepBasic_DocumentType.hxx>
#include<StepBasic_DocumentUsageConstraint.hxx>
#include<StepBasic_Effectivity.hxx>
#include<StepBasic_EffectivityAssignment.hxx>
#include<StepBasic_EulerAngles.hxx>
#include<StepBasic_ExternalIdentificationAssignment.hxx>
#include<StepBasic_ExternallyDefinedItem.hxx>
#include<StepBasic_ExternalSource.hxx>
#include<StepBasic_GeneralProperty.hxx>
#include<StepBasic_Group.hxx>
#include<StepBasic_GroupAssignment.hxx>
#include<StepBasic_GroupRelationship.hxx>
#include<StepBasic_HArray1OfApproval.hxx>
#include<StepBasic_HArray1OfDerivedUnitElement.hxx>
#include<StepBasic_HArray1OfDocument.hxx>
#include<StepBasic_HArray1OfNamedUnit.hxx>
#include<StepBasic_HArray1OfOrganization.hxx>
#include<StepBasic_HArray1OfPerson.hxx>
#include<StepBasic_HArray1OfProduct.hxx>
#include<StepBasic_HArray1OfProductContext.hxx>
#include<StepBasic_HArray1OfProductDefinition.hxx>
#include<StepBasic_HArray1OfUncertaintyMeasureWithUnit.hxx>
#include<StepBasic_IdentificationAssignment.hxx>
#include<StepBasic_IdentificationRole.hxx>
#include<StepBasic_LengthMeasureWithUnit.hxx>
#include<StepBasic_LengthUnit.hxx>
#include<StepBasic_LocalTime.hxx>
#include<StepBasic_MassMeasureWithUnit.hxx>
#include<StepBasic_MassUnit.hxx>
#include<StepBasic_MeasureValueMember.hxx>
#include<StepBasic_MeasureWithUnit.hxx>
#include<StepBasic_MechanicalContext.hxx>
#include<StepBasic_NameAssignment.hxx>
#include<StepBasic_NamedUnit.hxx>
#include<StepBasic_ObjectRole.hxx>
#include<StepBasic_OrdinalDate.hxx>
#include<StepBasic_Organization.hxx>
#include<StepBasic_OrganizationalAddress.hxx>
#include<StepBasic_OrganizationAssignment.hxx>
#include<StepBasic_OrganizationRole.hxx>
#include<StepBasic_Person.hxx>
#include<StepBasic_PersonalAddress.hxx>
#include<StepBasic_PersonAndOrganization.hxx>
#include<StepBasic_PersonAndOrganizationAssignment.hxx>
#include<StepBasic_PersonAndOrganizationRole.hxx>
#include<StepBasic_PersonOrganizationSelect.hxx>
#include<StepBasic_PhysicallyModeledProductDefinition.hxx>
#include<StepBasic_PlaneAngleMeasureWithUnit.hxx>
#include<StepBasic_PlaneAngleUnit.hxx>
#include<StepBasic_Product.hxx>
#include<StepBasic_ProductCategory.hxx>
#include<StepBasic_ProductCategoryRelationship.hxx>
#include<StepBasic_ProductConceptContext.hxx>
#include<StepBasic_ProductContext.hxx>
#include<StepBasic_ProductDefinition.hxx>
#include<StepBasic_ProductDefinitionContext.hxx>
#include<StepBasic_ProductDefinitionEffectivity.hxx>
#include<StepBasic_ProductDefinitionFormation.hxx>
#include<StepBasic_ProductDefinitionFormationRelationship.hxx>
#include<StepBasic_ProductDefinitionFormationWithSpecifiedSource.hxx>
#include<StepBasic_ProductDefinitionRelationship.hxx>
#include<StepBasic_ProductDefinitionWithAssociatedDocuments.hxx>
#include<StepBasic_ProductOrFormationOrDefinition.hxx>
#include<StepBasic_ProductRelatedProductCategory.hxx>
#include<StepBasic_ProductType.hxx>
#include<StepBasic_RatioMeasureWithUnit.hxx>
#include<StepBasic_RatioUnit.hxx>
#include<StepBasic_RoleAssociation.hxx>
#include<StepBasic_RoleSelect.hxx>
#include<StepBasic_SecurityClassification.hxx>
#include<StepBasic_SecurityClassificationAssignment.hxx>
#include<StepBasic_SecurityClassificationLevel.hxx>
#include<StepBasic_SiPrefix.hxx>
#include<StepBasic_SiUnit.hxx>
#include<StepBasic_SiUnitAndAreaUnit.hxx>
#include<StepBasic_SiUnitAndLengthUnit.hxx>
#include<StepBasic_SiUnitAndMassUnit.hxx>
#include<StepBasic_SiUnitAndPlaneAngleUnit.hxx>
#include<StepBasic_SiUnitAndRatioUnit.hxx>
#include<StepBasic_SiUnitAndSolidAngleUnit.hxx>
#include<StepBasic_SiUnitAndThermodynamicTemperatureUnit.hxx>
#include<StepBasic_SiUnitAndTimeUnit.hxx>
#include<StepBasic_SiUnitAndVolumeUnit.hxx>
#include<StepBasic_SiUnitName.hxx>
#include<StepBasic_SizeMember.hxx>
#include<StepBasic_SizeSelect.hxx>
#include<StepBasic_SolidAngleMeasureWithUnit.hxx>
#include<StepBasic_SolidAngleUnit.hxx>
#include<StepBasic_Source.hxx>
#include<StepBasic_SourceItem.hxx>
#include<StepBasic_ThermodynamicTemperatureUnit.hxx>
#include<StepBasic_TimeMeasureWithUnit.hxx>
#include<StepBasic_TimeUnit.hxx>
#include<StepBasic_UncertaintyMeasureWithUnit.hxx>
#include<StepBasic_Unit.hxx>
#include<StepBasic_VersionedActionRequest.hxx>
#include<StepBasic_VolumeUnit.hxx>
#include<StepBasic_WeekOfYearAndDayDate.hxx>
#include<TCollection.hxx>
#include<TCollection_Array1Descriptor.hxx>
#include<TCollection_Array2Descriptor.hxx>
#include<TCollection_AsciiString.hxx>
#include<TCollection_AVLBaseNode.hxx>
#include<TCollection_AVLBaseNodePtr.hxx>
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

#include<Handle_StepData_StepReaderData.hxx>
#include<Handle_Interface_Check.hxx>
#include<Handle_StepShape_FacetedBrep.hxx>
#include<StepData_StepWriter.hxx>
#include<Interface_EntityIterator.hxx>
#include<Handle_StepShape_AngularSize.hxx>
#include<Handle_StepShape_VertexPoint.hxx>
#include<Handle_StepShape_Path.hxx>
#include<Handle_StepShape_DimensionalSizeWithPath.hxx>
#include<Handle_StepShape_ConnectedFaceSet.hxx>
#include<Handle_StepShape_TransitionalShapeRepresentation.hxx>
#include<Handle_StepShape_BoxedHalfSpace.hxx>
#include<Handle_StepShape_SolidReplica.hxx>
#include<Handle_StepShape_DimensionalCharacteristicRepresentation.hxx>
#include<Handle_StepShape_PolyLoop.hxx>
#include<Handle_StepShape_ManifoldSolidBrep.hxx>
#include<Handle_StepShape_RevolvedFaceSolid.hxx>
#include<Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation.hxx>
#include<Handle_StepShape_EdgeBasedWireframeShapeRepresentation.hxx>
#include<Handle_StepShape_GeometricSet.hxx>
#include<Handle_StepShape_Loop.hxx>
#include<Handle_StepShape_EdgeBasedWireframeModel.hxx>
#include<Handle_StepShape_GeometricCurveSet.hxx>
#include<Handle_StepShape_ExtrudedAreaSolid.hxx>
#include<Handle_StepShape_SweptFaceSolid.hxx>
#include<Handle_StepShape_Subedge.hxx>
#include<Handle_StepShape_MeasureQualification.hxx>
#include<Handle_StepShape_Block.hxx>
#include<Handle_StepShape_AdvancedBrepShapeRepresentation.hxx>
#include<Handle_StepShape_ShellBasedSurfaceModel.hxx>
#include<Handle_StepShape_ShapeDimensionRepresentation.hxx>
#include<Handle_StepShape_ToleranceValue.hxx>
#include<Handle_StepShape_PointRepresentation.hxx>
#include<Handle_StepShape_ContextDependentShapeRepresentation.hxx>
#include<Handle_StepShape_Face.hxx>
#include<Handle_StepShape_OrientedClosedShell.hxx>
#include<Handle_StepShape_CsgSolid.hxx>
#include<Handle_StepShape_ConnectedFaceSubSet.hxx>
#include<Handle_StepShape_CompoundShapeRepresentation.hxx>
#include<Handle_StepShape_FacetedBrepAndBrepWithVoids.hxx>
#include<Handle_StepShape_OrientedEdge.hxx>
#include<Handle_StepShape_SweptAreaSolid.hxx>
#include<Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem.hxx>
#include<Handle_StepShape_PlusMinusTolerance.hxx>
#include<Handle_StepShape_ClosedShell.hxx>
#include<Handle_StepShape_ConnectedEdgeSet.hxx>
#include<Handle_StepShape_NonManifoldSurfaceShapeRepresentation.hxx>
#include<Handle_StepShape_FaceBasedSurfaceModel.hxx>
#include<Handle_StepShape_QualifiedRepresentationItem.hxx>
#include<Handle_StepShape_OpenShell.hxx>
#include<Handle_StepShape_VertexLoop.hxx>
#include<Handle_StepShape_FaceSurface.hxx>
#include<Handle_StepShape_ConnectedFaceShapeRepresentation.hxx>
#include<Handle_StepShape_Vertex.hxx>
#include<Handle_StepShape_Sphere.hxx>
#include<Handle_StepShape_ExtrudedFaceSolid.hxx>
#include<Handle_StepShape_CsgShapeRepresentation.hxx>
#include<Handle_StepShape_AngularLocation.hxx>
#include<Handle_StepShape_OrientedPath.hxx>
#include<Handle_StepShape_LoopAndPath.hxx>
#include<Handle_StepShape_ShapeDefinitionRepresentation.hxx>
#include<Handle_StepShape_DimensionalLocation.hxx>
#include<Handle_StepShape_HalfSpaceSolid.hxx>
#include<Handle_StepShape_TopologicalRepresentationItem.hxx>
#include<Handle_StepShape_FaceOuterBound.hxx>
#include<Handle_StepShape_RightAngularWedge.hxx>
#include<Handle_StepShape_SolidModel.hxx>
#include<Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation.hxx>
#include<Handle_StepShape_EdgeLoop.hxx>
#include<Interface_ShareTool.hxx>
#include<Handle_StepShape_TypeQualifier.hxx>
#include<Handle_StepShape_ShapeRepresentation.hxx>
#include<Handle_StepShape_FacetedBrepShapeRepresentation.hxx>
#include<Handle_StepShape_Subface.hxx>
#include<Handle_StepShape_LimitsAndFits.hxx>
#include<Handle_StepShape_DimensionalLocationWithPath.hxx>
#include<Handle_StepShape_EdgeCurve.hxx>
#include<Handle_StepShape_SeamEdge.hxx>
#include<Handle_StepShape_Edge.hxx>
#include<Handle_StepShape_BoxDomain.hxx>
#include<Handle_StepShape_RightCircularCone.hxx>
#include<Handle_StepShape_BooleanResult.hxx>
#include<Handle_StepShape_RevolvedAreaSolid.hxx>
#include<Handle_StepShape_DimensionalSize.hxx>
#include<Handle_StepShape_FaceBound.hxx>
#include<Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation.hxx>
#include<Handle_StepShape_ManifoldSurfaceShapeRepresentation.hxx>
#include<Handle_StepShape_AdvancedFace.hxx>
#include<Handle_StepShape_Torus.hxx>
#include<Handle_StepShape_PrecisionQualifier.hxx>
#include<Handle_StepShape_OrientedFace.hxx>
#include<Handle_StepShape_BrepWithVoids.hxx>
#include<Handle_StepShape_OrientedOpenShell.hxx>
#include<Handle_StepShape_ShapeRepresentationWithParameters.hxx>
#include<Handle_StepShape_RightCircularCylinder.hxx>
%}
