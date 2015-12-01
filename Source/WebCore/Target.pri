# -------------------------------------------------------------------
# Target file for the WebCore library
#
# See 'Tools/qmake/README' for an overview of the build system
# -------------------------------------------------------------------

TEMPLATE = lib
TARGET = WebCore

include(WebCore.pri)

WEBKIT += wtf
WEBKIT += javascriptcore

CONFIG += staticlib

# Do it in the WebCore static lib to support force_static_libs_as_shared
# since the QtWebKitWidgets lib wouldn't load QtWebKit in that case.
# This should match the opposite statement in api.pri for the QtWebKit lib.
!win* {
    RESOURCES += $$PWD/WebCore.qrc
}

SOURCES += \
    Modules/geolocation/Coordinates.cpp \
    Modules/geolocation/Geolocation.cpp \
    Modules/geolocation/GeolocationController.cpp \
    Modules/geolocation/GeoNotifier.cpp \
    Modules/geolocation/NavigatorGeolocation.cpp \
    \
    Modules/webdatabase/ChangeVersionWrapper.cpp \
    Modules/webdatabase/Database.cpp \
    Modules/webdatabase/DatabaseAuthorizer.cpp \
    Modules/webdatabase/DatabaseContext.cpp \
    Modules/webdatabase/DatabaseManager.cpp \
    Modules/webdatabase/DatabaseServer.cpp \
    Modules/webdatabase/DatabaseTask.cpp \
    Modules/webdatabase/DatabaseThread.cpp \
    Modules/webdatabase/DatabaseTracker.cpp \
    Modules/webdatabase/DOMWindowWebDatabase.cpp \
    Modules/webdatabase/OriginLock.cpp \
    Modules/webdatabase/SQLException.cpp \
    Modules/webdatabase/SQLResultSet.cpp \
    Modules/webdatabase/SQLResultSetRowList.cpp \
    Modules/webdatabase/SQLStatement.cpp \
    Modules/webdatabase/SQLTransaction.cpp \
    Modules/webdatabase/SQLTransactionBackend.cpp \
    Modules/webdatabase/SQLTransactionClient.cpp \
    Modules/webdatabase/SQLTransactionCoordinator.cpp \
    Modules/webdatabase/SQLTransactionStateMachine.cpp \
    \
    accessibility/AccessibilityARIAGrid.cpp \
    accessibility/AccessibilityARIAGridCell.cpp \
    accessibility/AccessibilityARIAGridRow.cpp \
    accessibility/AccessibilityImageMapLink.cpp \
    accessibility/AccessibilityList.cpp \
    accessibility/AccessibilityListBox.cpp \
    accessibility/AccessibilityListBoxOption.cpp \
    accessibility/AccessibilityMediaControls.cpp \
    accessibility/AccessibilityMenuList.cpp \
    accessibility/AccessibilityMenuListOption.cpp \
    accessibility/AccessibilityMenuListPopup.cpp \
    accessibility/AccessibilityMockObject.cpp \
    accessibility/AccessibilityNodeObject.cpp \
    accessibility/AccessibilityObject.cpp \
    accessibility/AccessibilityProgressIndicator.cpp \
    accessibility/AccessibilityRenderObject.cpp \
    accessibility/AccessibilityScrollbar.cpp \
    accessibility/AccessibilityScrollView.cpp \
    accessibility/AccessibilitySlider.cpp \
    accessibility/AccessibilitySpinButton.cpp \
    accessibility/AccessibilitySVGRoot.cpp \
    accessibility/AccessibilityTable.cpp \
    accessibility/AccessibilityTableCell.cpp \
    accessibility/AccessibilityTableColumn.cpp \
    accessibility/AccessibilityTableHeaderContainer.cpp \
    accessibility/AccessibilityTableRow.cpp \
    accessibility/AccessibilityTree.cpp \
    accessibility/AccessibilityTreeItem.cpp \
    accessibility/AXObjectCache.cpp \
    bindings/generic/ActiveDOMCallback.cpp \
    bindings/generic/RuntimeEnabledFeatures.cpp

SOURCES += \
    bindings/js/ArrayValue.cpp \
    bindings/js/CallbackFunction.cpp \
    bindings/js/DOMWrapperWorld.cpp \
    bindings/js/Dictionary.cpp \
    bindings/js/GCController.cpp \
    bindings/js/IDBBindingUtilities.cpp \
    bindings/js/JSAttrCustom.cpp \
    bindings/js/JSAudioBufferSourceNodeCustom.cpp \
    bindings/js/JSAudioContextCustom.cpp \
    bindings/js/JSAudioTrackCustom.cpp \
    bindings/js/JSAudioTrackListCustom.cpp \
    bindings/js/JSBiquadFilterNodeCustom.cpp \
    bindings/js/JSBlobCustom.cpp \
    bindings/js/JSCSSRuleCustom.cpp \
    bindings/js/JSCSSRuleListCustom.cpp \
    bindings/js/JSCSSStyleDeclarationCustom.cpp \
    bindings/js/JSCSSValueCustom.cpp \
    bindings/js/JSCallbackData.cpp \
    bindings/js/JSCanvasRenderingContext2DCustom.cpp \
    bindings/js/JSCanvasRenderingContextCustom.cpp \
    bindings/js/JSCharacterDataCustom.cpp \
    bindings/js/JSCommandLineAPIHostCustom.cpp \
    bindings/js/JSCryptoAlgorithmBuilder.cpp \
    bindings/js/JSCryptoAlgorithmDictionary.cpp \
    bindings/js/JSCryptoCustom.cpp \
    bindings/js/JSCryptoKeyCustom.cpp \
    bindings/js/JSCryptoKeyPairCustom.cpp \
    bindings/js/JSCryptoKeySerializationJWK.cpp \
    bindings/js/JSCryptoOperationData.cpp \
    bindings/js/JSCustomEventCustom.cpp \
    bindings/js/JSCustomSQLStatementErrorCallback.cpp \
    bindings/js/JSCustomXPathNSResolver.cpp \
    bindings/js/JSDOMBinding.cpp \
    bindings/js/JSDOMFormDataCustom.cpp \
    bindings/js/JSDOMGlobalObject.cpp \
    bindings/js/JSDOMGlobalObjectTask.cpp \
    bindings/js/JSDOMMimeTypeArrayCustom.cpp \
    bindings/js/JSDOMNamedFlowCollectionCustom.cpp \
    bindings/js/JSDOMPluginArrayCustom.cpp \
    bindings/js/JSDOMPluginCustom.cpp \
    bindings/js/JSDOMPromise.cpp \
    bindings/js/JSDOMStringListCustom.cpp \
    bindings/js/JSDOMStringMapCustom.cpp \
    bindings/js/JSDOMTokenListCustom.cpp \
    bindings/js/JSDOMWindowBase.cpp \
    bindings/js/JSDOMWindowCustom.cpp \
    bindings/js/JSDOMWindowShell.cpp \
    bindings/js/JSDOMWrapper.cpp \
    bindings/js/JSDataCueCustom.cpp \
    bindings/js/JSDataTransferCustom.cpp \
    bindings/js/JSDedicatedWorkerGlobalScopeCustom.cpp \
    bindings/js/JSDeviceMotionEventCustom.cpp \
    bindings/js/JSDeviceOrientationEventCustom.cpp \
    bindings/js/JSDictionary.cpp \
    bindings/js/JSDocumentCustom.cpp \
    bindings/js/JSDocumentFragmentCustom.cpp \
    bindings/js/JSDocumentTypeCustom.cpp \
    bindings/js/JSElementCustom.cpp \
    bindings/js/JSErrorHandler.cpp \
    bindings/js/JSEventCustom.cpp \
    bindings/js/JSEventListener.cpp \
    bindings/js/JSEventTargetCustom.cpp \
    bindings/js/JSExceptionBase.cpp \
    bindings/js/JSFileReaderCustom.cpp \
    bindings/js/JSGeolocationCustom.cpp \
    bindings/js/JSHTMLAllCollectionCustom.cpp \
    bindings/js/JSHTMLAppletElementCustom.cpp \
    bindings/js/JSHTMLCanvasElementCustom.cpp \
    bindings/js/JSHTMLCollectionCustom.cpp \
    bindings/js/JSHTMLDocumentCustom.cpp \
    bindings/js/JSHTMLElementCustom.cpp \
    bindings/js/JSHTMLEmbedElementCustom.cpp \
    bindings/js/JSHTMLFormControlsCollectionCustom.cpp \
    bindings/js/JSHTMLFormElementCustom.cpp \
    bindings/js/JSHTMLFrameElementCustom.cpp \
    bindings/js/JSHTMLFrameSetElementCustom.cpp \
    bindings/js/JSHTMLInputElementCustom.cpp \
    bindings/js/JSHTMLMediaElementCustom.cpp \
    bindings/js/JSHTMLObjectElementCustom.cpp \
    bindings/js/JSHTMLOptionsCollectionCustom.cpp \
    bindings/js/JSHTMLSelectElementCustom.cpp \
    bindings/js/JSHTMLTemplateElementCustom.cpp \
    bindings/js/JSHistoryCustom.cpp \
    bindings/js/JSIDBAnyCustom.cpp \
    bindings/js/JSIDBDatabaseCustom.cpp \
    bindings/js/JSIDBObjectStoreCustom.cpp \
    bindings/js/JSImageConstructor.cpp \
    bindings/js/JSImageDataCustom.cpp \
    bindings/js/JSInspectorFrontendHostCustom.cpp \
    bindings/js/JSLazyEventListener.cpp \
    bindings/js/JSLocationCustom.cpp \
    bindings/js/JSMainThreadExecState.cpp \
    bindings/js/JSMediaSourceStatesCustom.cpp \
    bindings/js/JSMediaStreamCapabilitiesCustom.cpp \
    bindings/js/JSMessageChannelCustom.cpp \
    bindings/js/JSMessageEventCustom.cpp \
    bindings/js/JSMessagePortCustom.cpp \
    bindings/js/JSModuleLoader.cpp \
    bindings/js/JSMutationCallback.cpp \
    bindings/js/JSMutationObserverCustom.cpp \
    bindings/js/JSNamedNodeMapCustom.cpp \
    bindings/js/JSNodeCustom.cpp \
    bindings/js/JSNodeFilterCustom.cpp \
    bindings/js/JSNodeIteratorCustom.cpp \
    bindings/js/JSNodeOrString.cpp \
    bindings/js/JSNodeListCustom.cpp \
    bindings/js/JSOscillatorNodeCustom.cpp \
    bindings/js/JSPannerNodeCustom.cpp \
    bindings/js/JSPerformanceEntryCustom.cpp \
    bindings/js/JSPluginElementFunctions.cpp \
    bindings/js/JSPopStateEventCustom.cpp \
    bindings/js/JSReadableStreamPrivateConstructors.cpp \
    bindings/js/JSRTCIceCandidateCustom.cpp \
    bindings/js/JSRTCPeerConnectionCustom.cpp \
    bindings/js/JSRTCSessionDescriptionCustom.cpp \
    bindings/js/JSRTCStatsResponseCustom.cpp \
    bindings/js/JSSQLResultSetRowListCustom.cpp \
    bindings/js/JSSQLTransactionCustom.cpp \
    bindings/js/JSSVGLengthCustom.cpp \
    bindings/js/JSSVGPathSegCustom.cpp \
    bindings/js/JSStorageCustom.cpp \
    bindings/js/JSStyleSheetCustom.cpp \
    bindings/js/JSStyleSheetListCustom.cpp \
    bindings/js/JSSubtleCryptoCustom.cpp \
    bindings/js/JSTextTrackCueCustom.cpp \
    bindings/js/JSTextTrackCustom.cpp \
    bindings/js/JSTextTrackListCustom.cpp \
    bindings/js/JSTrackCustom.cpp \
    bindings/js/JSTrackEventCustom.cpp \
    bindings/js/JSTreeWalkerCustom.cpp \
    bindings/js/JSVideoTrackCustom.cpp \
    bindings/js/JSVideoTrackListCustom.cpp \
    bindings/js/JSWebGL2RenderingContextCustom.cpp \
    bindings/js/JSWebGLRenderingContextBaseCustom.cpp \
    bindings/js/JSWebGLRenderingContextCustom.cpp \
    bindings/js/JSWebKitPointCustom.cpp \
    bindings/js/JSWorkerCustom.cpp \
    bindings/js/JSWorkerGlobalScopeBase.cpp \
    bindings/js/JSWorkerGlobalScopeCustom.cpp \
    bindings/js/JSXMLHttpRequestCustom.cpp \
    bindings/js/JSXPathResultCustom.cpp \
    bindings/js/JSXSLTProcessorCustom.cpp \
    bindings/js/ScheduledAction.cpp \
    bindings/js/ScriptCachedFrameData.cpp \
    bindings/js/ScriptController.cpp \
    bindings/js/ScriptGlobalObject.cpp \
    bindings/js/ScriptState.cpp \
    bindings/js/SerializedScriptValue.cpp \
    bindings/js/WebCoreJSBuiltins.cpp \
    bindings/js/WebCoreTypedArrayController.cpp \
    bindings/js/WorkerScriptController.cpp \
    bindings/js/WorkerScriptDebugServer.cpp \
    \
    bridge/IdentifierRep.cpp \
    bridge/NP_jsobject.cpp \
    bridge/npruntime.cpp \
    bridge/runtime_array.cpp \
    bridge/runtime_method.cpp \
    bridge/runtime_object.cpp \
    bridge/runtime_root.cpp \
    \
    bridge/c/CRuntimeObject.cpp \
    bridge/c/c_class.cpp \
    bridge/c/c_instance.cpp \
    bridge/c/c_runtime.cpp \
    bridge/c/c_utility.cpp \
    \
    bridge/qt/qt_class.cpp \
    bridge/qt/qt_instance.cpp \
    bridge/qt/qt_pixmapruntime.cpp \
    bridge/qt/qt_runtime.cpp \
    \
    bridge/jsc/BridgeJSC.cpp

SOURCES += \
    Modules/navigatorcontentutils/NavigatorContentUtils.cpp \
    Modules/notifications/DOMWindowNotifications.cpp \
    Modules/notifications/Notification.cpp \
    Modules/notifications/NotificationCenter.cpp \
    Modules/notifications/NotificationController.cpp \
    Modules/notifications/WorkerGlobalScopeNotifications.cpp \
    Modules/proximity/DeviceProximityController.cpp \
    Modules/proximity/DeviceProximityEvent.cpp \
    \
    css/BasicShapeFunctions.cpp \
    css/CSSAspectRatioValue.cpp \
    css/CSSBasicShapes.cpp \
    css/CSSBorderImage.cpp \
    css/CSSBorderImageSliceValue.cpp \
    css/CSSCalculationValue.cpp \
    css/CSSCanvasValue.cpp \
    css/CSSCharsetRule.cpp \
    css/CSSComputedStyleDeclaration.cpp \
    css/CSSContentDistributionValue.cpp \
    css/CSSCrossfadeValue.cpp \
    css/CSSCursorImageValue.cpp \
    css/CSSDefaultStyleSheets.cpp \
    css/CSSFilterImageValue.cpp \
    css/CSSFontFace.cpp \
    css/CSSFontFaceLoadEvent.cpp \
    css/CSSFontFaceRule.cpp \
    css/CSSFontFaceSource.cpp \
    css/CSSFontFaceSrcValue.cpp \
    css/CSSFontFeatureValue.cpp \
    css/CSSFontSelector.cpp \
    css/CSSFontValue.cpp \
    css/CSSFunctionValue.cpp \
    css/CSSGradientValue.cpp \
    css/CSSGridLineNamesValue.cpp \
    css/CSSGridTemplateAreasValue.cpp \
    css/CSSGroupingRule.cpp \
    css/CSSImageGeneratorValue.cpp \
    css/CSSImageSetValue.cpp \
    css/CSSImageValue.cpp \
    css/CSSImportRule.cpp \
    css/CSSInheritedValue.cpp \
    css/CSSInitialValue.cpp \
    css/CSSKeyframeRule.cpp \
    css/CSSKeyframesRule.cpp \
    css/CSSLineBoxContainValue.cpp \
    css/CSSMediaRule.cpp \
    css/CSSNamedImageValue.cpp \
    css/CSSOMUtils.cpp \
    css/CSSPageRule.cpp \
    css/CSSParser.cpp \
    css/CSSParserValues.cpp \
    css/CSSPrimitiveValue.cpp \
    css/CSSProperty.cpp \
    css/CSSPropertySourceData.cpp \
    css/CSSReflectValue.cpp \
    css/CSSRevertValue.cpp \
    css/CSSRule.cpp \
    css/CSSRuleList.cpp \
    css/CSSSegmentedFontFace.cpp \
    css/CSSSelector.cpp \
    css/CSSSelectorList.cpp \
    css/CSSShadowValue.cpp \
    css/CSSStyleRule.cpp \
    css/CSSStyleSheet.cpp \
    css/CSSSupportsRule.cpp \
    css/CSSTimingFunctionValue.cpp \
    css/CSSToLengthConversionData.cpp \
    css/CSSToStyleMap.cpp \
    css/CSSUnicodeRangeValue.cpp \
    css/CSSUnsetValue.cpp \
    css/CSSValue.cpp \
    css/CSSValueList.cpp \
    css/CSSValuePool.cpp \
    css/CSSVariableDependentValue.cpp \
    css/CSSVariableValue.cpp \
    css/DOMWindowCSS.cpp \
    css/DocumentRuleSets.cpp \
    css/ElementRuleCollector.cpp \
    css/FontLoader.cpp \
    css/InspectorCSSOMWrappers.cpp \
    css/LengthFunctions.cpp \
    css/MediaFeatureNames.cpp \
    css/MediaList.cpp \
    css/MediaQuery.cpp \
    css/MediaQueryEvaluator.cpp \
    css/MediaQueryExp.cpp \
    css/MediaQueryList.cpp \
    css/MediaQueryMatcher.cpp \
    css/PageRuleCollector.cpp \
    css/PropertySetCSSStyleDeclaration.cpp \
    css/RGBColor.cpp \
    css/RuleFeature.cpp \
    css/RuleSet.cpp \
    css/SVGCSSComputedStyleDeclaration.cpp \
    css/SVGCSSParser.cpp \
    css/SelectorChecker.cpp \
    css/SelectorFilter.cpp \
    css/SourceSizeList.cpp \
    css/StyleInvalidationAnalysis.cpp \
    css/StyleMedia.cpp \
    css/StyleProperties.cpp \
    css/StylePropertyShorthand.cpp \
    css/StyleResolver.cpp \
    css/StyleRule.cpp \
    css/StyleRuleImport.cpp \
    css/StyleSheet.cpp \
    css/StyleSheetContents.cpp \
    css/StyleSheetList.cpp \
    css/TransformFunctions.cpp \
    css/ViewportStyleResolver.cpp \
    css/WebKitCSSFilterValue.cpp \
    css/WebKitCSSMatrix.cpp \
    css/WebKitCSSRegionRule.cpp \
    css/WebKitCSSTransformValue.cpp \
    css/WebKitCSSViewportRule.cpp \
    \
    cssjit/SelectorCompiler.cpp \
    \
    dom/ActiveDOMObject.cpp \
    dom/AnimationEvent.cpp \
    dom/Attr.cpp \
    dom/AuthorStyleSheets.cpp \
    dom/BeforeTextInsertedEvent.cpp \
    dom/BeforeUnloadEvent.cpp \
    dom/CDATASection.cpp \
    dom/CharacterData.cpp \
    dom/CheckedRadioButtons.cpp \
    dom/ChildListMutationScope.cpp \
    dom/ChildNodeList.cpp \
    dom/ClassCollection.cpp \
    dom/ClientRect.cpp \
    dom/ClientRectList.cpp \
    dom/ClipboardEvent.cpp \
    dom/CollectionIndexCache.cpp \
    dom/Comment.cpp \
    dom/ComposedTreeIterator.cpp \
    dom/CompositionEvent.cpp \
    dom/ContainerNode.cpp \
    dom/ContainerNodeAlgorithms.cpp \
    dom/ContextDestructionObserver.cpp \
    dom/CustomEvent.cpp \
    dom/DOMCoreException.cpp \
    dom/DOMError.cpp \
    dom/DOMImplementation.cpp \
    dom/DOMNamedFlowCollection.cpp \
    dom/DOMStringList.cpp \
    dom/DataTransfer.cpp \
    dom/DataTransferItem.cpp \
    dom/DatasetDOMStringMap.cpp \
    dom/DecodedDataDocumentParser.cpp \
    dom/DeviceMotionController.cpp \
    dom/DeviceMotionData.cpp \
    dom/DeviceMotionEvent.cpp \
    dom/DeviceOrientationController.cpp \
    dom/DeviceOrientationData.cpp \
    dom/DeviceOrientationEvent.cpp \
    dom/Document.cpp \
    dom/DocumentEventQueue.cpp \
    dom/DocumentFragment.cpp \
    dom/DocumentMarker.cpp \
    dom/DocumentMarkerController.cpp \
    dom/DocumentOrderedMap.cpp \
    dom/DocumentParser.cpp \
    dom/DocumentSharedObjectPool.cpp \
    dom/DocumentType.cpp \
    dom/Element.cpp \
    dom/ElementData.cpp \
    dom/ElementRareData.cpp \
    dom/EntityReference.cpp \
    dom/ErrorEvent.cpp \
    dom/Event.cpp \
    dom/EventContext.cpp \
    dom/EventDispatcher.cpp \
    dom/EventListenerMap.cpp \
    dom/EventNames.cpp \
    dom/EventTarget.cpp \
    dom/ExceptionBase.cpp \
    dom/ExceptionCodePlaceholder.cpp \
    dom/ExtensionStyleSheets.cpp \
    dom/FocusEvent.cpp \
    dom/GenericEventQueue.cpp \
    dom/IdTargetObserver.cpp \
    dom/IdTargetObserverRegistry.cpp \
    dom/InlineStyleSheetOwner.cpp \
    dom/KeyboardEvent.cpp \
    dom/LiveNodeList.cpp \
    dom/MessageChannel.cpp \
    dom/MessageEvent.cpp \
    dom/MessagePort.cpp \
    dom/MessagePortChannel.cpp \
    dom/MicroTask.cpp \
    dom/MouseEvent.cpp \
    dom/MouseRelatedEvent.cpp \
    dom/MutationEvent.cpp \
    dom/MutationObserver.cpp \
    dom/MutationObserverInterestGroup.cpp \
    dom/MutationObserverRegistration.cpp \
    dom/MutationRecord.cpp \
    dom/NameNodeList.cpp \
    dom/NamedFlowCollection.cpp \
    dom/NamedNodeMap.cpp \
    dom/NativeNodeFilter.cpp \
    dom/Node.cpp \
    dom/NodeFilterCondition.cpp \
    dom/NodeIterator.cpp \
    dom/NodeOrString.cpp \
    dom/NodeRareData.cpp \
    dom/NodeTraversal.cpp \
    dom/OverflowEvent.cpp \
    dom/PageTransitionEvent.cpp \
    dom/PendingScript.cpp \
    dom/PopStateEvent.cpp \
    dom/Position.cpp \
    dom/PositionIterator.cpp \
    dom/ProcessingInstruction.cpp \
    dom/ProgressEvent.cpp \
    dom/PseudoElement.cpp \
    dom/QualifiedName.cpp \
    dom/Range.cpp \
    dom/RegisteredEventListener.cpp \
    dom/ScopedEventQueue.cpp \
    dom/ScriptElement.cpp \
    dom/ScriptExecutionContext.cpp \
    dom/ScriptRunner.cpp \
    dom/ScriptableDocumentParser.cpp \
    dom/ScriptedAnimationController.cpp \
    dom/SecurityContext.cpp \
    dom/SecurityOriginPolicy.cpp \
    dom/SelectorQuery.cpp \
    dom/ShadowRoot.cpp \
    dom/SlotAssignment.cpp \
    dom/SpaceSplitString.cpp \
    dom/StaticNodeList.cpp \
    dom/StringCallback.cpp \
    dom/StyledElement.cpp \
    dom/TagCollection.cpp \
    dom/Text.cpp \
    dom/TextEvent.cpp \
    dom/TextNodeTraversal.cpp \
    dom/Touch.cpp \
    dom/TouchEvent.cpp \
    dom/TouchList.cpp \
    dom/TransformSourceLibxslt.cpp \
    dom/TransitionEvent.cpp \
    dom/Traversal.cpp \
    dom/TreeScope.cpp \
    dom/TreeScopeAdopter.cpp \
    dom/TreeWalker.cpp \
    dom/UIEvent.cpp \
    dom/UIEventWithKeyState.cpp \
    dom/UserActionElementSet.cpp \
    dom/UserGestureIndicator.cpp \
    dom/UserTypingGestureIndicator.cpp \
    dom/ViewportArguments.cpp \
    dom/VisitedLinkState.cpp \
    dom/WebKitAnimationEvent.cpp \
    dom/WebKitNamedFlow.cpp \
    dom/WebKitTransitionEvent.cpp \
    dom/WheelEvent.cpp \
    \
    dom/default/PlatformMessagePortChannel.cpp \
    \
    editing/AlternativeTextController.cpp \
    editing/AppendNodeCommand.cpp \
    editing/ApplyBlockElementCommand.cpp \
    editing/ApplyStyleCommand.cpp \
    editing/BreakBlockquoteCommand.cpp \
    editing/CompositeEditCommand.cpp \
    editing/CreateLinkCommand.cpp \
    editing/DeleteFromTextNodeCommand.cpp \
    editing/DeleteSelectionCommand.cpp \
    editing/DictationAlternative.cpp \
    editing/DictationCommand.cpp \
    editing/EditCommand.cpp \
    editing/EditingStyle.cpp \
    editing/Editor.cpp \
    editing/EditorCommand.cpp \
    editing/FormatBlockCommand.cpp \
    editing/FrameSelection.cpp \
    editing/HTMLInterchange.cpp \
    editing/IndentOutdentCommand.cpp \
    editing/InsertIntoTextNodeCommand.cpp \
    editing/InsertLineBreakCommand.cpp \
    editing/InsertListCommand.cpp \
    editing/InsertNodeBeforeCommand.cpp \
    editing/InsertParagraphSeparatorCommand.cpp \
    editing/InsertTextCommand.cpp \
    editing/MarkupAccumulator.cpp \
    editing/MergeIdenticalElementsCommand.cpp \
    editing/ModifySelectionListLevel.cpp \
    editing/MoveSelectionCommand.cpp \
    editing/RemoveCSSPropertyCommand.cpp \
    editing/RemoveFormatCommand.cpp \
    editing/RemoveNodeCommand.cpp \
    editing/RemoveNodePreservingChildrenCommand.cpp \
    editing/RenderedPosition.cpp \
    editing/ReplaceDeleteFromTextNodeCommand.cpp \
    editing/ReplaceInsertIntoTextNodeCommand.cpp \
    editing/ReplaceNodeWithSpanCommand.cpp \
    editing/ReplaceSelectionCommand.cpp \
    editing/SetNodeAttributeCommand.cpp \
    editing/SetSelectionCommand.cpp \
    editing/SimplifyMarkupCommand.cpp \
    editing/SmartReplace.cpp \
    editing/SpellChecker.cpp \
    editing/SpellingCorrectionCommand.cpp \
    editing/SplitElementCommand.cpp \
    editing/SplitTextNodeCommand.cpp \
    editing/SplitTextNodeContainingElementCommand.cpp \
    editing/TextCheckingHelper.cpp \
    editing/TextInsertionBaseCommand.cpp \
    editing/TextIterator.cpp \
    editing/TypingCommand.cpp \
    editing/UnlinkCommand.cpp \
    editing/VisiblePosition.cpp \
    editing/VisibleSelection.cpp \
    editing/VisibleUnits.cpp \
    editing/WrapContentsInDummySpanCommand.cpp \
    editing/htmlediting.cpp \
    editing/markup.cpp \
    \
    fileapi/AsyncFileStream.cpp \
    fileapi/Blob.cpp \
    fileapi/BlobURL.cpp \
    fileapi/File.cpp \
    fileapi/FileException.cpp \
    fileapi/FileList.cpp \
    fileapi/FileReader.cpp \
    fileapi/FileReaderLoader.cpp \
    fileapi/FileReaderSync.cpp \
    fileapi/ThreadableBlobRegistry.cpp \
    fileapi/WebKitBlobBuilder.cpp \
    \
    history/BackForwardController.cpp \
    history/BackForwardList.cpp \
    history/CachedFrame.cpp \
    history/CachedPage.cpp \
    history/HistoryItem.cpp \
    history/PageCache.cpp \
    \
    html/AttributeDOMTokenList.cpp \
    html/BaseButtonInputType.cpp \
    html/BaseCheckableInputType.cpp \
    html/BaseChooserOnlyDateAndTimeInputType.cpp \
    html/BaseClickableWithKeyInputType.cpp \
    html/BaseDateAndTimeInputType.cpp \
    html/BaseTextInputType.cpp \
    html/ButtonInputType.cpp \
    html/CheckboxInputType.cpp \
    html/ColorInputType.cpp \
    html/DOMFormData.cpp \
    html/DOMSettableTokenList.cpp \
    html/DOMTokenList.cpp \
    html/DOMURL.cpp \
    html/DateInputType.cpp \
    html/DateTimeInputType.cpp \
    html/DateTimeLocalInputType.cpp \
    html/EmailInputType.cpp \
    html/FTPDirectoryDocument.cpp \
    html/FileInputType.cpp \
    html/FormAssociatedElement.cpp \
    html/FormController.cpp \
    html/FormDataList.cpp \
    html/GenericCachedHTMLCollection.cpp \
    html/HTMLAllCollection.cpp \
    html/HTMLAnchorElement.cpp \
    html/HTMLAppletElement.cpp \
    html/HTMLAreaElement.cpp \
    html/HTMLAttachmentElement.cpp \
    html/HTMLAudioElement.cpp \
    html/HTMLBRElement.cpp \
    html/HTMLBaseElement.cpp \
    html/HTMLBaseFontElement.cpp \
    html/HTMLBodyElement.cpp \
    html/HTMLButtonElement.cpp \
    html/HTMLCanvasElement.cpp \
    html/HTMLCollection.cpp \
    html/HTMLDListElement.cpp \
    html/HTMLDataListElement.cpp \
    html/HTMLDetailsElement.cpp \
    html/HTMLDirectoryElement.cpp \
    html/HTMLDivElement.cpp \
    html/HTMLDocument.cpp \
    html/HTMLElement.cpp \
    html/HTMLEmbedElement.cpp \
    html/HTMLFieldSetElement.cpp \
    html/HTMLFontElement.cpp \
    html/HTMLFormControlElement.cpp \
    html/HTMLFormControlElementWithState.cpp \
    html/HTMLFormControlsCollection.cpp \
    html/HTMLFormElement.cpp \
    html/HTMLFrameElement.cpp \
    html/HTMLFrameElementBase.cpp \
    html/HTMLFrameOwnerElement.cpp \
    html/HTMLFrameSetElement.cpp \
    html/HTMLHRElement.cpp \
    html/HTMLHeadElement.cpp \
    html/HTMLHeadingElement.cpp \
    html/HTMLHtmlElement.cpp \
    html/HTMLIFrameElement.cpp \
    html/HTMLImageElement.cpp \
    html/HTMLImageLoader.cpp \
    html/HTMLInputElement.cpp \
    html/HTMLKeygenElement.cpp \
    html/HTMLLIElement.cpp \
    html/HTMLLabelElement.cpp \
    html/HTMLLegendElement.cpp \
    html/HTMLLinkElement.cpp \
    html/HTMLMapElement.cpp \
    html/HTMLMarqueeElement.cpp \
    html/HTMLMediaElement.cpp \
    html/HTMLMenuElement.cpp \
    html/HTMLMetaElement.cpp \
    html/HTMLMeterElement.cpp \
    html/HTMLModElement.cpp \
    html/HTMLNameCollection.cpp \
    html/HTMLOListElement.cpp \
    html/HTMLObjectElement.cpp \
    html/HTMLOptGroupElement.cpp \
    html/HTMLOptionElement.cpp \
    html/HTMLOptionsCollection.cpp \
    html/HTMLOutputElement.cpp \
    html/HTMLParagraphElement.cpp \
    html/HTMLParamElement.cpp \
    html/HTMLPlugInElement.cpp \
    html/HTMLPlugInImageElement.cpp \
    html/HTMLPreElement.cpp \
    html/HTMLProgressElement.cpp \
    html/HTMLQuoteElement.cpp \
    html/HTMLScriptElement.cpp \
    html/HTMLSelectElement.cpp \
    html/HTMLSlotElement.cpp \
    html/HTMLSourceElement.cpp \
    html/HTMLSpanElement.cpp \
    html/HTMLStyleElement.cpp \
    html/HTMLSummaryElement.cpp \
    html/HTMLTableCaptionElement.cpp \
    html/HTMLTableCellElement.cpp \
    html/HTMLTableColElement.cpp \
    html/HTMLTableElement.cpp \
    html/HTMLTablePartElement.cpp \
    html/HTMLTableRowElement.cpp \
    html/HTMLTableRowsCollection.cpp \
    html/HTMLTableSectionElement.cpp \
    html/HTMLTemplateElement.cpp \
    html/HTMLTextAreaElement.cpp \
    html/HTMLTextFormControlElement.cpp \
    html/HTMLTimeElement.cpp \
    html/HTMLTitleElement.cpp \
    html/HTMLTrackElement.cpp \
    html/HTMLUListElement.cpp \
    html/HTMLVideoElement.cpp \
    html/HTMLWBRElement.cpp \
    html/HiddenInputType.cpp \
    html/ImageData.cpp \
    html/ImageDocument.cpp \
    html/ImageInputType.cpp \
    html/InputType.cpp \
    html/InputTypeNames.cpp \
    html/LabelableElement.cpp \
    html/LabelsNodeList.cpp \
    html/LinkRelAttribute.cpp \
    html/MediaController.cpp \
    html/MediaDocument.cpp \
    html/MediaElementSession.cpp \
    html/MediaFragmentURIParser.cpp \
    html/MonthInputType.cpp \
    html/NumberInputType.cpp \
    html/PasswordInputType.cpp \
    html/PluginDocument.cpp \
    html/PublicURLManager.cpp \
    html/RadioInputType.cpp \
    html/RadioNodeList.cpp \
    html/RangeInputType.cpp \
    html/ResetInputType.cpp \
    html/RubyElement.cpp \
    html/RubyTextElement.cpp \
    html/SearchInputType.cpp \
    html/StepRange.cpp \
    html/SubmitInputType.cpp \
    html/TelephoneInputType.cpp \
    html/TextDocument.cpp \
    html/TextFieldInputType.cpp \
    html/TextInputType.cpp \
    html/TimeInputType.cpp \
    html/TimeRanges.cpp \
    html/TypeAhead.cpp \
    html/URLInputType.cpp \
    html/ValidationMessage.cpp \
    html/WeekInputType.cpp \
    \
    html/canvas/CanvasContextAttributes.cpp \
    html/canvas/CanvasGradient.cpp \
    html/canvas/CanvasPathMethods.cpp \
    html/canvas/CanvasPattern.cpp \
    html/canvas/CanvasProxy.cpp \
    html/canvas/CanvasRenderingContext.cpp \
    html/canvas/CanvasRenderingContext2D.cpp \
    html/canvas/CanvasStyle.cpp \
    html/canvas/DOMPath.cpp \
    \
    html/forms/FileIconLoader.cpp \
    \
    html/parser/CSSPreloadScanner.cpp \
    html/parser/HTMLConstructionSite.cpp \
    html/parser/HTMLDocumentParser.cpp \
    html/parser/HTMLElementStack.cpp \
    html/parser/HTMLEntityParser.cpp \
    html/parser/HTMLEntitySearch.cpp \
    html/parser/HTMLFormattingElementList.cpp \
    html/parser/HTMLMetaCharsetParser.cpp \
    html/parser/HTMLParserIdioms.cpp \
    html/parser/HTMLParserOptions.cpp \
    html/parser/HTMLParserScheduler.cpp \
    html/parser/HTMLPreloadScanner.cpp \
    html/parser/HTMLResourcePreloader.cpp \
    html/parser/HTMLScriptRunner.cpp \
    html/parser/HTMLSourceTracker.cpp \
    html/parser/HTMLSrcsetParser.cpp \
    html/parser/HTMLTokenizer.cpp \
    html/parser/HTMLTreeBuilder.cpp \
    html/parser/TextDocumentParser.cpp \
    html/parser/XSSAuditor.cpp \
    html/parser/XSSAuditorDelegate.cpp \
    \
    html/shadow/AutoFillButtonElement.cpp \
    html/shadow/DetailsMarkerControl.cpp \
    html/shadow/MediaControlElementTypes.cpp \
    html/shadow/MediaControlElements.cpp \
    html/shadow/MediaControls.cpp \
    html/shadow/MeterShadowElement.cpp \
    html/shadow/ProgressShadowElement.cpp \
    html/shadow/SliderThumbElement.cpp \
    html/shadow/SpinButtonElement.cpp \
    html/shadow/TextControlInnerElements.cpp \
    \
    inspector/CommandLineAPIHost.cpp \
    inspector/CommandLineAPIModule.cpp \
    inspector/DOMEditor.cpp \
    inspector/DOMPatchSupport.cpp \
    inspector/InspectorApplicationCacheAgent.cpp \
    inspector/InspectorClient.cpp \
    inspector/InspectorController.cpp \
    inspector/InspectorCSSAgent.cpp \
    inspector/InspectorDatabaseAgent.cpp \
    inspector/InspectorDatabaseResource.cpp \
    inspector/InspectorDOMAgent.cpp \
    inspector/InspectorDOMDebuggerAgent.cpp \
    inspector/InspectorDOMStorageAgent.cpp \
    inspector/InspectorFrontendClientLocal.cpp \
    inspector/InspectorFrontendHost.cpp \
    inspector/InspectorHistory.cpp \
    inspector/InspectorInstrumentation.cpp \
    inspector/InspectorInstrumentationCookie.cpp \
    inspector/InspectorLayerTreeAgent.cpp \
    inspector/InspectorNetworkAgent.cpp \
    inspector/InspectorNodeFinder.cpp \
    inspector/InspectorOverlay.cpp \
    inspector/InspectorPageAgent.cpp \
    inspector/InspectorReplayAgent.cpp \
    inspector/InspectorStyleSheet.cpp \
    inspector/InspectorTimelineAgent.cpp \
    inspector/InspectorWorkerAgent.cpp \
    inspector/InstrumentingAgents.cpp \
    inspector/NetworkResourcesData.cpp \
    inspector/PageConsoleAgent.cpp \
    inspector/PageDebuggerAgent.cpp \
    inspector/PageRuntimeAgent.cpp \
    inspector/PageScriptDebugServer.cpp \
    inspector/TimelineRecordFactory.cpp \
    inspector/WebConsoleAgent.cpp \
    inspector/WebDebuggerAgent.cpp \
    inspector/WebInjectedScriptHost.cpp \
    inspector/WebInjectedScriptManager.cpp \
    inspector/WorkerConsoleAgent.cpp \
    inspector/WorkerDebuggerAgent.cpp \
    inspector/WorkerInspectorController.cpp \
    inspector/WorkerRuntimeAgent.cpp \
    \
    loader/appcache/ApplicationCache.cpp \
    loader/appcache/ApplicationCacheGroup.cpp \
    loader/appcache/ApplicationCacheHost.cpp \
    loader/appcache/ApplicationCacheResource.cpp \
    loader/appcache/ApplicationCacheStorage.cpp \
    loader/appcache/DOMApplicationCache.cpp \
    loader/appcache/ManifestParser.cpp \
    \
    loader/archive/Archive.cpp \
    loader/archive/ArchiveFactory.cpp \
    loader/archive/ArchiveResource.cpp \
    loader/archive/ArchiveResourceCollection.cpp \
    \
    loader/cache/CachedCSSStyleSheet.cpp \
    loader/cache/CachedFont.cpp \
    loader/cache/CachedImage.cpp \
    loader/cache/CachedRawResource.cpp \
    loader/cache/CachedResource.cpp \
    loader/cache/CachedResourceHandle.cpp \
    loader/cache/CachedResourceLoader.cpp \
    loader/cache/CachedResourceRequest.cpp \
    loader/cache/CachedResourceRequestInitiators.cpp \
    loader/cache/CachedSVGDocument.cpp \
    loader/cache/CachedSVGDocumentReference.cpp \
    loader/cache/CachedSVGFont.cpp \
    loader/cache/CachedScript.cpp \
    loader/cache/CachedXSLStyleSheet.cpp \
    loader/cache/MemoryCache.cpp \
    \
    loader/ContentFilter.cpp \
    loader/CookieJar.cpp \
    loader/CrossOriginAccessControl.cpp \
    loader/CrossOriginPreflightResultCache.cpp \
    loader/DocumentLoadTiming.cpp \
    loader/DocumentLoader.cpp \
    loader/DocumentThreadableLoader.cpp \
    loader/DocumentWriter.cpp \
    loader/EmptyClients.cpp \
    loader/FTPDirectoryParser.cpp \
    loader/FormState.cpp \
    loader/FormSubmission.cpp \
    loader/FrameLoadRequest.cpp \
    loader/FrameLoader.cpp \
    loader/FrameLoaderStateMachine.cpp \
    loader/HistoryController.cpp \
    loader/ImageLoader.cpp \
    loader/LinkLoader.cpp \
    loader/LoaderStrategy.cpp \
    loader/MediaResourceLoader.cpp \
    loader/MixedContentChecker.cpp \
    loader/NavigationAction.cpp \
    loader/NavigationScheduler.cpp \
    loader/NetscapePlugInStreamLoader.cpp \
    loader/PingLoader.cpp \
    loader/PolicyCallback.cpp \
    loader/PolicyChecker.cpp \
    loader/ProgressTracker.cpp \
    loader/ResourceLoadNotifier.cpp \
    loader/ResourceLoadScheduler.cpp \
    loader/ResourceLoader.cpp \
    loader/SinkDocument.cpp \
    loader/SubframeLoader.cpp \
    loader/SubresourceLoader.cpp \
    loader/TextResourceDecoder.cpp \
    loader/TextTrackLoader.cpp \
    loader/ThreadableLoader.cpp \
    loader/WorkerThreadableLoader.cpp \
    \
    loader/icon/IconController.cpp \
    loader/icon/IconDatabase.cpp \
    loader/icon/IconDatabaseBase.cpp \
    loader/icon/IconLoader.cpp \
    loader/icon/IconRecord.cpp \
    loader/icon/PageURLRecord.cpp \
    \
    page/animation/AnimationBase.cpp \
    page/animation/AnimationController.cpp \
    page/animation/CompositeAnimation.cpp \
    page/animation/CSSPropertyAnimation.cpp \
    page/animation/ImplicitAnimation.cpp \
    page/animation/KeyframeAnimation.cpp \
    \
    page/AutoscrollController.cpp \
    page/BarProp.cpp \
    page/CaptionUserPreferences.cpp \
    page/Chrome.cpp \
    page/ContentSecurityPolicy.cpp \
    page/ContextMenuContext.cpp \
    page/ContextMenuController.cpp \
    page/Crypto.cpp \
    page/DOMSecurityPolicy.cpp \
    page/DOMSelection.cpp \
    page/DOMTimer.cpp \
    page/DOMWindow.cpp \
    page/DOMWindowExtension.cpp \
    page/DOMWindowProperty.cpp \
    page/DatabaseProvider.cpp \
    page/DebugPageOverlays.cpp \
    page/DeviceController.cpp \
    page/DiagnosticLoggingKeys.cpp \
    page/DragController.cpp \
    page/EventHandler.cpp \
    page/EventSource.cpp \
    page/FocusController.cpp \
    page/Frame.cpp \
    page/FrameDestructionObserver.cpp \
    page/FrameSnapshotting.cpp \
    page/FrameTree.cpp \
    page/FrameView.cpp \
    page/History.cpp \
    page/Location.cpp \
    page/MainFrame.cpp \
    page/MouseEventWithHitTestResults.cpp \
    page/Navigator.cpp \
    page/NavigatorBase.cpp \
    page/OriginAccessEntry.cpp \
    page/Page.cpp \
    page/PageConfiguration.cpp \
    page/PageConsoleClient.cpp \
    page/PageGroup.cpp \
    page/PageGroupLoadDeferrer.cpp \
    page/PageOverlay.cpp \
    page/PageOverlayController.cpp \
    page/PageSerializer.cpp \
    page/PageThrottler.cpp \
    page/PageVisibilityState.cpp \
    page/Performance.cpp \
    page/PerformanceEntry.cpp \
    page/PerformanceEntryList.cpp \
    page/PerformanceNavigation.cpp \
    page/PerformanceResourceTiming.cpp \
    page/PerformanceTiming.cpp \
    page/PerformanceUserTiming.cpp \
    page/PointerLockController.cpp \
    page/PrintContext.cpp \
    page/ResourceUsageOverlay.cpp \
    page/Screen.cpp \
    page/SecurityOrigin.cpp \
    page/SecurityOriginData.cpp \
    page/SecurityPolicy.cpp \
    page/Settings.cpp \
    page/SpatialNavigation.cpp \
    page/SuspendableTimer.cpp \
    page/TextIndicator.cpp \
    page/UserContentController.cpp \
    page/UserContentURLPattern.cpp \
    page/VisitedLinkStore.cpp \
    page/WheelEventDeltaFilter.cpp \
    page/WheelEventTestTrigger.cpp \
    page/WindowFeatures.cpp \
    page/WindowFocusAllowedIndicator.cpp \
    \
    page/scrolling/AxisScrollSnapOffsets.cpp \
    page/scrolling/ScrollLatchingState.cpp \
    page/scrolling/ScrollingConstraints.cpp \
    page/scrolling/ScrollingCoordinator.cpp \
    page/scrolling/ScrollingStateFixedNode.cpp \
    page/scrolling/ScrollingStateFrameScrollingNode.cpp \
    page/scrolling/ScrollingStateNode.cpp \
    page/scrolling/ScrollingStateOverflowScrollingNode.cpp \
    page/scrolling/ScrollingStateScrollingNode.cpp \
    page/scrolling/ScrollingStateStickyNode.cpp \
    page/scrolling/ScrollingStateTree.cpp \
    page/scrolling/ScrollingThread.cpp \
    page/scrolling/ScrollingTree.cpp \
    page/scrolling/ScrollingTreeFrameScrollingNode.cpp \
    page/scrolling/ScrollingTreeNode.cpp \
    page/scrolling/ScrollingTreeOverflowScrollingNode.cpp \
    page/scrolling/ScrollingTreeScrollingNode.cpp \
    page/scrolling/ThreadedScrollingTree.cpp \
    \
    platform/CalculationValue.cpp \
    platform/Clock.cpp \
    platform/ClockGeneric.cpp \
    platform/ContentType.cpp \
    platform/ContextMenu.cpp \
    platform/ContextMenuItem.cpp \
    platform/CrossThreadCopier.cpp \
    platform/Cursor.cpp \
    platform/DateComponents.cpp \
    platform/Decimal.cpp \
    platform/DisplaySleepDisabler.cpp \
    platform/DragData.cpp \
    platform/DragImage.cpp \
    platform/FileChooser.cpp \
    platform/FileStream.cpp \
    platform/FileSystem.cpp \
    platform/Language.cpp \
    platform/Length.cpp \
    platform/LengthSize.cpp \
    platform/LinkHash.cpp \
    platform/Logging.cpp \
    platform/LocalizedStrings.cpp \
    platform/MIMETypeRegistry.cpp \
    platform/MainThreadSharedTimer.cpp \
    platform/MemoryPressureHandler.cpp \
    platform/NotImplemented.cpp \
    platform/PlatformEvent.cpp \
    platform/PlatformSpeechSynthesisUtterance.cpp \
    platform/PlatformSpeechSynthesisVoice.cpp \
    platform/PlatformSpeechSynthesizer.cpp \
    platform/PlatformStrategies.cpp \
    platform/RemoteCommandListener.cpp \
    platform/RuntimeApplicationChecks.cpp \
    platform/SchemeRegistry.cpp \
    platform/ScrollAnimator.cpp \
    platform/ScrollView.cpp \
    platform/ScrollableArea.cpp \
    platform/Scrollbar.cpp \
    platform/ScrollbarTheme.cpp \
    platform/ScrollbarThemeComposite.cpp \
    platform/SharedBuffer.cpp \
    platform/SharedBufferChunkReader.cpp \
    platform/SystemSleepListener.cpp \
    platform/Theme.cpp \
    platform/ThreadGlobalData.cpp \
    platform/ThreadTimers.cpp \
    platform/Timer.cpp \
    platform/URL.cpp \
    platform/UUID.cpp \
    platform/UserActivity.cpp \
    platform/Widget.cpp \
    \
    platform/animation/Animation.cpp \
    platform/animation/AnimationList.cpp \
    platform/animation/TimingFunction.cpp \
    \
    platform/graphics/BitmapImage.cpp \
    platform/graphics/Color.cpp \
    platform/graphics/CrossfadeGeneratedImage.cpp \
    platform/graphics/DisplayRefreshMonitorClient.cpp \
    platform/graphics/FloatPoint.cpp \
    platform/graphics/FloatPoint3D.cpp \
    platform/graphics/FloatPolygon.cpp \
    platform/graphics/FloatQuad.cpp \
    platform/graphics/FloatRect.cpp \
    platform/graphics/FloatRoundedRect.cpp \
    platform/graphics/FloatSize.cpp \
    platform/graphics/Font.cpp \
    platform/graphics/FontCache.cpp \
    platform/graphics/FontCascade.cpp \
    platform/graphics/FontCascadeFonts.cpp \
    platform/graphics/FontDescription.cpp \
    platform/graphics/FontFeatureSettings.cpp \
    platform/graphics/FontGenericFamilies.cpp \
    platform/graphics/FontRanges.cpp \
    platform/graphics/GeneratedImage.cpp \
    platform/graphics/GeometryUtilities.cpp \
    platform/graphics/Gradient.cpp \
    platform/graphics/GradientImage.cpp \
    platform/graphics/GraphicsContext.cpp \
    platform/graphics/GraphicsLayer.cpp \
    platform/graphics/GraphicsLayerTransform.cpp \
    platform/graphics/GraphicsLayerUpdater.cpp \
    platform/graphics/GraphicsTypes.cpp \
    platform/graphics/ISOVTTCue.cpp \
    platform/graphics/Image.cpp \
    platform/graphics/ImageBuffer.cpp \
    platform/graphics/ImageOrientation.cpp \
    platform/graphics/ImageSource.cpp \
    platform/graphics/IntPoint.cpp \
    platform/graphics/IntRect.cpp \
    platform/graphics/IntSize.cpp \
    platform/graphics/LayoutPoint.cpp \
    platform/graphics/LayoutRect.cpp \
    platform/graphics/LayoutSize.cpp \
    platform/graphics/MediaPlayer.cpp \
    platform/graphics/NamedImageGeneratedImage.cpp \
    platform/graphics/Path.cpp \
    platform/graphics/PathTraversalState.cpp \
    platform/graphics/PathUtilities.cpp \
    platform/graphics/Pattern.cpp \
    platform/graphics/PlatformTimeRanges.cpp \
    platform/graphics/Region.cpp \
    platform/graphics/RoundedRect.cpp \
    platform/graphics/SVGGlyph.cpp \
    platform/graphics/ShadowBlur.cpp \
    platform/graphics/StringTruncator.cpp \
    platform/graphics/SurrogatePairAwareTextIterator.cpp \
    platform/graphics/TextRun.cpp \
    platform/graphics/WidthIterator.cpp \
    \
    platform/graphics/filters/DistantLightSource.cpp \
    platform/graphics/filters/FEBlend.cpp \
    platform/graphics/filters/FEColorMatrix.cpp \
    platform/graphics/filters/FEComponentTransfer.cpp \
    platform/graphics/filters/FEComposite.cpp \
    platform/graphics/filters/FEConvolveMatrix.cpp \
    platform/graphics/filters/FEDiffuseLighting.cpp \
    platform/graphics/filters/FEDisplacementMap.cpp \
    platform/graphics/filters/FEDropShadow.cpp \
    platform/graphics/filters/FEFlood.cpp \
    platform/graphics/filters/FEGaussianBlur.cpp \
    platform/graphics/filters/FELighting.cpp \
    platform/graphics/filters/FEMerge.cpp \
    platform/graphics/filters/FEMorphology.cpp \
    platform/graphics/filters/FEOffset.cpp \
    platform/graphics/filters/FESpecularLighting.cpp \
    platform/graphics/filters/FETile.cpp \
    platform/graphics/filters/FETurbulence.cpp \
    platform/graphics/filters/FilterEffect.cpp \
    platform/graphics/filters/FilterOperation.cpp \
    platform/graphics/filters/FilterOperations.cpp \
    platform/graphics/filters/PointLightSource.cpp \
    platform/graphics/filters/SourceAlpha.cpp \
    platform/graphics/filters/SourceGraphic.cpp \
    platform/graphics/filters/SpotLightSource.cpp \
    \
    platform/graphics/opentype/OpenTypeMathData.cpp \
    \
    platform/graphics/texmap/TextureMapper.cpp \
    platform/graphics/texmap/TextureMapperAnimation.cpp \
    platform/graphics/texmap/TextureMapperBackingStore.cpp \
    platform/graphics/texmap/TextureMapperFPSCounter.cpp \
    platform/graphics/texmap/TextureMapperLayer.cpp \
    platform/graphics/texmap/TextureMapperSurfaceBackingStore.cpp \
    platform/graphics/texmap/TextureMapperTile.cpp \
    platform/graphics/texmap/TextureMapperTiledBackingStore.cpp \
    \
    platform/graphics/transforms/AffineTransform.cpp \
    platform/graphics/transforms/Matrix3DTransformOperation.cpp \
    platform/graphics/transforms/MatrixTransformOperation.cpp \
    platform/graphics/transforms/PerspectiveTransformOperation.cpp \
    platform/graphics/transforms/RotateTransformOperation.cpp \
    platform/graphics/transforms/ScaleTransformOperation.cpp \
    platform/graphics/transforms/SkewTransformOperation.cpp \
    platform/graphics/transforms/TransformationMatrix.cpp \
    platform/graphics/transforms/TransformOperations.cpp \
    platform/graphics/transforms/TransformState.cpp \
    platform/graphics/transforms/TranslateTransformOperation.cpp \
    \
    platform/image-decoders/ImageDecoder.cpp \
    platform/image-decoders/bmp/BMPImageDecoder.cpp \
    platform/image-decoders/bmp/BMPImageReader.cpp \
    platform/image-decoders/gif/GIFImageDecoder.cpp \
    platform/image-decoders/gif/GIFImageReader.cpp\
    platform/KillRingNone.cpp \
    \
    platform/mock/DeviceMotionClientMock.cpp \
    platform/mock/DeviceOrientationClientMock.cpp \
    platform/mock/GeolocationClientMock.cpp \
    platform/mock/PlatformSpeechSynthesizerMock.cpp \
    platform/mock/ScrollbarThemeMock.cpp \
    \
    platform/network/AuthenticationChallengeBase.cpp \
    platform/network/BlobData.cpp \
    platform/network/BlobDataFileReference.cpp \
    platform/network/BlobRegistry.cpp \
    platform/network/BlobRegistryImpl.cpp \
    platform/network/BlobResourceHandle.cpp \
    platform/network/CacheValidation.cpp \
    platform/network/CredentialBase.cpp \
    platform/network/CredentialStorage.cpp \
    platform/network/DataURL.cpp \
    platform/network/DataURLDecoder.cpp \
    platform/network/DNSResolveQueue.cpp \
    platform/network/FormData.cpp \
    platform/network/FormDataBuilder.cpp \
    platform/network/HTTPHeaderMap.cpp \
    platform/network/HTTPParsers.cpp \
    platform/network/MIMEHeader.cpp \
    platform/network/NetworkStateNotifier.cpp \
    platform/network/NetworkStorageSessionStub.cpp \
    platform/network/ParsedContentType.cpp \
    platform/network/ProtectionSpaceBase.cpp \
    platform/network/ProxyServer.cpp \
    platform/network/ResourceErrorBase.cpp \
    platform/network/ResourceHandle.cpp \
    platform/network/ResourceHandleClient.cpp \
    platform/network/ResourceRequestBase.cpp \
    platform/network/ResourceResponseBase.cpp \
    platform/network/SynchronousLoaderClient.cpp \
    \
    platform/sql/SQLiteAuthorizer.cpp \
    platform/sql/SQLiteDatabase.cpp \
    platform/sql/SQLiteDatabaseTracker.cpp \
    platform/sql/SQLiteFileSystem.cpp \
    platform/sql/SQLiteStatement.cpp \
    platform/sql/SQLiteTransaction.cpp \
    platform/sql/SQLValue.cpp \
    \
    platform/text/BidiContext.cpp \
    platform/text/DateTimeFormat.cpp \
    platform/text/LineEnding.cpp \
    platform/text/LocaleToScriptMappingDefault.cpp \
    platform/text/PlatformLocale.cpp \
    platform/text/QuotedPrintable.cpp \
    platform/text/SegmentedString.cpp \
    platform/text/TextBoundaries.cpp \
    platform/text/TextBreakIterator.cpp \
    platform/text/TextCodec.cpp \
    platform/text/TextCodecICU.cpp \
    platform/text/TextCodecLatin1.cpp \
    platform/text/TextCodecUTF16.cpp \
    platform/text/TextCodecUTF8.cpp \
    platform/text/TextCodecUserDefined.cpp \
    platform/text/TextEncoding.cpp \
    platform/text/TextEncodingDetectorICU.cpp \
    platform/text/TextEncodingRegistry.cpp \
    platform/text/TextStream.cpp \
    \
    platform/text/icu/UTextProvider.cpp \
    platform/text/icu/UTextProviderLatin1.cpp \
    platform/text/icu/UTextProviderUTF16.cpp \
    \
    plugins/PluginData.cpp \
    plugins/DOMPluginArray.cpp \
    plugins/DOMPlugin.cpp \
    plugins/DOMMimeType.cpp \
    plugins/DOMMimeTypeArray.cpp \
    \
    rendering/AutoTableLayout.cpp \
    rendering/BidiRun.cpp \
    rendering/BorderEdge.cpp \
    rendering/ClipRect.cpp \
    rendering/CounterNode.cpp \
    rendering/EllipsisBox.cpp \
    rendering/FilterEffectRenderer.cpp \
    rendering/FixedTableLayout.cpp \
    rendering/FloatingObjects.cpp \
    rendering/FlowThreadController.cpp \
    rendering/HitTestLocation.cpp \
    rendering/HitTestResult.cpp \
    rendering/HitTestingTransformState.cpp \
    rendering/ImageQualityController.cpp \
    rendering/InlineBox.cpp \
    rendering/InlineElementBox.cpp \
    rendering/InlineFlowBox.cpp \
    rendering/InlineIterator.cpp \
    rendering/InlineTextBox.cpp \
    rendering/LayoutRepainter.cpp \
    rendering/LayoutState.cpp \
    rendering/OrderIterator.cpp \
    rendering/PointerEventsHitRules.cpp \
    rendering/RenderAttachment.cpp \
    rendering/RenderBlock.cpp \
    rendering/RenderBlockFlow.cpp \
    rendering/RenderBlockLineLayout.cpp \
    rendering/RenderBox.cpp \
    rendering/RenderBoxModelObject.cpp \
    rendering/RenderButton.cpp \
    rendering/RenderCombineText.cpp \
    rendering/RenderCounter.cpp \
    rendering/RenderDeprecatedFlexibleBox.cpp \
    rendering/RenderDetailsMarker.cpp \
    rendering/RenderElement.cpp \
    rendering/RenderEmbeddedObject.cpp \
    rendering/RenderFieldset.cpp \
    rendering/RenderFileUploadControl.cpp \
    rendering/RenderFlexibleBox.cpp \
    rendering/RenderFlowThread.cpp \
    rendering/RenderFrame.cpp \
    rendering/RenderFrameBase.cpp \
    rendering/RenderFrameSet.cpp \
    rendering/RenderFullScreen.cpp \
    rendering/RenderGeometryMap.cpp \
    rendering/RenderGrid.cpp \
    rendering/RenderHTMLCanvas.cpp \
    rendering/RenderIFrame.cpp \
    rendering/RenderImage.cpp \
    rendering/RenderImageResource.cpp \
    rendering/RenderImageResourceStyleImage.cpp \
    rendering/RenderInline.cpp \
    rendering/RenderLayer.cpp \
    rendering/RenderLayerBacking.cpp \
    rendering/RenderLayerCompositor.cpp \
    rendering/RenderLayerFilterInfo.cpp \
    rendering/RenderLayerModelObject.cpp \
    rendering/RenderLineBoxList.cpp \
    rendering/RenderLineBreak.cpp \
    rendering/RenderListBox.cpp \
    rendering/RenderListItem.cpp \
    rendering/RenderListMarker.cpp \
    rendering/RenderMarquee.cpp \
    rendering/RenderMedia.cpp \
    rendering/RenderMediaControlElements.cpp \
    rendering/RenderMediaControls.cpp \
    rendering/RenderMenuList.cpp \
    rendering/RenderMeter.cpp \
    rendering/RenderMultiColumnFlowThread.cpp \
    rendering/RenderMultiColumnSet.cpp \
    rendering/RenderMultiColumnSpannerPlaceholder.cpp \
    rendering/RenderNamedFlowFragment.cpp \
    rendering/RenderNamedFlowThread.cpp \
    rendering/RenderObject.cpp \
    rendering/RenderProgress.cpp \
    rendering/RenderQuote.cpp \
    rendering/RenderRegion.cpp \
    rendering/RenderRegionSet.cpp \
    rendering/RenderReplaced.cpp \
    rendering/RenderReplica.cpp \
    rendering/RenderRuby.cpp \
    rendering/RenderRubyBase.cpp \
    rendering/RenderRubyRun.cpp \
    rendering/RenderRubyText.cpp \
    rendering/RenderScrollbar.cpp \
    rendering/RenderScrollbarPart.cpp \
    rendering/RenderScrollbarTheme.cpp \
    rendering/RenderSearchField.cpp \
    rendering/RenderSelectionInfo.cpp \
    rendering/RenderSlider.cpp \
    rendering/RenderSnapshottedPlugIn.cpp \
    rendering/RenderTable.cpp \
    rendering/RenderTableCaption.cpp \
    rendering/RenderTableCell.cpp \
    rendering/RenderTableCol.cpp \
    rendering/RenderTableRow.cpp \
    rendering/RenderTableSection.cpp \
    rendering/RenderText.cpp \
    rendering/RenderTextControl.cpp \
    rendering/RenderTextControlMultiLine.cpp \
    rendering/RenderTextControlSingleLine.cpp \
    rendering/RenderTextFragment.cpp \
    rendering/RenderTextLineBoxes.cpp \
    rendering/RenderTheme.cpp \
    rendering/RenderTreeAsText.cpp \
    rendering/RenderVTTCue.cpp \
    rendering/RenderVideo.cpp \
    rendering/RenderView.cpp \
    rendering/RenderWidget.cpp \
    rendering/RootInlineBox.cpp \
    rendering/ScrollBehavior.cpp \
    rendering/SelectionSubtreeRoot.cpp \
    rendering/SimpleLineLayout.cpp \
    rendering/SimpleLineLayoutFlowContents.cpp \
    rendering/SimpleLineLayoutFunctions.cpp \
    rendering/SimpleLineLayoutResolver.cpp \
    rendering/SimpleLineLayoutTextFragmentIterator.cpp \
    rendering/TextAutosizer.cpp \
    rendering/TextPaintStyle.cpp \
    rendering/TextPainter.cpp \
    rendering/break_lines.cpp \
    \
    rendering/line/LineBreaker.cpp \
    rendering/line/LineInfo.cpp \
    rendering/line/LineWidth.cpp \
    rendering/line/TrailingObjects.cpp \
    \
    rendering/shapes/BoxShape.cpp \
    rendering/shapes/PolygonShape.cpp \
    rendering/shapes/RasterShape.cpp \
    rendering/shapes/RectangleShape.cpp \
    rendering/shapes/Shape.cpp \
    rendering/shapes/ShapeOutsideInfo.cpp \
    \
    rendering/style/BasicShapes.cpp \
    rendering/style/ContentData.cpp \
    rendering/style/CounterDirectives.cpp \
    rendering/style/FillLayer.cpp \
    rendering/style/GridResolvedPosition.cpp \
    rendering/style/KeyframeList.cpp \
    rendering/style/NinePieceImage.cpp \
    rendering/style/QuotesData.cpp \
    rendering/style/RenderStyle.cpp \
    rendering/style/RenderStyleConstants.cpp \
    rendering/style/ShadowData.cpp \
    rendering/style/ShapeValue.cpp \
    rendering/style/StyleBackgroundData.cpp \
    rendering/style/StyleBoxData.cpp \
    rendering/style/StyleCachedImage.cpp \
    rendering/style/StyleCachedImageSet.cpp \
    rendering/style/StyleDeprecatedFlexibleBoxData.cpp \
    rendering/style/StyleFilterData.cpp \
    rendering/style/StyleFlexibleBoxData.cpp \
    rendering/style/StyleGeneratedImage.cpp \
    rendering/style/StyleGridData.cpp \
    rendering/style/StyleGridItemData.cpp \
    rendering/style/StyleInheritedData.cpp \
    rendering/style/StyleMarqueeData.cpp \
    rendering/style/StyleMultiColData.cpp \
    rendering/style/StyleRareInheritedData.cpp \
    rendering/style/StyleRareNonInheritedData.cpp \
    rendering/style/StyleScrollSnapPoints.cpp \
    rendering/style/StyleSurroundData.cpp \
    rendering/style/StyleTransformData.cpp \
    rendering/style/StyleVisualData.cpp \
    rendering/style/SVGRenderStyle.cpp \
    rendering/style/SVGRenderStyleDefs.cpp \
    rendering/style/WillChangeData.cpp \
    \
    replay/UserInputBridge.cpp \
    \
    storage/Storage.cpp \
    storage/StorageEvent.cpp \
    storage/StorageEventDispatcher.cpp \
    storage/StorageMap.cpp \
    storage/StorageNamespaceProvider.cpp \
    \
    style/InlineTextBoxStyle.cpp \
    style/RenderTreePosition.cpp \
    style/StyleFontSizeFunctions.cpp \
    style/StyleResolveForDocument.cpp \
    style/StyleResolveTree.cpp \
    \
    #testing/Internals.cpp \
    #testing/InternalSettings.cpp \
    #testing/MicroTaskTest.cpp \
    #testing/MockCDM.cpp \
    #testing/MockContentFilter.cpp \
    #testing/MockContentFilterSettings.cpp \
    #testing/MockPageOverlayClient.cpp
    #\
    xml/DOMParser.cpp \
    xml/NativeXPathNSResolver.cpp \
    xml/XMLErrors.cpp \
    xml/XMLHttpRequest.cpp \
    xml/XMLHttpRequestException.cpp \
    xml/XMLHttpRequestProgressEventThrottle.cpp \
    xml/XMLHttpRequestUpload.cpp \
    xml/XMLSerializer.cpp \
    xml/XMLTreeViewer.cpp \
    xml/XPathEvaluator.cpp \
    xml/XPathException.cpp \
    xml/XPathExpression.cpp \
    xml/XPathExpressionNode.cpp \
    xml/XPathFunctions.cpp \
    xml/XPathNodeSet.cpp \
    xml/XPathNSResolver.cpp \
    xml/XPathParser.cpp \
    xml/XPathPath.cpp \
    xml/XPathPredicate.cpp \
    xml/XPathResult.cpp \
    xml/XPathStep.cpp \
    xml/XPathUtil.cpp \
    xml/XPathValue.cpp \
    xml/XPathVariableReference.cpp \
    xml/XSLImportRule.cpp \
    xml/XSLStyleSheetLibxslt.cpp \
    xml/XSLTExtensions.cpp \
    xml/XSLTProcessor.cpp \
    xml/XSLTProcessorLibxslt.cpp \
    xml/XSLTUnicodeSort.cpp

HEADERS += \
    accessibility/AXTextStateChangeIntent.h \
    accessibility/AXObjectCache.h \
    accessibility/AccessibilityTreeItem.h \
    accessibility/AccessibilityTree.h \
    accessibility/AccessibilityTableRow.h \
    accessibility/AccessibilityTableHeaderContainer.h \
    accessibility/AccessibilityTableColumn.h \
    accessibility/AccessibilityTableCell.h \
    accessibility/AccessibilityTable.h \
    accessibility/AccessibilitySVGRoot.h \
    accessibility/AccessibilitySpinButton.h \
    accessibility/AccessibilitySlider.h \
    accessibility/AccessibilityScrollView.h \
    accessibility/AccessibilityScrollbar.h \
    accessibility/AccessibilityRenderObject.h \
    accessibility/AccessibilityProgressIndicator.h \
    accessibility/AccessibilityObject.h \
    accessibility/AccessibilityNodeObject.h \
    accessibility/AccessibilityMockObject.h \
    accessibility/AccessibilityMenuListPopup.h \
    accessibility/AccessibilityMenuListOption.h \
    accessibility/AccessibilityMenuList.h \
    accessibility/AccessibilityMediaControls.h \
    accessibility/AccessibilityListBoxOption.h \
    accessibility/AccessibilityListBox.h \
    accessibility/AccessibilityList.h \
    accessibility/AccessibilityImageMapLink.h \
    accessibility/AccessibilityARIAGridRow.h \
    accessibility/AccessibilityARIAGridCell.h \
    accessibility/AccessibilityARIAGrid.h \
    bindings/generic/ActiveDOMCallback.h \
    bindings/generic/RuntimeEnabledFeatures.h \
    \
    crypto/CommonCryptoUtilities.h \
    crypto/CryptoAlgorithm.h \
    crypto/CryptoAlgorithmDescriptionBuilder.h \
    crypto/CryptoAlgorithmIdentifier.h \
    crypto/CryptoAlgorithmParameters.h \
    crypto/CryptoAlgorithmRegistry.h \
    crypto/CryptoDigest.h \
    crypto/CryptoKey.h \
    crypto/CryptoKeyData.h \
    crypto/CryptoKeyPair.h \
    crypto/CryptoKeySerialization.h \
    crypto/CryptoKeyType.h \
    crypto/CryptoKeyUsage.h \
    crypto/SerializedCryptoKeyWrap.h \
    crypto/SubtleCrypto.h \
    crypto/algorithms/CryptoAlgorithmAES_CBC.h \
    crypto/algorithms/CryptoAlgorithmAES_KW.h \
    crypto/algorithms/CryptoAlgorithmHMAC.h \
    crypto/algorithms/CryptoAlgorithmRSA_OAEP.h \
    crypto/algorithms/CryptoAlgorithmRSAES_PKCS1_v1_5.h \
    crypto/algorithms/CryptoAlgorithmRSASSA_PKCS1_v1_5.h \
    crypto/algorithms/CryptoAlgorithmSHA1.h \
    crypto/algorithms/CryptoAlgorithmSHA224.h \
    crypto/algorithms/CryptoAlgorithmSHA256.h \
    crypto/algorithms/CryptoAlgorithmSHA384.h \
    crypto/algorithms/CryptoAlgorithmSHA512.h \
    crypto/keys/CryptoKeyAES.h \
    crypto/keys/CryptoKeyDataOctetSequence.h \
    crypto/keys/CryptoKeyDataRSAComponents.h \
    crypto/keys/CryptoKeyHMAC.h \
    crypto/keys/CryptoKeyRSA.h \
    crypto/keys/CryptoKeySerializationRaw.h \
    crypto/parameters/CryptoAlgorithmAesCbcParams.h \
    crypto/parameters/CryptoAlgorithmAesKeyGenParams.h \
    crypto/parameters/CryptoAlgorithmHmacKeyParams.h \
    crypto/parameters/CryptoAlgorithmHmacParams.h \
    crypto/parameters/CryptoAlgorithmRsaKeyGenParams.h \
    crypto/parameters/CryptoAlgorithmRsaKeyParamsWithHash.h \
    crypto/parameters/CryptoAlgorithmRsaOaepParams.h \
    crypto/parameters/CryptoAlgorithmRsaSsaParams.h

HEADERS += \
    bindings/js/WorkerScriptDebugServer.h \
    bindings/js/WorkerScriptController.h \
    bindings/js/WebCoreTypedArrayController.h \
    bindings/js/WebCoreJSClientData.h \
    bindings/js/WebCoreJSBuiltins.h \
    bindings/js/WebCoreJSBuiltinInternals.h \
    bindings/js/WebCoreBuiltinNames.h \
    bindings/js/SerializedScriptValue.h \
    bindings/js/ScriptWrappableInlines.h \
    bindings/js/ScriptWrappable.h \
    bindings/js/ScriptState.h \
    bindings/js/ScriptSourceCode.h \
    bindings/js/ScriptProfileNode.h \
    bindings/js/ScriptProfile.h \
    bindings/js/ScriptGlobalObject.h \
    bindings/js/ScriptController.h \
    bindings/js/ScriptCachedFrameData.h \
    bindings/js/ScheduledAction.h \
    bindings/js/JSWorkerGlobalScopeBase.h \
    bindings/js/JSTrackCustom.h \
    bindings/js/JSStyleSheetCustom.h \
    bindings/js/JSReadableStreamPrivateConstructors.h \
    bindings/js/JSPluginElementFunctions.h \
    bindings/js/JSNodeOrString.h \
    bindings/js/JSNodeListCustom.h \
    bindings/js/JSNodeCustom.h \
    bindings/js/JSMutationCallback.h \
    bindings/js/JSModuleLoader.h \
    bindings/js/JSMessagePortCustom.h \
    bindings/js/JSMediaListCustom.h \
    bindings/js/JSMainThreadExecStateInstrumentation.h \
    bindings/js/JSMainThreadExecState.h \
    bindings/js/JSLazyEventListener.h \
    bindings/js/JSImageConstructor.h \
    bindings/js/JSHTMLSelectElementCustom.h \
    bindings/js/JSHTMLInputElementCustom.h \
    bindings/js/JSExceptionBase.h \
    bindings/js/JSEventListener.h \
    bindings/js/JSErrorHandler.h \
    bindings/js/JSElementCustom.h \
    bindings/js/JSDOMWrapper.h \
    bindings/js/JSDOMWindowShell.h \
    bindings/js/JSDOMWindowCustom.h \
    bindings/js/JSDOMWindowBase.h \
    bindings/js/JSDOMPromise.h \
    bindings/js/JSDOMGlobalObjectTask.h \
    bindings/js/JSDOMGlobalObject.h \
    bindings/js/JSDOMConstructor.h \
    bindings/js/JSDOMBinding.h \
    bindings/js/JSDocumentCustom.h \
    bindings/js/JSDictionary.h \
    bindings/js/JSCustomXPathNSResolver.h \
    bindings/js/JSCSSStyleDeclarationCustom.h \
    bindings/js/JSCSSRuleCustom.h \
    bindings/js/JSCryptoOperationData.h \
    bindings/js/JSCryptoKeySerializationJWK.h \
    bindings/js/JSCryptoAlgorithmDictionary.h \
    bindings/js/JSCryptoAlgorithmBuilder.h \
    bindings/js/JSCallbackData.h \
    bindings/js/IDBBindingUtilities.h \
    bindings/js/GCController.h \
    bindings/js/DOMWrapperWorld.h \
    bindings/js/DOMRequestState.h \
    bindings/js/DOMConstructorWithDocument.h \
    bindings/js/Dictionary.h \
    bindings/js/CallbackFunction.h \
    bindings/js/CachedScriptSourceProvider.h \
    bindings/js/ArrayValue.h \
    \
    bridge/Bridge.h \
    bridge/c/CRuntimeObject.h \
    bridge/c/c_class.h \
    bridge/c/c_instance.h \
    bridge/c/c_runtime.h \
    bridge/c/c_utility.h \
    bridge/jsc/BridgeJSC.h \
    bridge/IdentifierRep.h \
    bridge/NP_jsobject.h \
    bridge/qt/qt_class.h \
    bridge/qt/qt_instance.h \
    bridge/qt/qt_runtime.h \
    bridge/qt/qt_pixmapruntime.h \
    bridge/runtime_array.h \
    bridge/runtime_method.h \
    bridge/runtime_object.h \
    bridge/runtime_root.h \
    plugins/npruntime.h

HEADERS += \
    Modules/geolocation/PositionOptions.h \
    Modules/geolocation/PositionErrorCallback.h \
    Modules/geolocation/PositionError.h \
    Modules/geolocation/PositionCallback.h \
    Modules/geolocation/NavigatorGeolocation.h \
    Modules/geolocation/Geoposition.h \
    Modules/geolocation/GeoNotifier.h \
    Modules/geolocation/GeolocationPosition.h \
    Modules/geolocation/GeolocationError.h \
    Modules/geolocation/GeolocationController.h \
    Modules/geolocation/GeolocationClient.h \
    Modules/geolocation/Geolocation.h \
    Modules/geolocation/Coordinates.h \
    \
    Modules/notifications/WorkerGlobalScopeNotifications.h \
    Modules/notifications/NotificationPermissionCallback.h \
    Modules/notifications/NotificationController.h \
    Modules/notifications/NotificationClient.h \
    Modules/notifications/NotificationCenter.h \
    Modules/notifications/Notification.h \
    Modules/notifications/DOMWindowNotifications.h \
    \
    Modules/proximity/DeviceProximityClient.h \
    Modules/proximity/DeviceProximityController.h \
    Modules/proximity/DeviceProximityEvent.h \
    \
    Modules/webdatabase/SQLTransactionStateMachine.h \
    Modules/webdatabase/SQLTransactionState.h \
    Modules/webdatabase/SQLTransactionErrorCallback.h \
    Modules/webdatabase/SQLTransactionCoordinator.h \
    Modules/webdatabase/SQLTransactionClient.h \
    Modules/webdatabase/SQLTransactionCallback.h \
    Modules/webdatabase/SQLTransactionBackend.h \
    Modules/webdatabase/SQLTransaction.h \
    Modules/webdatabase/SQLStatementErrorCallback.h \
    Modules/webdatabase/SQLStatementCallback.h \
    Modules/webdatabase/SQLStatement.h \
    Modules/webdatabase/SQLResultSetRowList.h \
    Modules/webdatabase/SQLResultSet.h \
    Modules/webdatabase/SQLException.h \
    Modules/webdatabase/SQLError.h \
    Modules/webdatabase/SQLCallbackWrapper.h \
    Modules/webdatabase/OriginLock.h \
    Modules/webdatabase/DOMWindowWebDatabase.h \
    Modules/webdatabase/DatabaseTracker.h \
    Modules/webdatabase/DatabaseThread.h \
    Modules/webdatabase/DatabaseTask.h \
    Modules/webdatabase/DatabaseServer.h \
    Modules/webdatabase/DatabaseManagerClient.h \
    Modules/webdatabase/DatabaseManager.h \
    Modules/webdatabase/DatabaseError.h \
    Modules/webdatabase/DatabaseDetails.h \
    Modules/webdatabase/DatabaseContext.h \
    Modules/webdatabase/DatabaseCallback.h \
    Modules/webdatabase/DatabaseBasicTypes.h \
    Modules/webdatabase/DatabaseAuthorizer.h \
    Modules/webdatabase/Database.h \
    Modules/webdatabase/ChangeVersionWrapper.h \
    Modules/webdatabase/ChangeVersionData.h \
    Modules/webdatabase/AbstractDatabaseServer.h \
    \
    css/WebKitCSSViewportRule.h \
    css/WebKitCSSTransformValue.h \
    css/WebKitCSSRegionRule.h \
    css/WebKitCSSMatrix.h \
    css/WebKitCSSFilterValue.h \
    css/ViewportStyleResolver.h \
    css/TransformFunctions.h \
    css/StyleSheetList.h \
    css/StyleSheetContents.h \
    css/StyleSheet.h \
    css/StyleRuleImport.h \
    css/StyleRule.h \
    css/StyleResolver.h \
    css/StylePropertyShorthand.h \
    css/StyleProperties.h \
    css/StyleMedia.h \
    css/StyleInvalidationAnalysis.h \
    css/StyleBuilderCustom.h \
    css/StyleBuilderConverter.h \
    css/StyleBuilder.h \
    css/SourceSizeList.h \
    css/SelectorPseudoTypeMap.h \
    css/SelectorFilter.h \
    css/SelectorCheckerTestFunctions.h \
    css/SelectorChecker.h \
    css/RuleSet.h \
    css/RuleFeature.h \
    css/RGBColor.h \
    css/Rect.h \
    css/PropertySetCSSStyleDeclaration.h \
    css/Pair.h \
    css/PageRuleCollector.h \
    css/MediaQueryMatcher.h \
    css/MediaQueryListListener.h \
    css/MediaQueryList.h \
    css/MediaQueryExp.h \
    css/MediaQueryEvaluator.h \
    css/MediaQuery.h \
    css/MediaList.h \
    css/MediaFeatureNames.h \
    css/LengthRepeat.h \
    css/LengthFunctions.h \
    css/InspectorCSSOMWrappers.h \
    css/FontVariantBuilder.h \
    css/FontLoader.h \
    css/ElementRuleCollector.h \
    css/DOMWindowCSS.h \
    css/DocumentRuleSets.h \
    css/DashboardRegion.h \
    css/CSSVariableValue.h \
    css/CSSVariableDependentValue.h \
    css/CSSValuePool.h \
    css/CSSValueList.h \
    css/CSSValue.h \
    css/CSSUnsetValue.h \
    css/CSSUnknownRule.h \
    css/CSSUnicodeRangeValue.h \
    css/CSSToStyleMap.h \
    css/CSSToLengthConversionData.h \
    css/CSSTimingFunctionValue.h \
    css/CSSSupportsRule.h \
    css/CSSStyleSheet.h \
    css/CSSStyleRule.h \
    css/CSSStyleDeclaration.h \
    css/CSSShadowValue.h \
    css/CSSSelectorList.h \
    css/CSSSelector.h \
    css/CSSSegmentedFontFace.h \
    css/CSSRuleList.h \
    css/CSSRule.h \
    css/CSSRevertValue.h \
    css/CSSReflectValue.h \
    css/CSSReflectionDirection.h \
    css/CSSPropertySourceData.h \
    css/CSSProperty.h \
    css/CSSPrimitiveValueMappings.h \
    css/CSSPrimitiveValue.h \
    css/CSSParserValues.h \
    css/CSSParserMode.h \
    css/CSSParser.h \
    css/CSSPageRule.h \
    css/CSSOMUtils.h \
    css/CSSNamedImageValue.h \
    css/CSSMediaRule.h \
    css/CSSLineBoxContainValue.h \
    css/CSSKeyframesRule.h \
    css/CSSKeyframeRule.h \
    css/CSSInitialValue.h \
    css/CSSInheritedValue.h \
    css/CSSImportRule.h \
    css/CSSImageValue.h \
    css/CSSImageSetValue.h \
    css/CSSImageGeneratorValue.h \
    css/CSSHelper.h \
    css/CSSGroupingRule.h \
    css/CSSGridTemplateAreasValue.h \
    css/CSSGridLineNamesValue.h \
    css/CSSGradientValue.h \
    css/CSSFunctionValue.h \
    css/CSSFontValue.h \
    css/CSSFontSelector.h \
    css/CSSFontFeatureValue.h \
    css/CSSFontFamily.h \
    css/CSSFontFaceSrcValue.h \
    css/CSSFontFaceSource.h \
    css/CSSFontFaceRule.h \
    css/CSSFontFaceLoadEvent.h \
    css/CSSFontFace.h \
    css/CSSFilterImageValue.h \
    css/CSSDefaultStyleSheets.h \
    css/CSSCustomPropertyValue.h \
    css/CSSCursorImageValue.h \
    css/CSSCrossfadeValue.h \
    css/CSSContentDistributionValue.h \
    css/CSSComputedStyleDeclaration.h \
    css/CSSCharsetRule.h \
    css/CSSCanvasValue.h \
    css/CSSCalculationValue.h \
    css/CSSBorderImageSliceValue.h \
    css/CSSBorderImage.h \
    css/CSSBasicShapes.h \
    css/CSSAspectRatioValue.h \
    css/CSSAnimationTriggerScrollValue.h \
    css/Counter.h \
    css/BasicShapeFunctions.h \
    \
    dom/WheelEvent.h \
    dom/WebKitTransitionEvent.h \
    dom/WebKitNamedFlow.h \
    dom/WebKitAnimationEvent.h \
    dom/VisitedLinkState.h \
    dom/ViewportArguments.h \
    dom/UserTypingGestureIndicator.h \
    dom/UserGestureIndicator.h \
    dom/UserActionElementSet.h \
    dom/UIEventWithKeyState.h \
    dom/UIEvent.h \
    dom/TypedElementDescendantIterator.h \
    dom/TreeWalker.h \
    dom/TreeScopeAdopter.h \
    dom/TreeScope.h \
    dom/TreeDepthLimit.h \
    dom/Traversal.h \
    dom/TransitionEvent.h \
    dom/TransformSource.h \
    dom/TouchList.h \
    dom/TouchEvent.h \
    dom/Touch.h \
    dom/TextNodeTraversal.h \
    dom/TextEventInputType.h \
    dom/TextEvent.h \
    dom/Text.h \
    dom/TemplateContentDocumentFragment.h \
    dom/TagCollection.h \
    dom/StyledElement.h \
    dom/StringCallback.h \
    dom/StaticNodeList.h \
    dom/SpaceSplitString.h \
    dom/SlotAssignment.h \
    dom/SimulatedClickOptions.h \
    dom/ShadowRoot.h \
    dom/SelectorQuery.h \
    dom/SecurityPolicyViolationEvent.h \
    dom/SecurityOriginPolicy.h \
    dom/SecurityContext.h \
    dom/ScriptRunner.h \
    dom/ScriptExecutionContext.h \
    dom/ScriptElement.h \
    dom/ScriptedAnimationController.h \
    dom/ScriptableDocumentParser.h \
    dom/ScopedEventQueue.h \
    dom/RequestAnimationFrameCallback.h \
    dom/RenderedDocumentMarker.h \
    dom/RegisteredEventListener.h \
    dom/RawDataDocumentParser.h \
    dom/RangeBoundaryPoint.h \
    dom/Range.h \
    dom/QualifiedName.h \
    dom/PseudoElement.h \
    dom/ProgressEvent.h \
    dom/ProcessingInstruction.h \
    dom/PositionIterator.h \
    dom/Position.h \
    dom/PopStateEvent.h \
    dom/PendingScript.h \
    dom/PageTransitionEvent.h \
    dom/OverflowEvent.h \
    dom/NodeWithIndex.h \
    dom/NodeTraversal.h \
    dom/NodeRenderStyle.h \
    dom/NodeRareData.h \
    dom/NodeOrString.h \
    dom/NodeList.h \
    dom/NodeIterator.h \
    dom/NodeFilterCondition.h \
    dom/NodeFilter.h \
    dom/Node.h \
    dom/NativeNodeFilter.h \
    dom/NameNodeList.h \
    dom/NamedNodeMap.h \
    dom/NamedFlowCollection.h \
    dom/MutationRecord.h \
    dom/MutationObserverRegistration.h \
    dom/MutationObserverInterestGroup.h \
    dom/MutationObserver.h \
    dom/MutationEvent.h \
    dom/MutationCallback.h \
    dom/MouseRelatedEvent.h \
    dom/MouseEvent.h \
    dom/MicroTask.h \
    dom/MessagePortChannel.h \
    dom/MessagePort.h \
    dom/MessageEvent.h \
    dom/MessageChannel.h \
    dom/LiveNodeList.h \
    dom/KeyboardEvent.h \
    dom/InlineStyleSheetOwner.h \
    dom/IgnoreDestructiveWriteCountIncrementer.h \
    dom/IdTargetObserverRegistry.h \
    dom/IdTargetObserver.h \
    dom/IconURL.h \
    dom/HashChangeEvent.h \
    dom/GenericEventQueue.h \
    dom/FragmentScriptingPermission.h \
    dom/FocusEvent.h \
    dom/ExtensionStyleSheets.h \
    dom/ExceptionCodePlaceholder.h \
    dom/ExceptionCode.h \
    dom/ExceptionBase.h \
    dom/EventTarget.h \
    dom/EventSender.h \
    dom/EventQueue.h \
    dom/EventNames.h \
    dom/EventListenerMap.h \
    dom/EventListener.h \
    dom/EventFactory.h \
    dom/EventException.h \
    dom/EventDispatcher.h \
    dom/EventContext.h \
    dom/Event.h \
    dom/ErrorEvent.h \
    dom/EntityReference.h \
    dom/Entity.h \
    dom/ElementTraversal.h \
    dom/ElementRareData.h \
    dom/ElementIteratorAssertions.h \
    dom/ElementIterator.h \
    dom/ElementDescendantIterator.h \
    dom/ElementData.h \
    dom/ElementChildIterator.h \
    dom/ElementAncestorIterator.h \
    dom/Element.h \
    dom/DOMTimeStamp.h \
    dom/DOMStringMap.h \
    dom/DOMStringList.h \
    dom/DOMNamedFlowCollection.h \
    dom/DOMImplementation.h \
    dom/DOMError.h \
    dom/DOMCoreException.h \
    dom/DocumentType.h \
    dom/DocumentTiming.h \
    dom/DocumentSharedObjectPool.h \
    dom/DocumentParser.h \
    dom/DocumentOrderedMap.h \
    dom/DocumentMarkerController.h \
    dom/DocumentMarker.h \
    dom/DocumentFragment.h \
    dom/DocumentEventQueue.h \
    dom/Document.h \
    dom/DeviceOrientationEvent.h \
    dom/DeviceOrientationData.h \
    dom/DeviceOrientationController.h \
    dom/DeviceOrientationClient.h \
    dom/DeviceMotionEvent.h \
    dom/DeviceMotionData.h \
    dom/DeviceMotionController.h \
    dom/DeviceMotionClient.h \
    dom/DecodedDataDocumentParser.h \
    dom/DataTransferItemList.h \
    dom/DataTransferItem.h \
    dom/DataTransferAccessPolicy.h \
    dom/DataTransfer.h \
    dom/DatasetDOMStringMap.h \
    dom/CustomEvent.h \
    dom/CurrentScriptIncrementer.h \
    dom/ContextDestructionObserver.h \
    dom/ContainerNodeAlgorithms.h \
    dom/ContainerNode.h \
    dom/CompositionEvent.h \
    dom/ComposedTreeIterator.h \
    dom/ComposedTreeAncestorIterator.h \
    dom/Comment.h \
    dom/CollectionIndexCache.h \
    dom/ClipboardEvent.h \
    dom/ClientRectList.h \
    dom/ClientRect.h \
    dom/ClassCollection.h \
    dom/ChildNodeList.h \
    dom/ChildListMutationScope.h \
    dom/CheckedRadioButtons.h \
    dom/CharacterData.h \
    dom/CDATASection.h \
    dom/BeforeUnloadEvent.h \
    dom/BeforeTextInsertedEvent.h \
    dom/BeforeLoadEvent.h \
    dom/AutocompleteErrorEvent.h \
    dom/AuthorStyleSheets.h \
    dom/Attribute.h \
    dom/Attr.h \
    dom/AnimationEvent.h \
    dom/ActiveDOMObject.h \
    \
    editing/WritingDirection.h \
    editing/WrapContentsInDummySpanCommand.h \
    editing/VisibleUnits.h \
    editing/VisibleSelection.h \
    editing/VisiblePosition.h \
    editing/UnlinkCommand.h \
    editing/UndoStep.h \
    editing/TypingCommand.h \
    editing/TextIteratorBehavior.h \
    editing/TextIterator.h \
    editing/TextInsertionBaseCommand.h \
    editing/TextGranularity.h \
    editing/TextCheckingHelper.h \
    editing/TextAffinity.h \
    editing/SurroundingText.h \
    editing/SplitTextNodeContainingElementCommand.h \
    editing/SplitTextNodeCommand.h \
    editing/SplitElementCommand.h \
    editing/SpellingCorrectionCommand.h \
    editing/SpellChecker.h \
    editing/SmartReplace.h \
    editing/SimplifyMarkupCommand.h \
    editing/SetSelectionCommand.h \
    editing/SetNodeAttributeCommand.h \
    editing/SelectionRectGatherer.h \
    editing/ReplaceSelectionCommand.h \
    editing/ReplaceNodeWithSpanCommand.h \
    editing/ReplaceInsertIntoTextNodeCommand.h \
    editing/ReplaceDeleteFromTextNodeCommand.h \
    editing/RenderedPosition.h \
    editing/RemoveNodePreservingChildrenCommand.h \
    editing/RemoveNodeCommand.h \
    editing/RemoveFormatCommand.h \
    editing/RemoveCSSPropertyCommand.h \
    editing/MoveSelectionCommand.h \
    editing/ModifySelectionListLevel.h \
    editing/MergeIdenticalElementsCommand.h \
    editing/MarkupAccumulator.h \
    editing/markup.h \
    editing/InsertTextCommand.h \
    editing/InsertParagraphSeparatorCommand.h \
    editing/InsertNodeBeforeCommand.h \
    editing/InsertListCommand.h \
    editing/InsertLineBreakCommand.h \
    editing/InsertIntoTextNodeCommand.h \
    editing/IndentOutdentCommand.h \
    editing/HTMLInterchange.h \
    editing/htmlediting.h \
    editing/FrameSelection.h \
    editing/FormatBlockCommand.h \
    editing/FindOptions.h \
    editing/EditorInsertAction.h \
    editing/EditorDeleteAction.h \
    editing/Editor.h \
    editing/EditingStyle.h \
    editing/EditingBoundary.h \
    editing/EditingBehaviorTypes.h \
    editing/EditingBehavior.h \
    editing/EditCommand.h \
    editing/EditAction.h \
    editing/DictionaryPopupInfo.h \
    editing/DictationCommand.h \
    editing/DictationAlternative.h \
    editing/DeleteSelectionCommand.h \
    editing/DeleteFromTextNodeCommand.h \
    editing/CreateLinkCommand.h \
    editing/CompositeEditCommand.h \
    editing/BreakBlockquoteCommand.h \
    editing/ApplyStyleCommand.h \
    editing/ApplyBlockElementCommand.h \
    editing/AppendNodeCommand.h \
    editing/AlternativeTextController.h \
    \
    fileapi/WebKitBlobBuilder.h \
    fileapi/ThreadableBlobRegistry.h \
    fileapi/FileReaderSync.h \
    fileapi/FileReaderLoaderClient.h \
    fileapi/FileReaderLoader.h \
    fileapi/FileReader.h \
    fileapi/FileList.h \
    fileapi/FileException.h \
    fileapi/FileError.h \
    fileapi/File.h \
    fileapi/BlobURL.h \
    fileapi/Blob.h \
    fileapi/AsyncFileStream.h \
    \
    history/PageCache.h \
    history/HistoryItem.h \
    history/CachedPage.h \
    history/CachedFramePlatformData.h \
    history/CachedFrame.h \
    history/BackForwardList.h \
    history/BackForwardController.h \
    history/BackForwardClient.h \
    \
    html/canvas/CanvasGradient.h \
    html/canvas/CanvasPathMethods.h \
    html/canvas/CanvasPattern.h \
    html/canvas/CanvasProxy.h \
    html/canvas/CanvasRenderingContext.h \
    html/canvas/CanvasRenderingContext2D.h \
    html/canvas/CanvasStyle.h \
    html/canvas/DOMPath.h \
    \
    html/WeekInputType.h \
    html/WebAutocapitalize.h \
    html/VoidCallback.h \
    html/ValidityState.h \
    html/ValidationMessage.h \
    html/URLUtils.h \
    html/URLRegistry.h \
    html/URLInputType.h \
    html/TypeAhead.h \
    html/TimeRanges.h \
    html/TimeInputType.h \
    html/TextMetrics.h \
    html/TextInputType.h \
    html/TextFieldInputType.h \
    html/TextDocument.h \
    html/TelephoneInputType.h \
    html/SubmitInputType.h \
    html/StepRange.h \
    html/SearchInputType.h \
    html/RubyTextElement.h \
    html/RubyElement.h \
    html/ResetInputType.h \
    html/RangeInputType.h \
    html/RadioNodeList.h \
    html/RadioInputType.h \
    html/PublicURLManager.h \
    html/PluginDocument.h \
    html/PasswordInputType.h \
    html/NumberInputType.h \
    html/MonthInputType.h \
    html/MediaKeyEvent.h \
    html/MediaKeyError.h \
    html/MediaFragmentURIParser.h \
    html/MediaError.h \
    html/MediaElementSession.h \
    html/MediaDocument.h \
    html/MediaControllerInterface.h \
    html/MediaController.h \
    html/LinkRelAttribute.h \
    html/LabelsNodeList.h \
    html/LabelableElement.h \
    html/InputTypeNames.h \
    html/InputType.h \
    html/ImageInputType.h \
    html/ImageDocument.h \
    html/ImageData.h \
    html/HTMLWBRElement.h \
    html/HTMLVideoElement.h \
    html/HTMLUnknownElement.h \
    html/HTMLUListElement.h \
    html/HTMLTitleElement.h \
    html/HTMLTimeElement.h \
    html/HTMLTextFormControlElement.h \
    html/HTMLTextAreaElement.h \
    html/HTMLTemplateElement.h \
    html/HTMLTableSectionElement.h \
    html/HTMLTableRowsCollection.h \
    html/HTMLTableRowElement.h \
    html/HTMLTablePartElement.h \
    html/HTMLTableHeaderCellElement.h \
    html/HTMLTableElement.h \
    html/HTMLTableDataCellElement.h \
    html/HTMLTableColElement.h \
    html/HTMLTableCellElement.h \
    html/HTMLTableCaptionElement.h \
    html/HTMLSummaryElement.h \
    html/HTMLStyleElement.h \
    html/HTMLSpanElement.h \
    html/HTMLSourceElement.h \
    html/HTMLSlotElement.h \
    html/HTMLSelectElement.h \
    html/HTMLScriptElement.h \
    html/HTMLQuoteElement.h \
    html/HTMLProgressElement.h \
    html/HTMLPreElement.h \
    html/HTMLPlugInImageElement.h \
    html/HTMLPlugInElement.h \
    html/HTMLParamElement.h \
    html/HTMLParagraphElement.h \
    html/HTMLOutputElement.h \
    html/HTMLOptionsCollection.h \
    html/HTMLOptionElement.h \
    html/HTMLOptGroupElement.h \
    html/HTMLOListElement.h \
    html/HTMLObjectElement.h \
    html/HTMLNameCollection.h \
    html/HTMLModElement.h \
    html/HTMLMeterElement.h \
    html/HTMLMetaElement.h \
    html/HTMLMenuElement.h \
    html/HTMLMediaElementEnums.h \
    html/HTMLMediaElement.h \
    html/HTMLMarqueeElement.h \
    html/HTMLMapElement.h \
    html/HTMLLinkElement.h \
    html/HTMLLIElement.h \
    html/HTMLLegendElement.h \
    html/HTMLLabelElement.h \
    html/HTMLKeygenElement.h \
    html/HTMLInputElement.h \
    html/HTMLImageLoader.h \
    html/HTMLImageElement.h \
    html/HTMLIFrameElement.h \
    html/HTMLHtmlElement.h \
    html/HTMLHRElement.h \
    html/HTMLHeadingElement.h \
    html/HTMLHeadElement.h \
    html/HTMLFrameSetElement.h \
    html/HTMLFrameOwnerElement.h \
    html/HTMLFrameElementBase.h \
    html/HTMLFrameElement.h \
    html/HTMLFormElement.h \
    html/HTMLFormControlsCollection.h \
    html/HTMLFormControlElementWithState.h \
    html/HTMLFormControlElement.h \
    html/HTMLFontElement.h \
    html/HTMLFieldSetElement.h \
    html/HTMLEmbedElement.h \
    html/HTMLElement.h \
    html/HTMLDocument.h \
    html/HTMLDListElement.h \
    html/HTMLDivElement.h \
    html/HTMLDirectoryElement.h \
    html/HTMLDetailsElement.h \
    html/HTMLDataListElement.h \
    html/HTMLCollection.h \
    html/HTMLCanvasElement.h \
    html/HTMLButtonElement.h \
    html/HTMLBRElement.h \
    html/HTMLBodyElement.h \
    html/HTMLBDIElement.h \
    html/HTMLBaseFontElement.h \
    html/HTMLBaseElement.h \
    html/HTMLAudioElement.h \
    html/HTMLAttachmentElement.h \
    html/HTMLAreaElement.h \
    html/HTMLAppletElement.h \
    html/HTMLAnchorElement.h \
    html/HTMLAllCollection.h \
    html/HiddenInputType.h \
    html/GenericCachedHTMLCollection.h \
    html/FTPDirectoryDocument.h \
    html/FormNamedItem.h \
    html/FormDataList.h \
    html/FormController.h \
    html/FormAssociatedElement.h \
    html/FileInputType.h \
    html/EmailInputType.h \
    html/DOMURL.h \
    html/DOMTokenList.h \
    html/DOMSettableTokenList.h \
    html/DOMFormData.h \
    html/DateTimeLocalInputType.h \
    html/DateTimeInputType.h \
    html/DateInputType.h \
    html/ColorInputType.h \
    html/CollectionType.h \
    html/CollectionTraversal.h \
    html/CheckboxInputType.h \
    html/CachedHTMLCollection.h \
    html/ButtonInputType.h \
    html/BaseTextInputType.h \
    html/BaseDateAndTimeInputType.h \
    html/BaseClickableWithKeyInputType.h \
    html/BaseChooserOnlyDateAndTimeInputType.h \
    html/BaseCheckableInputType.h \
    html/BaseButtonInputType.h \
    html/Autocapitalize.h \
    html/AttributeDOMTokenList.h \
    \
    html/parser/XSSAuditorDelegate.h \
    html/parser/XSSAuditor.h \
    html/parser/TextDocumentParser.h \
    html/parser/ParsingUtilities.h \
    html/parser/NestingLevelIncrementer.h \
    html/parser/InputStreamPreprocessor.h \
    html/parser/HTMLTreeBuilder.h \
    html/parser/HTMLTokenizer.h \
    html/parser/HTMLToken.h \
    html/parser/HTMLStackItem.h \
    html/parser/HTMLSrcsetParser.h \
    html/parser/HTMLSourceTracker.h \
    html/parser/HTMLScriptRunnerHost.h \
    html/parser/HTMLScriptRunner.h \
    html/parser/HTMLResourcePreloader.h \
    html/parser/HTMLPreloadScanner.h \
    html/parser/HTMLParserScheduler.h \
    html/parser/HTMLParserOptions.h \
    html/parser/HTMLParserIdioms.h \
    html/parser/HTMLMetaCharsetParser.h \
    html/parser/HTMLInputStream.h \
    html/parser/HTMLFormattingElementList.h \
    html/parser/HTMLEntityTable.h \
    html/parser/HTMLEntitySearch.h \
    html/parser/HTMLEntityParser.h \
    html/parser/HTMLElementStack.h \
    html/parser/HTMLDocumentParser.h \
    html/parser/HTMLConstructionSite.h \
    html/parser/CSSPreloadScanner.h \
    html/parser/AtomicHTMLToken.h \
    \
    html/shadow/AutoFillButtonElement.h \
    html/shadow/DetailsMarkerControl.h \
    html/shadow/ImageControlsRootElement.h \
    html/shadow/MediaControlElements.h \
    html/shadow/MediaControlElementTypes.h \
    html/shadow/MediaControls.h \
    html/shadow/MediaControlsApple.h \
    html/shadow/MeterShadowElement.h \
    html/shadow/ProgressShadowElement.h \
    html/shadow/SliderThumbElement.h \
    html/shadow/SpinButtonElement.h \
    html/shadow/TextControlInnerElements.h \
    html/shadow/YouTubeEmbedShadowElement.h \
    \
    inspector/WorkerRuntimeAgent.h \
    inspector/WorkerInspectorController.h \
    inspector/WorkerDebuggerAgent.h \
    inspector/WorkerConsoleAgent.h \
    inspector/WebInjectedScriptManager.h \
    inspector/WebInjectedScriptHost.h \
    inspector/WebDebuggerAgent.h \
    inspector/WebConsoleAgent.h \
    inspector/TimelineRecordFactory.h \
    inspector/PageScriptDebugServer.h \
    inspector/PageRuntimeAgent.h \
    inspector/PageDebuggerAgent.h \
    inspector/PageConsoleAgent.h \
    inspector/NetworkResourcesData.h \
    inspector/InstrumentingAgents.h \
    inspector/InspectorWorkerResource.h \
    inspector/InspectorWorkerAgent.h \
    inspector/InspectorWebAgentBase.h \
    inspector/InspectorTimelineAgent.h \
    inspector/InspectorStyleSheet.h \
    inspector/InspectorReplayAgent.h \
    inspector/InspectorPageAgent.h \
    inspector/InspectorOverlay.h \
    inspector/InspectorNodeFinder.h \
    inspector/InspectorNetworkAgent.h \
    inspector/InspectorLayerTreeAgent.h \
    inspector/InspectorInstrumentationCookie.h \
    inspector/InspectorInstrumentation.h \
    inspector/InspectorHistory.h \
    inspector/InspectorFrontendHost.h \
    inspector/InspectorFrontendClientLocal.h \
    inspector/InspectorFrontendClient.h \
    inspector/InspectorDOMStorageAgent.h \
    inspector/InspectorDOMDebuggerAgent.h \
    inspector/InspectorDOMAgent.h \
    inspector/InspectorDatabaseResource.h \
    inspector/InspectorDatabaseAgent.h \
    inspector/InspectorCSSAgent.h \
    inspector/InspectorController.h \
    inspector/InspectorConsoleInstrumentation.h \
    inspector/InspectorClient.h \
    inspector/InspectorApplicationCacheAgent.h \
    inspector/DOMPatchSupport.h \
    inspector/DOMEditor.h \
    inspector/CommandLineAPIModule.h \
    inspector/CommandLineAPIHost.h \
    \
    loader/appcache/ManifestParser.h \
    loader/appcache/DOMApplicationCache.h \
    loader/appcache/ApplicationCacheStorage.h \
    loader/appcache/ApplicationCacheResource.h \
    loader/appcache/ApplicationCacheHost.h \
    loader/appcache/ApplicationCacheGroup.h \
    loader/appcache/ApplicationCache.h \
    \
    loader/archive/ArchiveResourceCollection.h \
    loader/archive/ArchiveResource.h \
    loader/archive/ArchiveFactory.h \
    loader/archive/Archive.h \
    \
    loader/cache/MemoryCache.h \
    loader/cache/CachePolicy.h \
    loader/cache/CachedXSLStyleSheet.h \
    loader/cache/CachedTextTrack.h \
    loader/cache/CachedSVGFont.h \
    loader/cache/CachedSVGDocumentReference.h \
    loader/cache/CachedSVGDocumentClient.h \
    loader/cache/CachedSVGDocument.h \
    loader/cache/CachedStyleSheetClient.h \
    loader/cache/CachedScript.h \
    loader/cache/CachedResourceRequestInitiators.h \
    loader/cache/CachedResourceRequest.h \
    loader/cache/CachedResourceLoader.h \
    loader/cache/CachedResourceHandle.h \
    loader/cache/CachedResourceClientWalker.h \
    loader/cache/CachedResourceClient.h \
    loader/cache/CachedResource.h \
    loader/cache/CachedRawResourceClient.h \
    loader/cache/CachedRawResource.h \
    loader/cache/CachedImageClient.h \
    loader/cache/CachedImage.h \
    loader/cache/CachedFontClient.h \
    loader/cache/CachedFont.h \
    loader/cache/CachedCSSStyleSheet.h \
    \
    loader/WorkerThreadableLoader.h \
    loader/ThreadableLoaderClientWrapper.h \
    loader/ThreadableLoaderClient.h \
    loader/ThreadableLoader.h \
    loader/TextTrackLoader.h \
    loader/TextResourceDecoder.h \
    loader/SubstituteResource.h \
    loader/SubstituteData.h \
    loader/SubresourceLoader.h \
    loader/SubframeLoader.h \
    loader/SinkDocument.h \
    loader/ResourceLoadScheduler.h \
    loader/ResourceLoadNotifier.h \
    loader/ResourceLoadInfo.h \
    loader/ResourceLoaderTypes.h \
    loader/ResourceLoaderOptions.h \
    loader/ResourceLoader.h \
    loader/ProgressTrackerClient.h \
    loader/ProgressTracker.h \
    loader/PolicyChecker.h \
    loader/PolicyCallback.h \
    loader/PingLoader.h \
    loader/NetscapePlugInStreamLoader.h \
    loader/NavigationScheduler.h \
    loader/NavigationAction.h \
    loader/MixedContentChecker.h \
    loader/MediaResourceLoader.h \
    loader/LoaderStrategy.h \
    loader/LinkLoaderClient.h \
    loader/LinkLoader.h \
    loader/ImageLoader.h \
    loader/HistoryController.h \
    loader/FTPDirectoryParser.h \
    loader/FrameNetworkingContext.h \
    loader/FrameLoadRequest.h \
    loader/FrameLoaderTypes.h \
    loader/FrameLoaderStateMachine.h \
    loader/FrameLoaderClient.h \
    loader/FrameLoader.h \
    loader/FormSubmission.h \
    loader/FormState.h \
    loader/EmptyClients.h \
    loader/DocumentWriter.h \
    loader/DocumentThreadableLoader.h \
    loader/DocumentLoadTiming.h \
    loader/DocumentLoader.h \
    loader/CrossOriginPreflightResultCache.h \
    loader/CrossOriginAccessControl.h \
    loader/CookieJar.h \
    loader/ContentFilter.h \
    \
    loader/icon/PageURLRecord.h \
    loader/icon/IconRecord.h \
    loader/icon/IconLoader.h \
    loader/icon/IconDatabaseClient.h \
    loader/icon/IconDatabaseBase.h \
    loader/icon/IconDatabase.h \
    loader/icon/IconController.h \
    \
    page/animation/KeyframeAnimation.h \
    page/animation/ImplicitAnimation.h \
    page/animation/CSSPropertyAnimation.h \
    page/animation/CompositeAnimation.h \
    page/animation/AnimationControllerPrivate.h \
    page/animation/AnimationController.h \
    page/animation/AnimationBase.h \
    \
    page/WorkerNavigator.h \
    page/WindowFocusAllowedIndicator.h \
    page/WindowFeatures.h \
    page/WheelEventTestTrigger.h \
    page/WheelEventDeltaFilter.h \
    page/WebKitPoint.h \
    page/WebKitNamespace.h \
    page/WebCoreKeyboardUIMode.h \
    page/VisitedLinkStore.h \
    page/ViewStateChangeObserver.h \
    page/ViewState.h \
    page/ViewportConfiguration.h \
    page/ValidationMessageClient.h \
    page/UserStyleSheetTypes.h \
    page/UserStyleSheet.h \
    page/UserScriptTypes.h \
    page/UserScript.h \
    page/UserMessageHandlersNamespace.h \
    page/UserMessageHandlerDescriptorTypes.h \
    page/UserMessageHandlerDescriptor.h \
    page/UserMessageHandler.h \
    page/UserContentURLPattern.h \
    page/UserContentTypes.h \
    page/UserContentController.h \
    page/TextIndicator.h \
    page/SuspendableTimer.h \
    page/SpatialNavigation.h \
    page/Settings.h \
    page/SessionID.h \
    page/SecurityPolicy.h \
    page/SecurityOriginHash.h \
    page/SecurityOriginData.h \
    page/SecurityOrigin.h \
    page/Screen.h \
    page/ResourceUsageOverlay.h \
    page/PrintContext.h \
    page/PopupOpeningObserver.h \
    page/PointerLockController.h \
    page/PlugInClient.h \
    page/PerformanceUserTiming.h \
    page/PerformanceTiming.h \
    page/PerformanceResourceTiming.h \
    page/PerformanceNavigation.h \
    page/PerformanceMeasure.h \
    page/PerformanceMark.h \
    page/PerformanceEntryList.h \
    page/PerformanceEntry.h \
    page/Performance.h \
    page/PageVisibilityState.h \
    page/PageThrottler.h \
    page/PageSerializer.h \
    page/PageOverlayController.h \
    page/PageOverlay.h \
    page/PageGroupLoadDeferrer.h \
    page/PageGroup.h \
    page/PageDebuggable.h \
    page/PageConsoleClient.h \
    page/PageConfiguration.h \
    page/Page.h \
    page/OriginAccessEntry.h \
    page/NavigatorBase.h \
    page/Navigator.h \
    page/MouseEventWithHitTestResults.h \
    page/MediaProducer.h \
    page/MediaCanStartListener.h \
    page/MainFrame.h \
    page/Location.h \
    page/LayoutMilestones.h \
    page/LayerFlushThrottleState.h \
    page/History.h \
    page/FrameView.h \
    page/FrameTree.h \
    page/FrameSnapshotting.h \
    page/FrameDestructionObserver.h \
    page/Frame.h \
    page/FocusDirection.h \
    page/FocusController.h \
    page/EventSource.h \
    page/EventHandler.h \
    page/EditorClient.h \
    page/DragState.h \
    page/DragController.h \
    page/DragClient.h \
    page/DragActions.h \
    page/DOMWindowProperty.h \
    page/DOMWindowExtension.h \
    page/DOMWindow.h \
    page/DOMTimer.h \
    page/DOMSelection.h \
    page/DOMSecurityPolicy.h \
    page/DiagnosticLoggingResultType.h \
    page/DiagnosticLoggingKeys.h \
    page/DiagnosticLoggingClient.h \
    page/DeviceController.h \
    page/DeviceClient.h \
    page/DebugPageOverlays.h \
    page/DatabaseProvider.h \
    page/Crypto.h \
    page/ContextMenuController.h \
    page/ContextMenuContext.h \
    page/ContentSecurityPolicy.h \
    page/ChromeClient.h \
    page/Chrome.h \
    page/CaptionUserPreferencesMediaAF.h \
    page/CaptionUserPreferences.h \
    page/BarProp.h \
    page/AutoscrollController.h \
    page/AlternativeTextClient.h \
    page/AdjustViewSizeOrNot.h \
    \
    platform/animation/TimingFunction.h \
    platform/animation/AnimationUtilities.h \
    platform/animation/AnimationTrigger.h \
    platform/animation/AnimationList.h \
    platform/animation/Animation.h \
    \
    platform/WindowsKeyboardCodes.h \
    platform/Widget.h \
    platform/WAKViewInternal.h \
    platform/VNodeTracker.h \
    platform/ValueToString.h \
    platform/UUID.h \
    platform/UserActivity.h \
    platform/URLHash.h \
    platform/URL.h \
    platform/Timer.h \
    platform/ThreadTimers.h \
    platform/ThreadSafeDataBuffer.h \
    platform/ThreadGlobalData.h \
    platform/ThreadCheck.h \
    platform/ThemeTypes.h \
    platform/Theme.h \
    platform/TelephoneNumberDetector.h \
    platform/SystemSleepListener.h \
    platform/Supplementable.h \
    platform/SuddenTermination.h \
    platform/SSLKeyGenerator.h \
    platform/Sound.h \
    platform/SharedTimer.h \
    platform/SharedBufferChunkReader.h \
    platform/SharedBuffer.h \
    platform/SerializedPlatformRepresentation.h \
    platform/SearchPopupMenu.h \
    platform/ScrollView.h \
    platform/ScrollTypes.h \
    platform/ScrollbarThemeComposite.h \
    platform/ScrollbarTheme.h \
    platform/Scrollbar.h \
    platform/ScrollAnimator.h \
    platform/ScrollableArea.h \
    platform/SchemeRegistry.h \
    platform/RuntimeApplicationChecksIOS.h \
    platform/RuntimeApplicationChecks.h \
    platform/RemoteCommandListener.h \
    platform/ReferrerPolicy.h \
    platform/PublicSuffix.h \
    platform/PopupMenuStyle.h \
    platform/PopupMenuClient.h \
    platform/PopupMenu.h \
    platform/PODRedBlackTree.h \
    platform/PODIntervalTree.h \
    platform/PODInterval.h \
    platform/PlatformWheelEvent.h \
    platform/PlatformTouchPoint.h \
    platform/PlatformTouchEvent.h \
    platform/PlatformStrategies.h \
    platform/PlatformSpeechSynthesizer.h \
    platform/PlatformSpeechSynthesisVoice.h \
    platform/PlatformSpeechSynthesisUtterance.h \
    platform/PlatformSpeechSynthesis.h \
    platform/PlatformScreen.h \
    platform/PlatformPasteboard.h \
    platform/PlatformMouseEvent.h \
    platform/PlatformMenuDescription.h \
    platform/PlatformKeyboardEvent.h \
    platform/PlatformGamepad.h \
    platform/PlatformExportMacros.h \
    platform/PlatformEvent.h \
    platform/PlatformContentFilter.h \
    platform/PasteboardStrategy.h \
    platform/Pasteboard.h \
    platform/NotImplemented.h \
    platform/MIMETypeRegistry.h \
    platform/MemoryPressureHandler.h \
    platform/MediaSample.h \
    platform/MediaDescription.h \
    platform/MainThreadSharedTimer.h \
    platform/Logging.h \
    platform/LocalizedStrings.h \
    platform/LinkHash.h \
    platform/LengthSize.h \
    platform/LengthBox.h \
    platform/Length.h \
    platform/LayoutUnit.h \
    platform/Language.h \
    platform/KillRing.h \
    platform/KeypressCommand.h \
    platform/KeyedCoding.h \
    platform/HysteresisActivity.h \
    platform/HostWindow.h \
    platform/HashTools.h \
    platform/GenericTaskQueue.h \
    platform/Gamepads.h \
    platform/GamepadProviderClient.h \
    platform/GamepadProvider.h \
    platform/FloatConversion.h \
    platform/FileSystem.h \
    platform/FileStreamClient.h \
    platform/FileStream.h \
    platform/FileMetadata.h \
    platform/FileChooser.h \
    platform/EventLoop.h \
    platform/DragImage.h \
    platform/DragData.h \
    platform/DisplaySleepDisabler.h \
    platform/Decimal.h \
    platform/DateTimeChooserClient.h \
    platform/DateTimeChooser.h \
    platform/DateComponents.h \
    platform/Cursor.h \
    platform/CrossThreadTask.h \
    platform/CrossThreadCopier.h \
    platform/CountedUserActivity.h \
    platform/CookiesStrategy.h \
    platform/Cookie.h \
    platform/ControlStates.h \
    platform/ContextMenuItem.h \
    platform/ContextMenu.h \
    platform/ContentType.h \
    platform/ContentFilterUnblockHandler.h \
    platform/ColorChooserClient.h \
    platform/ColorChooser.h \
    platform/ClockGeneric.h \
    platform/Clock.h \
    platform/CalculationValue.h \
    \
    platform/image-decoders/ImageDecoder.h \
    platform/mock/UserMediaClientMock.h \
    platform/mock/TimerEventBasedMock.h \
    platform/mock/ScrollbarThemeMock.h \
    platform/mock/RTCPeerConnectionHandlerMock.h \
    platform/mock/RTCNotifiersMock.h \
    platform/mock/RTCDTMFSenderHandlerMock.h \
    platform/mock/RTCDataChannelHandlerMock.h \
    platform/mock/PlatformSpeechSynthesizerMock.h \
    platform/mock/MockRealtimeMediaSourceCenter.h \
    platform/mock/MediaConstraintsMock.h \
    platform/mock/GeolocationClientMock.h \
    platform/mock/DeviceOrientationClientMock.h \
    platform/mock/DeviceMotionClientMock.h \
    \
    platform/graphics/WindRule.h \
    platform/graphics/WidthIterator.h \
    platform/graphics/WidthCache.h \
    platform/graphics/VideoTrackPrivate.h \
    platform/graphics/UnitBezier.h \
    platform/graphics/TrackPrivateBase.h \
    platform/graphics/TiledBacking.h \
    platform/graphics/TextTrackRepresentation.h \
    platform/graphics/TextRun.h \
    platform/graphics/SVGGlyph.h \
    platform/graphics/SurrogatePairAwareTextIterator.h \
    platform/graphics/StrokeStyleApplier.h \
    platform/graphics/StringTruncator.h \
    platform/graphics/SourceBufferPrivateClient.h \
    platform/graphics/SourceBufferPrivate.h \
    platform/graphics/ShadowBlur.h \
    platform/graphics/RoundedRect.h \
    platform/graphics/Region.h \
    platform/graphics/PlatformTimeRanges.h \
    platform/graphics/PlatformTextTrack.h \
    platform/graphics/PlatformMediaResourceLoader.h \
    platform/graphics/PlatformLayer.h \
    platform/graphics/PlatformDisplay.h \
    platform/graphics/Pattern.h \
    platform/graphics/PathUtilities.h \
    platform/graphics/PathTraversalState.h \
    platform/graphics/Path.h \
    platform/graphics/OpenGLShims.h \
    platform/graphics/OpenGLESShims.h \
    platform/graphics/NativeImagePtr.h \
    platform/graphics/NamedImageGeneratedImage.h \
    platform/graphics/MediaSourcePrivateClient.h \
    platform/graphics/MediaSourcePrivate.h \
    platform/graphics/MediaPlayerPrivate.h \
    platform/graphics/MediaPlayerEnums.h \
    platform/graphics/MediaPlayer.h \
    platform/graphics/MediaPlaybackTargetPicker.h \
    platform/graphics/MediaPlaybackTargetContext.h \
    platform/graphics/MediaPlaybackTargetClient.h \
    platform/graphics/MediaPlaybackTarget.h \
    platform/graphics/LayoutSize.h \
    platform/graphics/LayoutRect.h \
    platform/graphics/LayoutPoint.h \
    platform/graphics/Latin1TextIterator.h \
    platform/graphics/ISOVTTCue.h \
    platform/graphics/IntSizeHash.h \
    platform/graphics/IntSize.h \
    platform/graphics/IntRectHash.h \
    platform/graphics/IntRectExtent.h \
    platform/graphics/IntRect.h \
    platform/graphics/IntPointHash.h \
    platform/graphics/IntPoint.h \
    platform/graphics/InbandTextTrackPrivateClient.h \
    platform/graphics/InbandTextTrackPrivate.h \
    platform/graphics/ImageSource.h \
    platform/graphics/ImageRenderingMode.h \
    platform/graphics/ImageOrientation.h \
    platform/graphics/ImageObserver.h \
    platform/graphics/ImageBufferData.h \
    platform/graphics/ImageBuffer.h \
    platform/graphics/Image.h \
    platform/graphics/Icon.h \
    platform/graphics/GraphicsTypes3D.h \
    platform/graphics/GraphicsTypes.h \
    platform/graphics/GraphicsLayerUpdater.h \
    platform/graphics/GraphicsLayerTransform.h \
    platform/graphics/GraphicsLayerFactory.h \
    platform/graphics/GraphicsLayerClient.h \
    platform/graphics/GraphicsLayer.h \
    platform/graphics/GraphicsContext3DPrivate.h \
    platform/graphics/GraphicsContext3D.h \
    platform/graphics/GraphicsContext.h \
    platform/graphics/GradientImage.h \
    platform/graphics/Gradient.h \
    platform/graphics/GlyphPage.h \
    platform/graphics/GlyphMetricsMap.h \
    platform/graphics/GlyphBuffer.h \
    platform/graphics/Glyph.h \
    platform/graphics/GLContext.h \
    platform/graphics/GeometryUtilities.h \
    platform/graphics/GeneratedImage.h \
    platform/graphics/FormatConverter.h \
    platform/graphics/FontSelector.h \
    platform/graphics/FontRanges.h \
    platform/graphics/FontPlatformData.h \
    platform/graphics/FontMetrics.h \
    platform/graphics/FontGenericFamilies.h \
    platform/graphics/FontFeatureSettings.h \
    platform/graphics/FontDescription.h \
    platform/graphics/FontCascadeFonts.h \
    platform/graphics/FontCascade.h \
    platform/graphics/FontCache.h \
    platform/graphics/FontBaseline.h \
    platform/graphics/Font.h \
    platform/graphics/FloatSizeHash.h \
    platform/graphics/FloatSize.h \
    platform/graphics/FloatRoundedRect.h \
    platform/graphics/FloatRect.h \
    platform/graphics/FloatQuad.h \
    platform/graphics/FloatPolygon.h \
    platform/graphics/FloatPoint3D.h \
    platform/graphics/FloatPoint.h \
    platform/graphics/Extensions3D.h \
    platform/graphics/DisplayRefreshMonitorManager.h \
    platform/graphics/DisplayRefreshMonitorClient.h \
    platform/graphics/DisplayRefreshMonitor.h \
    platform/graphics/DashArray.h \
    platform/graphics/CrossfadeGeneratedImage.h \
    platform/graphics/ColorSpace.h \
    platform/graphics/Color.h \
    platform/graphics/CDMSession.h \
    platform/graphics/BitmapImage.h \
    platform/graphics/AudioTrackPrivate.h \
    \
    platform/graphics/cpu/arm/filters/NEONHelpers.h \
    platform/graphics/cpu/arm/filters/FEBlendNEON.h \
    platform/graphics/cpu/arm/filters/FECompositeArithmeticNEON.h \
    platform/graphics/cpu/arm/filters/FEGaussianBlurNEON.h \
    platform/graphics/cpu/arm/filters/FELightingNEON.h \
    \
    platform/graphics/filters/SpotLightSource.h \
    platform/graphics/filters/SourceGraphic.h \
    platform/graphics/filters/SourceAlpha.h \
    platform/graphics/filters/PointLightSource.h \
    platform/graphics/filters/LightSource.h \
    platform/graphics/filters/FilterOperations.h \
    platform/graphics/filters/FilterOperation.h \
    platform/graphics/filters/FilterEffect.h \
    platform/graphics/filters/Filter.h \
    platform/graphics/filters/FETurbulence.h \
    platform/graphics/filters/FETile.h \
    platform/graphics/filters/FESpecularLighting.h \
    platform/graphics/filters/FEOffset.h \
    platform/graphics/filters/FEMorphology.h \
    platform/graphics/filters/FEMerge.h \
    platform/graphics/filters/FELighting.h \
    platform/graphics/filters/FEGaussianBlur.h \
    platform/graphics/filters/FEFlood.h \
    platform/graphics/filters/FEDropShadow.h \
    platform/graphics/filters/FEDisplacementMap.h \
    platform/graphics/filters/FEDiffuseLighting.h \
    platform/graphics/filters/FEConvolveMatrix.h \
    platform/graphics/filters/FEComposite.h \
    platform/graphics/filters/FEComponentTransfer.h \
    platform/graphics/filters/FEColorMatrix.h \
    platform/graphics/filters/FEBlend.h \
    platform/graphics/filters/DistantLightSource.h \
    \
    platform/graphics/qt/FontCustomPlatformData.h \
    platform/graphics/qt/NativeImageQt.h \
    platform/graphics/qt/StillImageQt.h \
    platform/graphics/qt/TransparencyLayer.h \
    platform/graphics/surfaces/GraphicsSurface.h \
    platform/graphics/surfaces/GraphicsSurfaceToken.h \
    platform/graphics/texmap/TextureMapperTiledBackingStore.h \
    platform/graphics/texmap/TextureMapperTile.h \
    platform/graphics/texmap/TextureMapperSurfaceBackingStore.h \
    platform/graphics/texmap/TextureMapperShaderProgram.h \
    platform/graphics/texmap/TextureMapperPlatformLayer.h \
    platform/graphics/texmap/TextureMapperLayer.h \
    platform/graphics/texmap/TextureMapperFPSCounter.h \
    platform/graphics/texmap/TextureMapperBackingStore.h \
    platform/graphics/texmap/TextureMapperAnimation.h \
    platform/graphics/texmap/TextureMapper.h \
    platform/graphics/texmap/GraphicsLayerTextureMapper.h \
    platform/graphics/texmap/BitmapTexturePool.h \
    platform/graphics/texmap/BitmapTexture.h \
    \
    platform/graphics/transforms/TranslateTransformOperation.h \
    platform/graphics/transforms/TransformState.h \
    platform/graphics/transforms/TransformOperations.h \
    platform/graphics/transforms/TransformOperation.h \
    platform/graphics/transforms/TransformationMatrix.h \
    platform/graphics/transforms/SkewTransformOperation.h \
    platform/graphics/transforms/ScaleTransformOperation.h \
    platform/graphics/transforms/RotateTransformOperation.h \
    platform/graphics/transforms/PerspectiveTransformOperation.h \
    platform/graphics/transforms/MatrixTransformOperation.h \
    platform/graphics/transforms/Matrix3DTransformOperation.h \
    platform/graphics/transforms/IdentityTransformOperation.h \
    platform/graphics/transforms/AffineTransform.h \
    \
    platform/image-decoders/bmp/BMPImageDecoder.h \
    platform/image-decoders/bmp/BMPImageReader.h \
    platform/image-decoders/ico/ICOImageDecoder.h \
    platform/image-decoders/gif/GIFImageDecoder.h \
    platform/image-decoders/gif/GIFImageReader.h \
    platform/image-decoders/png/PNGImageDecoder.h \
    \
    platform/text/icu/UTextProvider.h \
    platform/text/icu/UTextProviderLatin1.h \
    platform/text/icu/UTextProviderUTF16.h \
    platform/text/WritingMode.h \
    platform/text/UnicodeBidi.h \
    platform/text/TextStream.h \
    platform/text/TextFlags.h \
    platform/text/TextEncodingRegistry.h \
    platform/text/TextEncodingDetector.h \
    platform/text/TextEncoding.h \
    platform/text/TextCodecUTF8.h \
    platform/text/TextCodecUTF16.h \
    platform/text/TextCodecUserDefined.h \
    platform/text/TextCodecLatin1.h \
    platform/text/TextCodecICU.h \
    platform/text/TextCodecASCIIFastPath.h \
    platform/text/TextCodec.h \
    platform/text/TextChecking.h \
    platform/text/TextCheckerClient.h \
    platform/text/TextBreakIteratorInternalICU.h \
    platform/text/TextBreakIterator.h \
    platform/text/TextBoundaries.h \
    platform/text/SuffixTree.h \
    platform/text/StringWithDirection.h \
    platform/text/SegmentedString.h \
    platform/text/QuotedPrintable.h \
    platform/text/PlatformLocale.h \
    platform/text/ParserUtilities.h \
    platform/text/LocaleToScriptMapping.h \
    platform/text/LocaleICU.h \
    platform/text/LineEnding.h \
    platform/text/LineBreakIteratorPoolICU.h \
    platform/text/Hyphenation.h \
    platform/text/DecodeEscapeSequences.h \
    platform/text/DateTimeFormat.h \
    platform/text/CharacterProperties.h \
    platform/text/BidiRunList.h \
    platform/text/BidiResolver.h \
    platform/text/BidiContext.h \
    platform/text/AtomicStringKeyedMRUCache.h \
    \
    platform/network/SynchronousLoaderClient.h \
    platform/network/SocketStreamHandleClient.h \
    platform/network/ResourceResponseBase.h \
    platform/network/ResourceRequestBase.h \
    platform/network/ResourceLoadTiming.h \
    platform/network/ResourceLoadPriority.h \
    platform/network/ResourceHandleTypes.h \
    platform/network/ResourceHandleInternal.h \
    platform/network/ResourceHandleClient.h \
    platform/network/ResourceHandle.h \
    platform/network/ResourceErrorBase.h \
    platform/network/ProxyServer.h \
    platform/network/ProtectionSpaceHash.h \
    platform/network/ProtectionSpaceBase.h \
    platform/network/ProtectionSpace.h \
    platform/network/PlatformCookieJar.h \
    platform/network/PingHandle.h \
    platform/network/ParsedContentType.h \
    platform/network/NetworkStorageSession.h \
    platform/network/NetworkStateNotifier.h \
    platform/network/NetworkingContext.h \
    platform/network/MIMEHeader.h \
    platform/network/HTTPStatusCodes.h \
    platform/network/HTTPParsers.h \
    platform/network/HTTPHeaderMap.h \
    platform/network/FormDataBuilder.h \
    platform/network/FormData.h \
    platform/network/DNSResolveQueue.h \
    platform/network/DNS.h \
    platform/network/DataURLDecoder.h \
    platform/network/DataURL.h \
    platform/network/CredentialStorage.h \
    platform/network/CredentialBase.h \
    platform/network/Credential.h \
    platform/network/CookieStorage.h \
    platform/network/CacheValidation.h \
    platform/network/BlobResourceHandle.h \
    platform/network/BlobRegistryImpl.h \
    platform/network/BlobRegistry.h \
    platform/network/BlobPart.h \
    platform/network/BlobDataFileReference.h \
    platform/network/BlobData.h \
    platform/network/AuthenticationClient.h \
    platform/network/AuthenticationChallengeBase.h \
    platform/network/qt/QNetworkReplyHandler.h \
    platform/network/qt/NetworkStateNotifierPrivate.h \
    platform/network/qt/CookieJarQt.h \
    platform/qt/QWebPageClient.h \
    #platform/qt/ContextMenuQt.h \
    #platform/qt/QStyleFacade.h \
    #platform/qt/RenderThemeQStyle.h \
    #platform/qt/RenderThemeQtMobile.h \
    #platform/qt/ScrollbarThemeQStyle.h \
    platform/qt/UserAgentQt.h \
    \
    platform/sql/SQLValue.h \
    platform/sql/SQLiteTransaction.h \
    platform/sql/SQLiteStatement.h \
    platform/sql/SQLiteFileSystem.h \
    platform/sql/SQLiteDatabaseTrackerClient.h \
    platform/sql/SQLiteDatabaseTracker.h \
    platform/sql/SQLiteDatabase.h \
    \
    plugins/PluginViewBase.h \
    plugins/PluginStrategy.h \
    plugins/PluginData.h \
    plugins/nptypes.h \
    plugins/npruntime.h \
    plugins/npfunctions.h \
    plugins/npapi.h \
    plugins/DOMPluginArray.h \
    plugins/DOMPlugin.h \
    plugins/DOMMimeTypeArray.h \
    plugins/DOMMimeType.h \
    \
    rendering/VerticalPositionCache.h \
    rendering/TrailingFloatsRootInlineBox.h \
    rendering/TextPaintStyle.h \
    rendering/TextPainter.h \
    rendering/TextAutoSizing.h \
    rendering/TextAutosizer.h \
    rendering/TableLayout.h \
    rendering/SimpleLineLayoutTextFragmentIterator.h \
    rendering/SimpleLineLayoutResolver.h \
    rendering/SimpleLineLayoutFunctions.h \
    rendering/SimpleLineLayoutFlowContents.h \
    rendering/SimpleLineLayout.h \
    rendering/SelectionSubtreeRoot.h \
    rendering/ScrollBehavior.h \
    rendering/RootInlineBox.h \
    rendering/RenderWidget.h \
    rendering/RenderVTTCue.h \
    rendering/RenderView.h \
    rendering/RenderVideo.h \
    rendering/RenderTreeAsText.h \
    rendering/RenderThemeWin.h \
    rendering/RenderThemeQt.h \
    rendering/RenderThemeMac.h \
    rendering/RenderThemeIOS.h \
    rendering/RenderThemeGtk.h \
    rendering/RenderThemeEfl.h \
    rendering/RenderTheme.h \
    rendering/RenderTextLineBoxes.h \
    rendering/RenderTextFragment.h \
    rendering/RenderTextControlSingleLine.h \
    rendering/RenderTextControlMultiLine.h \
    rendering/RenderTextControl.h \
    rendering/RenderText.h \
    rendering/RenderTableSection.h \
    rendering/RenderTableRow.h \
    rendering/RenderTableCol.h \
    rendering/RenderTableCell.h \
    rendering/RenderTableCaption.h \
    rendering/RenderTable.h \
    rendering/RenderSnapshottedPlugIn.h \
    rendering/RenderSlider.h \
    rendering/RenderSelectionInfo.h \
    rendering/RenderSearchField.h \
    rendering/RenderScrollbarTheme.h \
    rendering/RenderScrollbarPart.h \
    rendering/RenderScrollbar.h \
    rendering/RenderRubyText.h \
    rendering/RenderRubyRun.h \
    rendering/RenderRubyBase.h \
    rendering/RenderRuby.h \
    rendering/RenderReplica.h \
    rendering/RenderReplaced.h \
    rendering/RenderRegionSet.h \
    rendering/RenderRegion.h \
    rendering/RenderQuote.h \
    rendering/RenderPtr.h \
    rendering/RenderProgress.h \
    rendering/RenderOverflow.h \
    rendering/RenderObject.h \
    rendering/RenderNamedFlowThread.h \
    rendering/RenderNamedFlowFragment.h \
    rendering/RenderMultiColumnSpannerPlaceholder.h \
    rendering/RenderMultiColumnSet.h \
    rendering/RenderMultiColumnFlowThread.h \
    rendering/RenderMeter.h \
    rendering/RenderMenuList.h \
    rendering/RenderMediaControls.h \
    rendering/RenderMediaControlElements.h \
    rendering/RenderMedia.h \
    rendering/RenderMarquee.h \
    rendering/RenderListMarker.h \
    rendering/RenderListItem.h \
    rendering/RenderListBox.h \
    rendering/RenderLineBreak.h \
    rendering/RenderLineBoxList.h \
    rendering/RenderLayerModelObject.h \
    rendering/RenderLayerFilterInfo.h \
    rendering/RenderLayerCompositor.h \
    rendering/RenderLayerBacking.h \
    rendering/RenderLayer.h \
    rendering/RenderIterator.h \
    rendering/RenderInline.h \
    rendering/RenderImageResourceStyleImage.h \
    rendering/RenderImageResource.h \
    rendering/RenderImage.h \
    rendering/RenderIFrame.h \
    rendering/RenderHTMLCanvas.h \
    rendering/RenderGrid.h \
    rendering/RenderGeometryMap.h \
    rendering/RenderFullScreen.h \
    rendering/RenderFrameSet.h \
    rendering/RenderFrameBase.h \
    rendering/RenderFrame.h \
    rendering/RenderFlowThread.h \
    rendering/RenderFlexibleBox.h \
    rendering/RenderFileUploadControl.h \
    rendering/RenderFieldset.h \
    rendering/RenderEmbeddedObject.h \
    rendering/RenderElement.h \
    rendering/RenderDetailsMarker.h \
    rendering/RenderDeprecatedFlexibleBox.h \
    rendering/RenderCounter.h \
    rendering/RenderCombineText.h \
    rendering/RenderChildIterator.h \
    rendering/RenderButton.h \
    rendering/RenderBoxRegionInfo.h \
    rendering/RenderBoxModelObject.h \
    rendering/RenderBox.h \
    rendering/RenderBlockFlow.h \
    rendering/RenderBlock.h \
    rendering/RenderAttachment.h \
    rendering/RenderAncestorIterator.h \
    rendering/RegionOversetState.h \
    rendering/PointerEventsHitRules.h \
    rendering/PaintPhase.h \
    rendering/PaintInfo.h \
    rendering/Pagination.h \
    rendering/OverlapTestRequestClient.h \
    rendering/OrderIterator.h \
    rendering/LogicalSelectionOffsetCaches.h \
    rendering/LayoutState.h \
    rendering/LayoutRepainter.h \
    rendering/LayerFragment.h \
    rendering/InlineTextBox.h \
    rendering/InlineIterator.h \
    rendering/InlineFlowBox.h \
    rendering/InlineElementBox.h \
    rendering/InlineBox.h \
    rendering/ImageQualityController.h \
    rendering/HitTestResult.h \
    rendering/HitTestRequest.h \
    rendering/HitTestLocation.h \
    rendering/HitTestingTransformState.h \
    rendering/GapRects.h \
    rendering/FlowThreadController.h \
    rendering/FloatingObjects.h \
    rendering/FixedTableLayout.h \
    rendering/FilterEffectRenderer.h \
    rendering/EllipsisBox.h \
    rendering/CounterNode.h \
    rendering/ColumnInfo.h \
    rendering/ClipRect.h \
    rendering/ClipPathOperation.h \
    rendering/break_lines.h \
    rendering/BorderEdge.h \
    rendering/BidiRun.h \
    rendering/AutoTableLayout.h \
    \
    rendering/shapes/ShapeOutsideInfo.h \
    rendering/shapes/ShapeInterval.h \
    rendering/shapes/Shape.h \
    rendering/shapes/RectangleShape.h \
    rendering/shapes/RasterShape.h \
    rendering/shapes/PolygonShape.h \
    rendering/shapes/BoxShape.h \
    \
    rendering/style/WillChangeData.h \
    rendering/style/TextSizeAdjustment.h \
    rendering/style/SVGRenderStyleDefs.h \
    rendering/style/SVGRenderStyle.h \
    rendering/style/StyleVisualData.h \
    rendering/style/StyleTransformData.h \
    rendering/style/StyleSurroundData.h \
    rendering/style/StyleSelfAlignmentData.h \
    rendering/style/StyleScrollSnapPoints.h \
    rendering/style/StyleReflection.h \
    rendering/style/StyleRareNonInheritedData.h \
    rendering/style/StyleRareInheritedData.h \
    rendering/style/StylePendingImage.h \
    rendering/style/StyleMultiColData.h \
    rendering/style/StyleMarqueeData.h \
    rendering/style/StyleInheritedData.h \
    rendering/style/StyleImage.h \
    rendering/style/StyleGridItemData.h \
    rendering/style/StyleGridData.h \
    rendering/style/StyleGeneratedImage.h \
    rendering/style/StyleFlexibleBoxData.h \
    rendering/style/StyleFilterData.h \
    rendering/style/StyleDeprecatedFlexibleBoxData.h \
    rendering/style/StyleDashboardRegion.h \
    rendering/style/StyleCustomPropertyData.h \
    rendering/style/StyleContentAlignmentData.h \
    rendering/style/StyleCachedImageSet.h \
    rendering/style/StyleCachedImage.h \
    rendering/style/StyleBoxData.h \
    rendering/style/StyleBackgroundData.h \
    rendering/style/ShapeValue.h \
    rendering/style/ShadowData.h \
    rendering/style/RenderStyleConstants.h \
    rendering/style/RenderStyle.h \
    rendering/style/QuotesData.h \
    rendering/style/OutlineValue.h \
    rendering/style/NinePieceImage.h \
    rendering/style/LineClampValue.h \
    rendering/style/KeyframeList.h \
    rendering/style/GridTrackSize.h \
    rendering/style/GridResolvedPosition.h \
    rendering/style/GridPosition.h \
    rendering/style/GridLength.h \
    rendering/style/GridCoordinate.h \
    rendering/style/FillLayer.h \
    rendering/style/DataRef.h \
    rendering/style/CursorList.h \
    rendering/style/CursorData.h \
    rendering/style/CounterDirectives.h \
    rendering/style/CounterContent.h \
    rendering/style/ContentData.h \
    rendering/style/CollapsedBorderValue.h \
    rendering/style/BorderValue.h \
    rendering/style/BorderData.h \
    rendering/style/BasicShapes.h \
    \
    rendering/svg/SVGTextRunRenderingContext.h \
    rendering/svg/SVGTextQuery.h \
    rendering/svg/SVGTextMetricsBuilder.h \
    rendering/svg/SVGTextMetrics.h \
    rendering/svg/SVGTextLayoutEngineSpacing.h \
    rendering/svg/SVGTextLayoutEngineBaseline.h \
    rendering/svg/SVGTextLayoutEngine.h \
    rendering/svg/SVGTextLayoutAttributesBuilder.h \
    rendering/svg/SVGTextLayoutAttributes.h \
    rendering/svg/SVGTextFragment.h \
    rendering/svg/SVGTextChunkBuilder.h \
    rendering/svg/SVGTextChunk.h \
    rendering/svg/SVGSubpathData.h \
    rendering/svg/SVGRootInlineBox.h \
    rendering/svg/SVGResourcesCycleSolver.h \
    rendering/svg/SVGResourcesCache.h \
    rendering/svg/SVGResources.h \
    rendering/svg/SVGRenderTreeAsText.h \
    rendering/svg/SVGRenderSupport.h \
    rendering/svg/SVGRenderingContext.h \
    rendering/svg/SVGPathData.h \
    rendering/svg/SVGMarkerData.h \
    rendering/svg/SVGInlineTextBox.h \
    rendering/svg/SVGInlineFlowBox.h \
    rendering/svg/RenderSVGViewportContainer.h \
    rendering/svg/RenderSVGTSpan.h \
    rendering/svg/RenderSVGTransformableContainer.h \
    rendering/svg/RenderSVGTextPath.h \
    rendering/svg/RenderSVGText.h \
    rendering/svg/RenderSVGShape.h \
    rendering/svg/RenderSVGRoot.h \
    rendering/svg/RenderSVGResourceSolidColor.h \
    rendering/svg/RenderSVGResourceRadialGradient.h \
    rendering/svg/RenderSVGResourcePattern.h \
    rendering/svg/RenderSVGResourceMasker.h \
    rendering/svg/RenderSVGResourceMarker.h \
    rendering/svg/RenderSVGResourceLinearGradient.h \
    rendering/svg/RenderSVGResourceGradient.h \
    rendering/svg/RenderSVGResourceFilterPrimitive.h \
    rendering/svg/RenderSVGResourceFilter.h \
    rendering/svg/RenderSVGResourceContainer.h \
    rendering/svg/RenderSVGResourceClipper.h \
    rendering/svg/RenderSVGResource.h \
    rendering/svg/RenderSVGRect.h \
    rendering/svg/RenderSVGPath.h \
    rendering/svg/RenderSVGModelObject.h \
    rendering/svg/RenderSVGInlineText.h \
    rendering/svg/RenderSVGInline.h \
    rendering/svg/RenderSVGImage.h \
    rendering/svg/RenderSVGHiddenContainer.h \
    rendering/svg/RenderSVGGradientStop.h \
    rendering/svg/RenderSVGForeignObject.h \
    rendering/svg/RenderSVGEllipse.h \
    rendering/svg/RenderSVGContainer.h \
    rendering/svg/RenderSVGBlock.h \
    rendering/line/BreakingContext.h \
    rendering/line/LineBreaker.h \
    rendering/line/LineInfo.h \
    rendering/line/LineInlineHeaders.h \
    rendering/line/LineLayoutState.h \
    rendering/line/LineWidth.h \
    rendering/line/TrailingObjects.h \
    \
    replay/AllReplayInputs.h \
    replay/CapturingInputCursor.h \
    replay/EventLoopInput.h \
    replay/EventLoopInputDispatcher.h \
    replay/FunctorInputCursor.h \
    replay/MemoizedDOMResult.h \
    replay/ReplayController.h \
    replay/ReplayingInputCursor.h \
    replay/ReplaySession.h \
    replay/ReplaySessionSegment.h \
    replay/SegmentedInputStorage.h \
    replay/SerializationMethods.h \
    replay/UserInputBridge.h \
    \
    storage/StorageNamespaceProvider.h \
    storage/StorageNamespace.h \
    storage/StorageMap.h \
    storage/StorageEventDispatcher.h \
    storage/StorageEvent.h \
    storage/StorageArea.h \
    storage/Storage.h \
    \
    svg/animation/SMILTimeContainer.h \
    svg/animation/SMILTime.h \
    svg/animation/SVGSMILElement.h \
    svg/graphics/filters/SVGFEImage.h \
    svg/graphics/filters/SVGFilterBuilder.h \
    svg/graphics/filters/SVGFilter.h \
    svg/graphics/SVGImage.h \
    svg/graphics/SVGImageCache.h \
    svg/graphics/SVGImageForContainer.h \
    svg/graphics/SVGImageClients.h \
    svg/properties/SVGTransformListPropertyTearOff.h \
    svg/properties/SVGStaticPropertyTearOff.h \
    svg/properties/SVGStaticListPropertyTearOff.h \
    svg/properties/SVGPropertyTraits.h \
    svg/properties/SVGPropertyTearOff.h \
    svg/properties/SVGPropertyInfo.h \
    svg/properties/SVGProperty.h \
    svg/properties/SVGPathSegListPropertyTearOff.h \
    svg/properties/SVGMatrixTearOff.h \
    svg/properties/SVGListPropertyTearOff.h \
    svg/properties/SVGListProperty.h \
    svg/properties/SVGAttributeToPropertyMap.h \
    svg/properties/SVGAnimatedTransformListPropertyTearOff.h \
    svg/properties/SVGAnimatedStaticPropertyTearOff.h \
    svg/properties/SVGAnimatedPropertyTearOff.h \
    svg/properties/SVGAnimatedPropertyMacros.h \
    svg/properties/SVGAnimatedPropertyDescription.h \
    svg/properties/SVGAnimatedProperty.h \
    svg/properties/SVGAnimatedPathSegListPropertyTearOff.h \
    svg/properties/SVGAnimatedListPropertyTearOff.h \
    svg/properties/SVGAnimatedEnumerationPropertyTearOff.h \
    \
    svg/SVGZoomEvent.h \
    svg/SVGZoomAndPan.h \
    svg/SVGVKernElement.h \
    svg/SVGViewSpec.h \
    svg/SVGViewElement.h \
    svg/SVGUseElement.h \
    svg/SVGURIReference.h \
    svg/SVGUnknownElement.h \
    svg/SVGUnitTypes.h \
    svg/SVGTSpanElement.h \
    svg/SVGTRefElement.h \
    svg/SVGTransformList.h \
    svg/SVGTransformDistance.h \
    svg/SVGTransformable.h \
    svg/SVGTransform.h \
    svg/SVGToOTFFontConversion.h \
    svg/SVGTitleElement.h \
    svg/SVGTextPositioningElement.h \
    svg/SVGTextPathElement.h \
    svg/SVGTextElement.h \
    svg/SVGTextContentElement.h \
    svg/SVGTests.h \
    svg/SVGSymbolElement.h \
    svg/SVGSwitchElement.h \
    svg/SVGSVGElement.h \
    svg/SVGStyleElement.h \
    svg/SVGStringList.h \
    svg/SVGStopElement.h \
    svg/SVGSetElement.h \
    svg/SVGScriptElement.h \
    svg/SVGRenderingIntent.h \
    svg/SVGRectElement.h \
    svg/SVGRect.h \
    svg/SVGRadialGradientElement.h \
    svg/SVGPreserveAspectRatio.h \
    svg/SVGPolylineElement.h \
    svg/SVGPolygonElement.h \
    svg/SVGPolyElement.h \
    svg/SVGPointList.h \
    svg/SVGPoint.h \
    svg/SVGPatternElement.h \
    svg/SVGPathUtilities.h \
    svg/SVGPathTraversalStateBuilder.h \
    svg/SVGPathStringSource.h \
    svg/SVGPathStringBuilder.h \
    svg/SVGPathSource.h \
    svg/SVGPathSegWithContext.h \
    svg/SVGPathSegMovetoRel.h \
    svg/SVGPathSegMovetoAbs.h \
    svg/SVGPathSegListSource.h \
    svg/SVGPathSegListBuilder.h \
    svg/SVGPathSegList.h \
    svg/SVGPathSegLinetoVerticalRel.h \
    svg/SVGPathSegLinetoVerticalAbs.h \
    svg/SVGPathSegLinetoVertical.h \
    svg/SVGPathSegLinetoRel.h \
    svg/SVGPathSegLinetoHorizontalRel.h \
    svg/SVGPathSegLinetoHorizontalAbs.h \
    svg/SVGPathSegLinetoHorizontal.h \
    svg/SVGPathSegLinetoAbs.h \
    svg/SVGPathSegCurvetoQuadraticSmoothRel.h \
    svg/SVGPathSegCurvetoQuadraticSmoothAbs.h \
    svg/SVGPathSegCurvetoQuadraticRel.h \
    svg/SVGPathSegCurvetoQuadraticAbs.h \
    svg/SVGPathSegCurvetoQuadratic.h \
    svg/SVGPathSegCurvetoCubicSmoothRel.h \
    svg/SVGPathSegCurvetoCubicSmoothAbs.h \
    svg/SVGPathSegCurvetoCubicSmooth.h \
    svg/SVGPathSegCurvetoCubicRel.h \
    svg/SVGPathSegCurvetoCubicAbs.h \
    svg/SVGPathSegCurvetoCubic.h \
    svg/SVGPathSegClosePath.h \
    svg/SVGPathSegArcRel.h \
    svg/SVGPathSegArcAbs.h \
    svg/SVGPathSegArc.h \
    svg/SVGPathSeg.h \
    svg/SVGPathParser.h \
    svg/SVGPathElement.h \
    svg/SVGPathConsumer.h \
    svg/SVGPathByteStreamSource.h \
    svg/SVGPathByteStreamBuilder.h \
    svg/SVGPathByteStream.h \
    svg/SVGPathBuilder.h \
    svg/SVGPathBlender.h \
    svg/SVGParsingError.h \
    svg/SVGParserUtilities.h \
    svg/SVGPaint.h \
    svg/SVGNumberList.h \
    svg/SVGMPathElement.h \
    svg/SVGMissingGlyphElement.h \
    svg/SVGMetadataElement.h \
    svg/SVGMatrix.h \
    svg/SVGMaskElement.h \
    svg/SVGMarkerElement.h \
    svg/SVGLocatable.h \
    svg/SVGLineElement.h \
    svg/SVGLinearGradientElement.h \
    svg/SVGLengthList.h \
    svg/SVGLengthContext.h \
    svg/SVGLength.h \
    svg/SVGLangSpace.h \
    svg/SVGImageLoader.h \
    svg/SVGImageElement.h \
    svg/SVGHKernElement.h \
    svg/SVGGraphicsElement.h \
    svg/SVGGradientElement.h \
    svg/SVGGlyphRefElement.h \
    svg/SVGGlyphMap.h \
    svg/SVGGlyphElement.h \
    svg/SVGGElement.h \
    svg/SVGForeignObjectElement.h \
    svg/SVGFontFaceUriElement.h \
    svg/SVGFontFaceSrcElement.h \
    svg/SVGFontFaceNameElement.h \
    svg/SVGFontFaceFormatElement.h \
    svg/SVGFontFaceElement.h \
    svg/SVGFontElement.h \
    svg/SVGFontData.h \
    svg/SVGFitToViewBox.h \
    svg/SVGFilterPrimitiveStandardAttributes.h \
    svg/SVGFilterElement.h \
    svg/SVGFETurbulenceElement.h \
    svg/SVGFETileElement.h \
    svg/SVGFESpotLightElement.h \
    svg/SVGFESpecularLightingElement.h \
    svg/SVGFEPointLightElement.h \
    svg/SVGFEOffsetElement.h \
    svg/SVGFEMorphologyElement.h \
    svg/SVGFEMergeNodeElement.h \
    svg/SVGFEMergeElement.h \
    svg/SVGFELightElement.h \
    svg/SVGFEImageElement.h \
    svg/SVGFEGaussianBlurElement.h \
    svg/SVGFEFuncRElement.h \
    svg/SVGFEFuncGElement.h \
    svg/SVGFEFuncBElement.h \
    svg/SVGFEFuncAElement.h \
    svg/SVGFEFloodElement.h \
    svg/SVGFEDropShadowElement.h \
    svg/SVGFEDistantLightElement.h \
    svg/SVGFEDisplacementMapElement.h \
    svg/SVGFEDiffuseLightingElement.h \
    svg/SVGFEConvolveMatrixElement.h \
    svg/SVGFECompositeElement.h \
    svg/SVGFEComponentTransferElement.h \
    svg/SVGFEColorMatrixElement.h \
    svg/SVGFEBlendElement.h \
    svg/SVGExternalResourcesRequired.h \
    svg/SVGException.h \
    svg/SVGEllipseElement.h \
    svg/SVGElementRareData.h \
    svg/SVGElement.h \
    svg/SVGDocumentExtensions.h \
    svg/SVGDocument.h \
    svg/SVGDescElement.h \
    svg/SVGDefsElement.h \
    svg/SVGCursorElement.h \
    svg/SVGComponentTransferFunctionElement.h \
    svg/SVGColor.h \
    svg/SVGClipPathElement.h \
    svg/SVGCircleElement.h \
    svg/SVGAnimatorFactory.h \
    svg/SVGAnimationElement.h \
    svg/SVGAnimateTransformElement.h \
    svg/SVGAnimateMotionElement.h \
    svg/SVGAnimateElementBase.h \
    svg/SVGAnimateElement.h \
    svg/SVGAnimatedTypeAnimator.h \
    svg/SVGAnimatedType.h \
    svg/SVGAnimatedTransformList.h \
    svg/SVGAnimatedString.h \
    svg/SVGAnimatedRect.h \
    svg/SVGAnimatedPreserveAspectRatio.h \
    svg/SVGAnimatedPointList.h \
    svg/SVGAnimatedPath.h \
    svg/SVGAnimatedNumberOptionalNumber.h \
    svg/SVGAnimatedNumberList.h \
    svg/SVGAnimatedNumber.h \
    svg/SVGAnimatedLengthList.h \
    svg/SVGAnimatedLength.h \
    svg/SVGAnimatedIntegerOptionalInteger.h \
    svg/SVGAnimatedInteger.h \
    svg/SVGAnimatedEnumeration.h \
    svg/SVGAnimatedColor.h \
    svg/SVGAnimatedBoolean.h \
    svg/SVGAnimatedAngle.h \
    svg/SVGAnimateColorElement.h \
    svg/SVGAngle.h \
    svg/SVGAltGlyphItemElement.h \
    svg/SVGAltGlyphElement.h \
    svg/SVGAltGlyphDefElement.h \
    svg/SVGAElement.h \
    svg/RadialGradientAttributes.h \
    svg/PatternAttributes.h \
    svg/LinearGradientAttributes.h \
    svg/GradientAttributes.h \
    #\
    #testing/TypeConversions.h \
    #testing/MockPageOverlayClient.h \
    #testing/MockContentFilterSettings.h \
    #testing/MockContentFilter.h \
    #testing/MockCDM.h \
    #testing/MicroTaskTest.h \
    #testing/MemoryInfo.h \
    #testing/MallocStatistics.h \
    #testing/InternalSettings.h \
    #testing/Internals.h \
    \
    xml/parser/XMLDocumentParserScope.h \
    xml/parser/XMLDocumentParser.h \
    xml/parser/MarkupTokenizerInlines.h \
    xml/parser/CharacterReferenceParserInlines.h \
    \
    xml/XSLTUnicodeSort.h \
    xml/XSLTProcessor.h \
    xml/XSLTExtensions.h \
    xml/XSLStyleSheet.h \
    xml/XSLImportRule.h \
    xml/XPathVariableReference.h \
    xml/XPathValue.h \
    xml/XPathUtil.h \
    xml/XPathStep.h \
    xml/XPathResult.h \
    xml/XPathPredicate.h \
    xml/XPathPath.h \
    xml/XPathParser.h \
    xml/XPathNSResolver.h \
    xml/XPathNodeSet.h \
    xml/XPathFunctions.h \
    xml/XPathExpressionNode.h \
    xml/XPathExpression.h \
    xml/XPathException.h \
    xml/XPathEvaluator.h \
    xml/XMLTreeViewer.h \
    xml/XMLSerializer.h \
    xml/XMLHttpRequestUpload.h \
    xml/XMLHttpRequestProgressEventThrottle.h \
    xml/XMLHttpRequestProgressEvent.h \
    xml/XMLHttpRequestException.h \
    xml/XMLHttpRequest.h \
    xml/XMLErrors.h \
    xml/NativeXPathNSResolver.h \
    xml/DOMParser.h \
    \
    crypto/CommonCryptoUtilities.cpp \
    crypto/CryptoAlgorithm.cpp \
    crypto/CryptoAlgorithmDescriptionBuilder.cpp \
    crypto/CryptoAlgorithmRegistry.cpp \
    crypto/CryptoKey.cpp \
    crypto/CryptoKeyPair.cpp \
    crypto/SubtleCrypto.cpp \
    crypto/algorithms/CryptoAlgorithmAES_CBC.cpp \
    crypto/algorithms/CryptoAlgorithmAES_KW.cpp \
    crypto/algorithms/CryptoAlgorithmHMAC.cpp \
    crypto/algorithms/CryptoAlgorithmRSA_OAEP.cpp \
    crypto/algorithms/CryptoAlgorithmRSAES_PKCS1_v1_5.cpp \
    crypto/algorithms/CryptoAlgorithmRSASSA_PKCS1_v1_5.cpp \
    crypto/algorithms/CryptoAlgorithmSHA1.cpp \
    crypto/algorithms/CryptoAlgorithmSHA224.cpp \
    crypto/algorithms/CryptoAlgorithmSHA256.cpp \
    crypto/algorithms/CryptoAlgorithmSHA384.cpp \
    crypto/algorithms/CryptoAlgorithmSHA512.cpp \
    crypto/gnutls/CryptoAlgorithmAES_CBCGnuTLS.cpp \
    crypto/gnutls/CryptoAlgorithmAES_KWGnuTLS.cpp \
    crypto/gnutls/CryptoAlgorithmHMACGnuTLS.cpp \
    crypto/gnutls/CryptoAlgorithmRegistryGnuTLS.cpp \
    crypto/gnutls/CryptoAlgorithmRSA_OAEPGnuTLS.cpp \
    crypto/gnutls/CryptoAlgorithmRSAES_PKCS1_v1_5GnuTLS.cpp \
    crypto/gnutls/CryptoAlgorithmRSASSA_PKCS1_v1_5GnuTLS.cpp \
    crypto/gnutls/CryptoDigestGnuTLS.cpp \
    crypto/gnutls/CryptoKeyRSAGnuTLS.cpp \
    crypto/gnutls/SerializedCryptoKeyWrapGnuTLS.cpp \
    crypto/keys/CryptoKeyAES.cpp \
    crypto/keys/CryptoKeyDataOctetSequence.cpp \
    crypto/keys/CryptoKeyDataRSAComponents.cpp \
    crypto/keys/CryptoKeyHMAC.cpp \
    crypto/keys/CryptoKeySerializationRaw.cpp

HEADERS += \
    platform/graphics/qt/FontCustomPlatformData.h \
    platform/graphics/qt/FontPlatformData.h \
    platform/graphics/qt/ImageBufferDataQt.h \
    platform/graphics/qt/ImageDecoderQt.h \
    platform/graphics/qt/NativeImageQt.h \
    platform/graphics/qt/StillImageQt.h \
    platform/graphics/qt/TileQt.h \
    platform/graphics/qt/TransparencyLayer.h

SOURCES += \
    accessibility/qt/AccessibilityObjectQt.cpp \
    \
    page/qt/DragControllerQt.cpp \
    page/qt/EventHandlerQt.cpp \
    \
    editing/qt/EditorQt.cpp \
    \
    platform/graphics/qt/ColorQt.cpp \
    platform/graphics/qt/FloatPointQt.cpp \
    platform/graphics/qt/FloatRectQt.cpp \
    platform/graphics/qt/FloatSizeQt.cpp \
    platform/graphics/qt/FontCacheQt.cpp \
    platform/graphics/qt/FontCascadeQt.cpp \
    platform/graphics/qt/FontCustomPlatformDataQt.cpp \
    platform/graphics/qt/FontPlatformDataQt.cpp \
    platform/graphics/qt/FontQt.cpp \
    platform/graphics/qt/GlyphPageTreeNodeQt.cpp \
    platform/graphics/qt/GradientQt.cpp \
    platform/graphics/qt/GraphicsContextQt.cpp \
    platform/graphics/qt/IconQt.cpp \
    platform/graphics/qt/ImageBufferDataQt.cpp \
    platform/graphics/qt/ImageBufferQt.cpp \
    platform/graphics/qt/ImageDecoderQt.cpp \
    platform/graphics/qt/ImageQt.cpp \
    platform/graphics/qt/IntPointQt.cpp \
    platform/graphics/qt/IntRectQt.cpp \
    platform/graphics/qt/IntSizeQt.cpp \
    #platform/graphics/qt/MediaPlayerPrivateQt.cpp \
    platform/graphics/qt/PathQt.cpp \
    platform/graphics/qt/PatternQt.cpp \
    platform/graphics/qt/SimpleFontDataQt.cpp \
    platform/graphics/qt/StillImageQt.cpp \
    platform/graphics/qt/TileQt.cpp \
    platform/graphics/qt/TransformationMatrixQt.cpp \
    platform/graphics/surfaces/qt/GraphicsSurfaceQt.cpp \
    \
    platform/network/qt/CookieJarQt.cpp \
    platform/network/qt/CredentialStorageQt.cpp \
    platform/network/qt/DNSQt.cpp \
    platform/network/qt/NetworkStateNotifierQt.cpp \
    platform/network/qt/ProxyServerQt.cpp \
    platform/network/qt/QNetworkReplyHandler.cpp \
    platform/network/qt/ResourceHandleQt.cpp \
    platform/network/qt/ResourceRequestQt.cpp \
    \
    platform/ContextMenuItemNone.cpp \
    platform/ContextMenuNone.cpp \
    \
    platform/qt/CursorQt.cpp \
    platform/qt/DataTransferItemListQt.cpp \
    platform/qt/DataTransferItemQt.cpp \
    #platform/qt/DeviceMotionClientQt.cpp \
    #platform/qt/DeviceMotionProviderQt.cpp \
    #platform/qt/DeviceOrientationClientQt.cpp \
    #platform/qt/DeviceOrientationProviderQt.cpp \
    platform/qt/DragDataQt.cpp \
    platform/qt/DragImageQt.cpp \
    platform/qt/EventLoopQt.cpp \
    platform/qt/FileSystemQt.cpp \
    platform/qt/KURLQt.cpp \
    platform/qt/LanguageQt.cpp \
    platform/qt/LoggingQt.cpp \
    platform/qt/MIMETypeRegistryQt.cpp \
    platform/qt/PasteboardQt.cpp \
    platform/qt/PlatformKeyboardEventQt.cpp \
    platform/qt/PlatformScreenQt.cpp \
    platform/qt/PlatformSupportQt.cpp \
    platform/qt/QtTestSupport.cpp \
    #platform/qt/RenderThemeQStyle.cpp \
    #platform/qt/RunLoopQt.cpp \
    #platform/qt/ScrollbarThemeQStyle.cpp \
    #platform/qt/ScrollbarThemeQt.cpp \
    #platform/qt/ScrollViewQt.cpp \
    platform/qt/SharedBufferQt.cpp \
    platform/qt/SharedTimerQt.cpp \
    platform/qt/SoundQt.cpp \
    platform/qt/TemporaryLinkStubsQt.cpp \
    platform/qt/ThirdPartyCookiesQt.cpp \
    platform/qt/UserAgentQt.cpp \
    platform/qt/WidgetQt.cpp \
    \
    platform/text/qt/TextBoundariesQt.cpp \
    platform/text/qt/TextBreakIteratorInternalICUQt.cpp \
    \
    rendering/RenderThemeQt.cpp

HEADERS += xml/parser/XMLDocumentParserScope.h
SOURCES += \
        xml/parser/XMLDocumentParserLibxml2.cpp \
        xml/parser/XMLDocumentParserScope.cpp

#use?(LIBXML2) {
#    HEADERS += xml/parser/XMLDocumentParserScope.h
#    SOURCES += \
#            xml/parser/XMLDocumentParserLibxml2.cpp \
#            xml/parser/XMLDocumentParserScope.cpp
#} else {
    #SOURCES += xml/parser/XMLDocumentParserQt.cpp
#}

enable?(SMOOTH_SCROLLING) {
    HEADERS += platform/ScrollAnimatorNone.h
    SOURCES += platform/ScrollAnimatorNone.cpp
}

win32-* {
    HEADERS += platform/win/SystemInfo.h
    SOURCES += \
        platform/win/SystemInfo.cpp \
        platform/graphics/win/TransformationMatrixWin.cpp
}

mac {
    SOURCES += \
        platform/cf/SharedBufferCF.cpp \
        platform/text/cf/AtomicStringCF.cpp \
        platform/text/cf/StringCF.cpp \
        platform/text/cf/StringImplCF.cpp
}

contains(QT_CONFIG,icu)|mac: SOURCES += platform/text/TextBreakIteratorICU.cpp
use?(wchar_unicode): {
    SOURCES += platform/text/wchar/TextBreakIteratorWchar.cpp \
               platform/text/TextEncodingDetectorNone.cpp
    SOURCES -= platform/text/TextEncodingDetectorICU.cpp
}

mac {
    # For Mac we use the same SmartReplace implementation as the Apple port.
    SOURCES += editing/SmartReplaceCF.cpp
    INCLUDEPATH += $$PWD/icu
}

enable?(NETSCAPE_PLUGIN_API) {

    unix {
        mac {
            SOURCES += \
                plugins/mac/PluginPackageMac.cpp
            OBJECTIVE_SOURCES += \
                platform/text/mac/StringImplMac.mm \
                platform/mac/WebCoreNSStringExtras.mm \
                plugins/mac/PluginViewMac.mm
        } else {
            SOURCES += \
                plugins/qt/PluginPackageQt.cpp \
                plugins/qt/PluginViewQt.cpp
        }
    }

    win32-* {
        INCLUDEPATH += $$PWD/plugins/win \
                       $$PWD/platform/win \
                       $$PWD/platform/graphics/win

        SOURCES += platform/win/BitmapInfo.cpp \
                   platform/win/WebCoreInstanceHandle.cpp
    }

}

use?(PLUGIN_BACKEND_XLIB) {
    SOURCES += plugins/qt/QtX11ImageConversion.cpp
    HEADERS += plugins/qt/QtX11ImageConversion.h
}

enable?(SQL_DATABASE) {
    SOURCES += \
        Modules/webdatabase/ChangeVersionWrapper.cpp \
        Modules/webdatabase/Database.cpp \
        Modules/webdatabase/DatabaseAuthorizer.cpp \
        Modules/webdatabase/DatabaseContext.cpp \
        Modules/webdatabase/DatabaseManager.cpp \
        Modules/webdatabase/DatabaseServer.cpp \
        Modules/webdatabase/DatabaseTask.cpp \
        Modules/webdatabase/DatabaseThread.cpp \
        Modules/webdatabase/DatabaseTracker.cpp \
        Modules/webdatabase/DOMWindowWebDatabase.cpp \
        Modules/webdatabase/OriginLock.cpp \
        Modules/webdatabase/SQLException.cpp \
        Modules/webdatabase/SQLResultSet.cpp \
        Modules/webdatabase/SQLResultSetRowList.cpp \
        Modules/webdatabase/SQLStatement.cpp \
        Modules/webdatabase/SQLTransaction.cpp \
        Modules/webdatabase/SQLTransactionBackend.cpp \
        Modules/webdatabase/SQLTransactionClient.cpp \
        Modules/webdatabase/SQLTransactionCoordinator.cpp \
        Modules/webdatabase/SQLTransactionStateMachine.cpp \

    SOURCES += \
        bindings/js/JSCustomSQLStatementErrorCallback.cpp \
        bindings/js/JSSQLResultSetRowListCustom.cpp \
        bindings/js/JSSQLTransactionCustom.cpp \
}

enable?(INDEXED_DATABASE) {
    HEADERS += \
        bindings/js/IDBBindingUtilities.h \
        inspector/InspectorIndexedDBAgent.h

    HEADERS += \
        Modules/indexeddb/DOMWindowIndexedDatabase.h \
        Modules/indexeddb/IDBAny.h \
        Modules/indexeddb/IDBCursor.h \
        Modules/indexeddb/IDBCursorWithValue.h \
        Modules/indexeddb/IDBDatabase.h \
        Modules/indexeddb/IDBDatabaseError.h \
        Modules/indexeddb/IDBDatabaseException.h \
        Modules/indexeddb/IDBDatabaseIdentifier.h \
        Modules/indexeddb/IDBDatabaseMetadata.h \
        Modules/indexeddb/IDBEventDispatcher.h \
        Modules/indexeddb/IDBFactory.h \
        Modules/indexeddb/IDBGetResult.h \
        Modules/indexeddb/IDBIndex.h \
        Modules/indexeddb/IDBIndexMetadata.h \
        Modules/indexeddb/IDBKey.h \
        Modules/indexeddb/IDBKeyData.h \
        Modules/indexeddb/IDBKeyPath.h \
        Modules/indexeddb/IDBKeyRange.h \
        Modules/indexeddb/IDBKeyRangeData.h \
        Modules/indexeddb/IDBObjectStore.h \
        Modules/indexeddb/IDBObjectStoreMetadata.h \
        Modules/indexeddb/IDBOpenDBRequest.h \
        Modules/indexeddb/IDBOperation.h \
        Modules/indexeddb/IDBRecordIdentifier.h \
        Modules/indexeddb/IDBRequest.h \
        Modules/indexeddb/IDBServerConnection.h \
        Modules/indexeddb/IDBTransaction.h \
        Modules/indexeddb/IDBVersionChangeEvent.h \
        Modules/indexeddb/IndexedDB.h \
        Modules/indexeddb/WorkerGlobalScopeIndexedDatabase.h \
        \
        Modules/indexeddb/client/IDBAnyImpl.h \
        Modules/indexeddb/client/IDBConnectionToServer.h \
        Modules/indexeddb/client/IDBConnectionToServerDelegate.h \
        Modules/indexeddb/client/IDBCursorImpl.h \
        Modules/indexeddb/client/IDBCursorWithValueImpl.h \
        Modules/indexeddb/client/IDBDatabaseImpl.h \
        Modules/indexeddb/client/IDBFactoryImpl.h \
        Modules/indexeddb/client/IDBIndexImpl.h \
        Modules/indexeddb/client/IDBObjectStoreImpl.h \
        Modules/indexeddb/client/IDBOpenDBRequestImpl.h \
        Modules/indexeddb/client/IDBRequestImpl.h \
        Modules/indexeddb/client/IDBTransactionImpl.h \
        Modules/indexeddb/client/IDBVersionChangeEventImpl.h \
        Modules/indexeddb/client/TransactionOperation.h \
        \
        Modules/indexeddb/legacy/IDBCallbacks.h \
        Modules/indexeddb/legacy/IDBCursorBackend.h \
        Modules/indexeddb/legacy/IDBCursorBackendOperations.h \
        Modules/indexeddb/legacy/IDBDatabaseBackend.h \
        Modules/indexeddb/legacy/IDBDatabaseCallbacks.h \
        Modules/indexeddb/legacy/IDBDatabaseCallbacksImpl.h \
        Modules/indexeddb/legacy/IDBFactoryBackendInterface.h \
        Modules/indexeddb/legacy/IDBPendingDeleteCall.h \
        Modules/indexeddb/legacy/IDBPendingOpenCall.h \
        Modules/indexeddb/legacy/IDBPendingTransactionMonitor.h \
        Modules/indexeddb/legacy/IDBTransactionBackend.h \
        Modules/indexeddb/legacy/IDBTransactionBackendOperations.h \
        Modules/indexeddb/legacy/IDBTransactionCoordinator.h \
        Modules/indexeddb/legacy/LegacyAny.h \
        Modules/indexeddb/legacy/LegacyCursor.h \
        Modules/indexeddb/legacy/LegacyCursorWithValue.h \
        Modules/indexeddb/legacy/LegacyDatabase.h \
        Modules/indexeddb/legacy/LegacyFactory.h \
        Modules/indexeddb/legacy/LegacyIndex.h \
        Modules/indexeddb/legacy/LegacyObjectStore.h \
        Modules/indexeddb/legacy/LegacyOpenDBRequest.h \
        Modules/indexeddb/legacy/LegacyRequest.h \
        Modules/indexeddb/legacy/LegacyTransaction.h \
        Modules/indexeddb/legacy/LegacyVersionChangeEvent.h \
        \
        Modules/indexeddb/server/IDBBackingStore.h \
        Modules/indexeddb/server/IDBConnectionToClient.h \
        Modules/indexeddb/server/IDBConnectionToClientDelegate.h \
        Modules/indexeddb/server/IDBServer.h \
        Modules/indexeddb/server/IDBServerOperation.h \
        Modules/indexeddb/server/MemoryBackingStoreTransaction.h \
        Modules/indexeddb/server/MemoryIDBBackingStore.h \
        Modules/indexeddb/server/MemoryIndex.h \
        Modules/indexeddb/server/MemoryObjectStore.h \
        Modules/indexeddb/server/UniqueIDBDatabase.h \
        Modules/indexeddb/server/UniqueIDBDatabaseConnection.h \
        Modules/indexeddb/server/UniqueIDBDatabaseTransaction.h \
        \
        Modules/indexeddb/shared/IDBDatabaseInfo.h \
        Modules/indexeddb/shared/IDBError.h \
        Modules/indexeddb/shared/IDBIndexInfo.h \
        Modules/indexeddb/shared/IDBObjectStoreInfo.h \
        Modules/indexeddb/shared/IDBRequestData.h \
        Modules/indexeddb/shared/IDBResourceIdentifier.h \
        Modules/indexeddb/shared/IDBResultData.h \
        Modules/indexeddb/shared/IDBTransactionInfo.h \
        Modules/indexeddb/shared/InProcessIDBServer.h \

    SOURCES += \
        bindings/js/IDBBindingUtilities.cpp \
        bindings/js/JSIDBAnyCustom.cpp \
        bindings/js/JSIDBDatabaseCustom.cpp \
        bindings/js/JSIDBObjectStoreCustom.cpp

    SOURCES += \
        inspector/InspectorIndexedDBAgent.cpp

    SOURCES += \
        Modules/indexeddb/DOMWindowIndexedDatabase.cpp \
        Modules/indexeddb/IDBAny.cpp \
        Modules/indexeddb/IDBCursor.cpp \
        Modules/indexeddb/IDBCursorWithValue.cpp \
        Modules/indexeddb/IDBDatabase.cpp \
        Modules/indexeddb/IDBDatabaseException.cpp \
        Modules/indexeddb/IDBDatabaseIdentifier.cpp \
        Modules/indexeddb/IDBDatabaseMetadata.cpp \
        Modules/indexeddb/IDBEventDispatcher.cpp \
        Modules/indexeddb/IDBFactory.cpp \
        Modules/indexeddb/IDBIndex.cpp \
        Modules/indexeddb/IDBKey.cpp \
        Modules/indexeddb/IDBKeyData.cpp \
        Modules/indexeddb/IDBKeyPath.cpp \
        Modules/indexeddb/IDBKeyRange.cpp \
        Modules/indexeddb/IDBKeyRangeData.cpp \
        Modules/indexeddb/IDBObjectStore.cpp \
        Modules/indexeddb/IDBOpenDBRequest.cpp \
        Modules/indexeddb/IDBRequest.cpp \
        Modules/indexeddb/IDBTransaction.cpp \
        Modules/indexeddb/IDBVersionChangeEvent.cpp \
        Modules/indexeddb/WorkerGlobalScopeIndexedDatabase.cpp \
        \
        Modules/indexeddb/client/IDBAnyImpl.cpp \
        Modules/indexeddb/client/IDBConnectionToServer.cpp \
        Modules/indexeddb/client/IDBCursorImpl.cpp \
        Modules/indexeddb/client/IDBCursorWithValueImpl.cpp \
        Modules/indexeddb/client/IDBDatabaseImpl.cpp \
        Modules/indexeddb/client/IDBFactoryImpl.cpp \
        Modules/indexeddb/client/IDBIndexImpl.cpp \
        Modules/indexeddb/client/IDBObjectStoreImpl.cpp \
        Modules/indexeddb/client/IDBOpenDBRequestImpl.cpp \
        Modules/indexeddb/client/IDBRequestImpl.cpp \
        Modules/indexeddb/client/IDBTransactionImpl.cpp \
        Modules/indexeddb/client/IDBVersionChangeEventImpl.cpp \
        Modules/indexeddb/client/TransactionOperation.cpp \
        \
        Modules/indexeddb/legacy/IDBCursorBackend.cpp \
        Modules/indexeddb/legacy/IDBCursorBackendOperations.cpp \
        Modules/indexeddb/legacy/IDBDatabaseBackend.cpp \
        Modules/indexeddb/legacy/IDBDatabaseCallbacksImpl.cpp \
        Modules/indexeddb/legacy/IDBPendingTransactionMonitor.cpp \
        Modules/indexeddb/legacy/IDBTransactionBackend.cpp \
        Modules/indexeddb/legacy/IDBTransactionBackendOperations.cpp \
        Modules/indexeddb/legacy/IDBTransactionCoordinator.cpp \
        Modules/indexeddb/legacy/LegacyAny.cpp \
        Modules/indexeddb/legacy/LegacyCursor.cpp \
        Modules/indexeddb/legacy/LegacyCursorWithValue.cpp \
        Modules/indexeddb/legacy/LegacyDatabase.cpp \
        Modules/indexeddb/legacy/LegacyFactory.cpp \
        Modules/indexeddb/legacy/LegacyIndex.cpp \
        Modules/indexeddb/legacy/LegacyObjectStore.cpp \
        Modules/indexeddb/legacy/LegacyOpenDBRequest.cpp \
        Modules/indexeddb/legacy/LegacyRequest.cpp \
        Modules/indexeddb/legacy/LegacyTransaction.cpp \
        Modules/indexeddb/legacy/LegacyVersionChangeEvent.cpp \
        \
        Modules/indexeddb/server/IDBConnectionToClient.cpp \
        Modules/indexeddb/server/IDBServer.cpp \
        Modules/indexeddb/server/IDBServerOperation.cpp \
        Modules/indexeddb/server/MemoryBackingStoreTransaction.cpp \
        Modules/indexeddb/server/MemoryIDBBackingStore.cpp \
        Modules/indexeddb/server/MemoryIndex.cpp \
        Modules/indexeddb/server/MemoryObjectStore.cpp \
        Modules/indexeddb/server/UniqueIDBDatabase.cpp \
        Modules/indexeddb/server/UniqueIDBDatabaseConnection.cpp \
        Modules/indexeddb/server/UniqueIDBDatabaseTransaction.cpp \
        \
        Modules/indexeddb/shared/IDBDatabaseInfo.cpp \
        Modules/indexeddb/shared/IDBError.cpp \
        Modules/indexeddb/shared/IDBIndexInfo.cpp \
        Modules/indexeddb/shared/IDBObjectStoreInfo.cpp \
        Modules/indexeddb/shared/IDBRequestData.cpp \
        Modules/indexeddb/shared/IDBResourceIdentifier.cpp \
        Modules/indexeddb/shared/IDBResultData.cpp \
        Modules/indexeddb/shared/IDBTransactionInfo.cpp \
        Modules/indexeddb/shared/InProcessIDBServer.cpp \
        \
        inspector/InspectorIndexedDBAgent.cpp

    use?(leveldb):!use?(system_leveldb): WEBKIT += leveldb

}

enable?(DATA_TRANSFER_ITEMS) {
    HEADERS += \
        dom/DataTransferItem.h \
        dom/DataTransferItemList.h \
        dom/StringCallback.h \
        platform/qt/DataTransferItemQt.h \
        platform/qt/DataTransferItemListQt.h
    SOURCES += \
        dom/DataTransferItem.cpp \
        dom/StringCallback.cpp \
        platform/qt/DataTransferItemQt.cpp \
        platform/qt/DataTransferItemListQt.cpp
}

enable?(MEDIA_SOURCE) {
    HEADERS += \
        Modules/mediasource/MediaSource.h \
        Modules/mediasource/MediaSourceRegistry.h \
        Modules/mediasource/SourceBuffer.h \
        Modules/mediasource/SourceBufferList.h
    SOURCES += \
        Modules/mediasource/MediaSource.cpp \
        Modules/mediasource/MediaSourceRegistry.cpp \
        Modules/mediasource/SourceBuffer.cpp \
        Modules/mediasource/SourceBufferList.cpp
}

enable?(WORKERS) {
    SOURCES += \
        bindings/js/JSDedicatedWorkerGlobalScopeCustom.cpp \
        bindings/js/JSWorkerGlobalScopeBase.cpp \
        bindings/js/JSWorkerGlobalScopeCustom.cpp \
        bindings/js/JSWorkerCustom.cpp \
        bindings/js/WorkerScriptController.cpp \
        bindings/js/WorkerScriptDebugServer.cpp

    SOURCES += \
        loader/WorkerThreadableLoader.cpp \
        page/WorkerNavigator.cpp \
        workers/AbstractWorker.cpp \
        workers/DedicatedWorkerGlobalScope.cpp \
        workers/DedicatedWorkerThread.cpp \
        workers/Worker.cpp \
        workers/WorkerGlobalScope.cpp \
        workers/WorkerEventQueue.cpp \
        workers/WorkerLocation.cpp \
        workers/WorkerMessagingProxy.cpp \
        workers/WorkerRunLoop.cpp \
        workers/WorkerThread.cpp \
        workers/WorkerScriptLoader.cpp
}

enable?(INPUT_SPEECH) {
    SOURCES += \
        page/SpeechInput.cpp \
        page/SpeechInputEvent.cpp \
        page/SpeechInputResult.cpp \
        page/SpeechInputResultList.cpp \
        rendering/RenderInputSpeech.cpp
}

enable?(SCRIPTED_SPEECH) {
    SOURCES += # FIXME!
}

enable?(QUOTA) {
    HEADERS += \
        Modules/quota/DOMWindowQuota.idl \
        Modules/quota/NavigatorStorageQuota.idl \
        Modules/quota/StorageErrorCallback.h \
        Modules/quota/StorageInfo.h \
        Modules/quota/StorageQuota.h \
        Modules/quota/StorageQuotaCallback.h \
        Modules/quota/StorageUsageCallback.h

    SOURCES += \
        Modules/quota/DOMWindowQuota.cpp \
        Modules/quota/NavigatorStorageQuota.cpp \
        Modules/quota/StorageErrorCallback.cpp \
        Modules/quota/StorageInfo.cpp \
        Modules/quota/StorageQuota.cpp
    enable?(WORKERS) {
        HEADERS += \
            Modules/quota/NavigatorStorageQuota.idl \
            Modules/quota/WorkerNavigatorStorageQuota.h
        SOURCES += \
            Modules/quota/WorkerNavigatorStorageQuota.h
    }
}

enable?(GAMEPAD) {
    HEADERS += \
        Modules/gamepad/Gamepad.h\
        Modules/gamepad/GamepadList.h \
        Modules/gamepad/NavigatorGamepad.h \
        platform/linux/GamepadDeviceLinux.h \
        platform/Gamepads.h

    SOURCES += \
        Modules/gamepad/Gamepad.cpp \
        Modules/gamepad/GamepadList.cpp \
        Modules/gamepad/NavigatorGamepad.cpp \
        platform/linux/GamepadDeviceLinux.cpp \
        platform/qt/GamepadsQt.cpp
}

use?(GSTREAMER) {
    HEADERS += \
            platform/graphics/gstreamer/GRefPtrGStreamer.h \
            platform/graphics/gstreamer/GStreamerUtilities.h \
            platform/graphics/gstreamer/GStreamerVersioning.h

    SOURCES += \
            platform/graphics/gstreamer/GRefPtrGStreamer.cpp \
            platform/graphics/gstreamer/GStreamerUtilities.cpp \
            platform/graphics/gstreamer/GStreamerVersioning.cpp
}

enable?(VIDEO) {
    SOURCES += \
        html/HTMLAudioElement.cpp \
        html/HTMLMediaElement.cpp \
        html/HTMLSourceElement.cpp \
        html/HTMLVideoElement.cpp \
        html/MediaController.cpp \
        html/MediaFragmentURIParser.cpp \
        html/shadow/MediaControlElementTypes.cpp \
        html/shadow/MediaControlElements.cpp \
        html/TimeRanges.cpp \
        platform/graphics/MediaPlayer.cpp \
        rendering/RenderVideo.cpp \
        rendering/RenderMedia.cpp \
        rendering/RenderMediaControls.cpp \
        rendering/RenderMediaControlElements.cpp

    use?(GSTREAMER) {
        HEADERS += \
            platform/graphics/gstreamer/GStreamerGWorld.h \
            platform/graphics/gstreamer/MediaPlayerPrivateGStreamerBase.h \
            platform/graphics/gstreamer/MediaPlayerPrivateGStreamer.h \
            platform/graphics/gstreamer/VideoSinkGStreamer.h \
            platform/graphics/gstreamer/WebKitWebSourceGStreamer.h \
            platform/graphics/gstreamer/ImageGStreamer.h
        SOURCES += \
            platform/graphics/gstreamer/GStreamerGWorld.cpp \
            platform/graphics/gstreamer/MediaPlayerPrivateGStreamerBase.cpp \
            platform/graphics/gstreamer/MediaPlayerPrivateGStreamer.cpp \
            platform/graphics/gstreamer/VideoSinkGStreamer.cpp \
            platform/graphics/gstreamer/WebKitWebSourceGStreamer.cpp \
            platform/graphics/gstreamer/ImageGStreamerQt.cpp

        use?(NATIVE_FULLSCREEN_VIDEO) {
            HEADERS += \
                platform/graphics/gstreamer/FullscreenVideoControllerGStreamer.h \
                platform/graphics/gstreamer/PlatformVideoWindow.h \
                platform/graphics/gstreamer/PlatformVideoWindowPrivate.h
            SOURCES += \
                platform/graphics/gstreamer/FullscreenVideoControllerGStreamer.cpp \
                platform/graphics/gstreamer/PlatformVideoWindowQt.cpp
        }

    } else:use?(QT_MULTIMEDIA) {
        HEADERS += \
            platform/graphics/qt/MediaPlayerPrivateQt.h

        SOURCES += \
            platform/graphics/qt/MediaPlayerPrivateQt.cpp
    }
}

enable?(WEB_AUDIO) {
    HEADERS += \
        Modules/webaudio/AsyncAudioDecoder.h \
        Modules/webaudio/AudioBasicInspectorNode.h \
        Modules/webaudio/AudioBasicProcessorNode.h \
        Modules/webaudio/AudioBufferCallback.h \
        Modules/webaudio/AudioBuffer.h \
        Modules/webaudio/AudioBufferSourceNode.h \
        Modules/webaudio/ChannelMergerNode.h \
        Modules/webaudio/ChannelSplitterNode.h \
        Modules/webaudio/AudioContext.h \
        Modules/webaudio/AudioDestinationNode.h \
        Modules/webaudio/GainNode.h \
        Modules/webaudio/AudioListener.h \
        Modules/webaudio/AudioNode.h \
        Modules/webaudio/AudioNodeInput.h \
        Modules/webaudio/AudioNodeOutput.h \
        Modules/webaudio/PannerNode.h \
        Modules/webaudio/AudioParam.h \
        Modules/webaudio/AudioParamTimeline.h \
        Modules/webaudio/AudioProcessingEvent.h \
        Modules/webaudio/AudioScheduledSourceNode.h \
        Modules/webaudio/AudioSummingJunction.h \
        Modules/webaudio/BiquadDSPKernel.h \
        Modules/webaudio/BiquadFilterNode.h \
        Modules/webaudio/BiquadProcessor.h \
        Modules/webaudio/ConvolverNode.h \
        Modules/webaudio/DefaultAudioDestinationNode.h \
        Modules/webaudio/DelayDSPKernel.h \
        Modules/webaudio/DelayNode.h \
        Modules/webaudio/DelayProcessor.h \
        Modules/webaudio/DynamicsCompressorNode.h \
        Modules/webaudio/ScriptProcessorNode.h \
        Modules/webaudio/MediaElementAudioSourceNode.h \
        Modules/webaudio/MediaStreamAudioSourceNode.h \
        Modules/webaudio/OfflineAudioCompletionEvent.h \
        Modules/webaudio/OfflineAudioContext.h \
        Modules/webaudio/OfflineAudioDestinationNode.h \
        Modules/webaudio/OscillatorNode.h \
        Modules/webaudio/RealtimeAnalyser.h \
        Modules/webaudio/AnalyserNode.h \
        Modules/webaudio/WaveShaperDSPKernel.h \
        Modules/webaudio/WaveShaperNode.h \
        Modules/webaudio/WaveShaperProcessor.h \
        Modules/webaudio/PeriodicWave.h \
        platform/audio/AudioArray.h \
        platform/audio/AudioBus.h \
        platform/audio/AudioChannel.h \
        platform/audio/AudioDestination.h \
        platform/audio/AudioDSPKernel.h \
        platform/audio/AudioDSPKernelProcessor.h \
        platform/audio/AudioFIFO.h \
        platform/audio/AudioFileReader.h \
        platform/audio/AudioIOCallback.h \
        platform/audio/AudioProcessor.h \
        platform/audio/AudioPullFIFO.h \
        platform/audio/AudioResampler.h \
        platform/audio/AudioResamplerKernel.h \
        platform/audio/AudioSourceProviderClient.h \
        platform/audio/AudioSourceProvider.h \
        platform/audio/AudioUtilities.h \
        platform/audio/Biquad.h \
        platform/audio/Cone.h \
        platform/audio/DenormalDisabler.h \
        platform/audio/DirectConvolver.h \
        platform/audio/Distance.h \
        platform/audio/DownSampler.h \
        platform/audio/DynamicsCompressor.h \
        platform/audio/DynamicsCompressorKernel.h \
        platform/audio/EqualPowerPanner.h \
        platform/audio/FFTConvolver.h \
        platform/audio/FFTFrame.h \
        platform/audio/HRTFDatabase.h \
        platform/audio/HRTFDatabaseLoader.h \
        platform/audio/HRTFElevation.h \
        platform/audio/HRTFKernel.h \
        platform/audio/HRTFPanner.h \
        platform/audio/MultiChannelResampler.h \
        platform/audio/Panner.h \
        platform/audio/ReverbAccumulationBuffer.h \
        platform/audio/ReverbConvolver.h \
        platform/audio/ReverbConvolverStage.h \
        platform/audio/Reverb.h \
        platform/audio/ReverbInputBuffer.h \
        platform/audio/SincResampler.h \
        platform/audio/UpSampler.h \
        platform/audio/VectorMath.h \
        platform/audio/ZeroPole.h

    SOURCES += \
        bindings/js/JSAudioBufferSourceNodeCustom.cpp \
        bindings/js/JSAudioContextCustom.cpp \
        bindings/js/JSBiquadFilterNodeCustom.cpp \
        bindings/js/JSOscillatorNodeCustom.cpp \
        bindings/js/JSPannerNodeCustom.cpp \
        Modules/webaudio/AsyncAudioDecoder.cpp \
        Modules/webaudio/AudioBasicInspectorNode.cpp \
        Modules/webaudio/AudioBasicProcessorNode.cpp \
        Modules/webaudio/AudioBuffer.cpp \
        Modules/webaudio/AudioBufferSourceNode.cpp \
        Modules/webaudio/ChannelMergerNode.cpp \
        Modules/webaudio/ChannelSplitterNode.cpp \
        Modules/webaudio/AudioContext.cpp \
        Modules/webaudio/AudioDestinationNode.cpp \
        Modules/webaudio/GainNode.cpp \
        Modules/webaudio/AudioListener.cpp \
        Modules/webaudio/AudioNode.cpp \
        Modules/webaudio/AudioNodeInput.cpp \
        Modules/webaudio/AudioNodeOutput.cpp \
        Modules/webaudio/PannerNode.cpp \
        Modules/webaudio/AudioParam.cpp \
        Modules/webaudio/AudioParamTimeline.cpp \
        Modules/webaudio/AudioProcessingEvent.cpp \
        Modules/webaudio/AudioScheduledSourceNode.cpp \
        Modules/webaudio/AudioSummingJunction.cpp \
        Modules/webaudio/BiquadDSPKernel.cpp \
        Modules/webaudio/BiquadFilterNode.cpp \
        Modules/webaudio/BiquadProcessor.cpp \
        Modules/webaudio/ConvolverNode.cpp \
        Modules/webaudio/DefaultAudioDestinationNode.cpp \
        Modules/webaudio/DelayDSPKernel.cpp \
        Modules/webaudio/DelayNode.cpp \
        Modules/webaudio/DelayProcessor.cpp \
        Modules/webaudio/DynamicsCompressorNode.cpp \
        Modules/webaudio/ScriptProcessorNode.cpp \
        Modules/webaudio/MediaElementAudioSourceNode.cpp \
        Modules/webaudio/MediaStreamAudioSourceNode.cpp \
        Modules/webaudio/OfflineAudioCompletionEvent.cpp \
        Modules/webaudio/OfflineAudioContext.cpp \
        Modules/webaudio/OfflineAudioDestinationNode.cpp \
        Modules/webaudio/OscillatorNode.cpp \
        Modules/webaudio/RealtimeAnalyser.cpp \
        Modules/webaudio/AnalyserNode.cpp \
        Modules/webaudio/WaveShaperDSPKernel.cpp \
        Modules/webaudio/WaveShaperNode.cpp \
        Modules/webaudio/WaveShaperProcessor.cpp \
        Modules/webaudio/PeriodicWave.cpp \
        platform/audio/AudioBus.cpp \
        platform/audio/AudioChannel.cpp \
        platform/audio/AudioDSPKernelProcessor.cpp \
        platform/audio/AudioFIFO.cpp \
        platform/audio/AudioPullFIFO.cpp \
        platform/audio/AudioResampler.cpp \
        platform/audio/AudioResamplerKernel.cpp \
        platform/audio/AudioUtilities.cpp \
        platform/audio/Biquad.cpp \
        platform/audio/Cone.cpp \
        platform/audio/DirectConvolver.cpp \
        platform/audio/Distance.cpp \
        platform/audio/DownSampler.cpp \
        platform/audio/DynamicsCompressor.cpp \
        platform/audio/DynamicsCompressorKernel.cpp \
        platform/audio/EqualPowerPanner.cpp \
        platform/audio/FFTConvolver.cpp \
        platform/audio/FFTFrame.cpp \
        platform/audio/FFTFrameStub.cpp \
        platform/audio/HRTFDatabase.cpp \
        platform/audio/HRTFDatabaseLoader.cpp \
        platform/audio/HRTFElevation.cpp \
        platform/audio/HRTFKernel.cpp \
        platform/audio/HRTFPanner.cpp \
        platform/audio/MultiChannelResampler.cpp \
        platform/audio/Panner.cpp \
        platform/audio/qt/AudioBusQt.cpp \
        platform/audio/ReverbAccumulationBuffer.cpp \
        platform/audio/ReverbConvolver.cpp \
        platform/audio/ReverbConvolverStage.cpp \
        platform/audio/Reverb.cpp \
        platform/audio/ReverbInputBuffer.cpp \
        platform/audio/SincResampler.cpp \
        platform/audio/UpSampler.cpp \
        platform/audio/VectorMath.cpp \
        platform/audio/ZeroPole.cpp

    use?(GSTREAMER) {
        HEADERS += \
            platform/audio/gstreamer/AudioDestinationGStreamer.h \
            platform/audio/gstreamer/WebKitWebAudioSourceGStreamer.h
        SOURCES += \
            platform/audio/gstreamer/AudioDestinationGStreamer.cpp \
            platform/audio/gstreamer/AudioFileReaderGStreamer.cpp \
            platform/audio/gstreamer/FFTFrameGStreamer.cpp \
            platform/audio/gstreamer/WebKitWebAudioSourceGStreamer.cpp
    }
}

enable?(FULLSCREEN_API) {
    SOURCES += \
        rendering/RenderFullScreen.cpp
    HEADERS += \
        rendering/RenderFullScreen.h
}

enable?(XSLT) {
    SOURCES += \
        bindings/js/JSXSLTProcessorCustom.cpp

    SOURCES += xml/XMLTreeViewer.cpp
    HEADERS += xml/XMLTreeViewer.h

    use?(LIBXML2) {
        SOURCES += \
            xml/XSLTProcessor.cpp \
            xml/XSLTProcessorLibxslt.cpp \
            dom/TransformSourceLibxslt.cpp \
            xml/XSLStyleSheetLibxslt.cpp \
            xml/XSLImportRule.cpp \
            xml/XSLTExtensions.cpp \
            xml/XSLImportRule.cpp \
            xml/XSLTUnicodeSort.cpp

            HEADERS += \
                xml/XSLImportRule.h \
                xml/XSLTExtensions.h \
                xml/XSLImportRule.h \
                xml/XSLTUnicodeSort.h

    } else {
        SOURCES += \
            dom/TransformSourceQt.cpp \
            xml/XSLStyleSheetQt.cpp \
            xml/XSLTProcessor.cpp \
            xml/XSLTProcessorQt.cpp
    }
}

enable?(FILTERS) {
    SOURCES += \
        platform/graphics/filters/DistantLightSource.cpp \
        platform/graphics/filters/FEBlend.cpp \
        platform/graphics/filters/FEColorMatrix.cpp \
        platform/graphics/filters/FEComponentTransfer.cpp \
        platform/graphics/filters/FEComposite.cpp \
        platform/graphics/filters/FEConvolveMatrix.cpp \
        platform/graphics/filters/FEDiffuseLighting.cpp \
        platform/graphics/filters/FEDisplacementMap.cpp \
        platform/graphics/filters/FEDropShadow.cpp \
        platform/graphics/filters/FEFlood.cpp \
        platform/graphics/filters/FEGaussianBlur.cpp \
        platform/graphics/filters/FELighting.cpp \
        platform/graphics/filters/FEMerge.cpp \
        platform/graphics/filters/FEMorphology.cpp \
        platform/graphics/filters/FEOffset.cpp \
        platform/graphics/filters/FESpecularLighting.cpp \
        platform/graphics/filters/FETile.cpp \
        platform/graphics/filters/FETurbulence.cpp \
        platform/graphics/filters/FilterEffect.cpp \
        platform/graphics/filters/FilterOperation.cpp \
        platform/graphics/filters/FilterOperations.cpp \
        platform/graphics/filters/PointLightSource.cpp \
        platform/graphics/filters/SourceAlpha.cpp \
        platform/graphics/filters/SourceGraphic.cpp \
        platform/graphics/filters/SpotLightSource.cpp
}

enable?(MATHML) {
    SOURCES += \
        mathml/MathMLElement.cpp \
        mathml/MathMLInlineContainerElement.cpp \
        mathml/MathMLMathElement.cpp \
        mathml/MathMLMencloseElement.cpp \
        mathml/MathMLSelectElement.cpp \
        mathml/MathMLTextElement.cpp \
        rendering/mathml/RenderMathMLBlock.cpp \
        rendering/mathml/RenderMathMLFenced.cpp \
        rendering/mathml/RenderMathMLFraction.cpp \
        rendering/mathml/RenderMathMLMath.cpp \
        rendering/mathml/RenderMathMLOperator.cpp \
        rendering/mathml/RenderMathMLRoot.cpp \
        rendering/mathml/RenderMathMLRow.cpp \
        rendering/mathml/RenderMathMLSpace.cpp \
        rendering/mathml/RenderMathMLSquareRoot.cpp \
        rendering/mathml/RenderMathMLSubSup.cpp \
        rendering/mathml/RenderMathMLUnderOver.cpp

    HEADERS += \
        mathml/MathMLTextElement.h \
        mathml/MathMLSelectElement.h \
        mathml/MathMLMencloseElement.h \
        mathml/MathMLMathElement.h \
        mathml/MathMLInlineContainerElement.h \
        mathml/MathMLElement.h

    ALL_IN_ONE_SOURCES +=
        mathml/MathMLAllInOne.cpp
}

enable?(TEXT_AUTOSIZING) {
    SOURCES += # FIXME!
}

have?(qtsensors):enable?(DEVICE_ORIENTATION) {
    HEADERS += \
        platform/qt/DeviceMotionClientQt.h \
        platform/qt/DeviceMotionProviderQt.h \
        platform/qt/DeviceOrientationClientQt.h \
        platform/qt/DeviceOrientationProviderQt.h
    SOURCES += \
        platform/qt/DeviceMotionClientQt.cpp \
        platform/qt/DeviceMotionProviderQt.cpp \
        platform/qt/DeviceOrientationClientQt.cpp \
        platform/qt/DeviceOrientationProviderQt.cpp
}

enable?(SVG) {
    SOURCES += \
        bindings/js/JSSVGLengthCustom.cpp \
        bindings/js/JSSVGPathSegCustom.cpp

    SOURCES += \
        css/SVGCSSComputedStyleDeclaration.cpp \
        css/SVGCSSParser.cpp \
        rendering/style/SVGRenderStyle.cpp \
        rendering/style/SVGRenderStyleDefs.cpp \
        rendering/PointerEventsHitRules.cpp \
        rendering/svg/RenderSVGEllipse.cpp \
        rendering/svg/RenderSVGPath.cpp \
        rendering/svg/RenderSVGRect.cpp \
        rendering/svg/RenderSVGShape.cpp \
        rendering/svg/RenderSVGBlock.cpp \
        rendering/svg/RenderSVGContainer.cpp \
        rendering/svg/RenderSVGForeignObject.cpp \
        rendering/svg/RenderSVGGradientStop.cpp \
        rendering/svg/RenderSVGHiddenContainer.cpp \
        rendering/svg/RenderSVGImage.cpp \
        rendering/svg/RenderSVGInline.cpp \
        rendering/svg/RenderSVGInlineText.cpp \
        rendering/svg/RenderSVGModelObject.cpp \
        rendering/svg/RenderSVGResource.cpp \
        rendering/svg/RenderSVGResourceClipper.cpp \
        rendering/svg/RenderSVGResourceContainer.cpp \
        rendering/svg/RenderSVGResourceFilter.cpp \
        rendering/svg/RenderSVGResourceFilterPrimitive.cpp \
        rendering/svg/RenderSVGResourceGradient.cpp \
        rendering/svg/RenderSVGResourceLinearGradient.cpp \
        rendering/svg/RenderSVGResourceMarker.cpp \
        rendering/svg/RenderSVGResourceMasker.cpp \
        rendering/svg/RenderSVGResourcePattern.cpp \
        rendering/svg/RenderSVGResourceRadialGradient.cpp \
        rendering/svg/RenderSVGResourceSolidColor.cpp \
        rendering/svg/RenderSVGRoot.cpp \
        rendering/svg/RenderSVGText.cpp \
        rendering/svg/RenderSVGTextPath.cpp \
        rendering/svg/RenderSVGTransformableContainer.cpp \
        rendering/svg/RenderSVGViewportContainer.cpp \
        rendering/svg/SVGInlineFlowBox.cpp \
        rendering/svg/SVGInlineTextBox.cpp \
        rendering/svg/SVGPathData.cpp \
        rendering/svg/SVGRenderSupport.cpp \
        rendering/svg/SVGRenderTreeAsText.cpp \
        rendering/svg/SVGRenderingContext.cpp \
        rendering/svg/SVGResources.cpp \
        rendering/svg/SVGResourcesCache.cpp \
        rendering/svg/SVGResourcesCycleSolver.cpp \
        rendering/svg/SVGRootInlineBox.cpp \
        rendering/svg/SVGTextChunk.cpp \
        rendering/svg/SVGTextChunkBuilder.cpp \
        rendering/svg/SVGTextLayoutAttributes.cpp \
        rendering/svg/SVGTextLayoutAttributesBuilder.cpp \
        rendering/svg/SVGTextLayoutEngine.cpp \
        rendering/svg/SVGTextLayoutEngineBaseline.cpp \
        rendering/svg/SVGTextLayoutEngineSpacing.cpp \
        rendering/svg/SVGTextMetrics.cpp \
        rendering/svg/SVGTextMetricsBuilder.cpp \
        rendering/svg/SVGTextQuery.cpp \
        rendering/svg/SVGTextRunRenderingContext.cpp \
        svg/animation/SMILTime.cpp \
        svg/animation/SMILTimeContainer.cpp \
        svg/animation/SVGSMILElement.cpp \
        svg/graphics/filters/SVGFEImage.cpp \
        svg/graphics/filters/SVGFilter.cpp \
        svg/graphics/filters/SVGFilterBuilder.cpp \
        svg/graphics/SVGImage.cpp \
        svg/graphics/SVGImageCache.cpp \
        svg/graphics/SVGImageForContainer.cpp \
        svg/properties/SVGAnimatedProperty.cpp \
        svg/properties/SVGAttributeToPropertyMap.cpp \
        svg/properties/SVGPathSegListPropertyTearOff.cpp \
        svg/SVGDocumentExtensions.cpp \
        svg/SVGAElement.cpp \
        svg/SVGAltGlyphDefElement.cpp \
        svg/SVGAltGlyphElement.cpp \
        svg/SVGAltGlyphItemElement.cpp \
        svg/SVGAngle.cpp \
        svg/SVGAnimateColorElement.cpp \
        svg/SVGAnimatedAngle.cpp \
        svg/SVGAnimatedBoolean.cpp \
        svg/SVGAnimatedColor.cpp \
        svg/SVGAnimatedEnumeration.cpp \
        svg/SVGAnimatedInteger.cpp \
        svg/SVGAnimatedIntegerOptionalInteger.cpp \
        svg/SVGAnimatedLength.cpp \
        svg/SVGAnimatedLengthList.cpp \
        svg/SVGAnimatedNumber.cpp \
        svg/SVGAnimatedNumberList.cpp \
        svg/SVGAnimatedNumberOptionalNumber.cpp \
        svg/SVGAnimatedPath.cpp \
        svg/SVGAnimatedPointList.cpp \
        svg/SVGAnimatedPreserveAspectRatio.cpp \
        svg/SVGAnimatedRect.cpp \
        svg/SVGAnimatedString.cpp \
        svg/SVGAnimatedTransformList.cpp \
        svg/SVGAnimatedType.cpp \
        svg/SVGAnimatedTypeAnimator.cpp \
        svg/SVGAnimateElement.cpp \
        svg/SVGAnimateMotionElement.cpp \
        svg/SVGAnimateTransformElement.cpp \
        svg/SVGAnimationElement.cpp \
        svg/SVGCircleElement.cpp \
        svg/SVGClipPathElement.cpp \
        svg/SVGColor.cpp \
        svg/SVGComponentTransferFunctionElement.cpp \
        svg/SVGCursorElement.cpp \
        svg/SVGDefsElement.cpp \
        svg/SVGDescElement.cpp \
        svg/SVGDocument.cpp \
        svg/SVGElement.cpp \
        svg/SVGEllipseElement.cpp \
        svg/SVGException.cpp \
        svg/SVGExternalResourcesRequired.cpp \
        svg/SVGFEBlendElement.cpp \
        svg/SVGFEColorMatrixElement.cpp \
        svg/SVGFEComponentTransferElement.cpp \
        svg/SVGFECompositeElement.cpp \
        svg/SVGFEConvolveMatrixElement.cpp \
        svg/SVGFEDiffuseLightingElement.cpp \
        svg/SVGFEDisplacementMapElement.cpp \
        svg/SVGFEDistantLightElement.cpp \
        svg/SVGFEDropShadowElement.cpp \
        svg/SVGFEFloodElement.cpp \
        svg/SVGFEFuncAElement.cpp \
        svg/SVGFEFuncBElement.cpp \
        svg/SVGFEFuncGElement.cpp \
        svg/SVGFEFuncRElement.cpp \
        svg/SVGFEGaussianBlurElement.cpp \
        svg/SVGFEImageElement.cpp \
        svg/SVGFELightElement.cpp \
        svg/SVGFEMergeElement.cpp \
        svg/SVGFEMergeNodeElement.cpp \
        svg/SVGFEMorphologyElement.cpp \
        svg/SVGFEOffsetElement.cpp \
        svg/SVGFEPointLightElement.cpp \
        svg/SVGFESpecularLightingElement.cpp \
        svg/SVGFESpotLightElement.cpp \
        svg/SVGFETileElement.cpp \
        svg/SVGFETurbulenceElement.cpp \
        svg/SVGFilterElement.cpp \
        svg/SVGFilterPrimitiveStandardAttributes.cpp \
        svg/SVGFitToViewBox.cpp \
        svg/SVGFontData.cpp \
        svg/SVGFontElement.cpp \
        svg/SVGFontFaceElement.cpp \
        svg/SVGFontFaceFormatElement.cpp \
        svg/SVGFontFaceNameElement.cpp \
        svg/SVGFontFaceSrcElement.cpp \
        svg/SVGFontFaceUriElement.cpp \
        svg/SVGForeignObjectElement.cpp \
        svg/SVGGElement.cpp \
        svg/SVGGlyphElement.cpp \
        svg/SVGGlyphRefElement.cpp \
        svg/SVGGradientElement.cpp \
        svg/SVGGraphicsElement.cpp \
        svg/SVGHKernElement.cpp \
        svg/SVGImageElement.cpp \
        svg/SVGImageLoader.cpp \
        svg/SVGLangSpace.cpp \
        svg/SVGLength.cpp \
        svg/SVGLengthContext.cpp \
        svg/SVGLengthList.cpp \
        svg/SVGLinearGradientElement.cpp \
        svg/SVGLineElement.cpp \
        svg/SVGLocatable.cpp \
        svg/SVGMarkerElement.cpp \
        svg/SVGMaskElement.cpp \
        svg/SVGMetadataElement.cpp \
        svg/SVGMissingGlyphElement.cpp \
        svg/SVGMPathElement.cpp \
        svg/SVGNumberList.cpp \
        svg/SVGPaint.cpp \
        svg/SVGParserUtilities.cpp \
        svg/SVGPathBlender.cpp \
        svg/SVGPathBuilder.cpp \
        svg/SVGPathByteStreamBuilder.cpp \
        svg/SVGPathByteStreamSource.cpp \
        svg/SVGPathElement.cpp \
        svg/SVGPathParser.cpp \
        svg/SVGPathSegList.cpp \
        svg/SVGPathSegListBuilder.cpp \
        svg/SVGPathSegListSource.cpp \
        svg/SVGPathStringBuilder.cpp \
        svg/SVGPathStringSource.cpp \
        svg/SVGPathTraversalStateBuilder.cpp \
        svg/SVGPathUtilities.cpp \
        svg/SVGPatternElement.cpp \
        svg/SVGPointList.cpp \
        svg/SVGPolyElement.cpp \
        svg/SVGPolygonElement.cpp \
        svg/SVGPolylineElement.cpp \
        svg/SVGPreserveAspectRatio.cpp \
        svg/SVGRadialGradientElement.cpp \
        svg/SVGRectElement.cpp \
        svg/SVGSVGElement.cpp \
        svg/SVGScriptElement.cpp \
        svg/SVGSetElement.cpp \
        svg/SVGStopElement.cpp \
        svg/SVGStringList.cpp \
        svg/SVGStyleElement.cpp \
        svg/SVGSwitchElement.cpp \
        svg/SVGSymbolElement.cpp \
        svg/SVGTRefElement.cpp \
        svg/SVGTSpanElement.cpp \
        svg/SVGTests.cpp \
        svg/SVGTextContentElement.cpp \
        svg/SVGTextElement.cpp \
        svg/SVGTextPathElement.cpp \
        svg/SVGTextPositioningElement.cpp \
        svg/SVGTitleElement.cpp \
        svg/SVGTransform.cpp \
        svg/SVGTransformDistance.cpp \
        svg/SVGTransformList.cpp \
        svg/SVGTransformable.cpp \
        svg/SVGURIReference.cpp \
        svg/SVGUseElement.cpp \
        svg/SVGVKernElement.cpp \
        svg/SVGViewElement.cpp \
        svg/SVGViewSpec.cpp \
        svg/SVGZoomAndPan.cpp \
        svg/SVGZoomEvent.cpp

    ALL_IN_ONE_SOURCES += \
        rendering/svg/RenderSVGAllInOne.cpp \
        svg/SVGAllInOne.cpp
}

enable?(VIDEO_TRACK) {
    HEADERS += \
        bindings/js/JSTrackCustom.h \
        html/HTMLTrackElement.h \
        html/track/AudioTrack.h \
        html/track/AudioTrackList.h \
        html/track/InbandTextTrack.h \
        html/track/LoadableTextTrack.h \
        html/track/TextTrack.h \
        html/track/TextTrackCue.h \
        html/track/TextTrackCueGeneric.h \
        html/track/TextTrackCueList.h \
        html/track/TextTrackList.h \
        html/track/TrackBase.h \
        html/track/TrackEvent.h \
        html/track/TrackListBase.h \
        html/track/VideoTrack.h \
        html/track/VideoTrackList.h \
        html/track/WebVTTParser.h \
        html/track/WebVTTToken.h \
        html/track/WebVTTTokenizer.h \
        loader/TextTrackLoader.h \
        platform/graphics/AudioTrackPrivate.h \
        platform/graphics/InbandTextTrackPrivate.h \
        platform/graphics/InbandTextTrackPrivateClient.h
        platform/graphics/VideoTrackPrivate.h \

    SOURCES += \
        html/track/AudioTrack.cpp \
        html/track/AudioTrackList.cpp \
        html/track/BufferedLineReader.cpp \
        html/track/DataCue.cpp \
        html/track/InbandDataTextTrack.cpp \
        html/track/InbandGenericTextTrack.cpp \
        html/track/InbandTextTrack.cpp \
        html/track/InbandWebVTTTextTrack.cpp \
        html/track/LoadableTextTrack.cpp \
        html/track/TextTrack.cpp \
        html/track/TextTrackCue.cpp \
        html/track/TextTrackCueGeneric.cpp \
        html/track/TextTrackCueList.cpp \
        html/track/TextTrackList.cpp \
        html/track/TrackBase.cpp \
        html/track/TrackEvent.cpp \
        html/track/TrackListBase.cpp \
        html/track/VTTCue.cpp \
        html/track/VTTRegion.cpp \
        html/track/VTTRegionList.cpp \
        html/track/VTTScanner.cpp \
        html/track/VideoTrack.cpp \
        html/track/VideoTrackList.cpp \
        html/track/WebVTTElement.cpp \
        html/track/WebVTTParser.cpp \
        html/track/WebVTTTokenizer.cpp \
        \
        loader/cache/CachedTextTrack.cpp \
        \
        platform/graphics/TextTrackRepresentation.cpp
}

enable?(WEB_SOCKETS) {
    HEADERS += \
        Modules/websockets/CloseEvent.h \
        Modules/websockets/ThreadableWebSocketChannel.h \
        Modules/websockets/ThreadableWebSocketChannelClientWrapper.h \
        Modules/websockets/WebSocket.h \
        Modules/websockets/WebSocketChannel.h \
        Modules/websockets/WebSocketChannelClient.h \
        Modules/websockets/WebSocketDeflateFramer.h \
        Modules/websockets/WebSocketDeflater.h \
        Modules/websockets/WebSocketExtensionDispatcher.h \
        Modules/websockets/WebSocketExtensionParser.h \
        Modules/websockets/WebSocketExtensionProcessor.h \
        Modules/websockets/WebSocketFrame.h \
        Modules/websockets/WebSocketHandshake.h \
        Modules/websockets/WorkerThreadableWebSocketChannel.h \
        platform/network/qt/SocketStreamHandlePrivate.h

    SOURCES += \
        Modules/websockets/ThreadableWebSocketChannel.cpp \
        Modules/websockets/ThreadableWebSocketChannelClientWrapper.cpp \
        Modules/websockets/WebSocket.cpp \
        Modules/websockets/WebSocketChannel.cpp \
        Modules/websockets/WebSocketDeflateFramer.cpp \
        Modules/websockets/WebSocketDeflater.cpp \
        Modules/websockets/WebSocketExtensionDispatcher.cpp \
        Modules/websockets/WebSocketExtensionParser.cpp \
        Modules/websockets/WebSocketFrame.cpp \
        Modules/websockets/WebSocketHandshake.cpp \
        Modules/websockets/WorkerThreadableWebSocketChannel.cpp \
        platform/network/SocketStreamErrorBase.cpp \
        platform/network/SocketStreamHandleBase.cpp \
        platform/network/qt/SocketStreamHandleQt.cpp

    enable?(WORKERS) {
        HEADERS += \
            Modules/websockets/WorkerThreadableWebSocketChannel.h

        SOURCES += \
            Modules/websockets/WorkerThreadableWebSocketChannel.cpp
    }
}

enable?(WEBGL) {
    HEADERS += \
        html/canvas/CanvasContextAttributes.h \
        html/canvas/WebGLObject.h \
        html/canvas/WebGLActiveInfo.h \
        html/canvas/WebGLBuffer.h \
        html/canvas/WebGLCompressedTextureATC.h \
        html/canvas/WebGLCompressedTexturePVRTC.h \
        html/canvas/WebGLCompressedTextureS3TC.h \
        html/canvas/WebGLContextAttributes.h \
        html/canvas/WebGLContextEvent.h \
        html/canvas/WebGLContextGroup.h \
        html/canvas/WebGLContextObject.h \
        html/canvas/WebGLDebugRendererInfo.h \
        html/canvas/WebGLDebugShaders.h \
        html/canvas/WebGLDepthTexture.h \
        html/canvas/WebGLExtension.h \
        html/canvas/WebGLFramebuffer.h \
        html/canvas/WebGLGetInfo.h \
        html/canvas/WebGLLoseContext.h \
        html/canvas/WebGLProgram.h \
        html/canvas/WebGLRenderbuffer.h \
        html/canvas/WebGLRenderingContext.h \
        html/canvas/WebGLShader.h \
        html/canvas/WebGLShaderPrecisionFormat.h \
        html/canvas/WebGLSharedObject.h \
        html/canvas/EXTDrawBuffers.h \
        html/canvas/EXTTextureFilterAnisotropic.h \
        html/canvas/OESStandardDerivatives.h \
        html/canvas/OESTextureFloat.h \
        html/canvas/OESTextureHalfFloat.h \
        html/canvas/OESVertexArrayObject.h \
        html/canvas/OESElementIndexUint.h \
        html/canvas/WebGLTexture.h \
        html/canvas/WebGLUniformLocation.h \
        html/canvas/WebGLVertexArrayObjectOES.h \

    SOURCES += \
        bindings/js/JSWebGLRenderingContextCustom.cpp

    SOURCES += \
        html/canvas/CanvasContextAttributes.cpp \
        html/canvas/WebGLObject.cpp \
        html/canvas/WebGLBuffer.cpp \
        html/canvas/WebGLCompressedTextureATC.cpp \
        html/canvas/WebGLCompressedTexturePVRTC.cpp \
        html/canvas/WebGLCompressedTextureS3TC.cpp \
        html/canvas/WebGLContextAttributes.cpp \
        html/canvas/WebGLContextEvent.cpp \
        html/canvas/WebGLContextGroup.cpp \
        html/canvas/WebGLContextObject.cpp \
        html/canvas/WebGLDebugRendererInfo.cpp \
        html/canvas/WebGLDebugShaders.cpp \
        html/canvas/WebGLDepthTexture.cpp \
        html/canvas/WebGLExtension.cpp \
        html/canvas/WebGLFramebuffer.cpp \
        html/canvas/WebGLGetInfo.cpp \
        html/canvas/WebGLLoseContext.cpp \
        html/canvas/WebGLProgram.cpp \
        html/canvas/WebGLRenderbuffer.cpp \
        html/canvas/WebGLRenderingContext.cpp \
        html/canvas/WebGLShader.cpp \
        html/canvas/WebGLShaderPrecisionFormat.cpp \
        html/canvas/WebGLSharedObject.cpp \
        html/canvas/EXTDrawBuffers.cpp \
        html/canvas/EXTTextureFilterAnisotropic.cpp \
        html/canvas/OESStandardDerivatives.cpp \
        html/canvas/OESTextureFloat.cpp \
        html/canvas/OESTextureHalfFloat.cpp \
        html/canvas/OESVertexArrayObject.cpp \
        html/canvas/OESElementIndexUint.cpp \
        html/canvas/WebGLTexture.cpp \
        html/canvas/WebGLUniformLocation.cpp \
        html/canvas/WebGLVertexArrayObjectOES.cpp
}

enable?(CANVAS_PROXY) {
    HEADERS += \
        html/canvas/CanvasProxy.h

    SOURCES += \
        html/canvas/CanvasProxy.cpp
}

use?(3D_GRAPHICS) {
    HEADERS += \
        page/scrolling/ScrollingConstraints.h \
        page/scrolling/ScrollingCoordinator.h \
        page/scrolling/ScrollingStateFixedNode.h \
        page/scrolling/ScrollingStateNode.h \
        page/scrolling/ScrollingStateScrollingNode.h \
        page/scrolling/ScrollingStateStickyNode.h \
        page/scrolling/ScrollingStateTree.h \
        page/scrolling/coordinatedgraphics/ScrollingCoordinatorCoordinatedGraphics.h \
        platform/graphics/cpu/arm/GraphicsContext3DNEON.h \
        platform/graphics/ANGLEWebKitBridge.h \
        platform/graphics/Extensions3D.h \
        platform/graphics/GraphicsContext3D.h \
        platform/graphics/gpu/DrawingBuffer.h \
        platform/graphics/gpu/Texture.h \
        platform/graphics/gpu/TilingData.h \
        platform/graphics/opengl/Extensions3DOpenGL.h \
        platform/graphics/qt/QFramebufferPaintDevice.h \
        platform/graphics/texmap/TextureMapperGL.h \
        platform/graphics/texmap/TextureMapperShaderProgram.h \
        platform/graphics/texmap/coordinated/AreaAllocator.h \
        platform/graphics/texmap/coordinated/CompositingCoordinator.h \
        platform/graphics/texmap/coordinated/CoordinatedBackingStore.h \
        platform/graphics/texmap/coordinated/CoordinatedCustomFilterOperation.h \
        platform/graphics/texmap/coordinated/CoordinatedCustomFilterProgram.h \
        platform/graphics/texmap/coordinated/CoordinatedGraphicsLayer.h \
        platform/graphics/texmap/coordinated/CoordinatedGraphicsScene.h \
        platform/graphics/texmap/coordinated/CoordinatedGraphicsState.h \
        platform/graphics/texmap/coordinated/CoordinatedImageBacking.h \
        platform/graphics/texmap/coordinated/CoordinatedSurface.h \
        platform/graphics/texmap/coordinated/CoordinatedTile.h \
        platform/graphics/texmap/coordinated/SurfaceUpdateInfo.h \
        platform/graphics/texmap/coordinated/UpdateAtlas.h

    SOURCES += \
        page/scrolling/ScrollingConstraints.cpp \
        page/scrolling/ScrollingCoordinator.cpp \
        page/scrolling/ScrollingStateFixedNode.cpp \
        page/scrolling/ScrollingStateNode.cpp \
        page/scrolling/ScrollingStateScrollingNode.cpp \
        page/scrolling/ScrollingStateStickyNode.cpp \
        page/scrolling/ScrollingStateTree.cpp \
        page/scrolling/coordinatedgraphics/ScrollingCoordinatorCoordinatedGraphics.cpp \
        page/scrolling/coordinatedgraphics/ScrollingStateNodeCoordinatedGraphics.cpp \
        page/scrolling/coordinatedgraphics/ScrollingStateScrollingNodeCoordinatedGraphics.cpp \
        platform/graphics/ANGLEWebKitBridge.cpp \
        platform/graphics/GraphicsContext3D.cpp \
        platform/graphics/gpu/DrawingBuffer.cpp \
        platform/graphics/gpu/qt/DrawingBufferQt.cpp \
        platform/graphics/gpu/Texture.cpp \
        platform/graphics/gpu/TilingData.cpp \
        platform/graphics/opengl/GraphicsContext3DOpenGLCommon.cpp \
        platform/graphics/opengl/Extensions3DOpenGLCommon.cpp \
        platform/graphics/qt/GraphicsContext3DQt.cpp \
        platform/graphics/qt/QFramebufferPaintDevice.cpp \
        platform/graphics/texmap/TextureMapperGL.cpp \
        platform/graphics/texmap/TextureMapperShaderProgram.cpp \
        platform/graphics/texmap/coordinated/AreaAllocator.cpp \
        platform/graphics/texmap/coordinated/CompositingCoordinator.cpp \
        platform/graphics/texmap/coordinated/CoordinatedBackingStore.cpp \
        platform/graphics/texmap/coordinated/CoordinatedGraphicsLayer.cpp \
        platform/graphics/texmap/coordinated/CoordinatedGraphicsScene.cpp \
        platform/graphics/texmap/coordinated/CoordinatedImageBacking.cpp \
        platform/graphics/texmap/coordinated/CoordinatedSurface.cpp \
        platform/graphics/texmap/coordinated/CoordinatedTile.cpp \
        platform/graphics/texmap/coordinated/UpdateAtlas.cpp

    INCLUDEPATH += $$PWD/platform/graphics/gpu

    contains(QT_CONFIG, opengl) {
        contains(QT_CONFIG, opengles2) {
            SOURCES += \
               platform/graphics/opengl/GraphicsContext3DOpenGLES.cpp \
               platform/graphics/opengl/Extensions3DOpenGLES.cpp
        } else {
            SOURCES += \
               platform/graphics/opengl/GraphicsContext3DOpenGL.cpp \
               platform/graphics/opengl/Extensions3DOpenGL.cpp
        }

        HEADERS += platform/graphics/opengl/Extensions3DOpenGL.h

        SOURCES += \
            platform/graphics/opengl/Extensions3DOpenGLCommon.cpp \
            platform/graphics/opengl/GraphicsContext3DOpenGLCommon.cpp
    }

    WEBKIT += angle

    INCLUDEPATH += platform/graphics/gpu
}


enable?(MHTML) {

    INCLUDEPATH += $$PWD/loader/archive/mhtml

    HEADERS += \
        loader/archive/Archive.h \
        page/PageSerializer.h

    SOURCES += \
        loader/archive/Archive.cpp \
        loader/archive/ArchiveFactory.cpp \
        loader/archive/mhtml/MHTMLArchive.cpp \
        loader/archive/mhtml/MHTMLParser.cpp \
        page/PageSerializer.cpp
}

use?(LIBPNG) {
    SOURCES += platform/image-decoders/ico/ICOImageDecoder.cpp \
               platform/image-decoders/png/PNGImageDecoder.cpp
}

use?(LIBJPEG) {
    HEADERS += platform/image-decoders/jpeg/JPEGImageDecoder.h
    SOURCES += platform/image-decoders/jpeg/JPEGImageDecoder.cpp
}

use?(WEBP) {
    HEADERS += platform/image-decoders/webp/WEBPImageDecoder.h
    SOURCES += platform/image-decoders/webp/WEBPImageDecoder.cpp
}

use?(ZLIB) {
    HEADERS += platform/graphics/WOFFFileFormat.h
    SOURCES += platform/graphics/WOFFFileFormat.cpp
}

!have?(sqlite3):exists($${SQLITE3SRCDIR}/sqlite3.c) {
    # Build sqlite3 into WebCore from source
    # somewhat copied from $$QT_SOURCE_TREE/src/plugins/sqldrivers/sqlite/sqlite.pro
    SOURCES += $${SQLITE3SRCDIR}/sqlite3.c
}

win32:!mingw:contains(QMAKE_HOST.arch, x86_64):{
    asm_compiler.commands = ml64 /c
    asm_compiler.commands +=  /Fo ${QMAKE_FILE_OUT} ${QMAKE_FILE_IN}
    asm_compiler.output = ${QMAKE_VAR_OBJECTS_DIR}${QMAKE_FILE_BASE}$${first(QMAKE_EXT_OBJ)}
    asm_compiler.input = ASM_SOURCES
    asm_compiler.variable_out = OBJECTS
    asm_compiler.name = compiling[asm] ${QMAKE_FILE_IN}
    silent:asm_compiler.commands = @echo compiling[asm] ${QMAKE_FILE_IN} && $$asm_compiler.commands
    QMAKE_EXTRA_COMPILERS += asm_compiler

    ASM_SOURCES += \
        plugins/win/PaintHooks.asm
   if(win32-msvc2005|win32-msvc2008):equals(TEMPLATE_PREFIX, "vc") {
        SOURCES += \
            plugins/win/PaintHooks.asm
   }
}

contains(CONFIG, opengl-shims) {
    HEADERS += platform/graphics/OpenGLShims.h
    SOURCES += platform/graphics/OpenGLShims.cpp
    DEFINES += QT_OPENGL_SHIMS=1
}

enable?(opencl) {
    HEADERS += \
        platform/graphics/gpu/opencl/OpenCLHandle.h \
        platform/graphics/gpu/opencl/FilterContextOpenCL.h
    SOURCES += \
        platform/graphics/gpu/opencl/FilterContextOpenCL.cpp \
        platform/graphics/gpu/opencl/OpenCLFEColorMatrix.cpp \
        platform/graphics/gpu/opencl/OpenCLFEFlood.cpp \
        platform/graphics/gpu/opencl/OpenCLFEImage.cpp \
        platform/graphics/gpu/opencl/OpenCLFEMerge.cpp \
        platform/graphics/gpu/opencl/OpenCLFESourceAlpha.cpp \
        platform/graphics/gpu/opencl/OpenCLFESourceGraphic.cpp \
        platform/graphics/gpu/opencl/OpenCLFETurbulence.cpp
}

use?(GRAPHICS_SURFACE) {
    mac {
        SOURCES += platform/graphics/surfaces/mac/GraphicsSurfaceMac.cpp
    }
    win32 {
        SOURCES += platform/graphics/surfaces/win/GraphicsSurfaceWin.cpp
    }
    use?(glx) {
        HEADERS += \
            platform/graphics/surfaces/glx/X11Helper.h \
            platform/graphics/surfaces/glx/GLXConfigSelector.h
        SOURCES += \
            platform/graphics/surfaces/glx/X11Helper.cpp \
            platform/graphics/surfaces/glx/GraphicsSurfaceGLX.cpp
    }
}

build?(qttestsupport) {
    HEADERS += platform/qt/QtTestSupport.h
    SOURCES += platform/qt/QtTestSupport.cpp
}

ALL_IN_ONE_SOURCES += \
    accessibility/AccessibilityAllInOne.cpp \
    bindings/js/JSBindingsAllInOne.cpp \
    css/CSSAllInOne.cpp \
    dom/DOMAllInOne.cpp \
    editing/EditingAllInOne.cpp \
    html/HTMLElementsAllInOne.cpp \
    inspector/InspectorAllInOne.cpp \
    loader/appcache/ApplicationCacheAllInOne.cpp \
    platform/text/TextAllInOne.cpp \
    rendering/RenderingAllInOne.cpp \
    rendering/style/StyleAllInOne.cpp

# Make sure the derived sources are built
include(DerivedSources.pri)
